<%@ Page Title="Home Page" Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="bold_reports_webforms_report_writer._Default" %>

<!DOCTYPE html>
<html>
    <head runat="server">
        <title> BoldReports Writer </title>
    </head>
    <body>
        <div class="container">
            <div class="content_section">
                <form id="form1" runat="server">
                <div id="description_Pane" style="text-align: justify;">
                    <h3>Description</h3>
                    <span>
                        Bold ReportWriter is a powerful control for exporting RDL and RDLC files into specified
                        format files.
                    </span>
                    </div>
                    <div id="export_Pane" style="margin-top: 4%;">
                        <h3>Export Report</h3>
                        <span>
                            Choose a file format to view the selected document generated from Report file by using Essential ReportWriter.
                        </span>
                        <div id="selection_Pane" style="margin-top: 2%;">
                            <asp:Label Style="font-size: large;" runat="server">
                                Save As :
                            </asp:Label>

                            <asp:RadioButtonList RepeatLayout="Flow" ID="ExportFormat" RepeatDirection="Horizontal" runat="server">
                                <asp:ListItem Selected="True">PDF</asp:ListItem>
                                <asp:ListItem>Word</asp:ListItem>
                                <asp:ListItem>Excel</asp:ListItem>
                                <asp:ListItem>Html</asp:ListItem>
                                <asp:ListItem>PPT</asp:ListItem>
                                <asp:ListItem>csv</asp:ListItem>
                            </asp:RadioButtonList>

                            <asp:Button style="width: 18%; margin-left: 2%;" ID="ExportButton" runat="server" OnClick="ExportButton_Click" Text="Generate" />
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
