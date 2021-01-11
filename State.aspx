<%@ Page Language="C#" AutoEventWireup="true" CodeFile="State.aspx.cs" Inherits="District" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
        <tr>
            <td class="auto-style2">Name</td>
            <td>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </td>
        </tr>
                <tr>
                    <td>Image:<asp:FileUpload  ID="fileImage" runat="server"/></td>
                </tr>
        <tr>
            <td class="auto-style2">
                <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Save" />
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
                 <asp:GridView ID="grdDetails" runat="server" AutoGenerateColumns="False" OnRowCommand="grdDetails_RowCommand">
                    <Columns>
                        <asp:BoundField DataField="state_ID" HeaderText="ID" />
                        <asp:BoundField DataField="state_name" HeaderText="Name" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("state_id") %>' CommandName="del" Text="Delete" />
                                <asp:Button ID="Button2" runat="server" CommandArgument='<%# Eval("state_id") %>' CommandName="ed" Text="Edit" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
        </div>
    </form>
</body>
</html>
