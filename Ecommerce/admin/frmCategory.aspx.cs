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
    public partial class category : System.Web.UI.Page
    {
        string constr = System.Configuration.ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string category_id = Request.QueryString["id"];
                if (!string.IsNullOrEmpty(category_id))
                {
                    initFrmFIll(category_id);
                }
                else
                {
                    lblMessage.Text = "Auto Fill is off";
                }

            }
        }


        protected void initFrmFIll(string category_id)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(constr))
                {
                    con.Open();
                    string query = "SELECT * FROM Category WHERE category_id = @category_id";
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@category_id", category_id);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    if (dt.Rows.Count > 0)
                    {
                        txtCategoryName.Text = dt.Rows[0]["category_name"].ToString();
                        txtCategoryDesc.Text = dt.Rows[0]["category_desc"].ToString();
                    }
                }
            }
            catch (Exception ex)
            {
                lblMessage.Text = ex.Message;
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string categoryName = txtCategoryName.Text.Trim();
            string categoryDesc = txtCategoryDesc.Text.Trim();

            if (string.IsNullOrEmpty(categoryDesc))
            {
                categoryDesc = null;
            }

            insertIntoCategoryTable(categoryName, categoryDesc);
        }


        // USER DEFINED FUNCTIONS

        protected void insertIntoCategoryTable(string categoryName, string categoryDesc)
        {
            try
            {
                clearTextBoxes();
                using (SqlConnection con = new SqlConnection(constr))
                {
                    con.Open();
                    string query = "INSERT INTO Category (category_name, category_desc) VALUES (@category_name, @category_desc)";
                    SqlCommand cmd = new SqlCommand(query, con);

                    cmd.Parameters.AddWithValue("@category_name", categoryName);

                    if (categoryDesc == null)
                        cmd.Parameters.AddWithValue("@category_desc", DBNull.Value);
                    else
                        cmd.Parameters.AddWithValue("@category_desc", categoryDesc);

                    int count = cmd.ExecuteNonQuery();

                    if (count > 0)
                    {
                        lblMessage.Text = "Category added successfully";
                        lblMessage.ForeColor = System.Drawing.Color.Green;
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "hideMsg", "hideLabel();", true);
                    }

                }
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Error: " + ex.Message;
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void clearTextBoxes()
        {
            txtCategoryName.Text = "";
            txtCategoryDesc.Text = "";
            lblMessage.Text = "";
        }




    }
}