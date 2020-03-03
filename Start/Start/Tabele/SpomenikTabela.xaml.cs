using Start.Dodavanje;
using Start.Modeli;
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
using System.Windows.Forms;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using System.Xml.Serialization;

namespace Start.Tabele
{
    /// <summary>
    /// Interaction logic for SpomenikTabela.xaml
    /// </summary>
    public partial class SpomenikTabela : Window
    {
        MainWindow mainW = null;
        
        public SpomenikTabela(MainWindow mainW)
        {
            InitializeComponent();

            this.mainW = mainW;
            this.DataContext = mainW;

           
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            TipTabela st = new TipTabela(mainW);
            st.Show();
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            OpenFileDialog op = new OpenFileDialog();
            op.Title = "Select a picture";
            op.Filter = "Image files (.jpg)|*.jpg|All Files (.*)|*.*";
            op.ShowDialog();
            img.Source = new BitmapImage(new Uri(op.FileName));
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            EtiketaTabela st = new EtiketaTabela(mainW);
            st.Show();
        }

        private void Button_Click_Izmena(object sender, RoutedEventArgs e)
        {
            if (dgrMain.SelectedItem != null)
            {
                Modeli.Spomenik noviSpomenik= new Modeli.Spomenik();

                String provera = this.OznakaBox.Text.Trim();
                bool mesidzprovera = false;
                
                if (provera.Equals("") || provera == null)
                {
                    mesidzprovera = true;
                    OznakaBox.BorderBrush = new SolidColorBrush(Colors.Black);
                    OznakaBox.BorderThickness = new Thickness(+3);
                }
                else
                {
                    noviSpomenik.Oznaka = provera;
                    OznakaBox.BorderBrush = new SolidColorBrush(Colors.Gray);
                    OznakaBox.BorderThickness = new Thickness(+1);

                }

                provera = ImeBox.Text.Trim();

                if (provera.Equals("") || provera == null)
                {
                    ImeBox.BorderBrush = new SolidColorBrush(Colors.Black);
                    ImeBox.BorderThickness = new Thickness(+3);
                }
                else
                {
                    noviSpomenik.Ime = provera;
                    ImeBox.BorderBrush = new SolidColorBrush(Colors.Gray);
                    ImeBox.BorderThickness = new Thickness(+1);

                }


                provera = this.OpisBox.Text.Trim();

                if (provera.Equals("") || provera == null)
                {
                    mesidzprovera = true;

                    OpisBox.BorderBrush = new SolidColorBrush(Colors.Black);
                    OpisBox.BorderThickness = new Thickness(+3);
                }
                else
                {
                    noviSpomenik.Opis = provera;
                    OpisBox.BorderBrush = new SolidColorBrush(Colors.Gray);
                    OpisBox.BorderThickness = new Thickness(+1);
                }

                 provera = this.TipBox.Text.Trim();

                 if (provera.Equals("") || provera == null)
                 {
                     mesidzprovera = true;
                     TipBox.BorderBrush = new SolidColorBrush(Colors.Black);
                     TipBox.BorderThickness = new Thickness(+3);
                 }
                 else
                 {
                    noviSpomenik.Tip = provera;
                     TipBox.BorderBrush = new SolidColorBrush(Colors.Gray);
                     TipBox.BorderThickness = new Thickness(+1);
                 }

                provera = this.EraBox.Text.Trim();

                if (provera.Equals("") || provera == null)
                {
                    mesidzprovera = true;
                    EraBox.BorderBrush = new SolidColorBrush(Colors.Black);
                    EraBox.BorderThickness = new Thickness(+3);
                }
                else
                {
                    noviSpomenik.Era = provera;
                    EraBox.BorderBrush = new SolidColorBrush(Colors.Gray);
                    EraBox.BorderThickness = new Thickness(+1);
                }

                provera = this.StatusBox.Text.Trim();

                if (provera.Equals("") || provera == null)
                {
                    mesidzprovera = true;
                    StatusBox.BorderBrush = new SolidColorBrush(Colors.Black);
                    StatusBox.BorderThickness = new Thickness(+3);
                }
                else
                {
                    noviSpomenik.Status = provera;
                    StatusBox.BorderBrush = new SolidColorBrush(Colors.Gray);
                    StatusBox.BorderThickness = new Thickness(+1);
                }

                provera = this.EtiketaBox.ToString().Trim();

                

                provera = this.Datum.ToString().Trim();

                if (provera.Equals("") || provera == null)
                {
                    mesidzprovera = true;
                    Datum.BorderBrush = new SolidColorBrush(Colors.Black);
                    Datum.BorderThickness = new Thickness(+3);
                }
                else
                {
                    noviSpomenik.Datum = provera;
                    Datum.BorderBrush = new SolidColorBrush(Colors.Gray);
                    Datum.BorderThickness = new Thickness(+1);
                }

                provera = (this.img.Source != null) ? this.img.Source.ToString() : "";
                noviSpomenik.Slika = provera;

                provera = this.PrihodBox.Text.Trim();
                double prihod;

                if (provera.Equals("") || provera == null || !double.TryParse(provera, out prihod))
                {
                    mesidzprovera = true;
                    PrihodBox.BorderBrush = new SolidColorBrush(Colors.Black);
                    PrihodBox.BorderThickness = new Thickness(+3);
                }
                else
                {
                    if (prihod < 0)
                    {
                        mesidzprovera = true;
                        PrihodBox.BorderBrush = new SolidColorBrush(Colors.Black);
                        PrihodBox.BorderThickness = new Thickness(+3);
                    }
                    else
                    {
                        noviSpomenik.Prihod = provera;
                        PrihodBox.BorderBrush = new SolidColorBrush(Colors.Gray);
                        PrihodBox.BorderThickness = new Thickness(+1);
                    }
                }
                if (Obradjen.IsChecked == true)
                {
                    noviSpomenik.Obradjen = true;
                }
                else
                {
                    noviSpomenik.Obradjen = false;
                }
                if (Naseljeno.IsChecked == true)
                {
                    noviSpomenik.NaseljeDa = true;
                }
                else
                {
                    noviSpomenik.NaseljeDa = false;
                }
                if (Unesco.IsChecked == true)
                {
                    noviSpomenik.Unesco = true;
                }
                else
                {
                    noviSpomenik.Unesco = false;
                }

                if (provera.Equals("") || provera == null)
                {
                    mesidzprovera = true;
                    okvir.BorderBrush = new SolidColorBrush(Colors.Black);
                    okvir.BorderThickness = new Thickness(+3);
                }
                else
                {
                    okvir.BorderBrush = new SolidColorBrush(Colors.Gray);
                    okvir.BorderThickness = new Thickness(+1);
                }

                if (mesidzprovera == true)
                {

                    Console.Beep();

                    System.Windows.MessageBox.Show("Ostavili ste prazna polja, obratite pažnju na podebljane okvire polja");
                }
                else
                {
                    mainW.ListaSpomenika[dgrMain.SelectedIndex].Ime = noviSpomenik.Ime;
                    mainW.ListaSpomenika[dgrMain.SelectedIndex].Opis = noviSpomenik.Opis;
                    mainW.ListaSpomenika[dgrMain.SelectedIndex].Tip = noviSpomenik.Tip;
                    mainW.ListaSpomenika[dgrMain.SelectedIndex].Era = noviSpomenik.Era;
                    mainW.ListaSpomenika[dgrMain.SelectedIndex].Status = noviSpomenik.Status;
                    mainW.ListaSpomenika[dgrMain.SelectedIndex].Prihod = noviSpomenik.Prihod;
                    mainW.ListaSpomenika[dgrMain.SelectedIndex].Etikete = noviSpomenik.Etikete;
                    mainW.ListaSpomenika[dgrMain.SelectedIndex].Datum = noviSpomenik.Datum;
                    mainW.ListaSpomenika[dgrMain.SelectedIndex].Obradjen = noviSpomenik.Obradjen;
                    mainW.ListaSpomenika[dgrMain.SelectedIndex].Unesco = noviSpomenik.Unesco;
                    mainW.ListaSpomenika[dgrMain.SelectedIndex].NaseljeDa = noviSpomenik.NaseljeDa;
                    mainW.ListaSpomenika[dgrMain.SelectedIndex].Slika = noviSpomenik.Slika;
                    System.Windows.Forms.MessageBox.Show("Uspesno ste izmenili Spomeik!");

                    bool proveraSlike = false;
                    int j = -1;


                    for (int i = 0; i < mainW.mapaSpomenika.Children.Count; i++)
                    {
                        if (mainW.mapaSpomenika.Children[i].Uid.Equals(mainW.ListaSpomenika[dgrMain.SelectedIndex].Oznaka))
                        {
                            j = i;
                            proveraSlike = true;
                        }
                         
                    }
                    int ICON_SIZE = 20;
                     int OFFSET = ICON_SIZE / 2;
                    Image Ikonica = new Image
                    {
                        Width = ICON_SIZE,
                        Height = ICON_SIZE,
                        Uid = mainW.ListaSpomenika[dgrMain.SelectedIndex].Oznaka,
                        Source = new BitmapImage(new Uri(mainW.ListaSpomenika[dgrMain.SelectedIndex].Slika, UriKind.Absolute)),
                    };

                    if (proveraSlike == true)
                    {
                        mainW.mapaSpomenika.Children.RemoveAt(j);
                        mainW.mapaSpomenika.Children.Add(Ikonica);

                        //Ikonica.ToolTip = mainW.ListaSpomenika[dgrMain.SelectedIndex].Oznaka; //ucitavam tooltipove na ikonicama na kanvasu
                        Ikonica.ToolTip = mainW.ListaSpomenika[dgrMain.SelectedIndex].Ime;

                        Canvas.SetLeft(Ikonica, mainW.ListaSpomenika[dgrMain.SelectedIndex].X);
                        Canvas.SetTop(Ikonica, mainW.ListaSpomenika[dgrMain.SelectedIndex].Y);
                    }

                    if (proveraSlike == false)
                    {
                        for (int i = 0; i < mainW.Spomenici.Count; i++)
                        {
                            mainW.Spomenici[i].Slika = noviSpomenik.Slika;
                        }
                    }
                    

                    serijalizacija();

                }
            }
            else
            {
                System.Windows.Forms.MessageBox.Show("Morate selektovati Spomenik koji zelite da izmenite!");
            }
        }

        private void Button_Click_4(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void Button_Click_Obrisi(object sender, RoutedEventArgs e)
        {
            if (dgrMain.SelectedItem != null)
            {
                Modeli.Spomenik brisi = (Modeli.Spomenik)dgrMain.SelectedItem;
                mainW.ListaSpomenika.Remove(brisi);
                System.Windows.Forms.MessageBox.Show("Uspesno ste izbrisali Spomenik!");
                //mainW.DroppedVrste.Remove((Modeli.Spomenik)dgrMain.SelectedItem);
                bool provera = false;
                int j = -1;


                for (int i = 0; i < mainW.mapaSpomenika.Children.Count; i++)
                {
                    if (mainW.mapaSpomenika.Children[i].Uid.Equals((brisi).Oznaka))
                    {
                        j = i;
                        provera = true;
                    }
                }

                if (provera == true)
                {
                    mainW.mapaSpomenika.Children.RemoveAt(j);
                }

                if (provera == false)
                {
                    mainW.Spomenici.Remove(brisi);
                }


                serijalizacija();

                
            }
            else
            {
                System.Windows.Forms.MessageBox.Show("Morate selektovati Spomenik koji želite da izbrišete!");
            }
        }

        private void Selektovanje(object sender, SelectionChangedEventArgs e)
        {
            EtiketaBox.SelectedItems.Clear();
            Modeli.Spomenik spom = (Modeli.Spomenik)dgrMain.SelectedItem;
            if (spom != null)
            {
                foreach (String etiketa in spom.Etikete)
                {
                    foreach (Modeli.EtiketaModel etiketaIzListe in mainW.ListaEtiketa)
                    {
                        if (etiketa.Equals(etiketaIzListe.ToString()))
                        {
                            EtiketaBox.SelectedItems.Add(etiketaIzListe);
                        }

                    }
                    
                    
                }
            }
        }

        private void serijalizacija()
        {
            using (Stream fs = new FileStream(mainW.korisnik + "Spomenici.xml", FileMode.Create, FileAccess.Write, FileShare.None))
            {
                XmlSerializer serializer = new XmlSerializer(typeof(ObservableCollection<Spomenik>));
                serializer.Serialize(fs, mainW.ListaSpomenika);
            }
        }

        private ObservableCollection<Modeli.Spomenik> listaPretrageSpomenika = new ObservableCollection<Modeli.Spomenik>();

        public ObservableCollection<Modeli.Spomenik> ListaPretrageSpomenika
        {
            get { return listaPretrageSpomenika; }
            set { listaPretrageSpomenika = value; }
        }

        private void Pretraga_Click(object sender, RoutedEventArgs e)
        {
            string vrednost = PretragaBox.Text.Trim();
            ListaPretrageSpomenika.Clear();
            if (vrednost != "")
            {
                foreach (Spomenik spomenik in mainW.ListaSpomenika)
                {
                    if (spomenik.Oznaka.Contains(vrednost))
                    {
                        listaPretrageSpomenika.Add(spomenik);
                    }
                }
                dgrMain.ItemsSource = ListaPretrageSpomenika;
            }
            else
            {
                dgrMain.ItemsSource = mainW.ListaSpomenika;
            }

            
        }

        private void PonistiPretragu_Click(object sender, RoutedEventArgs e)
        {
            dgrMain.ItemsSource = mainW.ListaSpomenika;
        }
        private void CommandBinding_Executed(object sender, ExecutedRoutedEventArgs e)
        {
            string str = Help.HelpProvider.GetHelpKey(this);
            Help.HelpProvider.ShowHelp(str, this);
        }
    }
}
