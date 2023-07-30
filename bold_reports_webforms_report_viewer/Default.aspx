<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="bold_reports_webforms_report_viewer._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="height: 900px; width: 100%; min-height:404px;">
        <Bold:ReportViewer runat="server" ID="viewer" ReportPath="~/Resources/sales-order-detail.rdl"
            ReportServiceUrl="/api/ReportViewer">
        </Bold:ReportViewer>
    </div>
</asp:Content>
