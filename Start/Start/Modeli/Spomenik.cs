using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Start.Modeli
{
   public class Spomenik : INotifyPropertyChanged
    {
        private int x;
        private int y;

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
            set
            {
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
            set
            {
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
            set
            {
                if (value != opis)
                {
                    opis = value;
                    OnPropertyChanged("Opis");
                }
            }
        }

        private String tip;

        public String Tip
        {
            get { return tip; }
            set
            {
                if (value != tip)
                {
                    tip = value;
                    OnPropertyChanged("Tip");
                }
            }
        }

        private String era;

        public String Era
        {
            get { return era; }
            set
            {
                if (value != era)
                {
                    era = value;
                    OnPropertyChanged("Era");
                }; }
        }

        private String status;

        public String Status
        {
            get { return status; }
            set
            {
                if (value != status)
                {
                    status = value;
                    OnPropertyChanged("Status");
                }
            }
        }

        private String prihod;

        public String Prihod
        {
            get { return prihod; }
            set
            {
                if (value != prihod)
                {
                    prihod = value;
                    OnPropertyChanged("Prihod");
                }
            }
        }

        

        private bool obradjenost;

        public bool Obradjen
        {
            get { return obradjenost; }
            set
            {
                if (value != obradjenost)
                {
                    obradjenost = value;
                    OnPropertyChanged("Obrađenost");
                }
            }
        }
        
        private bool unesco;

        public bool Unesco
        {
            get { return unesco; }
            set
            {
                if (value != unesco)
                {
                    unesco = value;
                    OnPropertyChanged("Unesco");
                }
            }
        }

        private String datum;

        public String Datum
        {
            get { return datum; }
            set
            {
                if (value != datum)
                {
                    datum = value;
                    OnPropertyChanged("Datum");
                }
            }
        }

        private bool naselje;

        public bool NaseljeDa
        {
            get { return naselje; }
            set
            {
                if (value != naselje)
                {
                    naselje = value;
                    OnPropertyChanged("Naselje");
                }
            }
        }
       

        private String slika;

        public String Slika
        {
            get { return slika; }
            set
            {
                if (value != slika)
                {
                    slika = value;
                    OnPropertyChanged("Slika");
                }; }
        }

        public int X
        {
            get
            {
                return x;
            }

            set
            {
                if (value != x)
                {
                    x = value;
                    OnPropertyChanged("X");
                }
            }
        }

        public int Y
        {
            get
            {
                return y;
            }

            set
            {
                if (value != y)
                {
                    y = value;
                    OnPropertyChanged("Y");
                }
            }
        }

        

        private ObservableCollection<String> etikete = new ObservableCollection<String>();

        public ObservableCollection<String> Etikete
        {
            get { return etikete; }
            set
            {
                if (value != etikete)
                {
                    etikete = value;
                    OnPropertyChanged("Etikete");
                }
            }
        }
    }

    

}
