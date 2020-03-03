using System;
using System.Collections.Generic;
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

namespace Start
{
    /// <summary>
    /// Interaction logic for Logovanje.xaml
    /// </summary>
    public partial class Logovanje : Window
    {
        
        public List<Korisnici> korisnici = new List<Korisnici>();

        public List<Korisnici> Korisnici
        {
            get { return korisnici; }
            set { korisnici = value; }
        }
        public Logovanje()
        {
            
            InitializeComponent();

            XmlSerializer serializer = new XmlSerializer(typeof(List<Korisnici>));

            using (FileStream fs = File.OpenRead("Korisnici.xml"))
            {
                this.Korisnici = (List<Korisnici>)serializer.Deserialize(fs);
            }
            
        }

        private void Ok_Click(object sender, RoutedEventArgs e)
        {
            bool potvrda = false;
            foreach (Korisnici kvp in Korisnici)
            {
                if (kvp.Korisnicko.Equals(Korisnicko.Text) && kvp.Sifra.Equals(Sifra.Password.ToString()))
                {
                    potvrda = true;
                }
               
            }
            if (potvrda == true)
            {
                MainWindow mainW = new MainWindow(Korisnicko.Text);
                System.Windows.MessageBox.Show("Ako Vam u radu bude potrebna pomoć pritisnite F1");
                mainW.Show();
                this.Close();
            }
            else
            {
                Console.Beep();
                Korisnicko.BorderBrush = new SolidColorBrush(Colors.Black);
                Korisnicko.BorderThickness = new Thickness(+3);
                Sifra.BorderBrush = new SolidColorBrush(Colors.Black);
                Sifra.BorderThickness = new Thickness(+3);

                System.Windows.MessageBox.Show("Niste uneli tačno korisničko ime ili lozinku");
            }


        }

        private void Registracija_Click(object sender, RoutedEventArgs e)
        {
            Registracija s = new Registracija(this);
            s.Show();
        }

        private void CommandBinding_Executed(object sender, ExecutedRoutedEventArgs e)
        {
            string str = Help.HelpProvider.GetHelpKey(this);
            Help.HelpProvider.ShowHelp(str, this);
        }

    }
}
