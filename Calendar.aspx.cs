using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace User
{
    public partial class Calendar : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;

        public string assignment;
        public int due_date;        

        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Classes.mdf;Integrated Security=True";
            con.Open();
            cmd.Connection = con;

            //GridView1.DataBind();

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            e.Cell.Width = 15;
            e.Cell.Height = 55;
            e.Cell.BorderWidth = 1;

           //if(e.Day.DayNumberText == "22")
            //{
            //    e.Cell.Controls.Add(new LiteralControl());
           // }
            //Calendar1.SelectedDate.ToString()
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
          
        }
    }
}