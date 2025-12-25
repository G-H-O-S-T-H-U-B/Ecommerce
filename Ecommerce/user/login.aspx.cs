using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Data.Common;
using System.Net.Sockets;

namespace Ecommerce.user
{
    public partial class login : System.Web.UI.Page
    {
        string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text.Trim();
            string pass = txtPass.Text.Trim();
            check_credential(email, pass);
        }

        // ==========================
        // USER DEFINE FUNCTIONS
        // ==========================

        private void check_credential(string email, string pass)
        {
            if (!string.IsNullOrEmpty(email) && !string.IsNullOrEmpty(pass))
            {
                using (SqlConnection con = new SqlConnection(constr))
                {
                    string query = $"select * from user_details where email = '{email}' and user_pass = '{pass}'";
                    con.Open();
                    SqlDataAdapter da = new SqlDataAdapter(query, con);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    if (dt.Rows.Count > 0 && dt.Rows.Count == 1)
                    {
                        Session["role"] = "user";
                        Response.Redirect("~/user/default.aspx");
                    }
                    else
                    {
                        lblStatus.Text = "error";   
                    }
                }
            }
            else
            {

            }
        }



    }
}