using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Data.SqlClient;
using System.Data;
using System.Runtime.InteropServices;
using Excel = Microsoft.Office.Interop.Excel;
using System.IO;
using System.Reflection;



namespace HealthCheck
{
    /// <summary>
    /// Interaction logic for VisitorRegister.xaml
    /// </summary>
    public partial class VisitorRegister : Page
    {
        Excel.Application xlap = new Excel.Application();
        public static Excel.Workbook xlworkbook;
        public static Excel.Worksheet xlworksheet;

        private static Excel.Workbook mWorkBook;
        private static Excel.Sheets mWorkSheets;
        private static Excel.Worksheet mWSheet1;
        private static Excel.Application oXL;

        

        public VisitorRegister()
        {
            InitializeComponent();

        }

        private void buttonAlreadyRegistered_Click(object sender, RoutedEventArgs e)
        {
            visitorRegisterGrid.Visibility = Visibility.Collapsed;
            VisitorRegisterFrame.Content = new VisitorScreening();

        }

        private void backButton_Click(object sender, RoutedEventArgs e)
        {
            visitorRegisterGrid.Visibility = Visibility.Collapsed;
            VisitorRegisterFrame.Content = new EmployeeScreening();
        }

        private void buttonRegisterVisitor_Click(object sender, RoutedEventArgs e)
        {

            if(textBoxMobile.Text.Equals("") || textBoxSurname.Text.Equals("") || textBoxName.Text.Equals(""))
            {
                MessageBox.Show("Error", "Please enter all fields");
            }
            else if(textBoxMobile.Text.Length < 10 || textBoxMobile.Text.Substring(0,1) != "0")
            {
                MessageBox.Show("Warning", "The numbers entered are not valid");
               
            }
            
            else
            {
                
                try
                {



                    string path = @"C:\Datastore\Visitors.xls";
                    oXL = new Microsoft.Office.Interop.Excel.Application();

                    oXL.DisplayAlerts = false;
                    mWorkBook = oXL.Workbooks.Open(path, 0, false, 5, "", "", false, Excel.XlPlatform.xlWindows, "", true,
                          false, 0, true, false, false);
                    //Get all the sheets in the workbook
                    mWorkSheets = mWorkBook.Worksheets;
                    ////Get the allready exists sheet
                    mWSheet1 = (Excel.Worksheet)mWorkSheets.get_Item("Sheet1");
                    Excel.Range range = mWSheet1.UsedRange;
                    int colCount = range.Columns.Count;
                    int rowCount = range.Rows.Count;
                    int pkCount = rowCount;

                    string date = "";

                    date = DateTime.Now.ToString();


                    mWSheet1.Cells[rowCount + 1, 1] = textBoxName.Text;
                    mWSheet1.Cells[rowCount + 1, 2] = textBoxSurname.Text;
                    mWSheet1.Cells[rowCount + 1, 3] = textBoxMobile.Text;



                    mWorkBook.SaveAs(path, Excel.XlFileFormat.xlWorkbookNormal,
                    Missing.Value, Missing.Value, Missing.Value, Missing.Value, Excel.XlSaveAsAccessMode.xlExclusive,
                    Missing.Value, Missing.Value, Missing.Value,
                    Missing.Value, Missing.Value);
                    mWorkBook.Close(Missing.Value, Missing.Value, Missing.Value);

                    GC.WaitForPendingFinalizers();
                    GC.Collect();
                    GC.WaitForPendingFinalizers();
                    GC.Collect();

                    textBoxName.Text = "";
                    textBoxSurname.Text = "";
                    textBoxMobile.Text = "";


                    MessageBox.Show("Successful", "You are successfully registered...You can now do health check");
                    visitorRegisterGrid.Visibility = Visibility.Collapsed;
                    VisitorRegisterFrame.Content = new VisitorScreening();

                }
                catch (Exception ex)
                {
                    MessageBox.Show("Error", "You are not registered");
                }
            }
                 
           
        }

        private void textBoxMobile_TextChanged(object sender, TextChangedEventArgs e)
        {
            TextBox textBox = sender as TextBox;
            Int32 selectionStart = textBox.SelectionStart;
            Int32 selectionLength = textBox.SelectionLength;
            String newText = String.Empty;
            int count = 0;
            foreach (Char c in textBox.Text.ToCharArray())
            {
                if (Char.IsDigit(c) || Char.IsControl(c) || (c == '.' && count == 0))
                {
                    newText += c;
                    if (c == '.')
                        count += 1;
                }
            }
            textBox.Text = newText;
            textBox.SelectionStart = selectionStart <= textBox.Text.Length ? selectionStart : textBox.Text.Length;

            
        }

        
    }
            
}
    
