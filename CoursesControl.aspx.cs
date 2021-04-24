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
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CoursesWithAdmin();
            }
        }
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=C:\USERS\HMBUMBA\SOURCE\REPOS\USER\USER\APP_DATA\DATABASE1.MDF;Integrated Security=True");
        protected void Button1_Click(object sender, EventArgs e)
        {
            int CourseID = int.Parse(TextBox1.Text);
            String CourseName = TextBox2.Text, CourseDescription = TextBox3.Text, Professor = DropDownList1.SelectedValue, Level = RadioButtonList1.SelectedValue;
            DateTime EndCourse = DateTime.Parse(TextBox4.Text);
            con.Open();
            SqlCommand cmd = new SqlCommand("EXEC CoursesWithAdmin'"+ CourseID + "','" + CourseName + "','" + CourseDescription + "','" + Professor + "','" + Level + "','" + EndCourse + "'",con);
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Insertion Succeed!!');", true);
            CoursesWithAdmin();
        }

               void CoursesWithAdmin()
               {
                   SqlCommand cmd = new SqlCommand("EXEC CoursesSelectWithAdmin", con);
                   SqlDataAdapter sd = new SqlDataAdapter(cmd);
                   DataTable dt = new DataTable();
                   sd.Fill(dt);
                   GridView1.DataSource = dt;
                   GridView1.DataBind();
               }
    }
}