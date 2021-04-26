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

        }

      /*protected void displayAssignments(object sender, EventArgs e)
        {
            con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True";
            con.Open();
            string sql = "select Class, Assignment, DueDate from currentClasses where StudentID ='" + Label3.Text + "'";

            SqlCommand cmd = new SqlCommand(sql, con);
            dr = cmd.ExecuteReader();

            con.Close();
        }*/

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Student.aspx", false);
            Response.Redirect("~/Student.aspx?Name=" + Label3.Text);

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Calender.aspx", false);
            Response.Redirect("~/Calender.aspx?Name=" + Label3.Text);

        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Classes.aspx", false);
            Response.Redirect("~/Classes.aspx?Name=" + Label3.Text);

        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Calender.aspx", false);
            Response.Redirect("~/Calender.aspx?Name=" + Label3.Text);
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Calender.aspx", false);
            Response.Redirect("~/Calender.aspx?Name=" + Label3.Text);
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Calender.aspx", false);
            Response.Redirect("~/Calender.aspx?Name=" + Label3.Text);
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Calender.aspx", false);
            Response.Redirect("~/Calender.aspx?Name=" + Label3.Text);
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Calender.aspx", false);
            Response.Redirect("~/Calender.aspx?Name=" + Label3.Text);
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Calender.aspx", false);
            Response.Redirect("~/Calender.aspx?Name=" + Label3.Text);
        }
    }
}