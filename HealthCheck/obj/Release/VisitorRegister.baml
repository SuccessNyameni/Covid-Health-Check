   M S B A M L   `   `   `  ���� F  BHealthCheck, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:HealthCheckHealthCheck  !    HealthCheck.VisitorRegister   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     +localclr-namespace:HealthCheck       N� Title$  VisitorRegister��.��� .+� � -     �Name$ VisitorRegisterFrame����.  $	��800��$	��550��� -    �Name$ visitorRegisterGrid��$	��800��$	��550�� � RowDefinitions �� $��50 ��� $	��150 ��� �� $	��120 �.+�� $��0�� � ColumnDefinitions �� $	��100 ��� .+��� -    ��Name$ 
backButton��$��30��$��30��$
��Left=����� .R��� $ ��Pictures/blueBackArrow.png���� $��1��$��22(�$��	ExtraBold"�$��Center=�$��35��$��Center=�
��� ��� Hi, Welcome To D Code Mobility�� ��.  $��1��$	��120��$	��200������ .R��� $!��Pictures/visitorAddIcon.png��� $��2��$	��270�� �� $	��250 ���  �� $��80 ��� $��80 ��� $��80 �.+��� 
��� ���$��22(�$��	ExtraBold"�$��Center=�$��Right=�$	��150��Name:�� 
��� ���$��22(�$��	ExtraBold"�$��Right=�$��Center=�$��1��$	��150��
Surname:�� 
��� ���$��22(�$��	ExtraBold"�$��Right=�$��Center=�$��2��$	��150��	Mobile:�� -    ��Name$ textBoxName��$��0��
����  �$��3q�$��18(�$��30��$	��300��$��1��$
��Left=��� -   $ textBoxSurname��$��1��
����  �$��3q�$��18(�$��30��$	��300��$��1��$��1��$
��Left=��� -   $ textBoxMobile��$��2�� �� 	MaxLength$ 10��
����  �$��3q�$��18(�$��30��$	��300��$��1��$��2��$
��Left=�� $��3�� �� $	��100 ��� �� �� $	��100 �.+��� -   $ buttonRegisterVisitor��$��3��
�������$��1��$��35��$	��100��$��16(�$��	ExtraBold"�
����  �.��
Register � 	Resources 	 �� 
TargetType
 �� Property �� Value��%:   '��       �� "	 ��.��� 
 �@��CornerRadius$ 12���� -   $ buttonAlreadyRegistered��$��4��
�������$��2��$��35��$	��180��$��16(�$��	ExtraBold"�
��� ���.��Already Registered ��%:   '��       �� "	 ��.��� 
 �@��CornerRadius$ 12��