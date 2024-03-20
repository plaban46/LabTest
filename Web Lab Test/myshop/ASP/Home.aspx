<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p> 
                    <asp:Label ID="La" runat="server" Text="Bank Account Form:"></asp:Label>   
             </p>
            <asp:Label ID="Label1" runat="server" Text="Amount:"></asp:Label>   
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Diposit" OnClick="diposit_btn" />
            <asp:Button ID="Button2" runat="server" Text="Withdraw" OnClick="withdraw_btn"  />
            <p> 
                <asp:Label ID="Label2" runat="server" Text="Current balance: "></asp:Label>  
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </p>
            
        </div>
    </form>
</body>
</html>
