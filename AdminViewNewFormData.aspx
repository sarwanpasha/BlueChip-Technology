<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminViewNewFormData.aspx.cs"
     Inherits="AdminViewNewFormData" Theme="LogTheme" StyleSheetTheme="LogTheme" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Admin View(Lattest News)</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="form1" runat="server" style="background-color:white">
    <div>
        <asp:GridView ID="GridView1" runat="server" ShowHeaderWhenEmpty="True"
            AutoGenerateColumns="False" onrowdeleting="RowDeleting"
            OnRowCancelingEdit="cancelRecord" OnRowEditing="editRecord" 
            OnRowUpdating="updateRecord" CellPadding="4"
            EnableModelValidation="True" GridLines="None" Width="1297px"
            ForeColor="#333333" >
            <RowStyle HorizontalAlign="Center" />
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
 
            <Columns>
 
            <asp:TemplateField>
            <HeaderTemplate>News Id</HeaderTemplate>
            <ItemTemplate>
            <asp:Label ID ="lblId" runat="server" Text='<%#Bind("NewsID")%>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>
 
            <asp:TemplateField>
            <HeaderTemplate>OrganizationName</HeaderTemplate>
            <ItemTemplate>
            <asp:Label ID ="lblName" runat="server" Text='<%#Bind("OrganizationName") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
            <asp:TextBox ID="OrganizationName" runat="server" Text='<%#Bind("OrganizationName") %>' MaxLength="50"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvtxtName" runat="server" Text="*" ToolTip="Enter name" ControlToValidate="OrganizationName"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revtxtName" runat="server" Text="*" ToolTip="Enter alphabate " ControlToValidate="OrganizationName" ValidationExpression="^[a-zA-Z'.\s]{1,40}$"></asp:RegularExpressionValidator>
           
            </EditItemTemplate>
            <FooterTemplate>
            <asp:TextBox ID="OrganizationnewName" runat="server" MaxLength="50"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvtxtNewName" runat="server" Text="*" ToolTip="Enter name" ControlToValidate="OrganizationnewName"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revtxtNewName" runat="server" Text="*" ToolTip="Enter alphabate " ControlToValidate="OrganizationnewName" ValidationExpression="^[a-zA-Z'.\s]{1,40}$"></asp:RegularExpressionValidator>
          
            </FooterTemplate>
            </asp:TemplateField>
           
            <asp:TemplateField>
            <HeaderTemplate>OrganizationHeading</HeaderTemplate>
            <ItemTemplate>
            <asp:Label ID="lblAge" runat ="server" Text='<%#Bind("OrganizationHeading") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
            <asp:TextBox ID ="OrganizationHeading" runat="server" Text='<%#Bind("OrganizationHeading") %>' MaxLength="500"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvtxtAge" runat="server" Text="*" ToolTip="Enter Heading" ControlToValidate="OrganizationHeading"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revtxtAge" runat="server" Text="*" ToolTip="Enter alphabate" ControlToValidate="OrganizationHeading" ValidationExpression="^[a-zA-Z'.\s]{1,500}$"></asp:RegularExpressionValidator>
          
            </EditItemTemplate>
            <FooterTemplate>
            <asp:TextBox ID="OrganizationnewHeading" runat="server" MaxLength="500"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvtxtNewAge" runat="server" Text="*" ToolTip="Enter age" ControlToValidate="OrganizationnewHeading"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revNewtxtAge" runat="server" Text="*" ToolTip="Enter alphabate" ControlToValidate="OrganizationnewHeading" ValidationExpression="^[a-zA-Z'.\s]{1,500}$"></asp:RegularExpressionValidator>
            </FooterTemplate>
            </asp:TemplateField>
 
            <asp:TemplateField>
            <HeaderTemplate>OrganizationDescription</HeaderTemplate>
            <ItemTemplate>
            <asp:Label ID = "lblSalary" runat="server" Text='<%#Bind("OrganizationDescription") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
            <asp:TextBox ID="OrganizationDescription" runat="server" Text='<%#Bind("OrganizationDescription") %>'  MaxLength="500"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvtxtSalary" runat="server" Text="*"  ToolTip="Enter alphabate" ControlToValidate="OrganizationDescription"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revtxtSalary" runat="server" Text="*" ToolTip="Enter alphabate" ControlToValidate="OrganizationDescription" ValidationExpression="^[a-zA-Z'.\s]{1,500}$"></asp:RegularExpressionValidator>
          
            </EditItemTemplate>
            <FooterTemplate>
            <asp:TextBox ID="OrganizationnewDescription" runat="server" MaxLength="500"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvtxtNewSalary" runat="server" Text="*"  ToolTip="Enter alphabate" ControlToValidate="OrganizationnewDescription"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revtxtNewSalary" runat="server" Text="*" ToolTip="Enter alphabate" ControlToValidate="OrganizationnewDescription" ValidationExpression="^[a-zA-Z'.\s]{1,500}$"></asp:RegularExpressionValidator>
            </FooterTemplate>
            </asp:TemplateField>
 
            <asp:TemplateField>
            <HeaderTemplate>AuthoreName</HeaderTemplate>
            <ItemTemplate>
            <asp:Label ID = "lblCountry" runat="server" Text='<%#Bind("AuthoreName") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
            <asp:TextBox ID="AuthoreName" runat="server" Text='<%#Bind("AuthoreName") %>' MaxLength="20"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvtxtCountry" runat="server" Text="*" ToolTip="Enter country" ControlToValidate="AuthoreName"></asp:RequiredFieldValidator>
        
            </EditItemTemplate>
            <FooterTemplate>
            <asp:TextBox ID="AuthorenewName" runat="server" MaxLength="20"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvtxtNewCountry" runat="server" Text="*" ToolTip="Enter country" ControlToValidate="AuthorenewName"></asp:RequiredFieldValidator>
            </FooterTemplate>
            </asp:TemplateField>
 
            <asp:TemplateField>
            <HeaderTemplate>AuthoreImage</HeaderTemplate>
            <ItemTemplate>
            <asp:Image ID="imgPhoto" Width="100px" Height="100px" runat="server" text="Photo" ImageUrl='<%#Bind("AuthoreImage") %>' />
            </ItemTemplate>
            <EditItemTemplate>
            <asp:FileUpload ID="fuPhoto" runat="server" ToolTip="select Employee Photo"/>
            <asp:RegularExpressionValidator ID="revfuPhoto" runat="server" Text="*" ToolTip="Image formate only" ControlToValidate="fuPhoto" ValidationExpression="[a-zA-Z0_9].*\b(.jpeg|.JPEG|.jpg|.JPG|.jpe|.JPE|.png|.PNG|.mpp|.MPP|.gif|.GIF)\b"></asp:RegularExpressionValidator>
            </EditItemTemplate>
            <FooterTemplate>
            <asp:FileUpload ID="fuNewPhoto" runat="server" ToolTip="select Employee Photo"/>
            <asp:RequiredFieldValidator ID="rfvfuNewPhoto" runat="server" ErrorMessage="*" ToolTip="Select Photo" ControlToValidate="fuNewPhoto"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revfuNewPhoto" runat="server" Text="*" ToolTip="Image formate only" ControlToValidate="fuNewPhoto" ValidationExpression="[a-zA-Z0_9].*\b(.jpeg|.JPEG|.jpg|.JPG|.jpe|.JPE|.png|.PNG|.mpp|.MPP|.gif|.GIF)\b"></asp:RegularExpressionValidator>
            </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField>
            <HeaderTemplate>MainImage</HeaderTemplate>
            <ItemTemplate>
            <asp:Image ID="imgPhoto1" Width="100px" Height="100px" runat="server" text="Photo" ImageUrl='<%#Bind("MainImage") %>' />
            </ItemTemplate>
            <EditItemTemplate>
            <asp:FileUpload ID="fuPhotoo" runat="server" ToolTip="select Employee Photo"/>
            <asp:RegularExpressionValidator ID="revfuPhoto1" runat="server" Text="*" ToolTip="Image formate only" ControlToValidate="fuPhotoo" ValidationExpression="[a-zA-Z0_9].*\b(.jpeg|.JPEG|.jpg|.JPG|.jpe|.JPE|.png|.PNG|.mpp|.MPP|.gif|.GIF)\b"></asp:RegularExpressionValidator>
            </EditItemTemplate>
            <FooterTemplate>
            <asp:FileUpload ID="fuNewPhotoo" runat="server" ToolTip="select Employee Photo"/>
            <asp:RequiredFieldValidator ID="rfvfuNewPhoto1" runat="server" ErrorMessage="*" ToolTip="Select Photo" ControlToValidate="fuNewPhotoo"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revfuNewPhoto1" runat="server" Text="*" ToolTip="Image formate only" ControlToValidate="fuNewPhotoo" ValidationExpression="[a-zA-Z0_9].*\b(.jpeg|.JPEG|.jpg|.JPG|.jpe|.JPE|.png|.PNG|.mpp|.MPP|.gif|.GIF)\b"></asp:RegularExpressionValidator>
            </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField>
            <HeaderTemplate>TimeDate</HeaderTemplate>
            <ItemTemplate>
            <asp:Label ID = "lblTimeDate" runat="server" Text='<%#Bind("TimeDate") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>

                            <asp:TemplateField>
            <HeaderTemplate>Link</HeaderTemplate>
            <ItemTemplate>
            <asp:Label ID ="lblLink" runat="server" Text='<%#Bind("link") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
            <asp:TextBox ID="Link" runat="server" Text='<%#Bind("link") %>' MaxLength="50"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvtxtLink" runat="server" Text="*" ToolTip="Enter name" ControlToValidate="Link"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revtxtLink" runat="server" Text="*" ToolTip="Enter Edit template alphabate " ControlToValidate="Link" ValidationExpression="^[a-zA-Z0-9':./s]{1,100}$"></asp:RegularExpressionValidator>
           
            </EditItemTemplate>
            <FooterTemplate>
            <asp:TextBox ID="newLink" runat="server" MaxLength="100"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvtxtNewLink" runat="server" Text="*" ToolTip="Enter Link" ControlToValidate="newLink"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revtxtNewLink" runat="server" Text="*" ToolTip="Enter Footer alphabate " ControlToValidate="newLink" ValidationExpression="^[a-zA-Z0-9':./\s]{1,100}$"></asp:RegularExpressionValidator>
          
            </FooterTemplate>
            </asp:TemplateField>

                            <asp:TemplateField>
            <HeaderTemplate>Catagory</HeaderTemplate>
            <ItemTemplate>
            <asp:Label ID="lblCatagory" runat ="server" Text='<%#Bind("Catagory") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
            <asp:TextBox ID ="Catagory" runat="server" Text='<%#Bind("Catagory") %>' MaxLength="500"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvtxtCatagory" runat="server" Text="*" ToolTip="Enter Heading" ControlToValidate="Catagory"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revtxtCatagory" runat="server" Text="*" ToolTip="Enter alphabate" ControlToValidate="Catagory" ValidationExpression="^[a-zA-Z'.\s]{1,500}$"></asp:RegularExpressionValidator>
          
            </EditItemTemplate>
            <FooterTemplate>
            <asp:TextBox ID="newCatagory" runat="server" MaxLength="500"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvtxtnewCatagory" runat="server" Text="*" ToolTip="Enter age" ControlToValidate="newCatagory"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revnewCatagory" runat="server" Text="*" ToolTip="Enter alphabate" ControlToValidate="newCatagory" ValidationExpression="^[a-zA-Z'.\s]{1,500}$"></asp:RegularExpressionValidator>
            </FooterTemplate>
            </asp:TemplateField>
 
            <asp:TemplateField>
            <HeaderTemplate>Operation</HeaderTemplate>
            <ItemTemplate>
            <asp:Button ID="btnEdit" runat="server" CommandName="Edit" Text="Edit" />
            <asp:Button ID="btnDelete" runat="server" CommandName="Delete" Text="Delete" CausesValidation="true" OnClientClick="return confirm('Are you sure?')" />
            </ItemTemplate>
            <EditItemTemplate>
            <asp:Button ID="btnUpdate" runat="server" CommandName="Update" Text="Update" />
            <asp:Button ID="btnCancel" runat="server" CommandName="Cancel" Text="Cancel" CausesValidation="false" />
            </EditItemTemplate>
 
            <FooterTemplate>
            <asp:Button ID="btnNewInsert" runat="server" Text="Insert" OnClick="InsertNewRecord"/>
            <asp:Button ID="btnNewCancel" runat="server" Text="Cancel" OnClick="AddNewCancel" CausesValidation="false" />
            </FooterTemplate>        
            </asp:TemplateField>           
            </Columns>
            <EmptyDataTemplate>
                      No record available                    
            </EmptyDataTemplate>       
        </asp:GridView>
        <br />
        <asp:Button ID="btnAdd" runat="server" Text="Add New Record" OnClick="AddNewRecord" />  
    </div>
    </form>

</asp:Content>

