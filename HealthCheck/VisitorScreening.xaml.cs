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
using System.Windows.Threading;
using System.Data.SqlClient;
using System.Data;
using System.Runtime.InteropServices;
using Excel = Microsoft.Office.Interop.Excel;
using System.Reflection;

namespace HealthCheck
{
    /// <summary>
    /// Interaction logic for VisitorScreening.xaml
    /// </summary>
    public partial class VisitorScreening : Page
    {
        public string CheckFlueYes = "Yes";
        public string CheckFlueNo = "No";
        public string checkflue = "";

        public string CheckFeverYes = "Yes";
        public string CheckFeverNo = "No";
        public string CheckFever = "";

        public string CheckCouYes = "Yes";
        public string CheckCouNo = "No";
        public string CheckCou = "";


        public string CheckBreathYes = "Yes";
        public string CheckBreathNo = "No";
        public string CheckBreath = "";

        public string CheckSoreYes = "Yes";
        public string CheckSoreNo = "No";
        public string CheckSore = "";

        public string CheckEyesYes = "Yes";
        public string CheckEyesNo = "No";
        public string CheckEyes = "";

        Excel.Application xlap = new Excel.Application();
        public static Excel.Workbook xlworkbook;
        public static Excel.Worksheet xlworksheet;

        private static Excel.Workbook mWorkBook;
        private static Excel.Sheets mWorkSheets;
        private static Excel.Worksheet mWSheet1;
        private static Excel.Application oXL;


        public VisitorScreening()
        {
            InitializeComponent();
            DispatcherTimer LiveTime = new DispatcherTimer();
            LiveTime.Interval = TimeSpan.FromSeconds(1);
            LiveTime.Tick += timer_Tick;
            LiveTime.Start();
            DateDisplay.Text = DateTime.Now.ToShortDateString();

            Excel.Application xlApp = new Excel.Application();
            Excel.Workbook xlWorkbook = xlApp.Workbooks.Open(@"C:\Datastore\Visitors.xls");
            Excel._Worksheet xlWorksheet = xlWorkbook.Sheets[1];
            Excel.Range range = xlWorksheet.get_Range("B2:B40");

           


            foreach (Excel.Range item in range.Cells)
            {

                string lst = (string)item.Text;
                comboBoxVisitorName.Items.Add(lst);
            }
            xlApp.Workbooks.Close();
        }
        void timer_Tick(object sender, EventArgs e)
        {
            TimeDisplay.Content = DateTime.Now.ToString("HH:mm:ss");
        }

        private void buttonCancel_Click(object sender, RoutedEventArgs e)
        {
            visitorGrid.Visibility = Visibility.Collapsed;
            VisitorScreeningFrame.Content = new VisitorRegister();
        }

        private void breathingYes_Checked(object sender, RoutedEventArgs e)
        {
            if (breathingYes.IsChecked == true)
            {
                breathingNo.IsChecked = false;
                CheckBreath = CheckBreathYes;
            }
        }

        private void breathingNo_Checked(object sender, RoutedEventArgs e)
        {
            if (breathingNo.IsChecked == true)
            {
                breathingYes.IsChecked = false;
                CheckBreath = CheckBreathNo;
            }
        }

        private void coughYes_Checked(object sender, RoutedEventArgs e)
        {
            if (coughYes.IsChecked == true)
            {
                coughNo.IsChecked = false;
                CheckCou = CheckCouYes;
            }
        }

        private void coughNo_Checked(object sender, RoutedEventArgs e)
        {
            if (coughNo.IsChecked == true)
            {
                coughYes.IsChecked = false;
                CheckCou = CheckCouNo;
            }
        }

        private void feverYes_Checked(object sender, RoutedEventArgs e)
        {
            if (feverYes.IsChecked == true)
            {
                feverNo.IsChecked = false;
                CheckFever = CheckFeverYes;
            }
        }

        private void feverNo_Checked(object sender, RoutedEventArgs e)
        {
            if (feverNo.IsChecked == true)
            {
                feverYes.IsChecked = false;
                CheckFever = CheckFeverNo;
            }
        }

        private void flueYes_Checked(object sender, RoutedEventArgs e)
        {
            if (flueYes.IsChecked == true)
            {
                flueNo.IsChecked = false;
                checkflue = CheckFlueYes;
            }
        }

        private void flueNo_Checked(object sender, RoutedEventArgs e)
        {
            if (flueNo.IsChecked == true)
            {
                flueYes.IsChecked = false;
                checkflue = CheckFlueNo;
            }
        }

        private void redeyesYes_Checked(object sender, RoutedEventArgs e)
        {
            if (redeyesYes.IsChecked == true)
            {
                redeyesNo.IsChecked = false;
                CheckEyes = CheckEyesYes;
            }
        }

        private void redeyesNo_Checked(object sender, RoutedEventArgs e)
        {
            if (redeyesNo.IsChecked == true)
            {
                redeyesYes.IsChecked = false;
                CheckEyes = CheckEyesNo;
            }
        }

        private void soreThroatYes_Checked(object sender, RoutedEventArgs e)
        {
            if (soreThroatYes.IsChecked == true)
            {
                soreThroatNo.IsChecked = false;
                CheckSore = CheckSoreYes;
            }
        }

        private void soreThroatNo_Checked(object sender, RoutedEventArgs e)
        {
            if (soreThroatNo.IsChecked == true)
            {
                soreThroatYes.IsChecked = false;
                CheckSore = CheckSoreNo;
            }
        }

        private void buttonSubmitResults_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if (string.IsNullOrEmpty(CheckFever) ||
              string.IsNullOrEmpty(checkflue) || string.IsNullOrEmpty(CheckBreath) ||
              string.IsNullOrEmpty(CheckSore) || string.IsNullOrEmpty(CheckEyes) ||
              string.IsNullOrEmpty(CheckCou) || string.IsNullOrEmpty(textBoxVisitorTemperature.Text) ||
              comboBoxVisitorName.SelectedIndex == -1)
                {
                    MessageBox.Show("Error", "Please enter all fields");
                }
                else 
                {
                    if (Double.Parse(textBoxVisitorTemperature.Text) >= 38.0)
                    {
                        MessageBox.Show("Alert", "Your temperature is high...Please talk to manager");
                    }

                    if (feverYes.IsChecked == true || coughYes.IsChecked == true || breathingYes.IsChecked == true || redeyesYes.IsChecked == true || feverYes.IsChecked == true || soreThroatYes.IsChecked == true)
                    {
                        MessageBox.Show("Alert", "Please report your results to manager");

                    }
         


                        string path = @"C:\Datastore\CovidResults.xls";
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
                    string indicator = "Visitor";


                    mWSheet1.Cells[rowCount + 1, 1] = comboBoxVisitorName.SelectedItem.ToString();
                    mWSheet1.Cells[rowCount + 1, 2] = indicator;
                    mWSheet1.Cells[rowCount + 1, 3] = date;
                    mWSheet1.Cells[rowCount + 1, 4] = textBoxVisitorTemperature.Text;
                    mWSheet1.Cells[rowCount + 1, 5] = CheckFever;
                    mWSheet1.Cells[rowCount + 1, 6] = checkflue;
                    mWSheet1.Cells[rowCount + 1, 7] = CheckEyes;
                    mWSheet1.Cells[rowCount + 1, 8] = CheckCou;
                    mWSheet1.Cells[rowCount + 1, 9] = CheckBreath;




                    mWorkBook.SaveAs(path, Excel.XlFileFormat.xlWorkbookNormal,
                    Missing.Value, Missing.Value, Missing.Value, Missing.Value, Excel.XlSaveAsAccessMode.xlExclusive,
                    Missing.Value, Missing.Value, Missing.Value,
                    Missing.Value, Missing.Value);
                   mWorkBook.Close(Missing.Value, Missing.Value, Missing.Value);

                    GC.WaitForPendingFinalizers();
                    GC.Collect();
                    GC.WaitForPendingFinalizers();
                    GC.Collect();

                    MessageBox.Show( "Successful", "Submitted your resutls");

                    textBoxVisitorTemperature.Text = "";
                    feverNo.IsChecked = false;
                    feverYes.IsChecked = false;
                    flueNo.IsChecked = false;
                    flueYes.IsChecked = false;
                    redeyesNo.IsChecked = false;
                    redeyesYes.IsChecked = false;
                    coughNo.IsChecked = false;
                    coughYes.IsChecked = false;
                    breathingNo.IsChecked = false;
                    breathingYes.IsChecked = false;
                    soreThroatYes.IsChecked = false;
                    soreThroatNo.IsChecked = false;
                    comboBoxVisitorName.SelectedIndex = -1;

                    visitorGrid.Visibility = Visibility.Collapsed;
                    VisitorScreeningFrame.Content = new EmployeeScreening();

                }

            }
            catch (Exception ex)
            {
                MessageBox.Show("Error", "Failed to submit results");
            }

       
     
        }

        private void textBoxVisitorTemperature_TextChanged(object sender, TextChangedEventArgs e)
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
