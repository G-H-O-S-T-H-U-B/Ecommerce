using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommerce.user
{
    public partial class mst : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["role"] != null)
            {
                account_icon_login.Visible = true;
                account_icon_logout.Visible = false;
            }
            else
            {
                account_icon_login.Visible = false;
                account_icon_logout.Visible = true;
            }
        }
    }
}