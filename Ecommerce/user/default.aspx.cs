using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommerce.user
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["role"] != null) 
            { 
                //Response.Write($"<script>alert('{Session["role"].ToString()}')</script>");
            }
            else
            {
                Response.Redirect("~/user/login.aspx");
            }
        }
    }
}