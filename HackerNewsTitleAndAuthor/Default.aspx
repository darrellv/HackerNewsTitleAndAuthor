<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HackerNewsTitleAndAuthor.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="grdStoryList" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White" runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField DataField="title" HeaderText="Title" ItemStyle-Width="500" />
                    <asp:BoundField DataField="by" HeaderText="Author" ItemStyle-Width="200" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
