<%@ Page Title="" Language="C#" MasterPageFile="~/MasterMain.master" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="DXWebApplication1.Welcome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
    <div class="jumbotron">
        <div class="container">
            <h1>Selamat Datang di Survey</h1>
            <br />
            <h6>Nama:
                <dx:ASPxLabel ID="lblEmployeeName" runat="server" Text="" Font-Size="Medium" Font-Bold="true"></dx:ASPxLabel>
            </h6>
            <h6>Direktorat:
                <dx:ASPxLabel ID="lblDirectorateName" runat="server" Text="" Font-Size="Medium" Font-Bold="true"></dx:ASPxLabel>
            </h6>
            <h6>Divisi:
                <dx:ASPxLabel ID="lblDivisionName" runat="server" Text="" Font-Size="Medium" Font-Bold="true"></dx:ASPxLabel>
            </h6>
            <h6>Posisi:
                <dx:ASPxLabel ID="lblPositionName" runat="server" Text="" Font-Size="Medium" Font-Bold="true"></dx:ASPxLabel>
            </h6>
            <h6>Lokasi Kerja:
                <dx:ASPxLabel ID="lblWorkLocation" runat="server" Text="" Font-Size="Medium" Font-Bold="true"></dx:ASPxLabel>
            </h6>
            <br />
            <dx:BootstrapButton ID="btnStartSurvey" runat="server" Text="Mulai Survey" AutoPostBack="false" CssClasses-Button="btn-primary btn-lg" OnClick="btnStartSurvey_Click">
                <SettingsBootstrap RenderOption="Primary" />
            </dx:BootstrapButton>
        </div>
    </div>
</asp:Content>
