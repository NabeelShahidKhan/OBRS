using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReservationApp
{
    public partial class ReservationForm : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlConnectionStringBuilder conStringBuilber;

       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            Person p = new Person(firstName.Text, lastName.Text, Email.Text, address.Text, phoneNo.Text, mobileNo.Text, City.Text, NIC.Text);
            sendToDataBase(p);      
            }


        private int sendToDataBase(Person p)
        {
            ConnectDB();
            try
            {
                cmd.CommandText = "INSERT INTO Client(ClientId,Date,Lock,Time) VALUES(@ClientId,@Date,@Lock,@time)";
                cmd.Parameters.AddWithValue("@ClientId", 2);
                cmd.Parameters.AddWithValue("@Lock", 0);
                cmd.Parameters.AddWithValue("@Time", eventTime);
                cmd.Parameters.AddWithValue("@Date", EventCalander.SelectedDate);
                cmd.CommandType = CommandType.Text;

                con.Open();

                return cmd.ExecuteNonQuery();
            }
            catch (Exception)
            {
                return 0;
            }
            finally
            {
                if (con != null)
                {
                    con.Close();
                }
            }

        }

        void ConnectDB()
        {

            conStringBuilber = new SqlConnectionStringBuilder();

            conStringBuilber.DataSource = "NABEELKHAN-PC";
            conStringBuilber.InitialCatalog = "BRsystemDb";
            conStringBuilber.Encrypt = true;
            conStringBuilber.TrustServerCertificate = true;
            conStringBuilber.ConnectTimeout = 30;
            conStringBuilber.AsynchronousProcessing = true;
            conStringBuilber.MultipleActiveResultSets = true;
            conStringBuilber.IntegratedSecurity = true;

            con = new SqlConnection(conStringBuilber.ToString());
            cmd = con.CreateCommand();


        }

    }
   
    class Person
    {
        string name;
        string Address;
        string Nic;
        string Phone;
        string mobile;
        string email;
        string city;

        public Person(string firstName,string lastName,string email,string address,string phone,string mobile,string city,string nic ) {
            this.name = firstName + " " + lastName;
            this.mobile = mobile;
            this.Nic = nic;
            this.email = email;
            this.city = city;
            this.Phone = phone;
            this.Address = address;

        }

    }

}
