   M S B A M L   `   `   `  ����@  <Start, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:Start.DodavanjeStart.Dodavanje  5   	   'clr-namespace:Start.Help
Start.Help  5   	       Start.Dodavanje.Etiketa   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:Start.Dodavanje     5   	   &lclr-namespace:Start.Help     5   	   X TXceed.Wpf.Toolkit, Version=3.5.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  5   	     � Title$  Etiketa��5
   	   $��325.597��6   $��406.717��6*     Start.Help.HelpProvider   HelpKey$ NovaEtiketaHelp��6:   $	��430��5   	   $	��750��6    � WindowStartupLocation$ CenterScreen=�6(    J� CommandBindings 5      )  #System.Windows.Input.CommandBinding  5   
   -   5           Command$ ApplicationCommands.Help��5      6<   .��5      � $��4q�6    � ColumnDefinitions 5   
   �� 5      $��1* �6   �� 5      $��2* �6    � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   .+�5   
   �� -   5        $��Oznaka��5      $��0��6   $��0��6.   $��Oznaka:��6;   $��Center=�6M   6l   �� 5   
   -   5        $��	OznakaBox��5      $��1��6#   $��0��63   $��5,5,5,20q�6@   .��6R    � ToolTip 5      �� 5        �� Orientation$ 
Horizontal=�6   .+�5!      �� $��5q�6    $
��Wrap=�6+   $	��200��6?   ��Oznaka etikete predstavlja jedistvenu-ljudski čitljivu oznaku koja određuje svaku etiketu. Oznaka svake etikete je različita i služi da se etiketa jedinstveno identifikuje.5%      5&      .��5'      5(      �� 5*   
   -   5        $
��Opis��5*      $��Center=�6   $��Center=�69   $��0��6[   $��Opis:��6l   $��45,0,44.4,0q�6|   $��2��6�   �� 5+   
   -   5        $��OpisBox��5+      	 �� TextWrapping$
	 Wrap=�6"   "
 �� VerticalScrollBarVisibility$

 Auto=�66   $��1��6Y   $��2��6i   $��4.6,11,5.2,30.2q�6v   $��70��6�   .��6�    5,      �� 5-      $ 
Horizontal=�6   .+�5.      �� $��5q�6    $
��Wrap=�6+   $	��200��6?   ��Kratak ili dugačak opis etikete koji unoste. Sve informacije koje želite da uneste o etiketi, a nisu ponuđene, možete upisati u ovo polje.51      52      .��54      55      �� 57   
   -   5        $
��Boja��57      $��Center=�6   $��Center=�69   $��0��6[   $��Boja:��6l   $��48,8,47.4,-8q�6|   $��3��6�   #  Xceed.Wpf.Toolkit.ColorPicker  58   
   -   5          Name$
 boja��58         SelectedColor$ BlackX�6*   $
��Left=�6@   $��23��6[   $��130,29.6,0,-51.8q�6g   $	��Top=�6�   $	��180��6�   $��2��6�   $��3��6�   6�   �� 5:   
   -   5        $��2��5:      $��Snimi etkietu��6%   $
��Left=�6=   $��95,96,0,-55.6q�6X   $��3��6o   $	��Top=�6|   $��82��6�   $��26��6�    5;      �� 5<      $ 
Horizontal=�6   .+�5=      �� $��5q�6    $
��Wrap=�6+   $	��200��6?   GEPritiskom na dugme biće sačuvana etiketa za koji ste uneli podatke.5?      5@      5B      �� 5C   
   -	   5        $��Odustani��5C      $��Right=�6$   $��0,96,82,-54.8q�6@   $��3��6W   $	��Top=�6d   $��80��6|   $��1��6�   $��26��6�    5D      �� 5E      $ 
Horizontal=�6   .+�5F      �� $��5q�6    $
��Wrap=�6+   $	��200��6?   NLPitiskom na dugme odustajete od kreiranja etikete i napuštate ovaj dojalog.5H      5I      5K      �� 5M   
   -
   5        $��oznaka_greska��5M   -   $��! Unesite oznaku !��6   $y�Hidden=�6B   $
��Left=�6V   $��10,0,0,0q�6q   $	��Top=�6�   �� 5N   
   -   5        $��opis_greska��5N   +   $��! Unesite opis !��6   $y�Hidden=�6?   $
��Left=�6S   $��	10,43,0,0q�6n   $	��Top=�6�   $��2��6�   5R      5S      