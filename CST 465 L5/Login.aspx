<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CST_465_L5.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Stylesheets" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <title>Login</title>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Login</h1>
    <asp:Login MembershipProvider="SqlMembership" CreateUserText="Register" ContinueDestinationPageUrl="~/EditYourProfile.aspx" CreateUserUrl="~/Register.aspx" runat="server">
    </asp:Login>
</asp:Content>