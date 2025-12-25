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
    public partial class brand : System.Web.UI.Page
    {
        string constr = System.Configuration.ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string brand_id = Request.QueryString["id"].ToString();
                if (!string.IsNullOrEmpty(brand_id))
                {
                    initFrmFIll(brand_id);
                    selectBtnPnl(true);
                }
                else
                {
                    lblMessage.Text = "lol";
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string brandName = txtBrandName.Text.Trim();
            string bradnDesc = txtBrandDesc.Text.Trim();

            if (string.IsNullOrEmpty(bradnDesc))
            {
                bradnDesc = null;
            }

            insertIntoBrandTable(brandName, bradnDesc);
        }


        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("brand.aspx");
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            openFields(true);
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string brandName = txtBrandName.Text.Trim();
            string brandDesc = txtBrandDesc.Text.Trim();
            updateIntoBrandTbl(brandName, brandDesc);
        }

        // USER DEFINED FUNCTIONS

        protected void selectBtnPnl(bool value)
        {
            pnlEditUpdateBtn.Visible = value;
            pnlSaveBtn.Visible = !value;
        }

        protected void initFrmFIll(string brand_id)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(constr))
                {
                    con.Open();
                    string query = "SELECT * FROM brand WHERE brand_id = @brand_id";
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@brand_id", brand_id);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    if (dt.Rows.Count > 0)
                    {
                        txtBrandName.Text = dt.Rows[0]["brand_name"].ToString();
                        txtBrandDesc.Text = dt.Rows[0]["brand_desc"].ToString();
                    }
                }
            }
            catch (Exception ex)
            {
                lblMessage.Text = ex.Message;
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void openFields(bool value)
        {
            txtBrandName.ReadOnly = value;
            txtBrandDesc.ReadOnly = value;
        }
        protected void insertIntoBrandTable(string brandName, string brandDesc)
        {
            try
            {
                clearTextBoxes();
                using (SqlConnection con = new SqlConnection(constr))
                {
                    con.Open();
                    string query = "INSERT INTO brand (brand_name, brand_desc) VALUES (@brand_name, @brand_desc)";
                    SqlCommand cmd = new SqlCommand(query, con);

                    cmd.Parameters.AddWithValue("@brand_name", brandName);

                    if (brandDesc == null)
                        cmd.Parameters.AddWithValue("@brand_desc", DBNull.Value);
                    else
                        cmd.Parameters.AddWithValue("@brand_desc", brandDesc);

                    int count = cmd.ExecuteNonQuery();

                    if (count > 0)
                    {
                        lblMessage.Text = "Brand added successfully";
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

        protected void updateIntoBrandTbl(string brandName, string brandDesc)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(constr))
                {
                    con.Open();
                    string query = "UPDATE brand SET brand_name = @brand_name, brand_desc = @brand_desc WHERE brand_id = @brand_id";
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@brand_name", brandName);
                    cmd.Parameters.AddWithValue("@brand_desc", brandDesc);
                    cmd.Parameters.AddWithValue("@brand_id", Request.QueryString["id"].ToString());

                    int success = cmd.ExecuteNonQuery();
                    if (success > 0)
                    {
                        lblMessage.Text = "Brand details updated successfully";
                        lblMessage.ForeColor = System.Drawing.Color.Green;
                    }
                }
            }
            catch (Exception ex)
            {
                lblMessage.Text = ex.Message;
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void clearTextBoxes()
        {
            txtBrandName.Text = "";
            txtBrandDesc.Text = "";
            lblMessage.Text = "";
        }

       
    }
}