   M S B A M L   `   `   `  ����@  <Start, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:Start.TabeleStart.Tabele  5   	   'clr-namespace:Start.Help
Start.Help  5   	        Start.Tabele.EtiketaTabela   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   X TXceed.Wpf.Toolkit, Version=3.5.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  5   	   &localclr-namespace:Start.Tabele  5   	    lclr-namespace:Start.Help  5   	     � Title$  EtiketaTabela��5
   	   $	��450��6   $	��750��6,   $	��430��68   $	��750��6H    � WindowStartupLocation$ CenterScreen=�6W     Start.Help.HelpProvider   HelpKey$ TabelaEtiketaHelp��6|    J� CommandBindings 5      )  #System.Windows.Input.CommandBinding  5   
   -   5           Command$ ApplicationCommands.Help��5      6<   .��5      � .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ dgrMain��5         MinColumnWidth$ 80Q�6$      
IsReadOnly .    AutoGenerateColumns .  $	��148��6�   $	��Top=�6�   $��25,0,255.6,0q�6�   ��68   �� 	 �� Path$	 ListaEtiketa�
   Columns
 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Oznaka��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$ SizeToCells 65   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6I   �� *Oznaka+6f     5      $
 Opis��6%   $ SizeToCells 63    6G   �� *Opis+6b   4  .System.Windows.Controls.DataGridTemplateColumn  5      $
 Boja��6)      CellTemplate 5      �� 5      .R�5      �� ��5      �� 5   "    �� Color 62   �� $
	 Boja�6P   5      5      5      5      � 5    
   $
��Left=�6N   $	��248��6i   $��	0,150,0,0q�6v   $	��Top=�6�   $	��744��6�    � DataContext 6   ��  �� ElementName$ dgrMain��$	 SelectedItem�.+�5#      �� $��Oznaka:��6   $
��Left=�6&   $��
139,12,0,0q�6A   $	��Top=�6U   �� 5$      -   5        $��	OznakaBox��5$      $
��Left=�6E   $��23��6`   $��
277,10,0,0q�6l    �� TextWrapping$
 Wrap=�6�   $	��Top=�6�   $	��139��6�   ��6(   �� $	 Oznaka�.��6�    � ToolTip 5%      �� 5&       �� Orientation$ 
Horizontal=�6!   .+�5'      �� $��5q�6$   $
��Wrap=�6/   $	��200��6C   ��Oznaka etikete predstavlja jedistvenu-ljudski čitljivu oznaku koja određuje svaku etiketu. Oznaka svake etikete je različita i služi da se etiketa jedinstveno identifikuje.5+      5,      .��5-   #   5.      �� 50      $��Opis:��6   $
��Left=�6$   $��
139,87,0,0q�6?   $	��Top=�6S   �� 51      -   5        $��OpisBox��51      $
��Left=�6@   $��52��6[   $��
277,87,0,0q�6g   $
 Wrap=�6{   $	��Top=�6�   $	��139��6�   ��6%   �� $
	 Opis�.��6�    52      �� 53      $ 
Horizontal=�6!   .+�54      �� $��5q�6$   $
��Wrap=�6/   $	��200��6C   ��Kratak ili dugačak opis za selektovanu etiketu. Sve informacije koje želite da uneste o etiketi, a nisu ponuđene, možete upisati u ovo polje.57      58      .��5:   #   5;      �� 5=      -   5        $
��Boja��5=      $��Center=�6    $��Center=�6=   $��0��6_   $��Boja:��6p   $��141,175,568,20q�6�   #	  Xceed.Wpf.Toolkit.ColorPicker	  5>      -   5        $��ClrPcker_Background��5>      $
��Left=�6l   $��23��6�   $��256,203,0,0q�6�   $	��Top=�6�   $	��180��6�    	  SelectedColor 6;   �� $
	 Boja� �� Mode$ OneWay=�6�   �� 5@      -   5        $��Izmeni��5@      $
��Left=�6&   $��504,203,0,0q�6A   $	��Top=�6V   $��52��6n   $��20��6y    5A      �� 5B      $ 
Horizontal=�6!   .+�5C      �� $��5q�6$   $
��Wrap=�6/   $	��200��6C   ��Dugme je namenjeno da ukoliko ste napravili neku promenu na selektovanoj etiketi, onda tu promenu i sačuvate klikom na ovo dugme.5E      5F      5H      �� 5I      -   5        $��Odustani��5I      $
��Left=�6(   $��672,205,0,23q�6C   $��62��6Y    5J      �� 5K      $ 
Horizontal=�6!   .+�5L      �� $��5q�6$   $
��Wrap=�6/   $	��200��6C   KIPitiskom na dugme odustajete od izmene etikete i napuštate ovaj dojalog.5N      5O      5Q      �� 5R      -	   5        $��Obriši��5R      $
��Left=�6&   $��586,203,0,25q�6A   $��62��6W    5S      �� 5T      $ 
Horizontal=�6!   .+�5U      �� $��5q�6$   $
��Wrap=�6/   $	��200��6C   64Dugme je namenjeno da obrišete selektovanu etiketu.5W      5X      5Z      5[      �� 5\   
   $!��Pretraga etikete po oznaci:��6   $
��Left=�66   $��
562,11,0,0q�6Q   $	��Top=�6e   $	��163��6}   �� 5]   
   -
   5        $��PretragaBox��5]      $
��Left=�6%   $��23��6@   $��
562,53,0,0q�6L   $
 Wrap=�6`   $	��Top=�6t   $	��163��6�   .��6�    5^      �� 5_      $ 
Horizontal=�6   .+�5a      �� $��5q�6    $
��Wrap=�6+   $	��200��6?   WUPolje je namenjeno za unos oznake ili dela oznake etikete koji želite da promađete.5c      5d      .��5f      5h      �� 5i   
   -   5        $��	Pretraži��5i      $
��Left=�6$   $��
613,93,0,0q�6?   $	��Top=�6S   $��75��6k    5j      �� 5k      $ 
Horizontal=�6   .+�5l      �� $��5q�6    $
��Wrap=�6+   $	��200��6?   DBDugme je namenjeno da se primeni pretraga za uneto polje pretrage.5n      5o      5q      �� 5r   
   -   5        $��Poništi��5r      $
��Left=�6#   $��613,131,0,0q�6>   $	��Top=�6S   $��75��6k    5s      �� 5t      $ 
Horizontal=�6   .+�5u      �� $��5q�6    $
��Wrap=�6+   $	��200��6?   PNDugme je namenjeno da se poništi dosatašnja pretraga i prikažu sve etikete.5w      5x      5z      5{      5|      