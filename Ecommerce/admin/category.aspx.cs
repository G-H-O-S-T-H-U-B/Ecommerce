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
    public partial class category1 : System.Web.UI.Page
    {
        string constr = System.Configuration.ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gvFill("Category");
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Server.Transfer("~/admin/frmCategory.aspx");
        }

        protected void gvFill(string tblName)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(constr))
                {
                    string qurey = $"SELECT * FROM [{tblName}]";
                    con.Open();
                    SqlCommand cmd = new SqlCommand(qurey, con);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    if (dt.Rows.Count > 0)
                    {
                        gvCategory.DataSource = dt;
                        gvCategory.DataBind();
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

        protected void gvCategory_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "CategoryClick")
            {
                // Get Row Index
                int rowIndex = Convert.ToInt32(e.CommandArgument);

                // Get Brand ID using DataKey
                int categoryId = Convert.ToInt32(gvCategory.DataKeys[rowIndex].Value);

                // Trasfering Category_id to initialize data filling
                Server.Transfer($"~/admin/frmCategory.aspx?id={categoryId}");
            }
        }
    }
}