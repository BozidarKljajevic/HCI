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
    /// Interaction logic for TipTabela.xaml
    /// </summary>
    public partial class TipTabela : Window
    {
        MainWindow mainW = null;

        public TipTabela(MainWindow mainW)
        {

            InitializeComponent();
            
            this.mainW = mainW;
            this.DataContext = mainW;
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            OpenFileDialog op = new OpenFileDialog();
            op.Title = "Select a picture";
            op.Filter = "Image files (.jpg)|*.jpg|All Files (.*)|*.*";
            op.ShowDialog();
            img.Source = new BitmapImage(new Uri(op.FileName));
        }

        private void Button_Click_3(object sender, RoutedEventArgs e)
        {


            if (dgrMain.SelectedItem != null)
            {
                Modeli.TipModel noviTip = new Modeli.TipModel();

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

                    noviTip.Oznaka = provera;
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
                    noviTip.Ime = provera;
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
                    noviTip.Opis = provera;
                    OpisBox.BorderBrush = new SolidColorBrush(Colors.Gray);
                    OpisBox.BorderThickness = new Thickness(+1);
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
                provera = (this.img.Source != null) ? this.img.Source.ToString() : "";
                noviTip.Slika = provera;
                
                if (mesidzprovera == true)
                {

                    Console.Beep();

                    System.Windows.MessageBox.Show("Ostavili ste prazna polja, obratite pažnju na podebljane okvire polja");
                }
                else
                {
                    
                    mainW.ListaTipova[dgrMain.SelectedIndex].Ime = noviTip.Ime;
                    mainW.ListaTipova[dgrMain.SelectedIndex].Opis = noviTip.Opis;
                    mainW.ListaTipova[dgrMain.SelectedIndex].Slika = noviTip.Slika;
                    System.Windows.Forms.MessageBox.Show("Uspesno ste izmenili Tip!");

                    int i = -1;
                    foreach (Spomenik spom in mainW.ListaSpomenika)
                    {
                        i++;
                        if(spom.Tip == mainW.ListaTipova[dgrMain.SelectedIndex].Oznaka)
                        {
                            mainW.ListaSpomenika[i].Oznaka = noviTip.Oznaka;
                        }
                    }

                    mainW.ListaTipova[dgrMain.SelectedIndex].Oznaka = noviTip.Oznaka;

                    serijalizacija();
                }
            }
            else
            {
                System.Windows.Forms.MessageBox.Show("Morate selektovati Tip koji zelite da izmenite!");
            }
        }

        private void Button_Click_4(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            if (dgrMain.SelectedItem != null)
            {

                 Modeli.TipModel tip = (Modeli.TipModel)dgrMain.SelectedItem;
                foreach (Modeli.Spomenik spom in mainW.ListaSpomenika)
                {
                    
                        if (spom.Tip.Equals(tip.ToString()))
                        {
                            System.Windows.Forms.MessageBox.Show("Ne mozete izbrisati Tip koju koristi neki od Spomenika!");
                            return;
                        }
                    
                }



                mainW.ListaTipova.Remove((Modeli.TipModel)dgrMain.SelectedItem);
                System.Windows.Forms.MessageBox.Show("Uspesno ste izbrisali Tip!");

                serijalizacija();
            }
            else
            {
                System.Windows.Forms.MessageBox.Show("Morate selektovati Tip koji želite da izbrišete!");
            }
        }

        public void serijalizacija()
        {
            using (Stream fs = new FileStream(mainW.korisnik+"Tipovi.xml", FileMode.Create, FileAccess.Write, FileShare.None))
            {
                XmlSerializer serializer = new XmlSerializer(typeof(ObservableCollection<Modeli.TipModel>));
                serializer.Serialize(fs, mainW.ListaTipova);
            }
        }

        private ObservableCollection<Modeli.TipModel> listaPretrageTipova = new ObservableCollection<Modeli.TipModel>();

        public ObservableCollection<Modeli.TipModel> ListaPretrageTipova
        {
            get { return listaPretrageTipova; }
            set { listaPretrageTipova = value; }
        }

        private void Pretraga_Click(object sender, RoutedEventArgs e)
        {
            string vrednost = PretragaBox.Text.Trim();
            ListaPretrageTipova.Clear();
            if (vrednost != "")
            {
                foreach (TipModel tip in mainW.ListaTipova)
                {
                    if (tip.Oznaka.Contains(vrednost))
                    {
                        listaPretrageTipova.Add(tip);
                    }
                }
                dgrMain.ItemsSource = ListaPretrageTipova;
            }
            else
            {
                dgrMain.ItemsSource = mainW.ListaTipova;
            }
            
        }

        private void PonistiPretragu_Click(object sender, RoutedEventArgs e)
        {
            dgrMain.ItemsSource = mainW.ListaTipova;
        }
        private void CommandBinding_Executed(object sender, ExecutedRoutedEventArgs e)
        {

            string str = Help.HelpProvider.GetHelpKey(this);
            Help.HelpProvider.ShowHelp(str, this);
        }
    }
}
