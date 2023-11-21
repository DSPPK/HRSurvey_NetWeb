<%@ Page Title="" Language="C#" MasterPageFile="~/MasterMain.master" AutoEventWireup="true" CodeBehind="UserRegistration.aspx.cs" Inherits="DXWebApplication1.UserRegistration" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="Content" runat="server">
    <h2>Registrasi User</h2>
    <dx:BootstrapButton runat="server" Text="Export to Excel (*.xlsx)" ID="ButtonXLSX1" OnClick="ButtonXLSX1_Click">
        <SettingsBootstrap RenderOption="Success" />
    </dx:BootstrapButton>
    <dx:BootstrapGridView ID="gv" runat="server" KeyFieldName="NIK" EnableRowsCache="false" OnBeforeGetCallbackResult="gv_BeforeGetCallbackResult" DataSourceID="SqlDataSource1" Width="800px" SettingsExport-FileName="HRSurvey_ListUsers">
        <SettingsEditing Mode="Inline"></SettingsEditing>
        <SettingsDataSecurity AllowEdit="true" AllowInsert="true" />
        <Settings ShowGroupPanel="True" ShowHeaderFilterButton="true" />
        <Columns>
            <dx:BootstrapGridViewCommandColumn ShowEditButton="true" ShowNewButtonInHeader="true" />
            <%--<dx:BootstrapGridViewDataColumn FieldName="NIK">
                <DataItemTemplate>
                    <%# Eval("NIK") %>
                    <button type="button" class="btn btn-link" data-toggle="gridview-datarow-edit">
                        <span class="fa fa-pencil"></span>
                    </button>
                    <button type="button" class="btn btn-link" data-toggle="gridview-datarow-delete">
                        <span class="fa fa-trash"></span>
                    </button>
                </DataItemTemplate>
            </dx:BootstrapGridViewDataColumn>--%>
            <dx:BootstrapGridViewDataColumn FieldName="NIK" Width="200px" />
            <dx:BootstrapGridViewDataColumn FieldName="Name" />
            <dx:BootstrapGridViewDataColumn FieldName="CostCenter" />
            <dx:BootstrapGridViewDataColumn FieldName="PositionName" />
            <dx:BootstrapGridViewDataColumn FieldName="DivisionName" />
            <dx:BootstrapGridViewDataColumn FieldName="DirectorateName" />
            <dx:BootstrapGridViewDataColumn FieldName="Worklocation" />
            <dx:BootstrapGridViewDataColumn FieldName="LengthOfPosition" />
            <dx:BootstrapGridViewDataColumn FieldName="LengthOfWork" />
            <dx:BootstrapGridViewDataColumn FieldName="Password" />
            <dx:BootstrapGridViewDataColumn FieldName="IsSubmitted" />
            <dx:BootstrapGridViewDataColumn FieldName="IsAdmin" />
        </Columns>
    </dx:BootstrapGridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ApplicationServices %>"
        SelectCommand="SELECT NIK, Name, CostCenter, PositionName, DivisionName, DirectorateName, Worklocation, LengthOfPosition, LengthOfWork, Password, IsSubmitted, IsAdmin FROM dbo.SYS_User"
        InsertCommand="INSERT INTO dbo.SYS_User(NIK, Name, CostCenter, PositionName, DivisionName, DirectorateName, Worklocation, LengthOfPosition, LengthOfWork, Password, IsSubmitted, IsAdmin) VALUES (@NIK, @Name, @CostCenter, @PositionName, @DivisionName, @DirectorateName, @Worklocation, @LengthOfPosition, @LengthOfWork, @Password, @IsSubmitted, @IsAdmin)"
        UpdateCommand="UPDATE dbo.SYS_User SET Name = @Name, CostCenter = @CostCenter, PositionName = @PositionName, DivisionName = @DivisionName, DirectorateName = @DirectorateName, Worklocation = @Worklocation, LengthOfPosition = @LengthOfPosition, LengthOfWork = @LengthOfWork, Password = @Password, IsSubmitted = @IsSubmitted, IsAdmin = @IsAdmin WHERE NIK = @NIK"
        DeleteCommand="DELETE FROM [dbo.SYS_User] WHERE [NIK] = ?">
        <InsertParameters>
            <asp:Parameter Name="NIK" Type="String" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="CostCenter" Type="String" />
            <asp:Parameter Name="PositionName" Type="String" />
            <asp:Parameter Name="DivisionName" Type="String" />
            <asp:Parameter Name="DirectorateName" Type="String" />
            <asp:Parameter Name="Worklocation" Type="String" />
            <asp:Parameter Name="LengthOfPosition" Type="String" />
            <asp:Parameter Name="LengthOfWork" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="IsSubmitted" Type="String" />
            <asp:Parameter Name="IsAdmin" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="CostCenter" Type="String" />
            <asp:Parameter Name="PositionName" Type="String" />
            <asp:Parameter Name="DivisionName" Type="String" />
            <asp:Parameter Name="DirectorateName" Type="String" />
            <asp:Parameter Name="Worklocation" Type="String" />
            <asp:Parameter Name="LengthOfPosition" Type="String" />
            <asp:Parameter Name="LengthOfWork" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="IsSubmitted" Type="String" />
            <asp:Parameter Name="IsAdmin" Type="String" />
            <asp:Parameter Name="NIK" Type="String" />
        </UpdateParameters>
        <DeleteParameters>
            <asp:Parameter Name="NIK" Type="String" />
        </DeleteParameters>
    </asp:SqlDataSource>
</asp:Content>
