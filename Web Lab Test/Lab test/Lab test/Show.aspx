<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Show.aspx.cs" Inherits="Lab_test.Show" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Showing</title>
</head>
<body>
    <form id="form1" runat="server">
  
               <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

                <br />
                <br />
                <br />


                <asp:GridView ID="GridView1" CssClass="background-white table-text gridview-font some-styles" runat="server" AllowPaging="True"
                    AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="ID" HeaderText="ID"/>
                        <asp:BoundField DataField="Name" HeaderText="Full Name"/>
                        <asp:BoundField DataField="Email" HeaderText="Emails"/>
                        <asp:BoundField DataField="Pass" HeaderText="Password"/>
                    </Columns>
                </asp:GridView>


                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:lab %>"
                    DeleteCommand="DELETE FROM [info] WHERE [ID] = @ID" InsertCommand="INSERT INTO [info] ([Name], [Email], [Pass]) VALUES (@Name, @Email, @Pass)"
                    SelectCommand="SELECT ID, Name, Email, Pass FROM info"
                    UpdateCommand="UPDATE info SET Name = @Name, Email = @Email, Pass = @Pass WHERE ID = @ID">
                    <DeleteParameters>
                        <asp:Parameter Name="ID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Pass" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Pass" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
    </form>
</body>
</html>
