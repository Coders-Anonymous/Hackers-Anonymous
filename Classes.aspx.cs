using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;

namespace User
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        //outside of the main code used to connect, command, and read the database
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["Name"] != null)
            {
                Label3.Text = Request.QueryString["Name"];
                //TextBox5.Text = Label3.Text;
            }
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
            con.Close();
        }

        protected void displayAssignments(object sender, EventArgs e)
        {
            con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True";
            con.Open();
            string sql = "select Class, Assignment, DueDate from currentClasses where StudentID ='" + Label3.Text + "'";

            SqlCommand cmd = new SqlCommand(sql, con);
            dr = cmd.ExecuteReader();

            con.Close();
            //TextBox4.Text = Calendar1.SelectedDate.ToShortDateString();
        }
    }
}