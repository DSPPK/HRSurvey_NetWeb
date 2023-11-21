<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="DXWebApplication1.WebForm11" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <dx:BootstrapTextBox ID="txtNIK" runat="server" Caption="NIK" Width="200px"></dx:BootstrapTextBox>
            <dx:BootstrapTextBox ID="txtNewPassword" runat="server" Caption="New Password" Width="200px"></dx:BootstrapTextBox>
            <br />
            <dx:BootstrapButton ID="btnChangePassword" runat="server" AutoPostBack="false" Text="Change Password" OnClick="btnChangePassword_Click"></dx:BootstrapButton>
            <br />
            <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
