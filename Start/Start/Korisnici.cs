using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Serialization;

namespace Start
{
    public class Korisnici
    {
        public event PropertyChangedEventHandler PropertyChanged;
        protected virtual void OnPropertyChanged(string name)
        {
            if (PropertyChanged != null)
            {
                PropertyChanged(this, new PropertyChangedEventArgs(name));
            }
        }

        [XmlAttribute]
        public string korisnicko;
        [XmlAttribute]
        public string sifra;

        public String Korisnicko
        {
            get { return korisnicko; }
            set
            {
                if (value != korisnicko)
                {
                    korisnicko = value;
                    OnPropertyChanged("Korisnicko");
                }
            }
        }

        public String Sifra
        {
            get { return sifra; }
            set
            {
                if (value != sifra)
                {
                    sifra = value;
                    OnPropertyChanged("Sifra");
                }
            }
        }
    }
}
