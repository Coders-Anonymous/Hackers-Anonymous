using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace User
{
    public partial class RegistrationControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            SqlConnection con = new SqlConnection();
            SqlCommand cmd = new SqlCommand();
            SqlDataReader dr;

            {
                if (Request.QueryString["Name"] != null)
                { Label3.Text = Request.QueryString["Name"]; }
                con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True";
                con.Open();
                cmd.Connection = con;
                cmd.CommandText = "Select AdminID, FirstName, LastName From Admin Where AdminID= '" + Label3.Text + "'";
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    Label1.Text = dr["FirstName"].ToString();
                    Label2.Text = dr["LastName"].ToString();
                }


            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var parameter = SqlDataSource1.InsertParameters;
            parameter["StudentID"].DefaultValue = TextBox2.Text;
            parameter["FirstName"].DefaultValue = TextBox3.Text;
            parameter["LastName"].DefaultValue = TextBox4.Text;
            parameter["Password"].DefaultValue = TextBox5.Text;

            //insert and bind data table
            try
            {
                SqlDataSource1.Insert();
                GridView1.DataBind();

                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
            }
            catch (Exception ex)
            {
                ErrLabel.Text = ex.Message;
            }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/RegistrationControl.aspx", false);
            Response.Redirect("~/RegistrationControl.aspx?Name=" + Label3.Text);
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/CoursesControl.aspx", false);
            Response.Redirect("~/CoursesControl.aspx?Name=" + Label3.Text);
        }
    }
}
