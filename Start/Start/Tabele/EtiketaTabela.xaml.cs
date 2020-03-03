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
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using System.Xml.Serialization;

namespace Start.Tabele
{
    /// <summary>
    /// Interaction logic for EtiketaTabela.xaml
    /// </summary>
    public partial class EtiketaTabela : Window
    {
        MainWindow mainW = null;

        public EtiketaTabela(MainWindow mainW)
        {
            InitializeComponent();
            
            this.mainW = mainW;
            this.DataContext = mainW;
            

        }
        
        private void Button_Click_3(object sender, RoutedEventArgs e)
        {
            

            if (dgrMain.SelectedItem != null)
            {
                Modeli.EtiketaModel novaEtiketa = new Modeli.EtiketaModel();
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
                    novaEtiketa.Oznaka = provera;
                    OznakaBox.BorderBrush = new SolidColorBrush(Colors.Gray);
                    OznakaBox.BorderThickness = new Thickness(+1);

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
                    novaEtiketa.Opis = provera;
                    OpisBox.BorderBrush = new SolidColorBrush(Colors.Gray);
                    OpisBox.BorderThickness = new Thickness(+1);
                }
                novaEtiketa.Boja= ClrPcker_Background.SelectedColor.Value;
                if (mesidzprovera == true)
                {

                    Console.Beep();

                    System.Windows.MessageBox.Show("Ostavili ste prazna polja, obratite pažnju na podebljane okvire polja");
                }
                else
                {
                    mainW.ListaEtiketa[dgrMain.SelectedIndex].Boja = novaEtiketa.Boja;
                    mainW.ListaEtiketa[dgrMain.SelectedIndex].Opis = novaEtiketa.Opis;
                    System.Windows.Forms.MessageBox.Show("Uspesno ste izmenili Etiketu!");
                    dgrMain.Items.Refresh();
                    serijalziacija();
                    

                }
            }
            else
            {
                System.Windows.Forms.MessageBox.Show("Morate selektovati Etiketu koju zelite da izmenite!");
            }
        }
        private void Button_Click_4(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void Button_Click_5(object sender, RoutedEventArgs e)
        {
            if (dgrMain.SelectedItem != null)
            {
                Modeli.EtiketaModel etiketa = (Modeli.EtiketaModel)dgrMain.SelectedItem;
                foreach (Modeli.Spomenik spom in mainW.ListaSpomenika)
                {
                    foreach (String etiktaSpomenika in spom.Etikete)
                    {
                        if (etiktaSpomenika.Equals(etiketa.ToString()))
                        {
                            System.Windows.Forms.MessageBox.Show("Ne mozete izbrisati Etiketu koju koristi neki od Spomenika!");
                            return;
                        }
                    }
                }
                mainW.ListaEtiketa.Remove(etiketa);
                System.Windows.Forms.MessageBox.Show("Uspesno ste izbrisali Etiketu!");

                serijalziacija();
            }
            else
            {
                System.Windows.Forms.MessageBox.Show("Morate selektovati Etiketu koju zelite da izbrisete!");
            }
        }
        private void serijalziacija()
        {
            using (Stream fs = new FileStream(mainW.korisnik + "Etikete.xml", FileMode.Create, FileAccess.Write, FileShare.None))
            {
                XmlSerializer serializer = new XmlSerializer(typeof(ObservableCollection<Modeli.EtiketaModel>));
                serializer.Serialize(fs, mainW.ListaEtiketa);
            }
        }

        private ObservableCollection<Modeli.EtiketaModel> listaPretrageEtiketa = new ObservableCollection<Modeli.EtiketaModel>();

        public ObservableCollection<Modeli.EtiketaModel> ListaPretrageEtiketa
        {
            get { return listaPretrageEtiketa; }
            set { listaPretrageEtiketa = value; }
        }

        private void Pretraga_Click(object sender, RoutedEventArgs e)
        {
            string vrednost = PretragaBox.Text.Trim();
            ListaPretrageEtiketa.Clear();
            if (vrednost != "")
            {
                foreach (EtiketaModel etiketa in mainW.ListaEtiketa)
                {
                    if (etiketa.Oznaka.Contains(vrednost))
                    {
                        listaPretrageEtiketa.Add(etiketa);
                    }
                }
                dgrMain.ItemsSource = ListaPretrageEtiketa;
            }
            else
            {
                dgrMain.ItemsSource = mainW.ListaEtiketa;
            }
        }

        private void PonistiPretragu_Click(object sender, RoutedEventArgs e)
        {
            dgrMain.ItemsSource = mainW.ListaEtiketa;
        }
        private void CommandBinding_Executed(object sender, ExecutedRoutedEventArgs e)
        {
            
            string str = Help.HelpProvider.GetHelpKey(this);
            Help.HelpProvider.ShowHelp(str, this);
        }
    }
}
