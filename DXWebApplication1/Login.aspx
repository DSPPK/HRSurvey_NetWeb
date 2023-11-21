<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterGeneral.master" CodeBehind="Login.aspx.cs" Inherits="DXWebApplication1.Login" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="Content" runat="server">
    <div class="jumbotron">
        <div class="container">
            <h2>Log In</h2>
            <p>
                Silahkan input Username dan Password Anda untuk dapat mengakses Survey ini.
            </p>
            <dx:BootstrapTextBox ID="tbUserName" runat="server" Width="200px" Caption="Username" MaxLength="50">
                <ValidationSettings ValidationGroup="LoginUserValidationGroup">
                    <RequiredField ErrorText="Username harus diisi." IsRequired="true" />
                </ValidationSettings>
            </dx:BootstrapTextBox>
            <dx:BootstrapTextBox ID="tbPassword" runat="server" Password="true" Width="200px" Caption="Password" MaxLength="50">
                <CaptionSettings Position="Before" />
                <ValidationSettings ValidationGroup="LoginUserValidationGroup">
                    <RequiredField ErrorText="Password harus diisi." IsRequired="true" />
                </ValidationSettings>
            </dx:BootstrapTextBox>
            <br />
            <dx:BootstrapButton ID="btnLogin" runat="server" Text="Log In" ValidationGroup="LoginUserValidationGroup" OnClick="btnLogin_Click">
                <SettingsBootstrap RenderOption="Primary" />
            </dx:BootstrapButton>
        </div>
    </div>
</asp:Content>
