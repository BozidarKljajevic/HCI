   M S B A M L   `   `   `  ����O  Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem  5   	   @ <Start, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:Start.DodavanjeStart.Dodavanje 5   	   'clr-namespace:Start.Help
Start.Help 5   	   #   Start.Dodavanje.Novi_spomenik   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   9System&clr-namespace:System;assembly=mscorlib     5   	   /localclr-namespace:Start.Dodavanje     5   	   &lclr-namespace:Start.Help     5   	     � Title$  Novi_spomenik��5
   	   $	��430��6   $	��750��6,    Start.Help.HelpProvider   HelpKey$ NoviSpomenik��68   $	��430��5   	   $	��750��6    � WindowStartupLocation$ CenterScreen=�6(    J� CommandBindings 5      )  #System.Windows.Input.CommandBinding  5   
   -   5           Command$ ApplicationCommands.Help��5      6<   .��5      � $��4q�6    � ColumnDefinitions 5   
   �� 5      $��1* �6   �� 5      $��1* �6    � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $
��auto �6   $
��49.6��6*   �� 5      $
��auto �6   $
��49.6��6*   �� 5      $
��auto �6   $
��43.8��6*   �� 5      $
��auto �6   �� 5      $
��auto �6   $
��39.2��6*   �� 5      $
��auto �6   $
��43.2��6*   �� 5      $
��auto �6   $
��31.2��6*   .+�5%   
   �� -   5        $��oznaka��5%       $��0��6   $��0��6.   $��Oznaka:��6;   $��Center=�6M   $��37,0,281,0.6q�6j   $��50��6�   6�   �� 5&   
   -   5        $��	OznakaBox��5&      $��0��6#   $ NoviSpomenik��60   $��168,5,7,0.4q�6V   .��6k    � ToolTip 5'      �� 5(       �� Orientation$ 
Horizontal=�6   .+�5*      �� $��5q�6    $
��Wrap=�6+   $	��200��6?   ��Oznaka spomenika predstavlja jedistvenu-ljudski čitljivu oznaku koja određuje svaki spomenik. Oznaka svakog spomenika je različita i služi da se spomenik jedinstveno identifikuje.5.      5/      .��51      53      �� 55      -   5        $	��Ime��55      $��Center=�6   $��0��6=   $��1��6M   $
��Ime:��6[   $��47,4.4,271,19.2q�6j   $��50��6�   6�   �� 56   
   -   5        	 ��Name$	 ImeBox��56      $��1��6"   $��168,9.6,7,19q�6/   .��6E    57      �� 58      $ 
Horizontal=�6   .+�5:      �� $��5q�6    $
��Wrap=�6+   $	��200��6?   �~Ime spomenika se odnosi na ime spomenika koji unosite. Primeri za ime spomenika su: Ajfelova kula, Kineski zid, Kip slobode...5=      5>      .��5@      5B      �� 5D   
   -   5        $
��Opis��5D      $��Center=�6   $��Center=�69   $��0��6[   $��2��6k   $��Opis:��6y   $��49,4.8,283,43.8q�6�   $��36��6�   $��2��6�   �� 5E   
   -   5        $��OpisBox��5E      
 �� TextWrapping$

 Wrap=�6!   " �� VerticalScrollBarVisibility$
 Auto=�65   $��2��6X   $��168,5,7,5.6q�6e   .��6z    5F      �� 5G      $ 
Horizontal=�6   .+�5H      �� $��5q�6    $
��Wrap=�6+   $	��200��6?   ��Kratak ili dugačak opis spomenika koji unoste. Sve informacije koje želite da uneste o smpomeniku, a nisu ponuđene, možete upisati u ovo polje.5K      5L      .��5N      5O      �� 5Q   
   -   5        $	��Tip��5Q      $��Center=�6   $��0��66   $��3��6F   $��Center=�6S   $
��Tip:��6w   $��10,12.2,248,5.8q�6�   $��26��6�   �� 5R   
   -	   5        $��TipBox��5R       �� 
IsEditable .  $��3��6^   $��167,8,99,9.8q�6k   ��6"   ��  �� Path$ ListaTipova� 5S      �� 5T      $ 
Horizontal=�6   .+�5U      �� $��5q�6    $
��Wrap=�6+   $	��200��6?   omSvaki spomenik je određen tipom. Tip možete izabrati iz ponuđene liste ili kreirati svoj potpuno novi tip.5X      5Y      5\      �� 5^   
   -
   5        $	��era��5^   +   $��Center=�6   $��0��66   $��4��6F   $��Center=�6S   $��Era porekla:��6w   $��26��6�   $��37,9.2,248,12q�6�   6�   �� 5_   
   -   5        $��	Era_piker��5_       .  $��4��6a   $��168,8.2,30,12.8q�6n   ��6%   �� $ Era_porekla� 5`      �� 5a      $ 
Horizontal=�6   .+�5b      �� $��5q�6    $
��Wrap=�6+   $	��200��6?   [YSvaki spomenik je određen erom porekla. Eru porekla možete izabrati iz ponuđene liste.5d      5e      .@�5g      �� -   5        $��Paleolit��5g      $��Paleolit��6+    5h      �� 5i      $ 
Horizontal=�6!   .+�5j      �� $��5q�6$   $
��Wrap=�6/   $	��200��6C   ��Paleolit ili starije kameno doba je period koji se proteže od pre 2,6 miliona godina do 10.000. godine p. n. e. Obeležio ga je nastanak i razvoj hominida i prvobitnog oruđa i oružja, najčešće od kamena.5l      5m      5o      �� 5p      -   5        $��Neolit��5p      $��Neolit��6)    5q      �� 5r      $ 
Horizontal=�6!   .+�5s      �� $��5q�6$   $
��Wrap=�6/   $	��200��6C   ��Neolit ili mlađe kameno doba je period praistorije u kome je čovek potpuno ovladao proizvodnjom i upotrebom oružja i oruđa od glačanog kamena5u      5v      5x      �� 5y      -   5        $��	Stari_vek��5y      $��	Stari vek��6,    5z      �� 5{      $ 
Horizontal=�6!   .+�5|      �� $��5q�6$   $
��Wrap=�6/   $	��200��6C   ��Stari vek je epoha koja se proteže se od pojave klasnih društava, prvih civilizacija i prve pismenosti (4000—3000. godine p. n. e. pa do propasti Zapadnog rimskog carstva (476. godine).5~      5      5�      �� 5�      -   5        $��Srednji_vek��5�      $��Srednji vek��6.    5�      �� 5�      $ 
Horizontal=�6!   .+�5�      �� $��5q�6$   $
��Wrap=�6/   $	��200��6C   ��Srednji vek obuhvata istorijski period od V do XV veka. To je razdoblje počelo padom Zapadnog rimskog carstva i okončalo se renesansom i razdobljem velikih geografskih otkrića.5�      5�      5�      �� 5�      -   5        $��	Renesansa��5�      $��	Renesansa��6,    5�      �� 5�      $ 
Horizontal=�6!   .+�5�      �� $��5q�6$   $
��Wrap=�6/   $	��200��6C   ��Renesansa je kulturno-istorijski pojam koji je najpre označavao doba od 1350. do 16. veka kao period u kome je došlo do ponovnog interesovanja za klasičnu antiku i procvata umetnosti, da bi se zatim ovim pojmom označavalo kulturno stanje prelaznog doba od srednjeg veka do novog doba, naročito u Italiji.5�      5�      5�      �� 5�      -   5        $��Moderno_doba��5�      $��Moderno doba��6/    5�      �� 5�      $ 
Horizontal=�6!   .+�5�      �� $��5q�6$   $
��Wrap=�6/   $	��200��6C   ��Moderno doba je vremenski period koji je bez prekida blisko povezan sa sadašnjim vremenom i koji je izvesna perspektiva moderne istorije. Termin „savremena istorija“ je u upotrebi od 19. veka.5�      5�      5�      5�      �� 5�   
   -   5        $��obradjenost��5�       $��1��6   $��Center=�63   $��Arheološka obrađenost:��6W   $��3,0,210,48.2q�6x   $��2��6�   �� 5�   
   -   5        $��Obradjen��5�      $
��Left=�6#   $��	214,5,0,0q�6>   $	��Top=�6Q   $��15��6i   $��16��6u   $��1��6�    5�      �� 5�      $ 
Horizontal=�6   .+�5�      �� $��5q�6    $
��Wrap=�6+   $	��200��6?   ��Ukoliko je spomenik koji kreirate arheološki obrađen, što znači da su arheolozi završili sva istraživanja na njemu, onda označite ovo polje.5�      5�      5�      �� 5�   
   $��Center=�6   $��Center=�6+   $��1��6O   $��1��6_   $��Na  na listi UNESCO?��6m   $��10,9.4,223,14.2q�6�   $��26��6�   6�   �� 5�   
   -   5        $��Unescobx��5�      $
��Left=�6#   $��214,16.8,0,0q�6>   $	��Top=�6T   $��15��6l   $��16��6x   $��1��6�   $��1��6�    5�      �� 5�      $ 
Horizontal=�6   .+�5�      �� $��5q�6    $
��Wrap=�6+   $	��200��6?   ��Ukoliko se spomenik koji kreirate nalazi na Unescovoj listi označite ovo polje. Unesco lista je lista na kojoj se nalaze spomenici i lokaliteti kulturnog i prirodnog bogatstva širom sveta.5�      5�      5�      �� 5�   
   -   5        $��naselje��5�      $��Center=�6    $��Center=�6;   $��1��6_   $��3��6o   $"��Da li je u naseljenom mestu?��6}   $��3,9.4,193,8.6q�6�   $��26��6�   �� 5�   
   -   5        $��	Naseljebx��5�      $
��Left=�6$   $��
214,13,0,0q�6?   $��3��6S   $	��Top=�6`   $��15��6x   $��16��6�   $��1��6�    5�      �� 5�      $ 
Horizontal=�6   .+�5�      �� $��5q�6    $
��Wrap=�6+   $	��200��6?   RPUkoliko se spomenik koji kreirate nalazi u naseljenom mestu označite ovo polje.5�      5�      5�      �� 5�   
   -   5        $��Tursitickistatus��5�   +   $��Center=�6   $��Center=�6C   $��0��6g   $��5��6w   $��Turistički status:��6�   $��-4,7.2,200,6q�6�   $��26��6�   �� 5�   
   -   5        $��Status_piker��5�       .  $��5��6i   $��168,10.2,31,2q�6v   ��6:   �� $ Turisticki_status� 5�      �� 5�      $ 
Horizontal=�6   .+�5�      �� $��5q�6    $
��Wrap=�6+   $	��200��6?   kiSvaki spomenik je određen turističkim statusom. Turistički status možete izabrati iz ponuđene liste.5�      5�      .@�5�      �� -   5        $��Eksploatisan��5�      $��Eksploatisan��6/    5�      �� 5�      $ 
Horizontal=�6!   .+�5�      �� $��5q�6$   $
��Wrap=�6/   $	��200��6C   rpEksplatisani spomenici su oni spomenici čiji su resursi ili dobro koje spomenici donose maksimalno korišćeni.5�      5�      5�      �� 5�      -   5        $��Dostupni��5�      $��Dostupni��6+    5�      �� 5�      $ 
Horizontal=�6!   .+�5�      �� $��5q�6$   $
��Wrap=�6/   $	��200��6C   ��Dostupni spomenici su spomenici koji su u svakom pogledu dostupni turistima. Dostupni spomenici su bezbedni i turistima je u svakom momentu omogućen pristup ovim spomenicima.5�      5�      5�      �� 5�      -   5        $��
Nedostupni��5�      $��
Nedostupni��6-    5�      �� 5�      $ 
Horizontal=�6!   .+�5�      �� $��5q�6$   $
��Wrap=�6/   $	��200��6C   ��Nedostupni spomenici su spomenici koji iz nekog razloga nisu dostupni turistima. Razlozi za nedpustupnost nekom spomeniku mogu biti bezbednost, retkost nekog spomenika, ili neki drugi razlog zaštite spomenika ili turista.5�      5�      5�      5�      �� 5�   
   -   5        $��Prihod��5�      $��Center=�6   $��Center=�69   $��1��6]   $��4��6m   $#��Godišnji prihodi od turizma:��6{   $��7,11.4,189,9.8q�6�   $��26��6�   �� 5�   
   -   5        $��	PrihodBox��5�      $��4��6#   $��228,11.4,68,9.8q�60   $��1��6I   .��6Y    5�      �� 5�      $ 
Horizontal=�6   .+�5�      �� $��5q�6    $
��Wrap=�6+   $	��200��6?   ��Polje namenjeno da za spomenik koji kreirate uneste brojčanu vrednost prihoda od turizma, valuta za prihod svakog spomenika su dolari.5�      5�      .��5�      5�      �� 5�   
   $��$��6   $
��Left=�6   $��319,10.4,0,0q�67   $��4��6M   $	��Top=�6Z   $��26��6r   $��16��6~   $��1��6�   �� 5�   
   -   5        $��datum��5�      $��2��6   $��Center=�6*   $��Center=�6N   $��3,9,217,14.6q�6i   $��1��6   $��26��6�   .��6�   Datum otkrivanja:6�   (  "System.Windows.Controls.DatePicker  5�   
   -   5        $��Datum��5�      
 �� Now   DisplayDateEnd# Z 6"   $��1��6R   $
��Left=�6b   $��233,11.8,0,0q�6}   $��2��6�   $	��Top=�6�   $��24��6�   $	��102��6�   5�      �� 5�   
   -    5        $��slikatip��5�      $
��Left=�6    $��40��6;   $��45,23.2,0,0q�6G   $	��Top=�6\   $��54��6t   $��5��6   $��1��6�   $��2��6�   �� 5�   
   -!   5        $��Dodaj sliku��5�   ,   $��1��6B   $
��Left=�6R   $��	210,5,0,0q�6m   $��6��6�   $	��Top=�6�   $��75��6�   $��19��6�    5�      �� 5�      $ 
Horizontal=�6   .+�5�      �� $��5q�6    $
��Wrap=�6+   $	��200��6?   ��Dugme je namenjeno za dodavanje slike za spomenik koji kreirate, ukoliko ne dodate sliku, biće dodata slika iz tipa koji ste odabrali.5      5     5     �� 5  
   
���   �$��1q�6&   $
��Left=�6:   $��61��6U   $��45,10.2,0,0q�6a   $	��Top=�6v   $��54��6�    J� RenderTransformOrigin$ 0.287,0.059&�6�   $��5��6�   $��1��6�   $��2��6�   �� 5  
   -"   5        $��
snimidugme��5     $��Snimi spomenik��6#   $
��Left=�6<   $��256,43.2,0,-4.6q�6W   $��7��6p   $	��Top=�6}   $	��102��6�   $��27��6�    5     �� 5     $ 
Horizontal=�6   .+�5	     �� $��5q�6    $
��Wrap=�6+   $	��200��6?   GEPritiskom na dugme biće sačuvan spomenik za koji ste uneli podatke.5     5     5     �� 5  
   -#   5        $��Odustani��5     $
��Left=�6$   $��45,43.2,0,-5.4q�6?   $��7��6W   $	��Top=�6d   $��89��6|   $��27��6�   $��1��6�    5     �� 5     $ 
Horizontal=�6   .+�5     �� $��5q�6    $
��Wrap=�6+   $	��200��6?   PNPitiskom na dugme odustajete od kreiranja spomenika i napuštate ovaj dojalog.5     5     5     �� 5  
   $
��Left=�6   $��5��6/   $��-4,24.2,0,0q�6:   $��7��6O   $	��Top=�6\   $	��740��6t   $��2��6�   �� 5  
   $
��Left=�6   $��4��6/   $��
206,37,0,0q�6:   $��3��6N   $	��Top=�6[   $	��325��6s   $��2��6   $ 0.5,0.5&�6�   z�5     V� 5     .~�5     �� �� 5     �� 5      �� Angle$ -89.466Q�6&   T� 5     5      5"     �� 5$  
   -$   5        $��Novi tip��5$     $
��Left=�6$   $��286,12.2,0,0q�6?   $��3��6U   $	��Top=�6b   $��75��6z   $��19��6�    5%     �� 5&     $ 
Horizontal=�6   .+�5'     �� $��5q�6    $
��Wrap=�6+   $	��200��6?   a_Dugme je namenjeno za dodavanje novog tipa ukoliko u listi ne postoji tip koji Vam je potreban.5)     5*     5,     �� 5.  
   -%   5        $��Etiketa��5.     $��0��6   $��6��6/   $��Center=�6<   $��Center=�6`   $��-4,8,235,10.2q�6{   $��25��6�   .��6�   
Etiketa:6�   �� 50  
   -&   5        $��
EtiketaBox��50      �� SelectionMode$ Multiple=�6N   $
��Left=�6g   $��53��6�   $��138,10.2,0,0q�6�   $��6��6�   $	��Top=�6�   $	��131��6�   $��2��6�   ��6$   �� $ ListaEtiketa� 51     �� 52     $ 
Horizontal=�6   .+�53     �� $��5q�6    $
��Wrap=�6+   $	��200��6?   ��Svaki spomenik je određen etiketom. Ne morate izabrati nijednu etiketu, možete jednu ili više, ili moežete kreirati svoju potpuno novu etiketu.56     57     5:     �� 5<  
   -'   5        $��Nova etiketa��5<     $
��Left=�6(   $��
283,13,0,0q�6C   $��6��6W   $	��Top=�6d   $��75��6|   $��19��6�    5=     �� 5>     $ 
Horizontal=�6   .+�5?     �� $��5q�6    $
��Wrap=�6+   $	��200��6?   geDugme je namenjeno za dodavanje nove etikete ukoliko u listi ne postoji etiketa koji Vam je potreban.5A     5B     5D     �� 5G  
   -(   5        $��oznakaproblem��5G     $��! Unesite oznaku !��6%   $y�Hidden=�6C   $
��Left=�6W   $	��Top=�6r   $	��168��6�   $��26��6�   $��	18,-2,0,0q�6�   �� 5H  
   -)   5         ��Name$ 
ime_greska��5H  *   $��! Unesite ime !��6   $y�Hidden=�6?   $
��Left=�6S   $��
31,4.6,0,0q�6n   $��1��6�   $	��Top=�6�   �� 5I  
   -*   5        $��opis_greska��5I  ?   $��! Unesite opis !��6   $y�Hidden=�6+   $
��Left=�6R   $��	37,14,0,0q�6m   $��2��6�   $	��Top=�6�   �� 5J  
   -+   5        $��
tip_greska��5J  @   $��! Izaberite tip !��6   $y�Hidden=�6,   $
��Left=�6R   $��40,10.4,0,0q�6m   $��3��6�   $	��Top=�6�   �� 5K  
   -,   5        $��Eraporeka_greska��5K  I   $��! Izaberite eru porekla !��6   $y�Hidden=�65   $
��Left=�6a   $��
10,9.2,0,0q�6|   $��4��6�   $	��Top=�6�   $	��144��6�   $��26��6�   �� 5L  
   --   5        $��Tursitickistatus_greska��5L  O   $&�� ! Izaberite turistički status !��6   $y�Hidden=�6:   $
��Left=�6n   $��
10,7.2,0,0q�6�   $��5��6�   $	��Top=�6�   $	��158��6�   $��25��6�   �� 5M  
   -.   5        $��etiketa_greska��5M  B   $��! Unesite etiketu !��6   $y�Hidden=�6.   $
��Left=�6X   $��	31,10,0,0q�6s   $��6��6�   $	��Top=�6�   �� 5N  
   -/   5        $��Obradjenost_greska��5N     $��! Oznacite obradjenost !��6*   $y�Hidden=�6M   $��1��6a   $
��Left=�6q   $��10,0,0,0q�6�   $	��Top=�6�   $��26��6�   $	��141��6�   �� 5O  
   -0   5        $��Datumgreska��5O     $y�Hidden=�6#   $��! Izaberite datum !��68   $
��Left=�6V   $��	45,10,0,0q�6q   $��2��6�   $	��Top=�6�   $	��185��6�   $��25��6�   $��1��6�   �� 5P  
   -1   5        $��naselje_greska��5P     $y�Hidden=�6&   $%��! Oznacite da li je u naselju !��6:   $��1��6d   $
��Left=�6t   $��20,11.4,0,0q�6�   $��3��6�   $	��Top=�6�   �� 5Q  
   -2   5        $��prihod_greska��5Q  L   $#��! Unesite prohod u dolarima !��6   $y�Hidden=�68   $��1��6a   $
��Left=�6q   $��20,10.4,0,0q�6�   $��4��6�   $	��Top=�6�   5V     5Y     