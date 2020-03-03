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
    /// Interaction logic for Tip.xaml
    /// </summary>
    public partial class Tip : Window
    {
        MainWindow mainW = null;
        public Tip(MainWindow mainW)
        {
            this.mainW = mainW;
            this.DataContext = mainW;
            InitializeComponent();
            
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
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
            String provera = (this.img.Source != null)? this.img.Source.ToString() : "";
            bool mesidzprovera = false;
            Modeli.TipModel noviTip = new Modeli.TipModel();

            if (provera.Equals("") || provera == null)
            {
                mesidzprovera = true;
                slika_greska.Visibility = Visibility.Visible;
                okvir.BorderBrush = new SolidColorBrush(Colors.Black);
                okvir.BorderThickness = new Thickness(+3);
            }
            else
            {

                slika_greska.Visibility = Visibility.Hidden;
                okvir.BorderBrush = new SolidColorBrush(Colors.Gray);
                okvir.BorderThickness = new Thickness(+1);
            }
            noviTip.Slika = provera;

            provera = OznakaBox.Text.Trim();

            if (provera.Equals("") || provera == null)
            {
                mesidzprovera = true;
                Oznaka.Visibility = Visibility.Hidden;
                oznaka_greska.Visibility = Visibility.Visible;
                OznakaBox.BorderBrush = new SolidColorBrush(Colors.Black);
                OznakaBox.BorderThickness = new Thickness(+3);
            }
            else
            {
                noviTip.Oznaka = provera;
                Oznaka.Visibility = Visibility.Visible;
                oznaka_greska.Visibility = Visibility.Hidden;
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
                noviTip.Ime = provera;
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
                noviTip.Opis = provera;
                opis_greska.Visibility = Visibility.Hidden;
                Opis.Visibility = Visibility.Visible;
                OpisBox.BorderBrush = new SolidColorBrush(Colors.Gray);
                OpisBox.BorderThickness = new Thickness(+1);
            }
            if (mesidzprovera == true)
            {

                Console.Beep();

                System.Windows.MessageBox.Show("Obratite pažnju na poruke među uzvičnicima \"! !\" i podebljana polja");
            }
            else
            {
                foreach (Modeli.TipModel resurs in mainW.ListaTipova)
                {
                    if (resurs.Oznaka.Equals(noviTip.Oznaka))
                    {
                        System.Windows.Forms.MessageBox.Show("Tip sa ovom oznakom već postoji!");
                        return;
                    }
                }
               
                mainW.ListaTipova.Add(noviTip);
                System.Windows.Forms.MessageBox.Show("Uspesno ste dodali Tip!");

                serijalizacija();

                return;
            }
        }

        public void serijalizacija() {
            using (Stream fs = new FileStream(mainW.korisnik+"Tipovi.xml", FileMode.Create, FileAccess.Write, FileShare.None))
            {
                XmlSerializer serializer = new XmlSerializer(typeof(ObservableCollection<Modeli.TipModel>));
                serializer.Serialize(fs, mainW.ListaTipova);
            }
        }

        private void CommandBinding_Executed(object sender, ExecutedRoutedEventArgs e)
        {
            
            string str = Help.HelpProvider.GetHelpKey(this);
            Help.HelpProvider.ShowHelp(str, this);
        }
    }
}
