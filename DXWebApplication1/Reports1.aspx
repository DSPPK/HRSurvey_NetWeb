<%@ Page Title="" Language="C#" MasterPageFile="~/MasterMain.master" AutoEventWireup="true" CodeBehind="Reports1.aspx.cs" Inherits="DXWebApplication1.Reports1" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Data.Linq" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
    <div class="container">
        <div class="row">
            <div class="container">
                <dx:BootstrapPieChart ID="BootstrapPieChart1" runat="server" TitleText="Lokasi Kerja saat ini" DataSourceID="SqlDataSource1" EncodeHtml="True">
                    <SeriesCollection>
                        <dx:BootstrapPieChartSeries ArgumentField="Worklocation" ValueField="Jumlah">
                            <Label Visible="true">
                            </Label>
                        </dx:BootstrapPieChartSeries>
                    </SeriesCollection>
                    <SettingsToolTip Enabled="true" OnClientCustomizeTooltip="customizeTooltip">
                    </SettingsToolTip>
                </dx:BootstrapPieChart>
                <dx:BootstrapPieChart ID="BootstrapPieChart2" runat="server" TitleText="Lokasi Kerja Pilihan 1 (PRIMARY)" DataSourceID="SqlDataSource2" EncodeHtml="True">
                    <SeriesCollection>
                        <dx:BootstrapPieChartSeries ArgumentField="MutationDestination" ValueField="Jumlah">
                            <Label Visible="true">
                            </Label>
                        </dx:BootstrapPieChartSeries>
                    </SeriesCollection>
                    <SettingsToolTip Enabled="true" OnClientCustomizeTooltip="customizeTooltip">
                    </SettingsToolTip>
                </dx:BootstrapPieChart>
                <dx:BootstrapPieChart ID="BootstrapPieChart3" runat="server" TitleText="Lokasi Kerja Pilihan 2 (SECONDARY)" DataSourceID="SqlDataSource3" EncodeHtml="True">
                    <SeriesCollection>
                        <dx:BootstrapPieChartSeries ArgumentField="MutationDestination" ValueField="Jumlah">
                            <Label Visible="true">
                            </Label>
                        </dx:BootstrapPieChartSeries>
                    </SeriesCollection>
                    <SettingsToolTip Enabled="true" OnClientCustomizeTooltip="customizeTooltip">
                    </SettingsToolTip>
                </dx:BootstrapPieChart>
                <dx:BootstrapPieChart ID="BootstrapPieChart4" runat="server" TitleText="Lama Bekerja di PT DSPPK" DataSourceID="SqlDataSource4" EncodeHtml="True">
                    <SeriesCollection>
                        <dx:BootstrapPieChartSeries ArgumentField="Label" ValueField="Jumlah">
                            <Label Visible="true">
                            </Label>
                        </dx:BootstrapPieChartSeries>
                    </SeriesCollection>
                    <SettingsToolTip Enabled="true" OnClientCustomizeTooltip="customizeTooltip">
                    </SettingsToolTip>
                </dx:BootstrapPieChart>
                <dx:BootstrapPieChart ID="BootstrapPieChart5" runat="server" TitleText="Lama Bekerja di Posisi Saat Ini" DataSourceID="SqlDataSource5" EncodeHtml="True">
                    <SeriesCollection>
                        <dx:BootstrapPieChartSeries ArgumentField="Label" ValueField="Jumlah">
                            <Label Visible="true">
                            </Label>
                        </dx:BootstrapPieChartSeries>
                    </SeriesCollection>
                    <SettingsToolTip Enabled="true" OnClientCustomizeTooltip="customizeTooltip">
                    </SettingsToolTip>
                </dx:BootstrapPieChart>
                <dx:BootstrapPieChart ID="BootstrapPieChart6" runat="server" TitleText="Karyawan yg sudah input Survey dan yg belum" DataSourceID="SqlDataSource6" EncodeHtml="True">
                    <SeriesCollection>
                        <dx:BootstrapPieChartSeries ArgumentField="IsSubmitted" ValueField="Jumlah">
                            <Label Visible="true">
                            </Label>
                        </dx:BootstrapPieChartSeries>
                    </SeriesCollection>
                    <SettingsToolTip Enabled="true" OnClientCustomizeTooltip="customizeTooltip">
                    </SettingsToolTip>
                </dx:BootstrapPieChart>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ApplicationServices %>" SelectCommand="spGet_Reports_WorkingLocationNow" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ApplicationServices %>" SelectCommand="spGet_Reports_WorkingLocation1" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ApplicationServices %>" SelectCommand="spGet_Reports_WorkingLocation2" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ApplicationServices %>" SelectCommand="spGet_Reports_LengthOfWork" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ApplicationServices %>" SelectCommand="spGet_Reports_LengthOfPosition" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ApplicationServices %>" SelectCommand="spGet_Reports_IsSubmitted" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            </div>
        </div>
    </div>
</asp:Content>
