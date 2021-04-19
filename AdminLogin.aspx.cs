using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace User
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = @"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\hmbumba\source\repos\User\User\App_Data\Database1.mdf; Integrated Security = True";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                cmd.Connection = con;
                cmd.CommandText = "Select * from AdminLog Where FirstName='" + TextBox1.Text + "'and Password= '" + TextBox2.Text + "'";
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    Label3.Text = "Logged In";
                    Response.Redirect("~/AdminDashBoard.aspx", false);
                    Response.Redirect("~/AdminDashBoard.aspx?Name=" + TextBox1.Text);

                }
                else
                {
                    Label3.Text = "Failed";
                }
            }
            catch (Exception ex)
            {
                Label3.Text = ex.Message;
            }
        }
    }
}