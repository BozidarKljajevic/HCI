   M S B A M L   `   `   `  ����O  Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem  5   
   @ <Start, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:Start.TabeleStart.Tabele 5   	   'clr-namespace:Start.Help
Start.Help 5   	   !   Start.Tabele.SpomenikTabela   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   9System&clr-namespace:System;assembly=mscorlib     5   
   ,localclr-namespace:Start.Tabele     5   	   &lclr-namespace:Start.Help     5   	     � Title$  SpomenikTabela��5
   	   $	��430��6    $	��750��6-   $	��430��69   $	��750��6I    � WindowStartupLocation$ CenterScreen=�6X    Start.Help.HelpProvider   HelpKey$ TabelaSpomenikHelp��6}    J� CommandBindings 5      )  #System.Windows.Input.CommandBinding  5   
   -   5           Command$ ApplicationCommands.Help��5      6<   .��5      � .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ dgrMain��5         MinColumnWidth$ 80Q�6$      
IsReadOnly .    AutoGenerateColumns .  $	��148��6�   $	��Top=�6�   $��	0,0,118,0q�6�   ��68   �� 	 �� Path$	 ListaSpomenika�
   Columns
 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Oznaka��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$ SizeToCells 65   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6I   �� *Oznaka+6f     5      $	 Ime��6%   $ SizeToCells 62    6F   �� *Ime+6`     5      $	 Tip��6%   $ SizeToCells 62    6F   �� *Tip+6`     5      $ Era porekla��6%   $ SizeToCells 6:    6N   �� *Era+6h     5      $ Turisticki status��6%   $ SizeToCells 6@    6T   �� *Status+6q     5      $ Prihod��6%   $ SizeToCells 65    6I   �� *Prihod+6f     5      $ Datum otkrivanja��6%   $ SizeToCells 6?    6S   �� *Datum+6o   5      � 5   
   $
��Left=�6   $	��248��6+   $��	0,150,0,0q�68   $	��Top=�6K   $	��744��6c    � ColumnDefinitions 5      �� 5       $��1* �6#   �� 5!      $��1* �6#   �� 5"      $��1* �6#   .+�5%      �� $��Oznaka:��6   $
��Left=�6&   $��	14,10,0,0q�6A   $	��Top=�6T   �� 5&      -   5        $��	OznakaBox��5&      $
��Left=�6t   $��23��6�   $��	76,13,0,0q�6�    �� TextWrapping$
 Wrap=�6�   $	��Top=�6�   $	��139��6�   ��6(   ��  �� ElementName$ dgrMain��$	 SelectedItem.Oznaka� �� Mode$ OneWay=�.��6�    � ToolTip 5'      �� 5(       �� Orientation$ 
Horizontal=�6!   .+�5*      �� $��5q�6$   $
��Wrap=�6/   $	��200��6C   ��Oznaka spomenika predstavlja jedistvenu-ljudski čitljivu oznaku koja određuje svaki spomenik. Oznaka svakog spomenika je različita i služi da se spomenik jedinstveno identifikuje.5.      5/      .��51   #   53      �� 55      $
��Ime:��6   $
��Left=�6#   $��	14,70,0,0q�6>   $	��Top=�6Q   �� 56      -   5        $��ImeBox��56      $
��Left=�6m   $��23��6�   $��	76,70,0,0q�6�   $
 Wrap=�6�   $	��Top=�6�   $	��139��6�   ��6$   �� $ dgrMain��$	 SelectedItem.Ime�$ OneWay=�.��6�    57      �� 58      $ 
Horizontal=�6!   .+�5:      �� $��5q�6$   $
��Wrap=�6/   $	��200��6C   @>Ime spomenika se odnosi na ime spomenika koji ste selektovali.5<      5=      .��5?   #   5A      �� 5C      $��Opis:��6   $
��Left=�6$   $��
14,136,0,0q�6?   $	��Top=�6S   �� 5D      -   5        $��OpisBox��5D      $
��Left=�6o   $��52��6�   $��
76,122,0,0q�6�   $
 Wrap=�6�   $	��Top=�6�   $	��139��6�   ��6%   �� $ dgrMain��$	 SelectedItem.Opis�$ OneWay=�.��6�    5E      �� 5F      $ 
Horizontal=�6!   .+�5G      �� $��5q�6$   $
��Wrap=�6/   $	��200��6C   ��Kratak ili dugačak opis spomenika koji ste selektovali. Sve informacije koje želite da uneste o smpomeniku, a nisu ponuđene, možete upisati u ovo polje.5J      5K      .��5M   #   5N      �� 5P      $
��Tip:��6   $
��Left=�6#   $��
14,205,0,0q�6>   $	��Top=�6R   �� 5Q      -   5        $��TipBox��5Q      $��76,203,83,19q�6�    �� Text 6&   �� $ dgrMain��$	 SelectedItem.Tip�$ OneWay=���6o   �� $	 ListaTipova� 5R      �� 5S      $ 
Horizontal=�6!   .+�5T      �� $��5q�6$   $
��Wrap=�6/   $	��200��6C   omSvaki spomenik je određen tipom. Tip možete izabrati iz ponuđene liste ili kreirati svoj potpuno novi tip.5W      5X      5[      �� 5]      -   5        $��
Izmena tip��5]      $
��Left=�6*   $��170,205,0,0q�6E   $	��Top=�6Z   $��65��6r   6}   �� 5`      $��Era porekla:��6   $��1��6+   $
��Left=�6;   $��	10,10,0,0q�6V   $	��Top=�6i   �� 5a      -   5        $��EraBox��5a      $��1��6n   $
��Left=�6~   $��
115,10,0,0q�6�   $	��Top=�6�   $	��120��6�    6%   �� $ dgrMain��$	 SelectedItem.Era�$ OneWay=� 5b      �� 5c      $ 
Horizontal=�6!   .+�5d      �� $��5q�6$   $
��Wrap=�6/   $	��200��6C   [YSvaki spomenik je određen erom porekla. Eru porekla možete izabrati iz ponuđene liste.5f      5g      .@�5i      �� -	   5        $��Paleolit��5i      $��Paleolit��6/    5j      �� 5k      $ 
Horizontal=�6%   .+�5l      �� $��5q�6(   $
��Wrap=�63   $	��200��6G   ��Paleolit ili starije kameno doba je period koji se proteže od pre 2,6 miliona godina do 10.000. godine p. n. e. Obeležio ga je nastanak i razvoj hominida i prvobitnog oruđa i oružja, najčešće od kamena.5n      5o      5q      �� 5r      -
   5        $��Neolit��5r      $��Neolit��6-    5s      �� 5t      $ 
Horizontal=�6%   .+�5u      �� $��5q�6(   $
��Wrap=�63   $	��200��6G   ��Neolit ili mlađe kameno doba je period praistorije u kome je čovek potpuno ovladao proizvodnjom i upotrebom oružja i oruđa od glačanog kamena5w      5x      5z      �� 5{      -   5        $��	Stari_vek��5{      $��	Stari vek��60    5|      �� 5}      $ 
Horizontal=�6%   .+�5~      �� $��5q�6(   $
��Wrap=�63   $	��200��6G   ��Stari vek je epoha koja se proteže se od pojave klasnih društava, prvih civilizacija i prve pismenosti (4000—3000. godine p. n. e. pa do propasti Zapadnog rimskog carstva (476. godine).5�      5�      5�      �� 5�      -   5        $��Srednji_vek��5�      $��Srednji vek��62    5�      �� 5�      $ 
Horizontal=�6%   .+�5�      �� $��5q�6(   $
��Wrap=�63   $	��200��6G   ��Srednji vek obuhvata istorijski period od V do XV veka. To je razdoblje počelo padom Zapadnog rimskog carstva i okončalo se renesansom i razdobljem velikih geografskih otkrića.5�      5�      5�      �� 5�      -   5        $��	Renesansa��5�      $��	Renesansa��60    5�      �� 5�      $ 
Horizontal=�6%   .+�5�      �� $��5q�6(   $
��Wrap=�63   $	��200��6G   ��Renesansa je kulturno-istorijski pojam koji je najpre označavao doba od 1350. do 16. veka kao period u kome je došlo do ponovnog interesovanja za klasičnu antiku i procvata umetnosti, da bi se zatim ovim pojmom označavalo kulturno stanje prelaznog doba od srednjeg veka do novog doba, naročito u Italiji.5�      5�      5�      �� 5�      -   5        $��Moderno_doba��5�      $��Moderno doba��63    5�      �� 5�      $ 
Horizontal=�6%   .+�5�      �� $��5q�6(   $
��Wrap=�63   $	��200��6G   ��Moderno doba je vremenski period koji je bez prekida blisko povezan sa sadašnjim vremenom i koji je izvesna perspektiva moderne istorije. Termin „savremena istorija“ je u upotrebi od 19. veka.5�      5�      5�      5�      �� 5�      $��Turistički status:��6   $��1��61   $
��Left=�6A   $��	10,55,0,0q�6\   $	��Top=�6o   $	��100��6�   �� 5�      -   5        $��	StatusBox��5�      $��1��6t   $
��Left=�6�   $��
115,58,0,0q�6�   $	��Top=�6�   $	��120��6�    6(   �� $ dgrMain��$	 SelectedItem.Status�$ OneWay=� 5�      �� 5�      $ 
Horizontal=�6!   .+�5�      �� $��5q�6$   $
��Wrap=�6/   $	��200��6C   kiSvaki spomenik je određen turističkim statusom. Turistički status možete izabrati iz ponuđene liste.5�      5�      .@�5�      �� -   5        $��Eksploatisan��5�      $��Eksploatisan��63    5�      �� 5�      $ 
Horizontal=�6%   .+�5�      �� $��5q�6(   $
��Wrap=�63   $	��200��6G   rpEksplatisani spomenici su oni spomenici čiji su resursi ili dobro koje spomenici donose maksimalno korišćeni.5�      5�      5�      �� 5�      -   5        $��Dostupni��5�      $��Dostupni��6/    5�      �� 5�      $ 
Horizontal=�6%   .+�5�      �� $��5q�6(   $
��Wrap=�63   $	��200��6G   ��Dostupni spomenici su spomenici koji su u svakom pogledu dostupni turistima. Dostupni spomenici su bezbedni i turistima je u svakom momentu omogućen pristup ovim spomenicima.5�      5�      5�      �� 5�      -   5        $��
Nedostupni��5�      $��
Nedostupni��61    5�      �� 5�      $ 
Horizontal=�6%   .+�5�      �� $��5q�6(   $
��Wrap=�63   $	��200��6G   ��Nedostupni spomenici su spomenici koji iz nekog razloga nisu dostupni turistima. Razlozi za nedpustupnost nekom spomeniku mogu biti bezbednost, retkost nekog spomenika, ili neki drugi razlog zaštite spomenika ili turista.5�      5�      5�      5�      �� 5�      $��Godišnji prihod:��6   $��1��6/   $
��Left=�6?   $��
10,104,0,0q�6Z   $	��Top=�6n   $	��105��6�   �� 5�      -   5        $��	PrihodBox��5�   b   $��1��6s   $
��Left=�6�   $��23��6�   $��115,107,0,0q�6�   $
 Wrap=�6�   $	��Top=�6�   $��57��6�   ��6   �� $ dgrMain��$	 SelectedItem.Prihod�$ OneWay=�.��6�    5�      �� 5�      $ 
Horizontal=�6!   .+�5�      �� $��5q�6$   $
��Wrap=�6/   $	��200��6C   ��Polje namenjeno da za spomenik koji kreirate uneste brojčanu vrednost prihoda od turizma, valuta za prihod svakog spomenika su dolari.5�      5�      .��5�   #   5�      �� 5�      $��$��6   $��1��6    $
��Left=�60   $��190,107,0,0q�6K   $	��Top=�6`   �� 5�      $��Etiketa:��6   $��1��6'   $
��Left=�67   $��
10,155,0,0q�6R   $	��Top=�6f   �� 5�      -   5        $��
EtiketaBox��5�       �� SelectionMode$ Multiple=�6T   $
��Left=�6m   $��56��6�   $��
76,142,0,0q�6�   $	��Top=�6�   $��81��6�   $��1��6�   ��6)   �� $	 ListaEtiketa� 5�      �� 5�      $ 
Horizontal=�6!   .+�5�      �� $��5q�6$   $
��Wrap=�6/   $	��200��6C   ��Svaki spomenik je određen etiketom. Ne morate izabrati nijednu etiketu, možete jednu ili više, ili moežete kreirati svoju potpuno novu etiketu.5�      5�      5�      �� 5�      -   5        $��Izmena etikete��5�      $��1��6.   $
��Left=�6>   $��165,159,0,0q�6Y   $	��Top=�6n   $��83��6�   6�   �� 5�      $��Arheološka obrađenost:��6   $��2��65   $
��Left=�6E   $��3,17,0,0q�6`   $	��Top=�6r   $	��134��6�   $��26��6�   �� 5�      -   5        $��Obradjen��5�      $��2��6'   $
��Left=�6�   $��
169,21,0,0q�6�   $	��Top=�6�    d� 	IsChecked 67   �� $ dgrMain��$	 SelectedItem.Obradjen�$ OneWay=� 5�      �� 5�      $ 
Horizontal=�6!   .+�5�      �� $��5q�6$   $
��Wrap=�6/   $	��200��6C   ��Ukoliko je spomenik koji je slektovan arheološki obrađen, što znači da su arheolozi završili sva istraživanja na njemu, onda označite ovo polje.5�      5�      5�      �� 5�      $��Na listi UNESCO?��6   $��2��6/   $
��Left=�6?   $��	10,67,0,0q�6Z   $	��Top=�6m   �� 5�      -   5        $��Unesco��5�      $��2��6%   $
��Left=�6�   $��
170,70,0,0q�6�   $	��Top=�6�    65   �� $ dgrMain��$	 SelectedItem.Unesco�$ OneWay=� 5�      �� 5�      $ 
Horizontal=�6!   .+�5�      �� $��5q�6$   $
��Wrap=�6/   $	��200��6C   ��Ukoliko se spomenik koji je selektovan nalazi na Unescovoj listi označite ovo polje. Unesco lista je lista na kojoj se nalaze spomenici i lokaliteti kulturnog i prirodnog bogatstva širom sveta.5�      5�      5�      �� 5�      $��Datum otkrivanja:��6   $��1��60   $
��Left=�6@   $��
11,203,0,0q�6[   $	��Top=�6o   (  "System.Windows.Controls.DatePicker  5�      -   5        $��Datum��5�   e   
 �� Now   DisplayDateEnd# Z 6r   $��1��6�   $
��Left=�6�   $��136,204,0,0q�6�   $	��Top=�6�   $��24��6�   $	��102��6     Text 6   �� $ dgrMain��$	 SelectedItem.Datum�$ OneWay=�6  �� 5�      $"��Da li je u naseljenom mestu:��6   $��2��6;   $
��Left=�6K   $��
10,113,0,0q�6f   $	��Top=�6z   �� 5�      -   5        $��	Naseljeno��5�      $��2��6(   $
��Left=�6�   $��181,117,0,0q�6�   $	��Top=�6�    68   �� $ dgrMain��$	 SelectedItem.Naseljeno�$ OneWay=� 5�      �� 5      $ 
Horizontal=�6!   .+�5     �� $��5q�6$   $
��Wrap=�6/   $	��200��6C   WUUkoliko se spomenik koji je selektovan nalazi u naseljenom mestu označite ovo polje.5     5     5     �� 5	     -   5        $��okvir��5	     
���   �$��1q�66   $��2��6J   $
��Left=�6Z   $��27��6u   $��
35,168,0,0q�6�   $	��Top=�6�   $��32��6�   �� 5
     -   5        $	��img��5
     $��2��6l   $
��Left=�6|   $��27��6�   $��
35,167,0,0q�6�   $	��Top=�6�   $��32��6�   ��6   �� $ dgrMain��$	 SelectedItem.Slika�$ OneWay=�6�   �� 5     -   5        $��Izmeni sliku��5     $��2��6,   $
��Left=�6<   $��111,172,0,0q�6W   $	��Top=�6l   $��75��6�    5     �� 5     $ 
Horizontal=�6!   .+�5     �� $��5q�6$   $
��Wrap=�6/   $	��200��6C   DBDugme je namenjeno za izmenu slike za spomenik koji je selektovan.5     5     5     �� 5     -   5        $��Izmeni��5     $��2��6&   $
��Left=�66   $��
29,218,0,0q�6Q   $	��Top=�6e   $��52��6}   $��20��6�    5     �� 5     $ 
Horizontal=�6!   .+�5     �� $��5q�6$   $
��Wrap=�6/   $	��200��6C   ��Dugme je namenjeno da ukoliko ste napravili neku promenu na selektovanom spomeniku, onda tu promenu i sačuvate klikom na ovo dugme.5     5     5     �� 5     -   5        $��Odustani��5     $��2��6(   $
��Left=�68   $��170,218,0,10q�6S   $��62��6i    5     �� 5      $ 
Horizontal=�6!   .+�5!     �� $��5q�6$   $
��Wrap=�6/   $	��200��6C   MKPitiskom na dugme odustajete od izmene spomenika i napuštate ovaj dojalog.5#     5$     5&     �� 5'     $
��Left=�6   $��57��63   $��
122,97,0,0q�6?   $	��Top=�6S   $	��248��6k   $��2��6w    J� RenderTransformOrigin$ 0.5,0.5&�6�   z�5(     V� 5)     .~�5*     �� �� 5+     �� 5,      �� Angle$ -89.764Q�6*   T� 5-     5.     50     �� 51     $��1��6   $
��Left=�6(   $��63��6C   $��
120,87,0,0q�6O   $	��Top=�6c   $	��261��6{   $ 0.5,0.5&�6�   $��2��6�   z�52     V� 53     .~�54     �� �� 55     �� 56     $ -89.84Q�6*   T� 57     58     5:     �� 5;     $
��Left=�6   $��40��63   $��	3,183,0,0q�6?   $	��Top=�6R   $	��245��6j   $ 0.5,0.5&�6v   $��2��6�   z�5<     V� 5=     .~�5>     �� �� 5?     �� 5@     $ -180.381Q�6*   T� 5A     5B     5D     �� 5E     -   5        $��Obriši��5E     $��2��6&   $
��Left=�66   $��
99,218,0,0q�6Q   $	��Top=�6e   $��53��6}   $��22��6�    5F     �� 5G     $ 
Horizontal=�6!   .+�5H     �� $��5q�6$   $
��Wrap=�6/   $	��200��6C   75Dugme je namenjeno da obrišete selektovani spomenik.5J     5K     5M     5N     �� 5O  
   $��Pretraga po oznaci:��6   $
��Left=�6.   $��
626,10,0,0q�6I   $	��Top=�6]   $	��118��6u   �� 5P  
   -    5        $��PretragaBox��5P     $
��Left=�6%   $��23��6@   $��
626,51,0,0q�6L   $
 Wrap=�6`   $	��Top=�6t   $	��108��6�   .��6�    5Q     �� 5R     $ 
Horizontal=�6   .+�5T     �� $��5q�6    $
��Wrap=�6+   $	��200��6?   YWPolje je namenjeno za unos oznake ili dela oznake spomenika koji želite da promađete.5V     5W     .��5Y     5[     �� 5\  
   -!   5        $��	Pretraži��5\     $
��Left=�6$   $��
650,85,0,0q�6?   $	��Top=�6S   $��75��6k    5]     �� 5^     $ 
Horizontal=�6   .+�5_     �� $��5q�6    $
��Wrap=�6+   $	��200��6?   DBDugme je namenjeno da se primeni pretraga za uneto polje pretrage.5a     5b     5d     �� 5e  
   -"   5        $��Poništi��5e     $
��Left=�6#   $��650,121,0,0q�6>   $	��Top=�6S   $��75��6k    5f     �� 5g     $ 
Horizontal=�6   .+�5h     �� $��5q�6    $
��Wrap=�6+   $	��200��6?   RPDugme je namenjeno da se poništi dosatašnja pretraga i prikažu svi spomenici.5j     5k     5m     5n     5o     