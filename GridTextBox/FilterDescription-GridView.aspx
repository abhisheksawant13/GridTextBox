<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FilterDescription-GridView.aspx.cs" Inherits="GridTextBox.FilterDescription_GridView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Get Items from database</h1>
            <hr />
                <asp:TextBox ID="descSearch" runat="server" OnTextChanged="descSearch_TextChanged"></asp:TextBox>
                <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="RateChanged" AutoPostBack="true" AppendDataBoundItems="true">
                    <asp:ListItem Text="" Value="none"></asp:ListItem>
                    <asp:ListItem Text="< 100" Value="lessthen"></asp:ListItem>
                    <asp:ListItem Text="101-1000" Value="between"></asp:ListItem>
                    <asp:ListItem Text="‘>1001" Value="greterthan"></asp:ListItem>
                </asp:DropDownList>
                <%--<asp:Button ID="buttonSearch" runat="server" Text="Search" OnClick="buttonSearch_Click" />--%>
            <hr />
            
            <div style="text-align:center;">
                <asp:GridView ID="GridView1" runat="server" ShowHeaderWhenEmpty="true" Emptydatatext ="No Records Found">
                </asp:GridView>
            </div>
            <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>--%>
        </div>
    </form>
</body>
</html>
