using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Media;

namespace Start.Modeli
{
    public class EtiketaModel
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
            set
            {
                if (value != oznaka)
                {
                    oznaka = value;
                    OnPropertyChanged("Oznaka");
                }
            }
        }

        private Color boja;

        public Color Boja
        {
            get { return boja; }
            set
            {
                if (value != boja)
                {
                    boja = value;
                    OnPropertyChanged("Boja");
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

        public override string ToString()
        {
            return Oznaka;
        }

    }
}
