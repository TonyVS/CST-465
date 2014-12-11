<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" Inherits="ViewYourProfile" Codebehind="ViewYourProfile.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Stylesheets" Runat="Server">
    <link rel="stylesheet" href="~/css/Master.css" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <title>View Your Profile</title>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h1>View Your Profile</h1>

    <span class="Name">Name:</span><asp:Literal ID="uxName" runat="server" />
    <br />
    <span class="Email">Email:</span><asp:Literal ID="uxEmail" runat="server" />
    <br />
    <span class="UserType">User Type:</span><asp:Literal ID="uxUserType" runat="server" />
    <br />
    <span class="Hobby">Hobby:</span><asp:Literal ID="uxHobby" runat="server" />
    <br />
    <span class="Band">Band:</span><asp:Literal ID="uxBand" runat="server" />
    <br />
    <span class="Biography">Biography:</span><asp:Literal ID="uxBiography" runat="server" />
    <br />
<%--    <span class="CoursePrefix">Course Prefix:</span><asp:Literal ID="uxCoursePrefix" runat="server" />
    <br />
    <span class="CourseNumber">Course Number:</span><asp:Literal ID="uxCourseNumber" runat="server" />
    <br />
    <span class="CourseDescription">Course Description:</span><asp:Literal ID="uxCourseDescription" runat="server" />--%>
    <br />
</asp:Content>

