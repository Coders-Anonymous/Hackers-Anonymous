using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace User
{
    public partial class AdminDashBoard : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.QueryString["Name"] != null)
            { Label3.Text = Request.QueryString["Name"]; }
            con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=C:\USERS\HMBUMBA\SOURCE\REPOS\USER\USER\APP_DATA\DATABASE1.MDF;Integrated Security=True";
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = "Select Id, FirstName, LastName From AdminLog Where FirstName= '" + Label3.Text + "'";
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Label1.Text = dr["FirstName"].ToString();
                Label2.Text = dr["LastName"].ToString();
            }


        }
    }
}