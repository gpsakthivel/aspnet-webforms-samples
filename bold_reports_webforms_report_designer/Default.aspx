<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="bold_reports_webforms_report_designer._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="height: 650px; width: 100%">
        <Bold:ReportDesigner runat="server" ID="designer" ServiceUrl="/api/ReportDesigner">
        </Bold:ReportDesigner>
    </div>
</asp:Content>
