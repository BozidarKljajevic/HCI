   M S B A M L   `   `   `  ����@  <Start, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:StartStart  5   	   'clr-namespace:Start.Help
Start.Help  5   
       Start.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   %localclr-namespace:Start     5   	   &lclr-namespace:Start.Help     5   
     � Title$  Mapa spomenika��5	   	   $	��430��6    $	��750��6-    � Icon$ /Slike/svet1.jpg��69     Start.Help.HelpProvider   HelpKey$ MainHelp��6Q   $	��430��5
   	   $	��750��6    � WindowStartupLocation$ CenterScreen=�6(    J� CommandBindings 5      )  #System.Windows.Input.CommandBinding  5   
   -   5           Command$ ApplicationCommands.Help��5      6<   .��5      ]� .+�5   
   c� $	��Top=�6   .@�5      �� -   5         � ToolTip$ Dodaj novi spomenik��5      .��5      ��  �� Orientation$ 
Horizontal=�6   .+�5      �� $��25��6   $��25��6'   $��Slike/monument.png��63   �� 5      $��Center=�6    Novi spomenik6K   5      5      �� 5      -   5        $ Dodaj novi tip��5      .��5      �� $ 
Horizontal=�6   .+�5      �� $��25��6   $��25��6'   $��Slike/tip.png��63   �� 5      $��Center=�6    
Novi tip6E   5      5      �� 5       -   5        $ Dodaj novu etiketu��5       .��5!      �� $ 
Horizontal=�6   .+�5"      �� $��25��6   $��25��6'   $��Slike/etiketa.png��63   �� 5#      $��Center=�6    Nova etiketa6I   5$      5%      �� 5&      -   5        $&  Prikaz tabele i izmena spomenika��5&      .��5'      �� $ 
Horizontal=�6   .+�5(      �� $��25��6   $��25��6'   $��Slike/sema.png��63   �� 5)      $��Center=�6    Tabela spomenika6M   5*      5+      �� 5,      -   5        $# Prikaz tabele i izmena tipova��5,      .��5-      �� $ 
Horizontal=�6   .+�5.      �� $��25��6   $��25��6'   $��Slike/sema.png��63   �� 5/      $��Center=�6    Tabela tipova6J   50      51      �� 53      -   5        $$ Prikaz tabele i izmena etiketa��53      .��54      �� $ 
Horizontal=�6   .+�55      �� $��25��6   $��25��6'   $��Slike/sema.png��63   �� 56      $��Center=�6    Tabela etiketa6K   57      58      �� 59      -   5        $ Pomoć pri radu��59      .��5:      �� $ 
Horizontal=�6   .+�5;      �� $��25��6   $��25��6'   $��Slike/pomoc.png��63   �� 5<      $��Center=�6    Pomoć6B   5=      5>      5@      � 5C   
    � ColumnDefinitions 5D      �� 5E      $��152.8 �6#   �� 5F      .+�5J      �� $��0,0,42.8,-0.4q�6   .��5K      �� -	   5        	 ��Name$	 svetskiSpomenici��5K      $��0��69   $��96��6�   ��6I   �� 
 �� Path$
 ListaSpomenika� �� UpdateSourceTrigger$ PropertyChanged=���5L      �� 5M      .R�5N      �� $ Vertical=�6)   
�������6@   5O      ��5R      �� 5S      .R�5T      �� -
   5        $ 
Horizontal=�5T   )   
�������$��1,1,1,0q�6U    � Cursor$
 Hand��6f   
 � Tag 6t   �� $
 Oznaka�.+�5W   "   �� $��30��6F   $��40��6R   $��4,4,4,4q�6]   $��UniformToFill=�6n   ��6(   �� $
 Slika�6n   �� 5X   "   $ Vertical=�6-   $��0,4,2,4q�6D   .+�5Y   &   �� $
��Bold"�6M   ��60   �� $
 Oznaka�6M   �� 5Z   &   ��60   �� $	
 Ime�5[   #   5\      5]      5`      5b      �� 5e      -   5        $��mapaSpomenika��5e       J� 	AllowDrop .  �� 	IsEnabled .  $��2��5h   I   $��115,0,0,-0.4q�6]   ��5j      �� 5k      -   5        	mapaSlika�� �� ImageSource$ Slike/mapa.png��5k   4   6S   .+�5m      �� -   5        $��Vrsta daltonizma��5m       �� Left$ 10��64   
 �� Top$	 337��6_   $��98��6p   5o      5p      5q      5t      5u      