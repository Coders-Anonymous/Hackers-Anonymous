using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace User
{
    public partial class Calander : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["Name"] != null)
            {
                Label3.Text = Request.QueryString["Name"];
                TextBox5.Text = Label3.Text;
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

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True";
            con.Open();
            string sql = "select Class, Notes,Date from Notifications where Date ='" + Calendar1.SelectedDate.ToShortDateString() + "'and StudentID ='" + Label3.Text + "'";

            SqlCommand cmd = new SqlCommand(sql, con);
            dr = cmd.ExecuteReader();

            GridView1.DataSource = dr;
            GridView1.DataBind();

            con.Close();
            TextBox4.Text = Calendar1.SelectedDate.ToShortDateString();
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            e.Cell.BorderColor = System.Drawing.Color.Black;
            e.Cell.BorderStyle = BorderStyle.Solid;
            e.Cell.BorderWidth = 1;

            con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True";
            con.Open();
            string sql = "select Date from Notifications where StudentID ='" + Label3.Text + "'";
            SqlCommand cmd = new SqlCommand(sql, con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                if (dr["Date"].ToString() == e.Day.Date.ToString())
                {
                    e.Cell.BackColor = System.Drawing.Color.Red;
                }
            }
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
                var parameter = SqlDataSource1.InsertParameters;
                parameter["StudentID"].DefaultValue = TextBox5.Text;
                parameter["Class"].DefaultValue = TextBox2.Text;
                parameter["Notes"].DefaultValue = TextBox3.Text;
                parameter["Date"].DefaultValue = TextBox4.Text;
            //insert and bind data table
            try
            {
                SqlDataSource1.Insert();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                ErrLabel.Text = ex.Message;
            }

        }
    }
}
