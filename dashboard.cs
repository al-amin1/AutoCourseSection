using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace AutoCourseSection
{
    public partial class dashboard : Form
    {

        public dashboard()
        {
            InitializeComponent();
            dbConnection();
        }

        private void dashboard_Load(object sender, EventArgs e)
        {

        }

        private void dbConnection()
        {
            //MySqlConnection dbConnect = new MySqlConnection("datasource=127.0.0.1;port=3306;username=root;password=;database=course_distribution");

        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {

            try
            {

                MySqlConnection dbConnect = new MySqlConnection("datasource=127.0.0.1;port=3306;username=root;password=;database=course_distribution");
                dbConnect.Open();

                MySqlCommand cmdFacultyTbl = new MySqlCommand("SELECT * FROM faculty", dbConnect);

                MySqlDataReader fReader = cmdFacultyTbl.ExecuteReader();

                if (fReader.HasRows)
                {
                    //MessageBox.Show("f load.");

                    MySqlDataAdapter sda = new MySqlDataAdapter();
                    sda.SelectCommand = cmdFacultyTbl;
                    DataTable dbDataSet = new DataTable();
                    sda.Fill(dbDataSet);

                    BindingSource bSource = new BindingSource();

                    bSource.DataSource = dbDataSet;
                    dataGridView1.DataSource = bSource;
                    sda.Update(dbDataSet);



                } else
                {
                    MessageBox.Show("Query problem or empty table.");
                }

                dbConnect.Close();


            } catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            
        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }

        private void button4_Click(object sender, EventArgs e)
        {

        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            
        }

    }
}
