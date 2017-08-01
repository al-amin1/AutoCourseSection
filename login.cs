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
    public partial class login : Form
    {
        public login()
        {
            InitializeComponent();
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {
            
        }

        private void button1_Click(object sender, EventArgs e)
        {

            //MessageBox.Show(this.username.Text);
            //MessageBox.Show(this.password.Text);

            //db conn 
            try
            {
                //conn string
                string MySqlConnectionString = "datasource=127.0.0.1;port=3306;username=root;password=;database=course_distribution";

                //conn
                MySqlConnection databaseConnection = new MySqlConnection(MySqlConnectionString);
                databaseConnection.Open();

                //command
                string query = "SELECT * FROM users WHERE username='"+ this.username.Text +"' AND password='"+ this.password.Text +"'";
                //MessageBox.Show(query);
              
                MySqlCommand commandDatabase = new MySqlCommand(query, databaseConnection);
                commandDatabase.CommandTimeout = 60;

                
                MySqlDataReader dataReader = commandDatabase.ExecuteReader();

                if (dataReader.HasRows)
                {
                    //MessageBox.Show("Login success.");
                    this.Hide();
                    dashboard adb = new dashboard();
                    adb.Show();
                }
                else
                {
                    MessageBox.Show("Invalid login.");
                }
                

                databaseConnection.Close();
            } catch(Exception ex)
            {
                MessageBox.Show(ex.Message);
            }

            
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Hide();
        }




    }
}
