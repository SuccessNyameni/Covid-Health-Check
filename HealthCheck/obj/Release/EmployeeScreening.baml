   M S B A M L   `   `   `  ���� F  BHealthCheck, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:HealthCheckHealthCheck  #    HealthCheck.EmployeeScreening   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     +localclr-namespace:HealthCheck       N� Title$  EmployeeScreening��.��� .+� � -     �Name$ EmployeeScreeningFrame����.  $	��550��$	��800��� -    �Name$ employeeGrid��$	��550��$	��800�� � RowDefinitions �� $��50 ��� $��50 ��� �� $��50 ��� $��80 �.+�� $��0��$��38�� � ColumnDefinitions �� �� .+�� $��0��$��35�� �� $��50 ��� .+��� ��.  $��0��$��28��$��50��$
��Left=����� .R��� $��Pictures/blueCalendar.png���� -    ��Name$ DateDisplay��$
��Left=�$��1��$��18(�$��	ExtraBold"�$��Center=�� $��1��$��35�� �� $	��280 ��� .+��� ��.  $��0��$��28��$��Right=����� .R��� $��Pictures/blueWatch.png���� -    ��Name$ TimeDisplay����.  $��1��$��18(�$��	ExtraBold"�$��Center=�� $��2��$	��290��.+��  �� $��20 ��� .+�� $��0�� �� �� � $��1�� �� �� $	��130 ���  �� �� �� �� �� �� .+��� 
��� ���$	��220��$��22(�$��	ExtraBold"�$��Center=�Breathing problem:�� 
��� ���$	��220��$��1��$��22(�$��	ExtraBold"�$��Center=�Cough:�� 
��� ���$	��220��$��2��$��22(�$��	ExtraBold"�$��Center=�Fever:�� 
��� ���$	��220��$��3��$��22(�$��	ExtraBold"�$��Center=�Flue:�� 
��� ���$	��220��$��4��$��22(�$��	ExtraBold"�$��Center=�	Red eyes:�� 
��� ���$	��220��$��5��$��22(�$��	ExtraBold"�$��Center=�Sore throat:�� -    ��Name$ breathingNo��$��2��
����  �$��3q�$��2��
��� ��� �� Left$ 20��
	 �� Top$	 10��$��NO��$��Georgia)�$��18(�$
��Bold"�$��Center=��� -   $ breathingYes��$��1��
����  �$��3q�$��1��
��� ���$ 20��$	 10��$	��YES��$��Georgia)�$��18(�$
��Bold"�$��Center=��� -   $ coughYes��$��3��
����  �$��3q�$��1��$��1��
��� ���$ 20��$	 10��$	��YES��$��Georgia)�$��16(�$
��Bold"�$��Center=��� -   $ feverYes��$��5��
����  �$��3q�$��1��$��2��
��� ���$ 20��$	 10��$	��YES��$��Georgia)�$��16(�$
��Bold"�$��Center=��� -	   $ flueYes��$��7��
����  �$��3q�$��1��$��3��
��� ���$ 20��$	 10��$	��YES��$��Georgia)�$��16(�$
��Bold"�$��Center=��� -
   $ 
redeyesYes��$��9��
����  �$��3q�$��1��$��4��
��� ���$ 20��$	 10��$	��YES��$��Georgia)�$��16(�$
��Bold"�$��Center=��� -   $ soreThroatYes��$��11��
����  �$��3q�$��1��$��5��
��� ���$ 20��$	 10��$	��YES��$��Georgia)�$��16(�$
��Bold"�$��Center=��� -   $ coughNo��$��4��
����  �$��3q�$��2��$��1��
��� ���$ 20��$	 10��$��NO��$��Georgia)�$��16(�$
��Bold"�$��Center=��� -   $ feverNo��$��6��
����  �$��3q�$��2��$��2��
��� ���$ 20��$	 10��$��NO��$��Georgia)�$��16(�$
��Bold"�$��Center=��� -   $ flueNo��$��8��
����  �$��3q�$��2��$��3��
��� ���$ 20��$	 10��$��NO��$��Georgia)�$��16(�$
��Bold"�$��Center=��� -   $ 	redeyesNo��$��10��
����  �$��3q�$��2��$��4��
��� ���$ 20��$	 10��$��NO��$��Georgia)�$��16(�$
��Bold"�$��Center=��� -   $ soreThroatNo��$��12��
����  �$��3q�$��2��$��5��
��� ���$ 20��$	 10��$��NO��$��Georgia)�$��16(�$
��Bold"�$��Center=�� $��3��$��35�� �� $��50 ��� $	��180 ��� .+��� ��.  $��35��$��55��$
��Left=����� .R��� $#��Pictures/temperature icon.png���� $
��Left=�
����  �$��22(�$��1��$��	ExtraBold"�$��Center=�Temperature:�� -   
 ��Name$ 
 textBoxEmployeeTemperature��$��13��$��3q�
���  �� �� 	MaxLength$ 4��$��18(�$��	ExtraBold"�$��2��$��26��$	��120��$
��Left=�� $��4�� �� �� �� �� .+��� -    ��Name$ buttonSubmitResults��$��14��
�������$��1��$	��120��$��30��$��16(�$��Heavy"�
����  �.��Submit � 	Resources  �� 
TargetType �� Property �� Value��%:   '��       �� " ��.���  �@��CornerRadius$ 12���� -   $ buttonVisitor��$��15��
�������$	��120��$��30��$��2��$��16(�$��Heavy"�
��� ���.��	Visitor ��%:   '��       �� " ��.���  �@��CornerRadius$ 12��� $��1��$��35�� �� $��50 ��� $	��200 ��� .+��� ��.  $��0��$��30��$��40��$
��Left=����� .R��� $��Pictures/orangePerson.png���� 
����  �$��Employee Name:��$��1��$��22(�$��	ExtraBold"�$��Center=��� -    ��Name$ comboBoxEmployeeNames��$��0��$��3q�$��14(�$��	ExtraBold"� �� Text$ Select your name��$��25��$��2��$	��400��$
��Left=�