<%@ Page Title="" Language="C#" MasterPageFile="~/MasterMain.master" AutoEventWireup="true" CodeBehind="Reports3.aspx.cs" Inherits="DXWebApplication1.WebForm1" %>


<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Data.Linq" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
    <div class="container">
        <dx:BootstrapButton runat="server" Text="Export to Excel (*.xlsx)" ID="ButtonXLSX1" OnClick="ButtonXLSX1_Click">
            <SettingsBootstrap RenderOption="Success" />
        </dx:BootstrapButton>
        <dx:BootstrapGridView ID="GridViewExport" runat="server" DataSourceID="SqlDataSource1" Width="200px" SettingsExport-FileName="HRSurvey">
            <Settings ShowGroupPanel="True" />
            <Columns>
                <dx:BootstrapGridViewTextColumn FieldName="SubmittedTime">
                    <PropertiesTextEdit DisplayFormatString="yyyy-MM-dd HH:mm:ss.fff" />
                </dx:BootstrapGridViewTextColumn>
                <dx:BootstrapGridViewDataColumn FieldName="NIK" />
                <dx:BootstrapGridViewDataColumn FieldName="Name" />
                <dx:BootstrapGridViewDataColumn FieldName="CostCenter" />
                <dx:BootstrapGridViewDataColumn FieldName="PositionName" />
                <dx:BootstrapGridViewDataColumn FieldName="DivisionName" />
                <dx:BootstrapGridViewDataColumn FieldName="DirectorateName" />
                <dx:BootstrapGridViewDataColumn FieldName="Worklocation" />
                <dx:BootstrapGridViewDataColumn FieldName="LengthOfPosition" />
                <dx:BootstrapGridViewDataColumn FieldName="LengthOfWork" />
                <dx:BootstrapGridViewDataColumn FieldName="IsSubmitted" />
                <dx:BootstrapGridViewDataColumn FieldName="IsAdmin" />

                <dx:BootstrapGridViewDataColumn FieldName="MutationDestination1" />
                <dx:BootstrapGridViewDataColumn FieldName="WorkingPosition1" />
                <dx:BootstrapGridViewDataColumn FieldName="WorkingUnit1" />
                <dx:BootstrapGridViewDataColumn FieldName="Branch1" />
                <dx:BootstrapGridViewDataColumn FieldName="MutationReasonToBranch1" />
                <dx:BootstrapGridViewDataColumn FieldName="MutationReason1" />
                <dx:BootstrapGridViewDataColumn FieldName="MutationPreparation1" />
                <dx:BootstrapGridViewDataColumn FieldName="MutationPlanTime1" />
                <dx:BootstrapGridViewDataColumn FieldName="MutationDestination2" />
                <dx:BootstrapGridViewDataColumn FieldName="WorkingPosition2" />
                <dx:BootstrapGridViewDataColumn FieldName="WorkingUnit2" />
                <dx:BootstrapGridViewDataColumn FieldName="Branch2" />
                <dx:BootstrapGridViewDataColumn FieldName="MutationReasonToBranch2" />
                <dx:BootstrapGridViewDataColumn FieldName="MutationReason2" />
                <dx:BootstrapGridViewDataColumn FieldName="MutationPreparation2" />
                <dx:BootstrapGridViewDataColumn FieldName="MutationPlanTime2" />
                <dx:BootstrapGridViewDataColumn FieldName="PositionAsDirector" />
                <dx:BootstrapGridViewDataColumn FieldName="MutationReasonAsDirector" />
                <dx:BootstrapGridViewDataColumn FieldName="MutationPreparationAsDirector" />
                <dx:BootstrapGridViewDataColumn FieldName="ReasonsDontWantToMutation" />
            </Columns>
            <SettingsSearchPanel Visible="true" />
        </dx:BootstrapGridView>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ApplicationServices %>" SelectCommand="spGet_Reports_SurveyResult" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
</asp:Content>
