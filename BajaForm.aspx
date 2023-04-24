<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BajaForm.aspx.cs" Inherits="WebApplication1.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="height: 204px">
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Ingrese el nombre del usuario: "></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </br>
            <asp:Button ID="Button1" runat="server" Text="Borrar" OnClick="borrar" />
            </br>
            <asp:Label ID="resultadoLabel" runat="server" Text=""></asp:Label>
            </br>
            </br>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/WebForm1.aspx">Retornar</asp:HyperLink>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:issdConnectionString %>" DeleteCommand="DELETE FROM Usuario WHERE nombre = @nombre" SelectCommand="SELECT * FROM [Usuario]">
                <DeleteParameters>
                    <asp:Parameter Name="nombre" />
                </DeleteParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
