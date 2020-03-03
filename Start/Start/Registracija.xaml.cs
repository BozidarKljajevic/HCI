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
    /// Interaction logic for Registracija.xaml
    /// </summary>
    public partial class Registracija : Window
    {
        Logovanje log = null;
        //public Korisnici korsinik=new Korisnici();
        public List<Korisnici> korisnici1 = new List<Korisnici>();

        public List<Korisnici> Korisnici1
        {
            get { return korisnici1; }
            set { korisnici1 = value; }
        }

        
        public Registracija(Logovanje log)
        {
            this.log = log;
            InitializeComponent();
            XmlSerializer serializer = new XmlSerializer(typeof(List<Korisnici>));

            using (FileStream fs = File.OpenRead("Korisnici.xml"))
            {
                this.Korisnici1 = (List<Korisnici>)serializer.Deserialize(fs);
            }

        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            String provera = this.KorisnickoReg.Text;
            String provera1 = this.SifraReg.Password.ToString();
            bool mesidzprovera = false;
            Korisnici korsinik = new Korisnici();

            if (provera.Equals("") || provera==null)
            {
                mesidzprovera = true;
                KorisnickoReg.BorderBrush = new SolidColorBrush(Colors.Black);
                KorisnickoReg.BorderThickness = new Thickness(+3);
                
            }
            else
            {
                korsinik.Korisnicko = provera;
                KorisnickoReg.BorderBrush = new SolidColorBrush(Colors.Gray);
                KorisnickoReg.BorderThickness = new Thickness(+1);
            }
            if(provera1.Equals("") || provera1 == null || provera1.Length<=3)
            {
                mesidzprovera = true;
                SifraReg.BorderBrush = new SolidColorBrush(Colors.Black);
                SifraReg.BorderThickness = new Thickness(+3);
                
            }
            else
            {
                korsinik.Sifra = provera1;
                SifraReg.BorderBrush = new SolidColorBrush(Colors.Gray);
                SifraReg.BorderThickness = new Thickness(+1);
            }
            if (mesidzprovera == true)
            {
                Console.Beep();
                System.Windows.MessageBox.Show("Morate uneti korisničko ime i šifru dužu od 3 karaktera");
            }
            else
            {
                bool postoji = false;
                
                foreach (Korisnici k in Korisnici1)
                {
                    if (k.Korisnicko.Equals(korsinik.Korisnicko))
                    {
                        postoji = true;
                        break;
                    }
                }
                if (postoji == true)
                {
                    Console.Beep();
                    System.Windows.MessageBox.Show("Korisnik sa tim korisničkim imenom već postoji");
                }
                else
                {
                    Korisnici1.Add(korsinik);
                    System.Windows.MessageBox.Show("Uspešno ste se registrovali");

                    XmlSerializer serializer = new XmlSerializer(typeof(List<Korisnici>));
                    using (Stream fs = new FileStream("Korisnici.xml", FileMode.Create, FileAccess.Write, FileShare.None))
                    {
                        serializer = new XmlSerializer(typeof(List<Korisnici>)); ;
                        serializer.Serialize(fs, Korisnici1);
                    }

                    using (FileStream fs = File.OpenRead("Korisnici.xml"))
                    {
                        log.Korisnici = (List<Korisnici>)serializer.Deserialize(fs);
                    }
                    this.Close();
                }

                



            }
        }
    }
}
