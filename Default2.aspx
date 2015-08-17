<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
<asp:GridView ID="GridView1" runat="server" DataKeyNames="NewsID" AutoGenerateColumns="true" Width="100%"  ViewStateMode="Enabled">
            <Columns>
                <asp:BoundField DataField="NewsID" HeaderText="NewsID" SortExpression="NewsID" />
                <asp:BoundField DataField="Organization Name" HeaderText="Organization Name" SortExpression="Organization Name" />
                <asp:BoundField DataField="Organization Heading" HeaderText="Organization Heading" SortExpression="Organization Heading" />
                <asp:BoundField DataField="Organization Description" HeaderText="Organization Description" SortExpression="Organization Description" />
                <asp:BoundField DataField="Authore Name" HeaderText="Authore Name" SortExpression="Authore Name" />
                <asp:BoundField DataField="Authore Image" HeaderText="Authore Image" SortExpression="Authore Image" />
                <asp:BoundField DataField="Main Image" HeaderText="Main Image" SortExpression="Main Image" />
                <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                <asp:ButtonField CommandName="Edit" Text="Edit" />
                <asp:ButtonField CommandName="Select" Text="Select" />
            </Columns>
        </asp:GridView>
      
        <p>
            <asp:DataList ID="DataList1" runat="server">
            </asp:DataList>
        </p>
        <p>Create a new department:</p>
<p>Organization Name:</p>
<asp:TextBox ID="newName" runat="server" Width="400px" />
<p>Organization Heading:</p>
<asp:TextBox ID="TextBox1" runat="server" Width="400px" />
<p>Author Name:</p>
<asp:TextBox ID="TextBox2" runat="server" Width="400px" />
        <p>Authore Image:</p>
<asp:TextBox ID="TextBox3" runat="server" Width="400px" />
        <p>Main Image:</p>
<asp:TextBox ID="TextBox4" runat="server" Width="400px" />
        <p>Date Time:</p>
<asp:TextBox ID="TextBox5" runat="server" Width="400px" />
<p>Organization Description:</p>
<asp:TextBox ID="newDescription" runat="server" Width="400px" Height="70px" TextMode="MultiLine" />
<p><asp:Button ID="createDepartment" Text="Create Department" runat="server" /></p>
    </form>
</body>
</html>
