using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace User
{
    public partial class Student : System.Web.UI.Page
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
            cmd.CommandText = "Select StudentID, FirstName, LastName From Register Where StudentID= '" + Label3.Text + "'";
            dr = cmd.ExecuteReader();
            while (dr.Read())
            { 
                Label1.Text = dr["FirstName"].ToString();
                Label2.Text = dr["LastName"].ToString();
            }
        }
    }
}