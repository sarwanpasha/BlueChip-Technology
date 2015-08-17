<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" Theme="LogTheme" StyleSheetTheme="LogTheme"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <asp:GridView ID="GridView1" Runat="server" 
    DataSourceID="employeeDataSource" AutoGenerateColumns="False"
    BorderWidth="1px" BackColor="White" GridLines="Vertical" 
    CellPadding="4" BorderStyle="None"
    BorderColor="#DEDFDE" ForeColor="Black">
    <FooterStyle BackColor="#CCCC99"></FooterStyle>
    <PagerStyle ForeColor="Black" HorizontalAlign="Right" 
       BackColor="#F7F7DE"></PagerStyle>
    <HeaderStyle ForeColor="White" Font-Bold="True" 
       BackColor="#6B696B"></HeaderStyle>
    <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
    <Columns>
        <asp:BoundField HeaderText="Last" DataField="LastName" 
           SortExpression="LastName"></asp:BoundField>
        <asp:BoundField HeaderText="First" DataField="FirstName" 
           SortExpression="FirstName"></asp:BoundField>
        <asp:BoundField HeaderText="Hire Date" DataField="HireDate" 
           SortExpression="HireDate"
            DataFormatString="{0:d}"></asp:BoundField>
        <asp:TemplateField HeaderText="Seniority">
            <ItemTemplate>
             
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
    <SelectedRowStyle ForeColor="White" Font-Bold="True" 
         BackColor="#CE5D5A"></SelectedRowStyle>
    <RowStyle BackColor="#F7F7DE"></RowStyle>
</asp:GridView>
</asp:Content>

