<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Principal.aspx.cs" Inherits="WebProjetoP2.Principal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="lblusuario" runat="server">
        <div>
        <asp:Label ID="lbluser" runat="server" Text="Label"></asp:Label>
        <asp:Button ID="button1" runat="server" OnClick="button1_Click" Text="Logout" />
        </div>

        <hr />

        <div>
            <a href="frmusuario.aspx">Usuários</a>
        </div>
    </form>
</body>
</html>

