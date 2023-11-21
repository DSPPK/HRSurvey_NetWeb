<%@ Page Title="" Language="C#" MasterPageFile="~/MasterMain.master" AutoEventWireup="true" CodeBehind="Question10.aspx.cs" Inherits="DXWebApplication1.Question10" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
    <div class="jumbotron">
        <div class="container">
            <h1>Pilihan Tujuan Mutasi ke-1 (PRIMARY)</h1>
            • Jika Anda berlokasi kerja di Kantor Pusat dan berkeinginan untuk mutasi ke Unit Kerja Lain di Kantor Pusat, silahkan pilih: <span style="text-decoration: solid"><strong>Kantor Pusat</strong></span>
            <br />
            • Jika Anda berlokasi kerja di Kantor Pusat dan berkeinginan untuk mutasi ke Kantor Cabang, silahkan pilih: <span style="text-decoration: solid"><strong>Kantor Cabang</strong></span>
            <br />
            • Jika Anda berlokasi kerja di Kantor Cabang dan berkeinginan untuk mutasi ke Kantor Pusat, silahkan pilih: <span style="text-decoration: solid"><strong>Kantor Pusat</strong></span>
            <br />
            • Jika Anda berlokasi kerja di Kantor Cabang dan berkeinginan untuk mutasi ke Kantor Cabang Lain, silahkan pilih: <span style="text-decoration: solid"><strong>Kantor Cabang</strong></span>
            <br />
            • Jika Anda tidak berminat untuk mutasi, silahkan pilih: <span style="text-decoration: solid"><strong>Tidak Berminat Dimutasi</strong></span>
            <br />
            <br />
            <div class="col-lg-4">
                <dx:BootstrapComboBox runat="server" ID="cboMutationDestination" NullText="Silahkan Pilih" AllowNull="false" Caption="Lokasi Tujuan Mutasi">
                    <ValidationSettings ValidationGroup="ValidationGroup">
                        <RequiredField ErrorText="Lokasi Tujuan Mutasi harus dipilih." IsRequired="true" />
                    </ValidationSettings>
                    <Items>
                        <dx:BootstrapListEditItem Text="Kantor Pusat" Value="Kantor Pusat" />
                        <dx:BootstrapListEditItem Text="Kantor Cabang" Value="Kantor Cabang" />
                        <dx:BootstrapListEditItem Text="Tidak Berminat Dimutasi" Value="Tidak Berminat Dimutasi" />
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
