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
        SqlConnection classConnection = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataReader reader;
        protected void Page_Load(object sender, EventArgs e)
        {
            //in the page_load in asp.net for testing
            // used to connect the database to this specific cs file
            classConnection.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Classes.mdf;Integrated Security=True";
            //save the info on the table (will be changed so only visible for admin)
            GridView1.DataBind();
        }
    }
}