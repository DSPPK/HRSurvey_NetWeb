<%@ Page Title="" Language="C#" MasterPageFile="~/MasterMain.master" AutoEventWireup="true" CodeBehind="Question21.aspx.cs" Inherits="DXWebApplication1.Question21" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
    <div class="jumbotron">
        <div class="container">
            <h1>Tujuan Mutasi ke-2 (SECONDARY) : Kantor Pusat</h1>
            • Posisi Kerja dan Unit Kerja apa yang Anda minati ?
            <br />
            <div class="col-lg-5">
                <dx:BootstrapComboBox runat="server" ID="cboWorkingPosition" NullText="Silahkan Pilih" AllowNull="false" Caption="Posisi Kerja">
                    <ValidationSettings ValidationGroup="ValidationGroup">
                        <RequiredField ErrorText="Posisi Kerja harus dipilih." IsRequired="true" />
                    </ValidationSettings>
                    <Items>
                        <dx:BootstrapListEditItem Text="Staff" Value="Staff" />
                        <dx:BootstrapListEditItem Text="Officer" Value="Officer" />
                        <dx:BootstrapListEditItem Text="Unit Head" Value="Unit Head" />
                        <dx:BootstrapListEditItem Text="Department Head" Value="Department Head" />
                        <dx:BootstrapListEditItem Text="Division Head" Value="Division Head" />
                    </Items>
                </dx:BootstrapComboBox>
                <dx:BootstrapComboBox runat="server" ID="cboWorkingUnit" NullText="Silahkan Pilih" AllowNull="false" Caption="Unit Kerja">
                    <ValidationSettings ValidationGroup="ValidationGroup">
                        <RequiredField ErrorText="Unit Kerja harus dipilih." IsRequired="true" />
                    </ValidationSettings>
                    <Items>
                        <dx:BootstrapListEditItem Text="Accounting - Reporting" Value="Accounting - Reporting" />
                        <dx:BootstrapListEditItem Text="Accounting - Tax and Budget Control" Value="Accounting - Tax and Budget Control" />
                        <dx:BootstrapListEditItem Text="Appraisal" Value="Appraisal" />
                        <dx:BootstrapListEditItem Text="Banking Service Support" Value="Banking Service Support" />
                        <dx:BootstrapListEditItem Text="Branch Expansion" Value="Branch Expansion" />
                        <dx:BootstrapListEditItem Text="Business Analytics and MIS" Value="Business Analytics and MIS" />
                        <dx:BootstrapListEditItem Text="Commercial Banking" Value="Commercial Banking" />
                        <dx:BootstrapListEditItem Text="Compliance" Value="Compliance" />
                        <dx:BootstrapListEditItem Text="Consumer Acquisition" Value="Consumer Acquisition" />
                        <dx:BootstrapListEditItem Text="Consumer Credit Approval" Value="Consumer Credit Approval" />
                        <dx:BootstrapListEditItem Text="Core Banking Product Management" Value="Core Banking Product Management" />
                        <dx:BootstrapListEditItem Text="Corporate Banking / Corporate Funding" Value="Corporate Banking / Corporate Funding" />
                        <dx:BootstrapListEditItem Text="Corporate Communication" Value="Corporate Communication" />
                        <dx:BootstrapListEditItem Text="Corporate Planning" Value="Corporate Planning" />
                        <dx:BootstrapListEditItem Text="Credit Legal" Value="Credit Legal" />
                        <dx:BootstrapListEditItem Text="Credit Review" Value="Credit Review" />
                        <dx:BootstrapListEditItem Text="Financial Institution" Value="Financial Institution" />
                        <dx:BootstrapListEditItem Text="General Affair" Value="General Affair" />
                        <dx:BootstrapListEditItem Text="Global Marketing" Value="Global Marketing" />
                        <dx:BootstrapListEditItem Text="Human Resource - Admin" Value="Human Resource - Admin" />
                        <dx:BootstrapListEditItem Text="Human Resource - Recruitment" Value="Human Resource - Recruitment" />
                        <dx:BootstrapListEditItem Text="Internal Audit" Value="Internal Audit" />
                        <dx:BootstrapListEditItem Text="IT Division 1" Value="IT Division 1" />
                        <dx:BootstrapListEditItem Text="IT Division 2" Value="IT Division 2" />
                        <dx:BootstrapListEditItem Text="IT Division 3" Value="IT Division 3" />
                        <dx:BootstrapListEditItem Text="Learning and Development" Value="Learning and Development" />
                        <dx:BootstrapListEditItem Text="Loan Admin" Value="Loan Admin" />
                        <dx:BootstrapListEditItem Text="Loan Review" Value="Loan Review" />
                        <dx:BootstrapListEditItem Text="Mortgage Sales" Value="Mortgage Sales" />
                        <dx:BootstrapListEditItem Text="Priority Banking" Value="Priority Banking" />
                        <dx:BootstrapListEditItem Text="Private Banking" Value="Private Banking" />
                        <dx:BootstrapListEditItem Text="Process Management" Value="Process Management" />
                        <dx:BootstrapListEditItem Text="Quality Improvement" Value="Quality Improvement" />
                        <dx:BootstrapListEditItem Text="Remittance" Value="Remittance" />
                        <dx:BootstrapListEditItem Text="Retail B2B" Value="Retail B2B" />
                        <dx:BootstrapListEditItem Text="Risk Management" Value="Risk Management" />
                        <dx:BootstrapListEditItem Text="Service Quality" Value="Service Quality" />
                        <dx:BootstrapListEditItem Text="Settlement" Value="Settlement" />
                        <dx:BootstrapListEditItem Text="SME Support Business" Value="SME Support Business" />
                        <dx:BootstrapListEditItem Text="Trade Finance" Value="Trade Finance" />
                        <dx:BootstrapListEditItem Text="Treasury" Value="Treasury" />
                        <dx:BootstrapListEditItem Text="Unsecured Loan Product" Value="Unsecured Loan Product" />
                        <dx:BootstrapListEditItem Text="Wealth Product Management" Value="Wealth Product Management" />
                    </Items>
                </dx:BootstrapComboBox>
            </div>
            <br />
            • Ceritakan mengapa Anda merasa pantas untuk menempati posisi tersebut ?
            <br />
            <span class="chrm" style="font-size: smaller; color: red;">(Penjabaran Anda akan menjadi bahan pertimbangan ketika ada proses mutasi dan besar keinginan Anda untuk mutasi dapat terlihat dari penjabaran yang diberikan)
            </span>
            <br />
            <dx:BootstrapMemo ID="memMutationReason" runat="server" Rows="5" NullText="Harap diisi dengan lengkap dan detil." MaxLength="4000">
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
                <dx:ASPxLabel ID="memMutationReason_cr" runat="server" EnableClientSideAPI="True" />
            </span>
            <br />
            <br />
            • Persiapan apa yang telah Anda lakukan untuk mendukung mutasi yang diinginkan ?
            <br />
            <span class="chrm" style="font-size: smaller; color: red;">(Jawaban Anda akan menjadi bahan pertimbangan ketika ada proses mutasi dan besar usaha Anda untuk mendukung mutasi dapat terlihat dari jawaban yang diberikan)
            </span>
            <br />
            <dx:BootstrapMemo ID="memMutationPreparation" runat="server" Rows="5" NullText="Harap diisi dengan lengkap dan detil." MaxLength="4000">
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
                <dx:ASPxLabel ID="memMutationPreparation_cr" runat="server" EnableClientSideAPI="True" />
            </span>
            <br />
            <br />
            • Kapan Anda siap untuk dimutasi ?
            <br />
            <div class="col-lg-3">
                <dx:BootstrapComboBox runat="server" ID="cboMutationPlanTime" NullText="Silahkan Pilih" AllowNull="false" Caption="Rencana Waktu Mutasi">
                    <ValidationSettings ValidationGroup="ValidationGroup">
                        <RequiredField ErrorText="Rencana Waktu Mutasi harus dipilih." IsRequired="true" />
                    </ValidationSettings>
                    <Items>
                        <dx:BootstrapListEditItem Text="Secepatnya" Value="Secepatnya" />
                        <dx:BootstrapListEditItem Text="1-2 bulan mendatang" Value="1-2 bulan mendatang" />
                        <dx:BootstrapListEditItem Text="3-6 bulan mendatang" Value="3-6 bulan mendatang" />
                        <dx:BootstrapListEditItem Text="Lebih dari 6 bulan" Value="Lebih dari 6 bulan" />
                    </Items>
                </dx:BootstrapComboBox>
            </div>
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
