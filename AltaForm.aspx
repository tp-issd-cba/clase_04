<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication1.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="height: 302px">
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Nombre:"></asp:Label>
            <asp:TextBox ID="nombreTextbox" runat="server"></asp:TextBox>
            </br>
            <asp:Label ID="Label2" runat="server" Text="Clave:"></asp:Label>
            <asp:TextBox ID="claveTextbox" runat="server"></asp:TextBox>
            </br>
            <asp:Label ID="Label3" runat="server" Text="Mail:"></asp:Label>
            <asp:TextBox ID="mailTextbox" runat="server"></asp:TextBox>
            </br>
            </br>
            <asp:Button ID="Button1" runat="server" Text="Alta" OnClick="darDeAlta" />
            </br>
            <asp:Label ID="resultadoLabel" runat="server" Text=""></asp:Label>
            </br>
            <asp:SqlDataSource ID="altaDatasource" runat="server" 
                ConnectionString="<%$ ConnectionStrings:issdConnectionString %>" 
                InsertCommand="INSERT INTO Usuario(nombre, clave, mail) VALUES (@nombre, @clave, @mail)"
                SelectCommand="SELECT * FROM [Usuario]">
                <InsertParameters>
                    <asp:Parameter Name="nombre" />
                    <asp:Parameter Name="clave" />
                    <asp:Parameter Name="mail" />
                </InsertParameters>
            </asp:SqlDataSource>
            </br>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/WebForm1.aspx">Retornar</asp:HyperLink>

        </div>
    </form>
</body>
</html>
