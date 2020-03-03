
using Start.Dodavanje;
using Start.Help;
using Start.Modeli;
using Start.Tabele;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Xml.Serialization;

namespace Start
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public String korisnik = "";
        

        private ObservableCollection<Spomenik> listaSpomenika = new ObservableCollection<Spomenik>();

        public ObservableCollection<Spomenik> ListaSpomenika
        {
            get { return listaSpomenika; }
            set { listaSpomenika = value; }
        }

        private ObservableCollection<Modeli.EtiketaModel> listaEtiketa = new ObservableCollection<EtiketaModel>();

        public ObservableCollection<Modeli.EtiketaModel> ListaEtiketa
        {
            get { return listaEtiketa; }
            set { listaEtiketa = value; }
        }

        private ObservableCollection<Modeli.TipModel> listaTipova = new ObservableCollection<TipModel>();

        public ObservableCollection<Modeli.TipModel> ListaTipova
        {
            get { return listaTipova; }
            set { listaTipova = value; }
        }

        Point start = new Point();
        private const int ICON_SIZE = 20;
        private const int OFFSET = ICON_SIZE / 2;
        private const string FROM_SIDEBAR = "SpomenikDraggedFromSidebar";
        private const string FROM_CANVAS = "SpomenikDraggedFromCanvas";

        public ObservableCollection<Spomenik> Spomenici { get; set; }     //spomenici koji nisu jos ubacene na kanvas    
        
        public ObservableCollection<Spomenik> droppedSpomenici = new ObservableCollection<Spomenik>();
        public ObservableCollection<Spomenik> DroppedSpomenici
        {
            get { return droppedSpomenici; }
            set { droppedSpomenici = value; }
        }


        public MainWindow(String korisnik = "")
        {
            
            InitializeComponent();
            this.korisnik = korisnik;

            

            if (File.Exists(korisnik + "Spomenici.xml") && File.Exists(korisnik + "Etikete.xml") && File.Exists(korisnik + "Tipovi.xml"))
            {
                XmlSerializer serializer = new XmlSerializer(typeof(ObservableCollection<Spomenik>));

                using (FileStream fs = File.OpenRead(korisnik + "Spomenici.xml"))
                {
                    this.ListaSpomenika = (ObservableCollection<Spomenik>)serializer.Deserialize(fs);
                }

                 
                XmlSerializer serializer1 = new XmlSerializer(typeof(ObservableCollection<Modeli.EtiketaModel>));

                using (FileStream fs = File.OpenRead(korisnik + "Etikete.xml"))
                {
                    this.ListaEtiketa = (ObservableCollection<Modeli.EtiketaModel>)serializer1.Deserialize(fs);
                }

                XmlSerializer serializer2 = new XmlSerializer(typeof(ObservableCollection<Modeli.TipModel>));

                using (FileStream fs = File.OpenRead(korisnik + "Tipovi.xml"))
                {
                    this.ListaTipova = (ObservableCollection<Modeli.TipModel>)serializer2.Deserialize(fs);
                }
            }
            Spomenici = new ObservableCollection<Spomenik>();


            foreach (Spomenik spomenik in ListaSpomenika)    //prolazim kroz sve spomenike
            {
                if (spomenik.X == 0 && spomenik.Y == 0)   //ako koordinate spom 0 znaci da se ne nalazi na kanvasu 
                {
                    Spomenici.Add(spomenik);    //dodajem spomenik u spomenike koje nisu na kanvasu tj u prikaz sa leve strane
                }

                else    //inace su spomenici na kanvasu i spustam ih na kanvas
                {
                    Canvas canvas = mapaSpomenika;

                    try     //try catch u slucaju da se ikonica obrise iz foldera
                    {
                        Image Ikonica = new Image
                        {
                            Width = ICON_SIZE,
                            Height = ICON_SIZE,
                            Uid = spomenik.Oznaka,
                            Source = new BitmapImage(new Uri(spomenik.Slika, UriKind.Absolute)),
                        };


                        
                        Ikonica.ToolTip = spomenik.Oznaka+ "\n"+ spomenik.Ime;

                        canvas.Children.Add(Ikonica);

                        Canvas.SetLeft(Ikonica, spomenik.X);
                        Canvas.SetTop(Ikonica, spomenik.Y);

                        DroppedSpomenici.Add(spomenik);
                    }

                    catch
                    {
                        MessageBox.Show("Neke ikonice nece biti prikazane jer su obrisane!");
                    }
                }
            }

            //this.DataContext = vm;
            svetskiSpomenici.ItemsSource = Spomenici;
        }


        private void MenuItem_Click_5(object sender, RoutedEventArgs e)
        {
            Novi_spomenik s = new Novi_spomenik(this);
            s.Show();
        }
        private void Tip_Click(object sender, RoutedEventArgs e)
        {
            Tip s = new Tip(this);
            s.Show();
        }
        private void Etiketa_Click(object sender, RoutedEventArgs e)
        {
            Etiketa s = new Etiketa(this);
            s.Show();
        }

        private void Tabela_Click(object sender, RoutedEventArgs e)
        {
            SpomenikTabela s = new SpomenikTabela(this);
            s.Show();
        }
        private void TabelaTip_Click(object sender, RoutedEventArgs e)
        {
            TipTabela s = new TipTabela(this);
            s.Show();
        }
        private void TabelaEtiketa_Click(object sender, RoutedEventArgs e)
        {
            EtiketaTabela s = new EtiketaTabela(this);
            s.Show();
        }

        //Drag and drop
        //leva strana
        private void StackPanel_PreviewMouseLeftButtonDown(object sender, MouseButtonEventArgs e)   //sa panela na kanvas
        {
            start = e.GetPosition(null);

            StackPanel panel = sender as StackPanel;
            Spomenik dataObject = null;

            foreach (Spomenik spomenik in Spomenici)
            {
                if ((string)panel.Tag == spomenik.Oznaka)       //provera u panelu u tagu da li je kliknuti spomenik jedna spomeniku iz foreaca
                {
                    dataObject = spomenik;
                    break;
                }
            }

            DataObject data = new DataObject(FROM_SIDEBAR, dataObject);
            DragDrop.DoDragDrop(panel, data, DragDropEffects.Move);
        }

        //kanvas (desna strana)

        //cuvanje novih kordinata spomenika pri pomeranju ikonice na kanvasu
        public void ChangeDroppedSpomenik(Spomenik spomenik)
        {
            foreach (Spomenik v in ListaSpomenika)
            {
                if (v.Oznaka == spomenik.Oznaka)
                {
                    v.X = spomenik.X;
                    v.Y = spomenik.Y;
                    break;
                }
            }
            using (Stream fs = new FileStream(korisnik + "Spomenici.xml", FileMode.Create, FileAccess.Write, FileShare.None))
            {
                XmlSerializer serializer = new XmlSerializer(typeof(ObservableCollection<Spomenik>));
                serializer.Serialize(fs, this.ListaSpomenika);
            }
        }

        private Spomenik ClickedVrsta1(int x, int y)   //vraca kliknuti spomenik na kanvasu
        {
            foreach (Spomenik spomenik in DroppedSpomenici)   //prolazim kroz spomenike spustene na kanvas
            {
                if (Math.Sqrt(Math.Pow((x - spomenik.X - OFFSET), 2) + Math.Pow((y - spomenik.Y - OFFSET), 2)) < 2 * OFFSET)
                {
                    return spomenik;
                }
            }
            return null;
        }

        private void mapaSpomenika_Drop(object sender, DragEventArgs e)
        {
            Point dropPosition = e.GetPosition(mapaSpomenika);

            if (ClickedVrsta1((int)dropPosition.X, (int)dropPosition.Y) != null)
            {
                return;
            }

            if (e.Data.GetDataPresent(FROM_SIDEBAR))    //sa panela na kanvas               
            {
                Spomenik spomenik = e.Data.GetData(FROM_SIDEBAR) as Spomenik;

                Spomenici.Remove(spomenik); //uklanjam iz spomenik koje nisu na kanvasu spomenika
                spomenik.X = (int)dropPosition.X - OFFSET;
                spomenik.Y = (int)dropPosition.Y - OFFSET;

                this.ChangeDroppedSpomenik(spomenik);   //pozivam serijalizaciju zbog koordinata

                DroppedSpomenici.Add(spomenik); //dodajem u spomenike na kanvasu spomenika

                Canvas canvas = this.mapaSpomenika;

                Image VrstaIkonica = new Image
                {
                    Width = ICON_SIZE,
                    Height = ICON_SIZE,
                    Uid = spomenik.Oznaka,
                    Source = new BitmapImage(new Uri(spomenik.Slika, UriKind.Absolute))
                };

                
                VrstaIkonica.ToolTip = spomenik.Oznaka+"\n"+ spomenik.Ime;
                
                


                canvas.Children.Add(VrstaIkonica);

                Canvas.SetLeft(VrstaIkonica, spomenik.X);
                Canvas.SetTop(VrstaIkonica, spomenik.Y);

                return;
            }

            if (e.Data.GetDataPresent(FROM_CANVAS)) //sa kanvasa na kanvas
            {
                Spomenik spomenik = e.Data.GetData(FROM_CANVAS) as Spomenik;

                DroppedSpomenici.Remove(spomenik);
                spomenik.X = (int)dropPosition.X - OFFSET;
                spomenik.Y = (int)dropPosition.Y - OFFSET;

                this.ChangeDroppedSpomenik(spomenik);
                DroppedSpomenici.Add(spomenik);

                Canvas canvas = this.mapaSpomenika;

                UIElement remove = null;
                foreach (UIElement elem in canvas.Children)
                {
                    if (elem.Uid == spomenik.Oznaka)
                    {
                        remove = elem;
                        break;
                    }
                }
                canvas.Children.Remove(remove);

                Image VrstaIkonica = new Image
                {
                    Width = ICON_SIZE,
                    Height = ICON_SIZE,
                    Uid = spomenik.Oznaka,
                    Source = new BitmapImage(new Uri(spomenik.Slika, UriKind.Absolute)),
                };

               
                VrstaIkonica.ToolTip = spomenik.Oznaka+"\n"+ spomenik.Ime;
                

                canvas.Children.Add(VrstaIkonica);

                Canvas.SetLeft(VrstaIkonica, spomenik.X);
                Canvas.SetTop(VrstaIkonica, spomenik.Y);

                return;
            }
        }

        private void mapaSpomenika_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            start = e.GetPosition(null);

            Canvas map = sender as Canvas;

            Spomenik dataObject = null;
            Point mousePosition = e.GetPosition(mapaSpomenika);

            dataObject = ClickedVrsta1((int)mousePosition.X, (int)mousePosition.Y);

            if (dataObject != null)
            {
                DataObject data = new DataObject(FROM_CANVAS, dataObject);
                DragDrop.DoDragDrop(map, data, DragDropEffects.Move);
            }
        }

        private void Daltoniznam_Click(object sender, RoutedEventArgs e)
        {

            Daltonizam s = new Daltonizam(this);
            s.Show();
        }
        private void CommandBinding_Executed(object sender, ExecutedRoutedEventArgs e)
        {

            string str = HelpProvider.GetHelpKey(this);
            HelpProvider.ShowHelp(str, this);
        }

        private void Help_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("U dijalogu za koji Vam je potrebna pomoć samo pritisnite F1");
        }
    }
}
