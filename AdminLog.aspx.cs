﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace User
{
    public partial class AdminLog : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\dkimb\\Downloads\\User-20210319T032934Z-001\\User\\User\\App_Data\\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string check = "select count (*) from [AdminLogin] where UserName= '" + userLogin.Text + "' and Password = '" + password.Text + "'";
            SqlCommand cmd = new SqlCommand(check, con);
            con.Open();
            int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            con.Close();

            if (temp == 1)
            {
                Response.Redirect("AdminHomeP.aspx");
            }
            else
            {
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = " You are not athorized to login,if you are an admin check your username or password. ";
            }
        }
    }
}