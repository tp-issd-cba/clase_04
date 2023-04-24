<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 247px">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AltaForm.aspx">Alta de usuarios</asp:HyperLink>
            <br />
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ConsultaForm.aspx">Consulta de usuarios</asp:HyperLink>
            <br />
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/BajaForm.aspx">Baja de usuarios</asp:HyperLink>
            <br />
            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/ModificacionForm.aspx">Modificacion de usuarios</asp:HyperLink>
            <br />
        </div>
    </form>
</body>
</html>
