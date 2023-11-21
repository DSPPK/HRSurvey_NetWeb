<%@ Page Title="" Language="C#" MasterPageFile="~/MasterMain.master" AutoEventWireup="true" CodeBehind="Question23.aspx.cs" Inherits="DXWebApplication1.Question23" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
    <div class="jumbotron">
        <div class="container">
            <h1>Tidak Berminat Di Mutasi</h1>
            • Apa yang menjadi alasan Anda tidak berminat untuk di mutasi ?            
            <br />
            <dx:BootstrapMemo ID="memReasonDontWantToMutation" runat="server" Rows="5" NullText="Harap diisi dengan lengkap dan detil." MaxLength="4000">
                <ValidationSettings ValidationGroup="ValidationGroup">
                    <RequiredField ErrorText="Informasi alasan Anda tidak berminat untuk dimutasi harus diisi." IsRequired="true" />
                    <RegularExpression ValidationExpression="^([a-zA-Z0-9 ,-.!(:;/&'%=\n)?]+)$" ErrorText="Karakter khusus tidak diperbolehkan. Silahkan input hanya Huruf, Angka, dan Tanda Baca standard." />
                </ValidationSettings>
                <ClientSideEvents
                    Init="function(s, e) { InitMemoMaxLength(s, 4000); RecalculateCharsRemaining(s); }"
                    GotFocus="EnableMaxLengthMemoTimer" LostFocus="DisableMaxLengthMemoTimer"
                    KeyDown="RecalculateCharsRemaining" KeyUp="RecalculateCharsRemaining"
                    KeyPress="function(s, e) { if( e.htmlEvent.keyCode == 8 || e.htmlEvent.keyCode == 13 || (e.htmlEvent.keyCode >= 32 && e.htmlEvent.keyCode <= 41) || (e.htmlEvent.keyCode >= 43 && e.htmlEvent.keyCode <= 59) || e.htmlEvent.keyCode == 61 || (e.htmlEvent.keyCode >= 63 && e.htmlEvent.keyCode <= 64) || (e.htmlEvent.keyCode >= 65 && e.htmlEvent.keyCode <= 90) || (e.htmlEvent.keyCode >= 97 && e.htmlEvent.keyCode <= 122) ) {  return true; } else {  ASPxClientUtils.PreventEvent(e.htmlEvent); } }" />
            </dx:BootstrapMemo>
            <span class="chrm" style="font-size: smaller">Characters remaining:
                <dx:ASPxLabel ID="memReasonDontWantToMutation_cr" runat="server" EnableClientSideAPI="True" />
            </span>
            <br />
            <br />
            <dx:BootstrapButton ID="btnBack" runat="server" Text="<< Sebelumnya" OnClick="btnBack_Click" AutoPostBack="false" UseSubmitBehavior="false">
                <SettingsBootstrap RenderOption="Warning" />
            </dx:BootstrapButton>
            <dx:BootstrapButton ID="btnNext" runat="server" Text="Selanjutnya >>" OnClick="btnNext_Click" AutoPostBack="false" UseSubmitBehavior="false" ValidationGroup="ValidationGroup">
                <SettingsBootstrap RenderOption="Primary" />
            </dx:BootstrapButton>
        </div>
    </div>
</asp:Content>
