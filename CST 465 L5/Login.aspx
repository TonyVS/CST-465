<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CST_465_L5.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
</head>
<body>
    <h1>Login</h1>
    <form id="form1" runat="server">
    <div>
    
        <asp:Login MembershipProvider="SqlMembership" CreateUserText="Register" ContinueDestinationPageUrl="~/EditYourProfile.aspx" CreateUserUrl="~/Register.aspx" runat="server">
        </asp:Login>

    </div>
    </form>
</body>
</html>
