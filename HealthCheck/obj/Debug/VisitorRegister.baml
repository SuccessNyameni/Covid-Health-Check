   M S B A M L   `   `   `  ����F  BHealthCheck, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:HealthCheckHealthCheck  5      !    HealthCheck.VisitorRegister   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      +localclr-namespace:HealthCheck     5        N� Title$  VisitorRegister��5	      .��5      � .+�5   
    � -   5          �Name$ VisitorRegisterFrame��5   ;   ��.  $	��800��6"   $	��550��6.   6[   � 5   
   -   5         �Name$ visitorRegisterGrid��5   (   $	��800��6   $	��550��6    � RowDefinitions 5      �� 5      $��50 �6    �� 5      $	��150 �6    �� 5      �� 5      $	��120 �6    .+�5      � $��0��6    � ColumnDefinitions 5      �� 5      $	��100 �6'   �� 5      .+�5      �� -   5         ��Name$ 
backButton��5      $��30��6-   $��30��69   $
��Left=�6D   ��5      �� 5      .R�5      �� $ ��Pictures/blueBackArrow.png��6$   6J   5      5      �� 5       $��1��6   $��22(�6,   $��	ExtraBold"�6:   $��Center=�6Q   $��35��6n   $��Center=�6z   
��� ��� Hi, Welcome To D Code Mobility6�   5"      �� 5$      ��.  $��1��6'   $	��120��64   $	��200��6A   ��5%      �� 5&      .R�5'      �� $!��Pictures/visitorAddIcon.png��6    6G   5(      5*      � 5+      $��2��6   $	��270��6     5,      �� 5-      $	��250 �6'   �� 5.       50      �� 51      $��80 �6$   �� 52      $��80 �6$   �� 53      $��80 �6$   .+�55      �� 
��� ���$��22(�60   $��	ExtraBold"�6>   $��Center=�6U   $��Right=�6p   $	��150��6�   Name:6�   �� 56      
��� ���$��22(�60   $��	ExtraBold"�6>   $��Right=�6U   $��Center=�6q   $��1��6�   $	��150��6�   
Surname:6�   �� 57      
��� ���$��22(�60   $��	ExtraBold"�6>   $��Right=�6U   $��Center=�6q   $��2��6�   $	��150��6�   	Mobile:6�   �� 59      -   5         ��Name$ textBoxName��59   \   $��0��6   
����  �$��3q�6:   $��18(�6N   $��30��6q   $	��300��6}   $��1��6�   $
��Left=�6�   �� 5:      -   5        $ textBoxSurname��5:   \   $��1��6   
����  �$��3q�6:   $��18(�6N   $��30��6t   $	��300��6�   $��1��6�   $��1��6�   $
��Left=�6�   6�   �� 5;      -   5        $ textBoxMobile��5;   k   $��2��6    �� 	MaxLength$ 10��6'   
����  �$��3q�6I   $��18(�6]   $��30��6�   $	��300��6�   $��1��6�   $��2��6�   $
��Left=�6�   6�   5=      � 5>      $��3��6    5?      �� 5@      $	��100 �6'   �� 5A      �� 5B      �� 5C      $	��100 �6'   .+�5E      �� -   5        $ buttonRegisterVisitor��5E   &   $��3��6   
�������$��1��6X   $��35��6h   $	��100��6t   $��16(�6�   $��	ExtraBold"�6�   
����  �.��6�   
Register � 	Resources 5F      	 �� 
TargetType
 �� Property �� Value��%d   '��       �� 5G      "	 ��6    .�5H      �� 
 �@��CornerRadius$ 12��6%   60   5I      5J      5K      �� 5L      -   5        $ buttonAlreadyRegistered��5L   9   $��4��6   
�������$��2��6Z   $��35��6j   $	��180��6v   $��16(�6�   $��	ExtraBold"�6�   
��� ���.��6�   Already Registered 5M      ��%_   '��       �� 5N      "	 ��6    .�5O      �� 
 �@��CornerRadius$ 12��6=   5P      5Q      5R      5T      5U      5W      5X      