<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplicationsContainer.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Test</h1>
            <p>Ovo je test</p>
        </div>
        <p>
            <asp:TextBox ID="tbName" runat="server"></asp:TextBox>
            <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Button" />
        </p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceNames">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceNames" runat="server" ConnectionString="<%$ ConnectionStrings:dbLearningConnectionString %>" SelectCommand="SELECT * FROM [tableWithNames]"></asp:SqlDataSource>
    </form>
</body>
</html>
