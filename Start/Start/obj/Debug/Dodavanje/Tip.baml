   M S B A M L   `   `   `  ����@  <Start, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:Start.DodavanjeStart.Dodavanje  5   	   'clr-namespace:Start.Help
Start.Help  5   	       Start.Dodavanje.Tip   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:Start.Dodavanje     5   	   &lclr-namespace:Start.Help     5   	     � Title$	  Tip��5	   	   $	��350��6   $	��500��6"     Start.Help.HelpProvider   HelpKey$ NoviTipHelp��6.   $	��430��5
   	   $	��750��6    � WindowStartupLocation$ CenterScreen=�6(    J� CommandBindings 5      )  #System.Windows.Input.CommandBinding  5   
   -   5           Command$ ApplicationCommands.Help��5      6<   .��5      � $��4q�6    � ColumnDefinitions 5   
   �� 5      $��1* �6   �� 5      $��2* �6    � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   .+�5   
   �� -   5        $��Oznaka��5      $��0��6   $��0��6.   $��Oznaka:��6;   $��Center=�6M   6l   �� 5   
   -   5        $��	OznakaBox��5      $��1��6#   $��0��63   $��5,5,5,20q�6@   .��6R    � ToolTip 5      �� 5       �� Orientation$ 
Horizontal=�6   .+�5      �� $��5q�6    $
��Wrap=�6+   $	��200��6?   ��Oznaka tipa predstavlja jedistvenu-ljudski čitljivu oznaku koja određuje svaki tip. Oznaka svakog tipa je različita i služi da se etiketa jedinstveno identifikuje.5#      5$      .��5%      5&      �� 5(   
   -   5        $	��Ime��5(      $��Center=�6   $��0��69   $��1��6I   $
��Ime:��6W   6h   �� 5)   
   -   5        $��ImeBox��5)      $��1��6    $��1��60   $��5,5,5,20q�6=   .��6O    5*      �� 5+      $ 
Horizontal=�6   .+�5,      �� $��5q�6    $
��Wrap=�6+   $	��200��6?   31Polje namenjeno za unos imena tipa koji kreirate.5.      5/      .��50      51      �� 53   
   -   5        $
��Opis��53      $��Center=�6   $��Center=�69   $��0��6[   $��2��6k   $��Opis:��6y   6�   �� 54   
   -   5        $��OpisBox��54      	 �� TextWrapping$
	 Wrap=�6!   "
 �� VerticalScrollBarVisibility$

 Auto=�65   $��1��6X   $��2��6h   $��5q�6u   $��70��6�   .��6�    55      �� 56      $ 
Horizontal=�6   .+�57      �� $��5q�6    $
��Wrap=�6+   $	��200��6?   ��Kratak ili dugačak opis tipa koji unoste. Sve informacije koje želite da uneste o tipu, a nisu ponuđene, možete upisati u ovo polje.5:      5;      .��5=      5>      �� 5@   
   -   5        $	��img��5@      $��1��6   $
��Left=�6,   $	��100��6G   $��2.4,29.8,0,-5.8q�6T   $��3��6m   $	��Top=�6z   $��98��6�   �� 5A   
   -	   5        $��Dodaj ikonicu��5A      $
��Left=�6)   $��33,65.8,0,0q�6D   $��3��6Y   $	��Top=�6f   $��86��6~   $��32��6�    5B      �� 5C      $ 
Horizontal=�6   .+�5D      �� $��5q�6    $
��Wrap=�6+   $	��200��6?   =;Dugme je namenjeno za dodavanje slike za tip koji kreirate.5F      5G      5I      �� 5J   
   -
   5        $��okvir��5J      
���   �$��1q�62   $��1��6F   $
��Left=�6V   $	��100��6q   $��0.4,29.8,0,-28.2q�6~   $��3��6�   $	��Top=�6�   $	��100��6�   �� 5L   
   -   5        $��	Snimi tip��5L      $��1��6%   $
��Left=�65   $��212.4,51.8,0,0q�6P   $��3��6h   $	��Top=�6u   $��75��6�    5M      �� 5N      $ 
Horizontal=�6   .+�5O      �� $��5q�6    $
��Wrap=�6+   $	��200��6?   B@Pritiskom na dugme biće sačuvan tip za koji ste uneli podatke.5Q      5R      5T      �� 5U   
   -   5        $��Odustani��5U      $��Odustani��6!   $��1��64   $
��Left=�6D   $��213.4,100.8,0,1q�6_   $��3��6x   $��75��6�    5V      �� 5W      $ 
Horizontal=�6   .+�5X      �� $��5q�6    $
��Wrap=�6+   $	��200��6?   KIPitiskom na dugme odustajete od kreiranja tipa i napuštate ovaj dojalog.5Z      5[      5]      �� 5_   
   -   5        $��slika_greska��5_      $y�Hidden=�6$   $��! Unestie sliku !��68   $
��Left=�6T   $��27,29.8,0,0q�6o   $��3��6�   $	��Top=�6�   $	��125��6�   �� 5`   
   -   5        $��oznaka_greska��5`   A   $y�Hidden=�6   $��! Unesite oznaku !��6$   $
��Left=�6V   $��27,0,0,0q�6q   $	��Top=�6�   �� 5a   
   -   5        $��
ime_greska��5a   %   $y�Hidden=�6   $��! Unesite ime !��67   $
��Left=�6R   $��	33,41,0,0q�6m   $	��Top=�6�   $��2��6�   �� 5b   
   -   5        $��opis_greska��5b   ?   $y�Hidden=�6   $��! Unesite opis !��6$   $
��Left=�6S   $��27,27.6,0,0q�6n   $	��Top=�6�   $��2��6�   5f      5g      