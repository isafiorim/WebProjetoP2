<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebProjetoP2.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="Usuário"></asp:Label>
        <asp:TextBox ID="Textusuario" runat="server"></asp:TextBox>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Senha"></asp:Label>
            <asp:TextBox ID="Textsenha" runat="server"></asp:TextBox>
        </p>
        <asp:Button ID="Btnentrar" runat="server" OnClick="Btnentrar_Click" Text="Entrar" />
    </form>
</body>
</html>
