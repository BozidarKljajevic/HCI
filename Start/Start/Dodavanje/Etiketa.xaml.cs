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
using System.Windows.Shapes;
using System.Xml.Serialization;

namespace Start.Dodavanje
{
    /// <summary>
    /// Interaction logic for Etiketa.xaml
    /// </summary>
    public partial class Etiketa : Window
    {
        MainWindow mainW = null;
        public Etiketa(MainWindow mainW)
        {
            this.mainW = mainW;
            this.DataContext = mainW;
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            String provera = OznakaBox.Text.Trim();
            bool mesidzprovera = false;
            Modeli.EtiketaModel novaEtiketa = new Modeli.EtiketaModel();

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
                novaEtiketa.Oznaka = provera;
                Oznaka.Visibility = Visibility.Visible;
                oznaka_greska.Visibility = Visibility.Hidden;
                OznakaBox.BorderBrush = new SolidColorBrush(Colors.Gray);
                OznakaBox.BorderThickness = new Thickness(+1);

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
                novaEtiketa.Opis = provera;
                opis_greska.Visibility = Visibility.Hidden;
                Opis.Visibility = Visibility.Visible;
                OpisBox.BorderBrush = new SolidColorBrush(Colors.Gray);
                OpisBox.BorderThickness = new Thickness(+1);
            }
            novaEtiketa.Boja = boja.SelectedColor.Value;

            if (mesidzprovera == true)
            {

                Console.Beep();

                System.Windows.MessageBox.Show("Obratite pažnju na poruke među uzvičnicima \"! !\" i podebljana polja");
            }
            else
            {
                foreach (Modeli.EtiketaModel resurs in mainW.ListaEtiketa)
                {
                    if (resurs.Oznaka.Equals(novaEtiketa.Oznaka))
                    {
                        
                        System.Windows.Forms.MessageBox.Show("Etiketa sa ovom oznakom već postoji!");
                        return;
                    }
                }
                
                mainW.ListaEtiketa.Add(novaEtiketa);
                System.Windows.Forms.MessageBox.Show("Uspesno ste dodali Etiketu!");

                serijalizacija();

                return;
            }

        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void serijalizacija()
        {
            using (Stream fs = new FileStream(mainW.korisnik+"Etikete.xml", FileMode.Create, FileAccess.Write, FileShare.None))
            {
                XmlSerializer serializer = new XmlSerializer(typeof(ObservableCollection<Modeli.EtiketaModel>));
                serializer.Serialize(fs, mainW.ListaEtiketa);
            }
        }
        private void CommandBinding_Executed(object sender, ExecutedRoutedEventArgs e)
        {
            
            string str = Help.HelpProvider.GetHelpKey(this);
            Help.HelpProvider.ShowHelp(str, this);
        }
    }
}
