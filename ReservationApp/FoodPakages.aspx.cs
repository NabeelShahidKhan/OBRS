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
    public partial class FoodPakages : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=BRsystemDb;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework");
            //SqlCommand cmd = new SqlCommand("select Count(m.Menuid) from menus m", con);
            //cmd.ExecuteNonQuery();
            SqlDataAdapter allMenu = new SqlDataAdapter("select * from menus m where m.Menuid in(1,2,3,4)", con);
            //DataTable AllDT = new DataTable();
            //allmenu.Fill(amDT);

            SqlDataAdapter adapter = new SqlDataAdapter("select m.Menuid,f.FoodID,f.Name from menus m,food f,incudedfood i where m.Menuid = i.MenuID and f.id = i.FoodID", con);
            //SqlDataAdapter adapter = new SqlDataAdapter("select * from food", con);

            DataTable data = new DataTable();

            //adapter.Fill(data);
            //menu.DataSource = data;
            //menu.DataBind();

        }

         
    }
}