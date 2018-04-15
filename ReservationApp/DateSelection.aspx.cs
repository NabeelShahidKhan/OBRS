using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReservationApp
{
    public partial class DateSelection : System.Web.UI.Page
    {

        DataSet DataSetReserved = new DataSet();
        DateTime selectedDate;
        char eventTime;
        SqlConnection con;
        DateTime month;
        SqlCommand cmd;
        SqlConnectionStringBuilder conStringBuilber;

        protected void Page_Load(object sender, EventArgs e)

        {
            //  if (!IsPostBack)
            // {
            //   selectedDate = EventCalander.TodaysDate;
            chackTime();
                        //}

            getDatesfromDB();

            //DataSetReserved.Clear();

            //    LabelSelectedDate.Text = EventCalander.TodaysDate.ToShortDateString();
            //   }else {
            //     selectedDate = EventCalander.SelectedDate;
            //      getDatesfromDB();

            //   }

        }
     
        /*
        private void chackSelectedDate()
        {
            var date = Calendar1.SelectedDate.ToShortDateString();
            Calendar1.SelectedDayStyle.BackColor = System.Drawing.Color.Aqua;
            LabelSelectedDate.Text = date;
            if (Calendar1.SelectedDate.Day.Equals(3))
            {
                LabelSelectedDate.Text = "Alrady Reserved";
            }
        }
        */
        private void getDatesfromDB()
        {
            using (SqlConnection con = new SqlConnection("Data Source =.; Initial Catalog = BRsystemDb; Integrated Security = True"))
            {
                con.Open();
                SqlDataAdapter adapter = new SqlDataAdapter("Select * From reservation where Time='"+eventTime+"'", con);
                adapter.Fill(DataSetReserved);
            }

        }

        //calande.SelectedDate.Day;
        //calande.SelectedDate.DayOfWeek;
        //calande.SelectedDate.Month;
        //calande.SelectedDate.Year;

        //protected void Calendar_SelectionChanged(object sender, EventArgs e)
        //{
        //    selectedDate = EventCalander.SelectedDate;
        //    LabelSelectedDate.Text = selectedDate.Date.ToString();
        //}

        protected void UpdateCalander(object sender, DayRenderEventArgs e)
        {
            DateTime nextDate;
                        if (DataSetReserved != null)
                            {
                                    foreach (DataRow dr in DataSetReserved.Tables[0].Rows)
                                    {

                                        nextDate = (DateTime)dr["Date"];

                                        if ((Boolean)dr["Lock"])
                                        {
                                            if (nextDate == e.Day.Date && !e.Day.IsOtherMonth)
                                            {
                                                e.Day.IsSelectable = false;
                                                e.Cell.Text = e.Day.DayNumberText + "\nReserved";
                                                e.Cell.BackColor = System.Drawing.Color.Aqua;
                                            }
                                        }
                                    }
                                }
                               // else {
                                 //       eventTime = 'n';
                                   //     getDatesfromDB();
                                     // }

            if (e.Day.IsOtherMonth)
            {
                e.Cell.Text = string.Empty;
                e.Day.IsSelectable = false;
                e.Cell.BorderStyle = BorderStyle.None;
                // e.Cell.Text = "";
            }

        }

        protected void SelectDateButton(object sender, EventArgs e)
        {
            if (EventCalander.SelectedDate != null && agrred.Checked)
            {
                int x = sendToDataBase();
                if (x == 1)
                    LabelDate.Text = "You Reserved on " + EventCalander.SelectedDate.ToShortDateString();

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
        private int sendToDataBase()
        {
            ConnectDB();
            try
            {
                cmd.CommandText = "INSERT INTO Reservation(ClientId,Date,Lock,Time) VALUES(@ClientId,@Date,@Lock,@time)";
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

        protected void EventTiming(object sender, EventArgs e)
        {
            chackTime();
        }

        void chackTime() {
            if (night.Checked)
            {
                eventTime = 'n';
            }
            else if (afternon.Checked)
            {
                eventTime = 'a';
            }
        }
    }
}
