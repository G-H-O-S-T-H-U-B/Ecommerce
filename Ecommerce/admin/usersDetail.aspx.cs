using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommerce.admin
{
    public partial class usersDetail1 : System.Web.UI.Page
    {
        string constr = System.Configuration.ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gvFill("user_details");
            }
        }

        protected void gvFill(string tblName)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(constr))
                {
                    //string qurey = $"SELECT * FROM [{tblName}]";
                    string qurey = $"SELECT * , CASE WHEN isActive = 1 THEN 'Yes' ELSE 'No' END AS Active FROM [{tblName}];";
                    con.Open();
                    SqlCommand cmd = new SqlCommand(qurey, con);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    if (dt.Rows.Count > 0)
                    {
                        gvUsersDetail.DataSource = dt;
                        gvUsersDetail.DataBind();
                        //lblMessage.Text = "Table loaded successfully";
                    }
                    else
                    {
                        lblMessage.Text = "Error";
                    }
                }
            }
            catch (Exception ex)
            {
                lblMessage.Text = ex.Message;
            }

        }

        protected void gvUsersDetail_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "UserClick")
            {
                // Get Row Index
                int rowIndex = Convert.ToInt32(e.CommandArgument);

                // Get Brand ID using DataKey
                int userId = Convert.ToInt32(gvUsersDetail.DataKeys[rowIndex].Value);

                // Trasfering Category_id to initialize data filling
                Server.Transfer($"~/admin/frmUsersDetail.aspx?id={userId}");
            }
        }
    }
}