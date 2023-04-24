<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultaForm.aspx.cs" Inherits="WebApplication1.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Ingrese el nombre del usuario: "></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </br>
            <asp:Button ID="Button1" runat="server" Text="Buscar" OnClick="consultar"/>
            </br>
            <asp:Label ID="resultadoLabel" runat="server" Text=""></asp:Label>
            </br>
            <asp:SqlDataSource ID="consultaDatasource" runat="server" ConnectionString="<%$ ConnectionStrings:issdConnectionString %>" SelectCommand="SELECT * FROM [Usuario] WHERE nombre=@nombre">
                <SelectParameters>
                    <asp:Parameter Name="nombre" />
                </SelectParameters>
            </asp:SqlDataSource>
            </br>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/WebForm1.aspx">Retornar</asp:HyperLink>



        </div>
    </form>
</body>
</html>
