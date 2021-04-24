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

        protected void Button1_Click(object sender, EventArgs e)
        {
            //createc an User object
            User user = new User();
            user.Id = int.Parse(TextBox2.Text);
            user.FirstName = TextBox3.Text;
            user.LastName = TextBox4.Text;
            user.Password = TextBox5.Text;


            //insert the user to the object data and bind the data to the gridview
            try
            {
                Models.DBAccess.InsertUser(user);
                GridView1.DataBind();
            }
            catch(Exception ex)
            {
                Label5.Text = ex.Message;
            }
        }
}   }