<%@ Page Title="" Language="C#" MasterPageFile="~/MasterMain.master" AutoEventWireup="true" CodeBehind="Question12.aspx.cs" Inherits="DXWebApplication1.Question12" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
    <div class="jumbotron">
        <div class="container">
            <h1>Lokasi Tujuan Mutasi 1 (PRIMARY) : Kantor Cabang</h1>
            • Kantor Cabang mana yang Anda minati ?
            <br />
            <div class="col-lg-5">
                <dx:BootstrapComboBox runat="server" ID="cboBranch" NullText="Silahkan Pilih" AllowNull="false" Caption="Kantor Cabang">
                    <ValidationSettings ValidationGroup="ValidationGroup">
                        <RequiredField ErrorText="Kantor Cabang harus dipilih." IsRequired="true" />
                    </ValidationSettings>
                    <Items>
                        <dx:BootstrapListEditItem Text="KC Bali 4201" Value="KC Bali 4201" />
                        <dx:BootstrapListEditItem Text="KC Bandung Sudirman 2101" Value="KC Bandung Sudirman 2101" />
                        <dx:BootstrapListEditItem Text="KC Bogor Pajajaran 2201" Value="KC Bogor Pajajaran 2201" />
                        <dx:BootstrapListEditItem Text="KC Cilegon Permata 2301" Value="KC Cilegon Permata 2301" />
                        <dx:BootstrapListEditItem Text="KC Cirebon 2501" Value="KC Cirebon 2501" />
                        <dx:BootstrapListEditItem Text="KC Lampung 5101" Value="KC Lampung 5101" />
                        <dx:BootstrapListEditItem Text="KC Makassar 6101" Value="KC Makassar 6101" />
                        <dx:BootstrapListEditItem Text="KC Manado 6201" Value="KC Manado 6201" />
                        <dx:BootstrapListEditItem Text="KC Mangkuluhur 1101" Value="KC Mangkuluhur 1101" />
                        <dx:BootstrapListEditItem Text="KC Medan 5201" Value="KC Medan 5201" />
                        <dx:BootstrapListEditItem Text="KC Palembang 5301" Value="KC Palembang 5301" />
                        <dx:BootstrapListEditItem Text="KC Purwokerto 3301" Value="KC Purwokerto 3301" />
                        <dx:BootstrapListEditItem Text="KC Salatiga Sudirman 3101" Value="KC Salatiga Sudirman 3101" />
                        <dx:BootstrapListEditItem Text="KC Semarang Pandanaran 3101" Value="KC Semarang Pandanaran 3101" />
                        <dx:BootstrapListEditItem Text="KC Solo 3201" Value="KC Solo 3201" />
                        <dx:BootstrapListEditItem Text="KC Subang 2401" Value="KC Subang 2401" />
                        <dx:BootstrapListEditItem Text="KC Surabaya Darmo Raya 4102" Value="KC Surabaya Darmo Raya 4102" />
                        <dx:BootstrapListEditItem Text="KC Wisma Mulia 1101" Value="KC Wisma Mulia 1101" />
                        <dx:BootstrapListEditItem Text="KCP 18 Park 1134" Value="KCP 18 Park 1134" />
                        <dx:BootstrapListEditItem Text="KCP Bandung Surya Sumantri 2102" Value="KCP Bandung Surya Sumantri 2102" />
                        <dx:BootstrapListEditItem Text="KCP Bekasi Ahmad Yani 1113" Value="KCP Bekasi Ahmad Yani 1113" />
                        <dx:BootstrapListEditItem Text="KCP Bogor Surya Kencana 2202" Value="KCP Bogor Surya Kencana 2202" />
                        <dx:BootstrapListEditItem Text="KCP Central Park 1139" Value="KCP Central Park 1139" />
                        <dx:BootstrapListEditItem Text="KCP Cicurug 2203" Value="KCP Cicurug 2203" />
                        <dx:BootstrapListEditItem Text="KCP Cikarang Jababeka 1123" Value="KCP Cikarang Jababeka 1123" />
                        <dx:BootstrapListEditItem Text="KCP Ciracas 1128" Value="KCP Ciracas 1128" />
                        <dx:BootstrapListEditItem Text="KCP Danau Sunter 1111" Value="KCP Danau Sunter 1111" />
                        <dx:BootstrapListEditItem Text="KCP Gading Serpong 1127" Value="KCP Gading Serpong 1127" />
                        <dx:BootstrapListEditItem Text="KCP Gedung Menara 1131" Value="KCP Gedung Menara 1131" />
                        <dx:BootstrapListEditItem Text="KCP Glodok LTC 1120" Value="KCP Glodok LTC 1120" />
                        <dx:BootstrapListEditItem Text="KCP Graha Rekso 1132" Value="KCP Graha Rekso 1132" />
                        <dx:BootstrapListEditItem Text="KCP Harco Mangga Dua 1105" Value="KCP Harco Mangga Dua 1105" />
                        <dx:BootstrapListEditItem Text="KCP ITC Bumi Serpong Damai 1116" Value="KCP ITC Bumi Serpong Damai 1116" />
                        <dx:BootstrapListEditItem Text="KCP Karawaci Amartapura 1122" Value="KCP Karawaci Amartapura 1122" />
                        <dx:BootstrapListEditItem Text="KCP Karawaci Pinangsia 1107" Value="KCP Karawaci Pinangsia 1107" />
                        <dx:BootstrapListEditItem Text="KCP KBN Cakung 1125" Value="KCP KBN Cakung 1125" />
                        <dx:BootstrapListEditItem Text="KCP Kelapa Gading Barat 1124" Value="KCP Kelapa Gading Barat 1124" />
                        <dx:BootstrapListEditItem Text="KCP Kelapa Gading Boulevard 1109" Value="KCP Kelapa Gading Boulevard 1109" />
                        <dx:BootstrapListEditItem Text="KCP Kemang Village 1129" Value="KCP Kemang Village 1129" />
                        <dx:BootstrapListEditItem Text="KCP Lippo Cikarang 1106" Value="KCP Lippo Cikarang 1106" />
                        <dx:BootstrapListEditItem Text="KCP Lotte Avenue 1126" Value="KCP Lotte Avenue 1126" />
                        <dx:BootstrapListEditItem Text="KCP Mayong Jepara 3102" Value="KCP Mayong Jepara 3102" />
                        <dx:BootstrapListEditItem Text="KCP Medan Sudirman 5202" Value="KCP Medan Sudirman 5202" />
                        <dx:BootstrapListEditItem Text="KCP Muara Karang 1108" Value="KCP Muara Karang 1108" />
                        <dx:BootstrapListEditItem Text="KCP Pasar Pagi 1102" Value="KCP Pasar Pagi 1102" />
                        <dx:BootstrapListEditItem Text="KCP PIK 1136" Value="KCP PIK 1136" />
                        <dx:BootstrapListEditItem Text="KCP Plaza Oleos 1137" Value="KCP Plaza Oleos 1137" />
                        <dx:BootstrapListEditItem Text="KCP Pluit Kencana 1118" Value="KCP Pluit Kencana 1118" />
                        <dx:BootstrapListEditItem Text="KCP Pondok Indah 1110" Value="KCP Pondok Indah 1110" />
                        <dx:BootstrapListEditItem Text="KCP Puri Indah 1114" Value="KCP Puri Indah 1114" />
                        <dx:BootstrapListEditItem Text="KCP Roxy Mas 1119" Value="KCP Roxy Mas 1119" />
                        <dx:BootstrapListEditItem Text="KCP Sadang 2402" Value="KCP Sadang 2402" />
                        <dx:BootstrapListEditItem Text="KCP Sawah Besar 1117" Value="KCP Sawah Besar 1117" />
                        <dx:BootstrapListEditItem Text="KCP Sudirman Nugra Sentana 1121" Value="KCP Sudirman Nugra Sentana 1121" />
                        <dx:BootstrapListEditItem Text="KCP Surabaya Darmo Permai 4101" Value="KCP Surabaya Darmo Permai 4101" />
                        <dx:BootstrapListEditItem Text="KCP Synergi Building 1133" Value="KCP Synergi Building 1133" />
                        <dx:BootstrapListEditItem Text="KCP Tanah Abang Bukit 1104" Value="KCP Tanah Abang Bukit 1104" />
                        <dx:BootstrapListEditItem Text="KCP Wisma Mulia 1142" Value="KCP Wisma Mulia 1142" />
                        <dx:BootstrapListEditItem Text="KCP Wolter Monginsidi 1115" Value="KCP Wolter Monginsidi 1115" />
                        <dx:BootstrapListEditItem Text="KK Bintaro 1140" Value="KK Bintaro 1140" />
                        <dx:BootstrapListEditItem Text="KK Central Park 1139" Value="KK Central Park 1139" />
                        <dx:BootstrapListEditItem Text="KK Cikarang Jababeka 1123" Value="KK Cikarang Jababeka 1123" />
                        <dx:BootstrapListEditItem Text="KK Cilegon Posco 2302" Value="KK Cilegon Posco 2302" />
                        <dx:BootstrapListEditItem Text="KK Karawaci Amartapura 1122" Value="KK Karawaci Amartapura 1122" />
                        <dx:BootstrapListEditItem Text="KK Korean Center 1135" Value="KK Korean Center 1135" />
                        <dx:BootstrapListEditItem Text="KK Mayong Jepara 3102" Value="KK Mayong Jepara 3102" />
                        <dx:BootstrapListEditItem Text="KK Medan Sudirman 5202" Value="KK Medan Sudirman 5202" />
                        <dx:BootstrapListEditItem Text="KK Purbalingga 3302" Value="KK Purbalingga 3302" />
                        <dx:BootstrapListEditItem Text="KK Roxy Square 1138" Value="KK Roxy Square 1138" />
                        <dx:BootstrapListEditItem Text="KK Sadang 2402" Value="KK Sadang 2402" />
                    </Items>
                </dx:BootstrapComboBox>
            </div>
            <br />
            • Apa yang menjadi alasan Anda untuk pindah cabang ?
            <br />
            <span class="chrm" style="font-size: smaller; color: red;">(Alasan Anda akan menjadi bahan pertimbangan ketika ada proses mutasi)
            </span>
            <br />
            <br />
            <dx:BootstrapMemo ID="memMutationReasonToBranch" runat="server" Rows="5" NullText="Harap diisi dengan lengkap dan detil." MaxLength="4000">
                <ValidationSettings ValidationGroup="ValidationGroup">
                    <RequiredField ErrorText="Informasi alasan Anda pantas menempati posisi harus diisi." IsRequired="true" />
                    <RegularExpression ValidationExpression="^([a-zA-Z0-9 ,-.!(:;/&'%=\n)?]+)$" ErrorText="Karakter khusus tidak diperbolehkan. Silahkan input hanya Huruf, Angka, dan Tanda Baca standard." />
                </ValidationSettings>
                <ClientSideEvents
                    Init="function(s, e) { InitMemoMaxLength(s, 4000); RecalculateCharsRemaining(s); }"
                    GotFocus="EnableMaxLengthMemoTimer" LostFocus="DisableMaxLengthMemoTimer"
                    KeyDown="RecalculateCharsRemaining" KeyUp="RecalculateCharsRemaining"
                    KeyPress="function(s, e) { if( e.htmlEvent.keyCode == 8 || e.htmlEvent.keyCode == 13 || (e.htmlEvent.keyCode >= 32 && e.htmlEvent.keyCode <= 34) || (e.htmlEvent.keyCode >= 38 && e.htmlEvent.keyCode <= 41) || (e.htmlEvent.keyCode >= 43 && e.htmlEvent.keyCode <= 59) || e.htmlEvent.keyCode == 61 || (e.htmlEvent.keyCode >= 63 && e.htmlEvent.keyCode <= 64) || (e.htmlEvent.keyCode >= 65 && e.htmlEvent.keyCode <= 90) || (e.htmlEvent.keyCode >= 97 && e.htmlEvent.keyCode <= 122) ) {  return true; } else {  ASPxClientUtils.PreventEvent(e.htmlEvent); } }" />
            </dx:BootstrapMemo>
            <span class="chrm" style="font-size: smaller">Characters remaining:
                <dx:ASPxLabel ID="memMutationReasonToBranch_cr" runat="server" EnableClientSideAPI="True" />
            </span>
            <br />
            <br />
            • Posisi apa yang Anda minati ?
            <br />
            <div class="col-lg-5">
                <dx:BootstrapComboBox runat="server" ID="cboWorkingPosition" NullText="Silahkan Pilih" AllowNull="false" Caption="Posisi Kerja">
                    <ValidationSettings ValidationGroup="ValidationGroup">
                        <RequiredField ErrorText="Posisi Kerja harus dipilih." IsRequired="true" />
                    </ValidationSettings>
                    <Items>
                        <dx:BootstrapListEditItem Text="Accounting" Value="Accounting" />
                        <dx:BootstrapListEditItem Text="Appraisal" Value="Appraisal" />
                        <dx:BootstrapListEditItem Text="Branch Manager - Consumer" Value="Branch Manager - Consumer" />
                        <dx:BootstrapListEditItem Text="Branch Manager - SME" Value="Branch Manager - SME" />
                        <dx:BootstrapListEditItem Text="Branch Service Manager" Value="Branch Service Manager" />
                        <dx:BootstrapListEditItem Text="General Affair" Value="General Affair" />
                        <dx:BootstrapListEditItem Text="Kliring" Value="Kliring" />
                        <dx:BootstrapListEditItem Text="Legal" Value="Legal" />
                        <dx:BootstrapListEditItem Text="Loan Admin" Value="Loan Admin" />
                        <dx:BootstrapListEditItem Text="Marketing Consumer" Value="Marketing Consumer" />
                        <dx:BootstrapListEditItem Text="Marketing SME" Value="Marketing SME" />
                        <dx:BootstrapListEditItem Text="Service Frontline - Customer Service" Value="Service Frontline - Customer Service" />
                        <dx:BootstrapListEditItem Text="Service Frontline - Teller" Value="Service Frontline - Teller" />
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
                    KeyPress="function(s, e) { if( e.htmlEvent.keyCode == 8 || e.htmlEvent.keyCode == 13 || (e.htmlEvent.keyCode >= 32 && e.htmlEvent.keyCode <= 34) || (e.htmlEvent.keyCode >= 38 && e.htmlEvent.keyCode <= 41) || (e.htmlEvent.keyCode >= 43 && e.htmlEvent.keyCode <= 59) || e.htmlEvent.keyCode == 61 || (e.htmlEvent.keyCode >= 63 && e.htmlEvent.keyCode <= 64) || (e.htmlEvent.keyCode >= 65 && e.htmlEvent.keyCode <= 90) || (e.htmlEvent.keyCode >= 97 && e.htmlEvent.keyCode <= 122) ) {  return true; } else {  ASPxClientUtils.PreventEvent(e.htmlEvent); } }" />
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
