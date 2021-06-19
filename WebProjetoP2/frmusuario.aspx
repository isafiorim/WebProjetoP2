<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmusuario.aspx.cs" Inherits="WebProjetoP2.frmusuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #form1 {
            height: 430px;
            width: 725px;
        }
    </style>
</head>
<body style="height: 444px">
    <form id="form1" runat="server">
        <div>
            <div>

                <asp:Label ID="lblstatus" runat="server" Text="Status"></asp:Label>
                <br />

            </div>
            <div>


             <asp:Label ID="lblnome" runat="server" Text="Nome"></asp:Label>
             <asp:TextBox ID="txtnome" runat="server" Width="138px"></asp:TextBox>


                <br />


             </div>
            <div>


        <asp:Label ID="lblsobrenome" runat="server" Text="Sobrenome"></asp:Label>
        <asp:TextBox ID="txtsobrenome" runat="server" Width="134px"></asp:TextBox>
        <p>
            <asp:Label ID="lblemail" runat="server" Text="E-mail"></asp:Label>
            <asp:TextBox ID="txtemail" runat="server" TextMode="Email"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="lbllogin" runat="server" Text="Login"></asp:Label>
            <asp:TextBox ID="txtlogin" runat="server"></asp:TextBox>
        </p>
        <asp:Label ID="lblsenha" runat="server" Text="Senha"></asp:Label>
        <asp:TextBox ID="txtsenha" runat="server" TextMode="Password"></asp:TextBox>

        <br />
        <br />

        <asp:Button ID="btnnovo" runat="server" OnClick="btnnovo_Click" Text="Novo" />
        <asp:Button ID="btnsalvar" runat="server" OnClick="btnsalvar_Click" Text="Salvar" />

          <div>

          <div>

                <asp:GridView ID="gridDados" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" OnRowCommand="gridDados_RowCommand">
            <Columns>
                <asp:BoundField DataField="nome" HeaderText="Nome" />
                <asp:BoundField DataField="sobrenome" HeaderText="Sobrenome" />
                <asp:BoundField DataField="email" HeaderText="E-mail" />
                <asp:BoundField DataField="login" HeaderText="Login" />
                <asp:CommandField ShowSelectButton="True" />
                <asp:ButtonField CommandName="btnalterar" Text="Alterar" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <br />
    </form>
</body>
</html>
