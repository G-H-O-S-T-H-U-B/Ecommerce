using Microsoft.Reporting.WebForms;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Ecommerce.user.report
{
    public partial class test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadReport();
            }
        }

        private void LoadReport()
        {
            // 1. Load Data From SQL
            string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Brand", con);
            DataTable dt = new DataTable();
            da.Fill(dt);

            // 2. Set Report Path
            ReportViewer1.LocalReport.ReportPath = Server.MapPath("~/user/report/Report.rdlc");

            // 3. Create Report Data Source
            ReportDataSource rds = new ReportDataSource("DataSet1", dt);

            // 4. Add DataSource To Report
            ReportViewer1.LocalReport.DataSources.Clear();
            ReportViewer1.LocalReport.DataSources.Add(rds);

            // 5. Refresh Report
            ReportViewer1.LocalReport.Refresh();
        }
    }
}