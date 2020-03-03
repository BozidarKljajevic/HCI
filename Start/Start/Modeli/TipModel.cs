using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Start.Modeli
{
   public class TipModel : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;
        protected virtual void OnPropertyChanged(string name)
        {
            if (PropertyChanged != null)
            {
                PropertyChanged(this, new PropertyChangedEventArgs(name));
            }
        }

        private String oznaka;

        public String Oznaka
        {
            get { return oznaka; }
            set {
                if (value != oznaka)
                {
                    oznaka = value;
                    OnPropertyChanged("Oznaka");
                }
            }
        }

        private string ime;

        public String Ime
        {
            get { return ime; }
            set {
                if (value != ime)
                {
                    ime = value;
                    OnPropertyChanged("Ime");
                }
            }
        }

        private String opis;

        public String Opis
        {
            get { return opis; }
            set {
                if (value != opis)
                {
                    opis = value;
                    OnPropertyChanged("Opis");
                }
            }
        }
        private String slika;

        public String Slika
        {
            get { return slika; }
            set {
                    if(value != slika)
                    {
                        slika = value;
                        OnPropertyChanged("Slika");
                }
            }
        }
        public override string ToString()
        {
            return this.Oznaka;
        }
    }
}
