using Start.Help;
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

namespace Start.Dodavanje
{
    /// <summary>
    /// Interaction logic for Novi_spomenik.xaml
    /// </summary>
    public partial class Novi_spomenik : Window
    {
        MainWindow mainW = null;

        
        public class TodoItem
        {
            public string Title { get; set; }
            public int Completion { get; set; }
        }

        public Novi_spomenik(MainWindow mainW)
        {
            this.mainW = mainW;
            this.DataContext = mainW;
            InitializeComponent();
           
            this.DataContext = mainW;
            
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            Tip s = new Tip(mainW);
            s.Show();
        }

       private void Etiketa_Click(object sender, RoutedEventArgs e)
        {
            Etiketa s = new Etiketa(mainW);
            s.Show();
        }

        private void Dodajsliku_Click_5(object sender, RoutedEventArgs e)
        {
            OpenFileDialog op = new OpenFileDialog();
            op.Title = "Select a picture";
            op.Filter = "Image files (.jpg)|*.jpg|All Files (.*)|*.*";
            op.ShowDialog();
            slikatip.Source = new BitmapImage(new Uri(op.FileName));
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            String provera = this.OznakaBox.Text.Trim();
            bool mesidzprovera = false;
            Modeli.Spomenik noviSpomenik = new Modeli.Spomenik();
            
           
            if (provera.Equals("") || provera == null)
            {
                mesidzprovera = true;
                oznaka.Visibility = Visibility.Hidden;
                oznakaproblem.Visibility = Visibility.Visible;
                OznakaBox.BorderBrush = new SolidColorBrush(Colors.Black);
                OznakaBox.BorderThickness = new Thickness(+3);
            }
            else
            {
                noviSpomenik.Oznaka = provera;
                oznaka.Visibility = Visibility.Visible;
                oznakaproblem.Visibility = Visibility.Hidden;
                OznakaBox.BorderBrush = new SolidColorBrush(Colors.Gray); 
                OznakaBox.BorderThickness = new Thickness(+1);

            }

            provera = ImeBox.Text.Trim();
            
            if (provera.Equals("") || provera == null)
            {
                
                mesidzprovera = true;
                Ime.Visibility = Visibility.Hidden;
                ime_greska.Visibility = Visibility.Visible;
                ImeBox.BorderBrush = new SolidColorBrush(Colors.Black);
                ImeBox.BorderThickness = new Thickness(+3);
            }
            else
            {
                noviSpomenik.Ime = provera;
                Ime.Visibility = Visibility.Visible;
                ime_greska.Visibility = Visibility.Hidden;
                ImeBox.BorderBrush = new SolidColorBrush(Colors.Gray);
                ImeBox.BorderThickness = new Thickness(+1);

            }

           
            provera = this.OpisBox.Text.Trim();

            if (provera.Equals("") || provera == null)
            {
                mesidzprovera = true;
                opis_greska.Visibility = Visibility.Visible;
                Opis.Visibility = Visibility.Hidden;
                OpisBox.BorderBrush = new SolidColorBrush(Colors.Black);
                OpisBox.BorderThickness = new Thickness(+3);
            }
            else
            {
                noviSpomenik.Opis = provera;
                opis_greska.Visibility = Visibility.Hidden;
                Opis.Visibility = Visibility.Visible;
                OpisBox.BorderBrush = new SolidColorBrush(Colors.Gray);
                OpisBox.BorderThickness = new Thickness(+1);
            }

            provera = this.TipBox.Text.Trim();

            if (provera.Equals("") || provera == null)
            {
                mesidzprovera = true;
                tip_greska.Visibility = Visibility.Visible;
                Tip.Visibility = Visibility.Hidden;
                
            }
            else
            {
                noviSpomenik.Tip = provera;
                tip_greska.Visibility = Visibility.Hidden;
                Tip.Visibility = Visibility.Visible;
                
            }

            provera = this.EtiketaBox.ToString().Trim();

            if (provera.Equals("") || provera == null)
            {
                mesidzprovera = true;
                etiketa_greska.Visibility = Visibility.Visible;
                Etiketa.Visibility = Visibility.Hidden;
                EtiketaBox.BorderBrush = new SolidColorBrush(Colors.Black);
                EtiketaBox.BorderThickness = new Thickness(+3);
            }
            else
            {
                foreach (Modeli.EtiketaModel etiketa in this.EtiketaBox.SelectedItems)
                {
                    noviSpomenik.Etikete.Add(etiketa.ToString());
                }
                etiketa_greska.Visibility = Visibility.Hidden;
                Etiketa.Visibility = Visibility.Visible;
                EtiketaBox.BorderBrush = new SolidColorBrush(Colors.Gray);
                EtiketaBox.BorderThickness = new Thickness(+1);
            }

            provera = this.Datum.ToString().Trim();

            if (provera.Equals("") || provera == null)
            {
                
                mesidzprovera = true;
                Datumgreska.Visibility = Visibility.Visible;
                datum.Visibility = Visibility.Hidden;
                Datum.BorderBrush = new SolidColorBrush(Colors.Black);
                Datum.BorderThickness = new Thickness(+3);
            }
            else
            {
                noviSpomenik.Datum = provera;
                Datumgreska.Visibility = Visibility.Hidden;
                datum.Visibility = Visibility.Visible;
                Datum.BorderBrush = new SolidColorBrush(Colors.Gray);
                Datum.BorderThickness = new Thickness(+1);
            }

            provera = this.Era_piker.Text.Trim();

            if (provera.Equals("") || provera == null)
            {
                mesidzprovera = true;
                Eraporeka_greska.Visibility = Visibility.Visible;
                era.Visibility = Visibility.Hidden;
            }
            else
            {
                noviSpomenik.Era = provera;
                Eraporeka_greska.Visibility = Visibility.Hidden;
                era.Visibility = Visibility.Visible;
            }

            provera = this.Status_piker.Text.Trim();

            if (provera.Equals("") || provera == null)
            {
                mesidzprovera = true;
                Tursitickistatus_greska.Visibility = Visibility.Visible;
                Tursitickistatus.Visibility = Visibility.Hidden;
            }
            else
            {
                noviSpomenik.Status = provera;
                Tursitickistatus_greska.Visibility = Visibility.Hidden;
                Tursitickistatus.Visibility = Visibility.Visible;
            }

            if (Obradjen.IsChecked == true)
            {
                noviSpomenik.Obradjen = true;
            }
            else {
                noviSpomenik.Obradjen = false;
            }
            if (Naseljebx.IsChecked == true)
            {
                noviSpomenik.NaseljeDa = true;
            }
            else
            {
                noviSpomenik.NaseljeDa = false;
            }
            if (Unescobx.IsChecked == true)
            {
                noviSpomenik.Unesco = true;
            }
            else
            {
                noviSpomenik.Unesco = false;
            }
            

            provera = this.PrihodBox.Text.Trim();
            double prihod;

            if (provera.Equals("") || provera == null || !double.TryParse(provera, out prihod))
            {
                mesidzprovera = true;
                prihod_greska.Visibility = Visibility.Visible;
                Prihod.Visibility = Visibility.Hidden;
                PrihodBox.BorderBrush = new SolidColorBrush(Colors.Black);
                PrihodBox.BorderThickness = new Thickness(+3);
            }
            else
            {
                if (prihod < 0)
                {
                    mesidzprovera = true;
                    prihod_greska.Visibility = Visibility.Visible;
                    Prihod.Visibility = Visibility.Hidden;
                    PrihodBox.BorderBrush = new SolidColorBrush(Colors.Black);
                    PrihodBox.BorderThickness = new Thickness(+3);
                }
                else {
                    noviSpomenik.Prihod = provera;
                    prihod_greska.Visibility = Visibility.Hidden;
                    Prihod.Visibility = Visibility.Visible;
                    PrihodBox.BorderBrush = new SolidColorBrush(Colors.Gray);
                    PrihodBox.BorderThickness = new Thickness(+1);
                }
            }

            provera = this.TipBox.Text.Trim();
            if (provera.Equals("") || provera == null)
            {
                mesidzprovera = true;
                tip_greska.Visibility = Visibility.Visible;
                Tip.Visibility = Visibility.Hidden;
            }
            else
            {
                if (slikatip.Source == null)
                {
                    tip_greska.Visibility = Visibility.Hidden;
                    Tip.Visibility = Visibility.Visible;
                    noviSpomenik.Slika = mainW.ListaTipova[this.TipBox.SelectedIndex].Slika;
                }
                else
                {
                    noviSpomenik.Slika = slikatip.Source.ToString().Trim();
                }
            }
            if (mesidzprovera==true)
            {
              
                    Console.Beep();
                
                System.Windows.MessageBox.Show("Obratite pažnju na poruke među uzvičnicima \"! !\" i podebljana polja");
            }
            else
            {
                foreach (Modeli.Spomenik spom in mainW.ListaSpomenika)
                {
                    if (spom.Oznaka.Equals(noviSpomenik.Oznaka))
                    {
                        
                        System.Windows.Forms.MessageBox.Show("Spomenik sa ovom oznakom već postoji!");
                        return;
                    }
                }
                
                mainW.Spomenici.Add(noviSpomenik);
                mainW.ListaSpomenika.Add(noviSpomenik);
                System.Windows.Forms.MessageBox.Show("Uspešno ste dodali Spomenik!");
                
                serijalizacija();

                return;
            }
        }

        private void serijalizacija()
        {
            using (Stream fs = new FileStream(mainW.korisnik+"Spomenici.xml", FileMode.Create, FileAccess.Write, FileShare.None))
            {
                XmlSerializer serializer = new XmlSerializer(typeof(ObservableCollection<Spomenik>));
                serializer.Serialize(fs, mainW.ListaSpomenika);
            }
        }

        private void CommandBinding_Executed(object sender, ExecutedRoutedEventArgs e)
        {
             
            string str = Help.HelpProvider.GetHelpKey(this);
            Help.HelpProvider.ShowHelp(str, this);
        }
    }
}
