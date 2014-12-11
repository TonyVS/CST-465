<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" Inherits="EditYourProfile" Codebehind="EditYourProfile.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Stylesheets" Runat="Server">
    <link rel="stylesheet" href="~/css/Master.css" type="text/css" media="screen" runat="server" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <title>Edit Your Profile</title>
    
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h1>Edit Your Profile</h1>

    <asp:Label ID="uxNameLabel" AssociatedControlID="uxName" Text="Name" runat="server">
        <asp:TextBox ID="uxName" runat="server"></asp:TextBox>
    </asp:Label>
    <asp:RequiredFieldValidator ControlToValidate="uxName" ValidationGroup="ProfileValidation" ErrorMessage="Name" runat="server" />
    <br />

    <asp:Label ID="uxEmailLabel" AssociatedControlID="uxEmail" Text="Email" runat="server">
        <asp:TextBox ID="uxEmail" runat="server"></asp:TextBox>
    </asp:Label>
    <asp:RequiredFieldValidator ControlToValidate="uxEmail" ValidationGroup="ProfileValidation" ErrorMessage="Email" runat="server" />
    <br />

    <asp:Label ID="uxUserTypeLabel" AssociatedControlID="uxUserType" Text="User Type" runat="server">
        <asp:DropDownList ID="uxUserType" runat="server">
            <asp:ListItem >--Select</asp:ListItem>
            <asp:ListItem Enabled="true" Text="Student" Value="Student"></asp:ListItem>
            <asp:ListItem Text="Faculty/Staff" Value="Faculty/Staff"></asp:ListItem>
        </asp:DropDownList>
    </asp:Label>
    <asp:RequiredFieldValidator ControlToValidate="uxUserType" InitialValue="0" ValidationGroup="ProfileValidation" ErrorMessage="User Type" runat="server" />
    <br />

    <asp:Label ID="uxHobbyLabel" AssociatedControlID="uxHobby" Text="Hobby" runat="server">
        <asp:TextBox ID="uxHobby" runat="server"></asp:TextBox>
    </asp:Label>
    <asp:RequiredFieldValidator ControlToValidate="uxHobby" ValidationGroup="ProfileValidation" ErrorMessage="Hobby" runat="server" />
    <br />

    <asp:Label ID="uxBandLabel" AssociatedControlID="uxBand" Text="Band" runat="server">
        <asp:TextBox ID="uxBand" runat="server"></asp:TextBox>
    </asp:Label>
    <asp:RequiredFieldValidator ControlToValidate="uxBand" ValidationGroup="ProfileValidation" ErrorMessage="Band" runat="server" />
    <br />

    <asp:Label ID="uxBiographyLabel" AssociatedControlID="uxBiography" Text="Biography" runat="server">
        <asp:TextBox ID="uxBiography" TextMode="MultiLine" Columns="60" Rows="6" runat="server"></asp:TextBox>
    </asp:Label>
    <asp:RequiredFieldValidator ControlToValidate="uxBiography" ValidationGroup="ProfileValidation" ErrorMessage="Biography" runat="server" />
    <br />

<%--    <asp:Label ID="uxTableLabel" AssociatedControlID="uxTable" Text="Table" runat="server">
        <asp:Table ID="uxTable" runat="server">
            <asp:TableHeaderRow ID="uxTableRowHeader" runat="server">
                <asp:TableHeaderCell>Course Prefix</asp:TableHeaderCell>
                <asp:TableHeaderCell>Course Number</asp:TableHeaderCell>
                <asp:TableHeaderCell>Course Description</asp:TableHeaderCell>
            </asp:TableHeaderRow>
            <asp:TableRow ID="uxTableRowContent" runat="server">
                <asp:TableCell >
                     <asp:Label ID="uxCoursePrefixLabel" AssociatedControlID="uxCoursePrefix" runat="server">
                         <asp:TextBox ID="uxCoursePrefix" runat="server"></asp:TextBox>
                    </asp:Label>
                    <asp:RequiredFieldValidator ControlToValidate="uxCoursePrefix" ValidationGroup="ProfileValidation" ErrorMessage="Course Prefix" runat="server" />
                </asp:TableCell>
                <asp:TableCell >
                     <asp:Label ID="uxCourseNumberLabel" AssociatedControlID="uxCourseNumber" runat="server">
                         <asp:TextBox ID="uxCourseNumber" runat="server"></asp:TextBox>
                    </asp:Label>
                    <asp:RequiredFieldValidator ControlToValidate="uxCourseNumber" ValidationGroup="ProfileValidation" ErrorMessage="Course Number" runat="server" />
                </asp:TableCell>
                <asp:TableCell >
                     <asp:Label ID="uxCourseDescriptionLabel" AssociatedControlID="uxCourseDescription" runat="server">
                         <asp:TextBox ID="uxCourseDescription" runat="server"></asp:TextBox>
                    </asp:Label>
                    <asp:RequiredFieldValidator ControlToValidate="uxCourseDescription" ValidationGroup="ProfileValidation" ErrorMessage="Course Description" runat="server" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </asp:Label>
    <br />--%>

    <asp:Label ID="uxSubmitLabel" AssociatedControlID="uxSubmit" Text="Save" runat="server">
        <asp:Button ValidationGroup="ProfileValidation" ID="uxSubmit" Text="Save Profile" OnClick="uxSubmit_Click" runat="server" />
    </asp:Label>
    <br />

    <asp:ValidationSummary 
            id="uxValidationSummary" ValidationGroup="ProfileValidation" 
            DisplayMode="BulletList" 
            runat="server"
            HeaderText="You must enter a value in the following fields:"/>
            
    <asp:Literal ID="uxIsPostBack" runat="server"></asp:Literal>
    <br />
    <asp:Literal ID="uxFormOutput" runat="server"></asp:Literal>
    <br />
    <asp:Literal ID="uxEventOutput" Text="EvenOutput" runat="server"></asp:Literal>

</asp:Content>

