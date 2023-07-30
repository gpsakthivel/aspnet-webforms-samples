using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BoldReports.Writer;

namespace bold_reports_webforms_report_writer
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ExportButton_Click(object sender, EventArgs e)
        {
            string fileName = null;
            WriterFormat format;
            HttpContext httpContext = System.Web.HttpContext.Current;
            BoldReports.Writer.ReportWriter writer = new BoldReports.Writer.ReportWriter();
            writer.ReportPath = Server.MapPath("~/Resources/sales-order-detail.rdl");

            if (this.ExportFormat.SelectedValue == "PDF")
            {
                fileName = "sales-order-detail.pdf";
                format = WriterFormat.PDF;
            }
            else if (this.ExportFormat.SelectedValue == "Word")
            {
                fileName = "sales-order-detail.docx";
                format = WriterFormat.Word;
            }
            else if (this.ExportFormat.SelectedValue == "Html")
            {
                fileName = "sales-order-detail.Html";
                format = WriterFormat.HTML;
            }
            else if (this.ExportFormat.SelectedValue == "PPT")
            {
                fileName = "sales-order-detail.ppt";
                format = WriterFormat.PPT;
            }
            else
            {
                fileName = "sales-order-detail.xlsx";
                format = WriterFormat.Excel;
            }
            writer.Save(fileName, format, httpContext.Response);
        }
    }
}