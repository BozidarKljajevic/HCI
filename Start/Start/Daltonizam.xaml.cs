using System;
using System.Collections.Generic;
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

namespace Start
{
    /// <summary>
    /// Interaction logic for Daltonizam.xaml
    /// </summary>
    public partial class Daltonizam : Window
    {
        

        MainWindow mainW = null;
        public Daltonizam(MainWindow mainW)
        {
            this.mainW = mainW;
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            mainW.mapaSlika.ImageSource = new BitmapImage(new Uri(@"C:\Users\bozid\Desktop\New folder (2)/mapa4.png", UriKind.Relative));
            this.Close();
           
        }
        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            mainW.mapaSlika.ImageSource = new BitmapImage(new Uri(@"C:\Users\bozid\Desktop\New folder (2)/mapa1.png", UriKind.Relative));
            this.Close();
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            mainW.mapaSlika.ImageSource = new BitmapImage(new Uri(@"C:\Users\bozid\Desktop\New folder (2)/mapa2.png", UriKind.Relative));
            this.Close();
        }

        private void Button_Click_3(object sender, RoutedEventArgs e)
        {
            mainW.mapaSlika.ImageSource = new BitmapImage(new Uri(@"C:\Users\bozid\Desktop\New folder (2)/mapa3.png", UriKind.Relative));
            this.Close();
        }
    }
}
