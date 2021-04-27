using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace User
{
    public partial class CoursesControl : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["Name"] != null)
            { Label3.Text = Request.QueryString["Name"]; }
            con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True";
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = "Select FirstName, LastName From Admin Where AdminID= '" + Label3.Text + "'";
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Label1.Text = dr["FirstName"].ToString();
                Label2.Text = dr["LastName"].ToString();
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            var parameter = SqlDataSource1.InsertParameters;
            parameter["CourseID"].DefaultValue = TextBox1.Text;
            parameter["CourseName"].DefaultValue = TextBox2.Text;
            parameter["Subject"].DefaultValue = TextBox3.Text;
            parameter["Professor"].DefaultValue = TextBox4.Text;
            parameter["Level"].DefaultValue = RadioButtonList1.SelectedValue == "True" ? "Lower" : "Upper";
            parameter["DateEnd"].DefaultValue = TextBox5.Text;

            SqlDataSource1.Insert();
            GridView1.DataBind();

            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/CoursesControl.aspx", false);
            Response.Redirect("~/CoursesControl.aspx?Name=" + Label3.Text);
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/RegistrationControl.aspx", false);
            Response.Redirect("~/RegistrationControl.aspx?Name=" + Label3.Text);
        }

    }
}