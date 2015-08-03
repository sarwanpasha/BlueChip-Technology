<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <form id="form1" runat="server">
        <div id = idLabel style = "position: absolute; left: 7.2em; top: 3.4em;
 width: 5.8em; height: 1.21em;">
                    <asp:Label ID="lb1" runat="server" Text=""></asp:Label>
            </div>
        <h1>
<asp:Label ID="LabelWelcome" runat="server"
Text="Welcome"></asp:Label>
</h1>
<br />
<asp:DropDownList ID="DropDownListLanguage" runat="server"
AutoPostBack="true">
</asp:DropDownList>
    </form>


</asp:Content>

