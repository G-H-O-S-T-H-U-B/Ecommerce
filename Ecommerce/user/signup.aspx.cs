using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommerce.user
{
    public partial class signup : System.Web.UI.Page
    {
        string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected  void btnSubmit_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text.Trim();
            string mobile = txtMobile.Text.Trim();
            string user_name = txtUsername.Text.Trim();
            string pass = txtPass.Text;
            insertData(email, mobile, user_name, pass);
        }

        // ==========================
        // USER DEFINE FUNCTIONS 
        // ==========================

        // ENTER USER DETAILS INTO DATABASE

        private void insertData(string email, string mobile, string user_name, string pass)
        {
            if (!string.IsNullOrEmpty(email)  && !string.IsNullOrEmpty(mobile) && !string.IsNullOrEmpty(user_name) && !string.IsNullOrEmpty(pass))
            {
                try
                {
                    using (SqlConnection con = new SqlConnection(constr))
                    {
                        string query = $"insert into user_details (user_name, user_pass, mobile, email) values('{user_name}', '{pass}', {mobile}, '{email}')";
                        con.Open();
                        SqlCommand cmd = new SqlCommand(query, con);
                        int count = cmd.ExecuteNonQuery();
                        if (count > 0)
                        {
                            Response.Write($"<script>alert('Sign up successfully done')</script>");
                            Response.Redirect("~/user/login.aspx");
                        }
                        else
                        {
                            Response.Write($"<script>alert('Sign up faild')</script>");
                        }
                    }
                }
                catch (SqlException ex)
                {
                    Response.Write($"<script>alert('{ex}')</script>");
                }
            }
        }


    }
}