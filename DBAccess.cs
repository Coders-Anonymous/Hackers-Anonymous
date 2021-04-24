using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace User.Models
{
    public class DBAccess
    {
        //Update Method
        public static int UpdateUser(User user)
        {
            int rowsAffected = -1;
            string sqlCommnd = "UPDATE [Register] SET [FirstName]=@FirstName, [LastName]=@LastName," + " [Password]=@Password WHERE [StudentID]=@StudentID";
            using (SqlConnection con = new SqlConnection(getConnectionString()))
            {
                using (SqlCommand cmd = new SqlCommand(sqlCommnd, con))
                {
                    con.Open();
                    cmd.Parameters.AddWithValue("FirstName", user.FirstName);
                    cmd.Parameters.AddWithValue("LastName", user.LastName);
                    cmd.Parameters.AddWithValue("Password", user.Password);
                    cmd.Parameters.AddWithValue("StudentID", user.StudentID);

                    rowsAffected = cmd.ExecuteNonQuery();
                }
            }
            return rowsAffected;
        }
        //Insert Method
        public static void InsertUser(User user)
        {
            string cmdText = "INSERT INTO [Register] ([StudentID],[FirstName],[LastName],[Password])" + "VALUES (@StudentID, @FirstName, @LastName, @Password)";
            using (SqlConnection con = new SqlConnection(getConnectionString()))
            {
                using (SqlCommand cmd = new SqlCommand(cmdText, con))
                {
                    con.Open();
                    cmd.Parameters.AddWithValue("StudentID", user. StudentID);
                    cmd.Parameters.AddWithValue("FirstName", user.FirstName); 
                    cmd.Parameters.AddWithValue("LastName", user.LastName);
                    cmd.Parameters.AddWithValue("Password", user.Password);

                    cmd.ExecuteNonQuery();

                }
            }
        }
        //delete Method
        public static int DeleteUser(User user)
        {
            int rowAffected = -1;
            string cmdText= "DELETE FROM [Register]" + "WHERE StudentID = @StudentID"; 
            using (SqlConnection con = new SqlConnection(getConnectionString()))
            {
                using (SqlCommand cmd = new SqlCommand(cmdText, con))
                {
                    con.Open();
                    cmd.Parameters.AddWithValue("StudentID", user.StudentID);

                    rowAffected = cmd.ExecuteNonQuery();
                }
            }
            return rowAffected;
        }
       

        public static List<User> GetAllUsers()
        {  //Selecte Method
            List<User> userList = new List<User>();
            string sql = "SELECT [StudentID], [FirstName], [LastName], [Password] FROM [Register]";
            using (SqlConnection conn = new SqlConnection(getConnectionString()))
            {
                using (SqlCommand com = new SqlCommand(sql, conn))
                {
                    conn.Open();
                    SqlDataReader dr = com.ExecuteReader();
                    User user;
                    while (dr.Read())
                    {
                        user = new User();
                        user.StudentID = int.Parse (dr["StudentID"].ToString());
                        user.FirstName = dr["FirstName"].ToString();
                        user.LastName = dr["LastName"].ToString();
                        user.Password = dr["Password"].ToString();

                        userList.Add(user);
                    }
                    dr.Close();
                }
             
            }
            return userList;
        }
        private static string getConnectionString()
        {
            return ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        }
    }

}