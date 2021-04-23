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

        //public string assignment;
        //public int due_date;

        protected void Page_Load(object sender, EventArgs e)
        {
            //con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Classes.mdf;Integrated Security=True";
            //con.Open();
            //cmd.Connection = con;

            if (Request.QueryString["Name"] != null)
            { Label3.Text = Request.QueryString["Name"]; }
            con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True";
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = "Select StudentID, FirstName, LastName From Register Where StudentID= '" + Label3.Text + "'";
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Label1.Text = dr["FirstName"].ToString();
                Label2.Text = dr["LastName"].ToString();
            }

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
            var parameter = SqlDataSource1.InsertParameters;
            parameter["Assignment"].DefaultValue = TextBox1.Text;
            parameter["DueDate"].DefaultValue = Calendar1.SelectedDate.ToString();
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}