<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Lab_test.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Plaban Das</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="Label1" runat="server" Text="Name : "></asp:Label>
        <p>
            <asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="207px"></asp:TextBox>
        </p>
        <asp:Label ID="Label2" runat="server" Text="Email : "></asp:Label>
        <p>
            <asp:TextBox ID="TextBox2" runat="server" Height="26px" Width="189px"></asp:TextBox>
        </p>        
        <asp:Label ID="Label3" runat="server" Text="Password : "></asp:Label>
        <p>
            <asp:TextBox ID="TextBox3" runat="server" Height="26px" Width="189px"></asp:TextBox>
        </p>
        <asp:Button ID="Button1" runat="server" Text="Submmit" onClick="Button1_Click"/>
        <asp:Button ID="Button2" runat="server" Text="Show" Width="115px" OnClick="Button2_Click" />
    </form>
</body>
</html>
