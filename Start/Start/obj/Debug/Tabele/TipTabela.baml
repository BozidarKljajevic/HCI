   M S B A M L   `   `   `  ����@  <Start, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:Start.TabeleStart.Tabele  5   	   'clr-namespace:Start.Help
Start.Help  5   	       Start.Tabele.TipTabela   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:Start.Tabele     5   	   &lclr-namespace:Start.Help     5   	     � Title$  	TipTabela��5	   	   $	��450��6   $	��750��6(   $	��430��64   $	��750��6D    � WindowStartupLocation$ CenterScreen=�6S     Start.Help.HelpProvider   HelpKey$ TabelaTipHelp��6x    J� CommandBindings 5
      )  #System.Windows.Input.CommandBinding  5   
   -   5           Command$ ApplicationCommands.Help��5      6<   .��5      � .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ dgrMain��5         MinColumnWidth$ 80Q�6$      
IsReadOnly .    AutoGenerateColumns .  $	��148��6�   $	��Top=�6�   $��25,0,247.6,0q�6�   ��68   �� 	 �� Path$	 ListaTipova�
   Columns
 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Oznaka��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$ SizeToCells 65   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6I   �� *Oznaka+6f     5      $	 Ime��6%   $ SizeToCells 62    6F   �� *Ime+6`   4  .System.Windows.Controls.DataGridTemplateColumn  5      $ Slika��6)      CellTemplate 5      �� 5      .R�5      �� $��25��6B   $��25��6M   ��6$   �� $	 Slika�6[   5      5      5      � 5   
   $
��Left=�6N   $	��248��6i   $��	0,150,0,0q�6v   $	��Top=�6�   $	��744��6�    � DataContext 6   ��  �� ElementName$ dgrMain��$	 SelectedItem�.+�5      �� $��Oznaka:��6   $
��Left=�6&   $��
139,12,0,0q�6A   $	��Top=�6U   �� 5      -   5        $��	OznakaBox��5      {�.  $
��Left=�6W   $��23��6r   $��
277,10,0,0q�6~    �� TextWrapping$
 Wrap=�6�   $	��Top=�6�   $	��139��6�   ��6(   �� $	 Oznaka�.��6�    � ToolTip 5       �� 5!       �� Orientation$ 
Horizontal=�6!   .+�5"      �� $��5q�6$   $
��Wrap=�6/   $	��200��6C   ��Oznaka tipa predstavlja jedistvenu-ljudski čitljivu oznaku koja određuje svaki tip. Oznaka svakog tipa je različita i služi da se etiketa jedinstveno identifikuje.5&      5'      .��5(   #   5)      �� 5+      $
��Ime:��6   $
��Left=�6#   $��
139,73,0,0q�6>   $	��Top=�6R    J� RenderTransformOrigin$ 1.798,0.625&�6j   �� 5,      -   5        $��ImeBox��5,      $
��Left=�6>   $��23��6Y   $��
277,73,0,0q�6e   $
 Wrap=�6y   $	��Top=�6�   $	��139��6�   ��6$   �� $		 Ime�.��6�    5-      �� 5.      $ 
Horizontal=�6!   .+�5/      �� $��5q�6$   $
��Wrap=�6/   $	��200��6C   =;Polje namenjeno za prikaz i izmenu imena selektovanog tipa.51      52      .��53   #   54      �� 56      $��Opis:��6   $
��Left=�6$   $��139,156,0,0q�6?   $	��Top=�6T   �� 57      -   5        $��OpisBox��57      $
��Left=�6@   $��52��6[   $��277,130,0,0q�6g   $
 Wrap=�6|   $	��Top=�6�   $	��139��6�   ��6%   �� $
	 Opis�.��6�    58      �� 59      $ 
Horizontal=�6!   .+�5:      �� $��5q�6$   $
��Wrap=�6/   $	��200��6C   ��Kratak ili dugačak opis selektovanog tipa. Sve informacije koje želite da uneste o tipu, a nisu ponuđene, možete upisati u ovo polje.5=      5>      .��5@   #   5A      �� 5C      -   5        $��okvir��5C      
���   �$��1q�66   $
��Left=�6J   $��64��6e   $��
504,73,0,0q�6q   $	��Top=�6�   $��71��6�   �� 5D      -   5        $	��img��5D      $
��Left=�6=   $��64��6X   $��
504,73,0,0q�6d   $	��Top=�6x   $��69��6�   ��6   �� $	 Slika�6�   �� 5E      -   5        $��Izmeni sliku��5E      $
��Left=�6,   $��
615,84,0,0q�6G   $	��Top=�6[   $��75��6s   6~   �� 5F      -	   5        $��Izmeni��5F      $
��Left=�6&   $��492,208,0,0q�6A   $	��Top=�6V   $��52��6n   $��20��6y    5G      �� 5H      $ 
Horizontal=�6!   .+�5I      �� $��5q�6$   $
��Wrap=�6/   $	��200��6C   ��Dugme je namenjeno da ukoliko ste napravili neku promenu na selektovanim tipom, onda tu promenu i sačuvate klikom na ovo dugme.5K      5L      5N      �� 5O      -
   5        $��Odustani��5O      $
��Left=�6(   $��659,208,0,20q�6C   $��62��6Y    5P      �� 5Q      $ 
Horizontal=�6!   .+�5R      �� $��5q�6$   $
��Wrap=�6/   $	��200��6C   HFPitiskom na dugme odustajete od izmene tipa i napuštate ovaj dojalog.5T      5U      5W      �� 5X      -   5        $��Obriši��5X      $
��Left=�6&   $��579,208,0,0q�6A   $	��Top=�6V   $��62��6n    5Y      �� 5Z      $ 
Horizontal=�6!   .+�5[      �� $��5q�6$   $
��Wrap=�6/   $	��200��6C   20Dugme je namenjeno da obrišete selektovani tip.5]      5^      5`      5a      �� 5b   
   $��Pretraga tipa po oznaci:��6   $
��Left=�63   $��
585,18,0,0q�6N   $	��Top=�6b   $	��159��6z   �� 5c   
   -   5        $��PretragaBox��5c      $
��Left=�6%   $��23��6@   $��
595,57,0,0q�6L   $
 Wrap=�6`   $	��Top=�6t   $	��120��6�   .��6�    5d      �� 5e      $ 
Horizontal=�6   .+�5g      �� $��5q�6    $
��Wrap=�6+   $	��200��6?   SQPolje je namenjeno za unos oznake ili dela oznake tip koji želite da promađete.5i      5j      .��5l      5n      �� 5o   
   -   5        $��	Pretraži��5o      $
��Left=�6$   $��
619,98,0,0q�6?   $	��Top=�6S   $��75��6k    5p      �� 5q      $ 
Horizontal=�6   .+�5r      �� $��5q�6    $
��Wrap=�6+   $	��200��6?   DBDugme je namenjeno da se primeni pretraga za uneto polje pretrage.5t      5u      5w      �� 5x   
   -   5        $��Poništi��5x      $
��Left=�6#   $��620,135,0,0q�6>   $	��Top=�6S   $��75��6k    5y      �� 5z      $ 
Horizontal=�6   .+�5{      �� $��5q�6    $
��Wrap=�6+   $	��200��6?   OMDugme je namenjeno da se poništi dosatašnja pretraga i prikažu svi tipovi.5}      5~      5�      5�      5�      