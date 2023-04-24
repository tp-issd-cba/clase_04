<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModificacionForm.aspx.cs" Inherits="WebApplication1.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Ingrese el nombre del usuario: "></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </br>
            <asp:Button ID="Button1" runat="server" Text="Buscar" OnClick="Button1_Click" />
            </br>
            </br>
            </br>
            <asp:Label ID="Label2" runat="server" Text="Nombre:"></asp:Label>
            <asp:TextBox ID="nombreTextbox" runat="server"></asp:TextBox>
            </br>
            <asp:Label ID="Label3" runat="server" Text="Clave:"></asp:Label>
            <asp:TextBox ID="claveTextbox" runat="server"></asp:TextBox>
            </br>
            <asp:Label ID="Label4" runat="server" Text="Mail:"></asp:Label>
            <asp:TextBox ID="mailTextbox" runat="server"></asp:TextBox>
            </br>
            </br>
            <asp:Button ID="Button2" runat="server" Text="Modificar" OnClick="modificar" />
            </br>
            <asp:Label ID="resultadoLabel" runat="server" Text=""></asp:Label>
            </br>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:issdConnectionString %>" SelectCommand="SELECT * FROM [Usuario] WHERE nombre = @nombre" UpdateCommand="UPDATE Usuario SET nombre = @nombre, clave = @clave, mail = @mail WHERE (nombre = @clave)">
                <SelectParameters>
                    <asp:Parameter Name="nombre" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="nombre" />
                    <asp:Parameter Name="clave" />
                    <asp:Parameter Name="mail" />
                </UpdateParameters>
            </asp:SqlDataSource>
            </br>
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/WebForm1.aspx">Retornar</asp:HyperLink>

            </div>
    </form>
</body>
</html>
