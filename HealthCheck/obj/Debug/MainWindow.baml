   M S B A M L   `   `   `  ����F  BHealthCheck, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:HealthCheckHealthCheck  5   	       HealthCheck.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:HealthCheck     5   	     � Title$  
MainWindow��5   	   $
��Auto��6   $
��Auto��6*    � AllowsTransparency .  � WindowStyle$
 None=�6Q    � WindowState$ 	Maximized=�6d    � 	Resources 5
       �� 
TargetType �� Property �� Value��%_   '��       �� 5   
   " ��6   .�5      ��  �@��CornerRadius$ 13��6-   5      5      .��5   
   �� $
��Auto��6   $
��Auto��6   
����  �$��4q�6C    5      ��%d   '��       �� 5      " ��6   .�5      ��  �@��CornerRadius$ 13��6   6(   5      5      ._�5      �  � RowDefinitions 5      �� 5      $��50 �6$   �� 5      .+�5      � $��0��6   
����  �$��50��66   	 � ColumnDefinitions	 5      �� 5      $��60 �6+   �� 5      $	��600 �6+   �� 5      .+�5!      �� $��1��6    $��24(�60   $��Center=�6>   $��	ExtraBold"�6Y   
��� ���Covid-19 Screening6�   �� 5"      ��.  $��40��6/   $��50��6;   $
��Left=�6F   ��5#      �� 5$      .R�5%   "   �� $��Pictures/DcodeIcon.png��6(   6J   5&      5*      �� 5+      -   5        
 ��Name$
 buttonCloseApplication��5+      $	��Top=�6=   $��Right=�6U   $��2��6q   $��40��6�   $��35��6�   ��5,      �� 5-      .R�5.   "   �� $��Pictures/switch icon.png��6(   6L   5/      51      52      � 53      -   5         �Name$ DisplayGrid��53   1   $	��550��6   $��1��6$   	 54      �� 55      $
��263* �6+   �� 56      $
��529* �6+   .+�58       � -   5        $��myDisplayGrid��58   ;   ��.  $	��550��6.   $��2��6P   5:      5;      5=      5?      