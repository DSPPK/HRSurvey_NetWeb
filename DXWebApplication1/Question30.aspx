<%@ Page Title="" Language="C#" MasterPageFile="~/MasterMain.master" AutoEventWireup="true" CodeBehind="Question30.aspx.cs" Inherits="DXWebApplication1.Question30" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
    <div class="jumbotron">
        <div class="container">
            <h1>Pertanyaan Tantangan</h1>
            • Jika ada kesempatan untuk menjadi salah satu dari jajaran direksi, posisi manakah yang paling menarik dan menantang bagi Anda ?
            <br />
            <div class="col-lg-5">
                <dx:BootstrapComboBox runat="server" ID="cboPositionAsDirector" NullText="Silahkan Pilih" AllowNull="false" Caption="Pilihan Posisi Direksi">
                    <ValidationSettings ValidationGroup="ValidationGroup">
                        <RequiredField ErrorText="Pilihan Posisi Direksi harus dipilih." IsRequired="true" />
                    </ValidationSettings>
                    <Items>
                        <dx:BootstrapListEditItem Text="President Director (CEO)" Value="President Director (CEO)" />
                        <dx:BootstrapListEditItem Text="Business Director" Value="Business Director" />
                        <dx:BootstrapListEditItem Text="Compliance and Risk Director" Value="Compliance and Risk Director" />
                        <dx:BootstrapListEditItem Text="Credit Director" Value="Credit Director" />
                        <dx:BootstrapListEditItem Text="Finance and Consumer Business Director" Value="Finance and Consumer Business Director" />
                    </Items>
                </dx:BootstrapComboBox>
            </div>
            <br />
            • Jelaskan alasan dan rencana program Anda atas jabatan direksi yang Anda minati ?
            <br />
            <span class="chrm" style="font-size: smaller; color: red;">(Penjabaran Anda akan menjadi bahan pertimbangan ketika ada kesempatan dalam posisi ini, besar keinginan Anda untuk mutasi dapat terlihat dari penjabaran yang Anda berikan)
            </span>
            <br />
            <dx:BootstrapMemo ID="memMutationReasonAsDirector" runat="server" Rows="5" NullText="Harap diisi dengan lengkap dan detil." MaxLength="4000">
                <ValidationSettings ValidationGroup="ValidationGroup">
                    <RequiredField ErrorText="Informasi alasan Anda pantas menempati posisi harus diisi." IsRequired="true" />
                    <RegularExpression ValidationExpression="^([a-zA-Z0-9 ,-.!(:;/&'%=\n)?]+)$" ErrorText="Karakter khusus tidak diperbolehkan. Silahkan input hanya Huruf, Angka, dan Tanda Baca standard." />
                </ValidationSettings>
                <ClientSideEvents
                    Init="function(s, e) { InitMemoMaxLength(s, 4000); RecalculateCharsRemaining(s); }"
                    GotFocus="EnableMaxLengthMemoTimer" LostFocus="DisableMaxLengthMemoTimer"
                    KeyDown="RecalculateCharsRemaining" KeyUp="RecalculateCharsRemaining"
                    KeyPress="function(s, e) { if( e.htmlEvent.keyCode == 8 || e.htmlEvent.keyCode == 13 || (e.htmlEvent.keyCode >= 32 && e.htmlEvent.keyCode <= 41) || (e.htmlEvent.keyCode >= 43 && e.htmlEvent.keyCode <= 59) || e.htmlEvent.keyCode == 61 || (e.htmlEvent.keyCode >= 63 && e.htmlEvent.keyCode <= 64) || (e.htmlEvent.keyCode >= 65 && e.htmlEvent.keyCode <= 90) || (e.htmlEvent.keyCode >= 97 && e.htmlEvent.keyCode <= 122) ) {  return true; } else {  ASPxClientUtils.PreventEvent(e.htmlEvent); } }" />
            </dx:BootstrapMemo>
            <span class="chrm" style="font-size: smaller">Characters remaining:
                <dx:ASPxLabel ID="memMutationReasonAsDirector_cr" runat="server" EnableClientSideAPI="True" />
            </span>
            <br />
            <br />
            • Persiapan apa yang telah Anda lakukan untuk mendukung minat Anda menempati posisi direksi tersebut ?
            <br />
            <span class="chrm" style="font-size: smaller; color: red;">(Jawaban Anda akan menjadi bahan pertimbangan ketika ada kesempatan dalam posisi ini, besar usaha Anda dapat terlihat dari jawaban yang Anda berikan)
            </span>
            <br />
            <dx:BootstrapMemo ID="memMutationPreparationAsDirector" runat="server" Rows="5" NullText="Harap diisi dengan lengkap dan detil." MaxLength="4000">
                <ValidationSettings ValidationGroup="ValidationGroup">
                    <RequiredField ErrorText="Informasi persiapan mutasi yang sudah dilakukan harus diisi." IsRequired="true" />
                    <RegularExpression ValidationExpression="^([a-zA-Z0-9 ,-.!(:;/&'%=\n)?]+)$" ErrorText="Karakter khusus tidak diperbolehkan. Silahkan input hanya Huruf, Angka, dan Tanda Baca standard." />
                </ValidationSettings>
                <ClientSideEvents
                    Init="function(s, e) { InitMemoMaxLength(s, 4000); RecalculateCharsRemaining(s); }"
                    GotFocus="EnableMaxLengthMemoTimer" LostFocus="DisableMaxLengthMemoTimer"
                    KeyDown="RecalculateCharsRemaining" KeyUp="RecalculateCharsRemaining"
                    KeyPress="function(s, e) { if( e.htmlEvent.keyCode == 8 || e.htmlEvent.keyCode == 13 || (e.htmlEvent.keyCode >= 32 && e.htmlEvent.keyCode <= 41) || (e.htmlEvent.keyCode >= 43 && e.htmlEvent.keyCode <= 59) || e.htmlEvent.keyCode == 61 || (e.htmlEvent.keyCode >= 63 && e.htmlEvent.keyCode <= 64) || (e.htmlEvent.keyCode >= 65 && e.htmlEvent.keyCode <= 90) || (e.htmlEvent.keyCode >= 97 && e.htmlEvent.keyCode <= 122) ) {  return true; } else {  ASPxClientUtils.PreventEvent(e.htmlEvent); } }" />
            </dx:BootstrapMemo>
            <span class="chrm" style="font-size: smaller">Characters remaining:
                <dx:ASPxLabel ID="memMutationPreparationAsDirector_cr" runat="server" EnableClientSideAPI="True" />
            </span>
            <br />
            <br />
            <div class="col-lg-6">
                <dx:BootstrapButton ID="btnBack" runat="server" Text="<< Sebelumnya" OnClick="btnBack_Click" AutoPostBack="false" UseSubmitBehavior="false">
                    <SettingsBootstrap RenderOption="Warning" />
                </dx:BootstrapButton>
                <dx:BootstrapButton ID="btnSubmit" runat="server" Text="Simpan Data" OnClick="btnSubmit_Click" AutoPostBack="false" UseSubmitBehavior="false" ValidationGroup="ValidationGroup">
                    <SettingsBootstrap RenderOption="Success" />
                </dx:BootstrapButton>
                <dx:BootstrapButton ID="btnNotInterestedAsDirector" runat="server" Text="Belum Berminat" OnClick="btnNotInterestedAsDirector_Click" AutoPostBack="false" UseSubmitBehavior="false">
                    <SettingsBootstrap RenderOption="Danger" />
                </dx:BootstrapButton>
            </div>
        </div>
    </div>
</asp:Content>
