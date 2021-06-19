using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebProjetoP2
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btnentrar_Click(object sender, EventArgs e)
        {
            //Criar conexão com o banco de dados
            using (OrçamentoVirtualGIEntities con = new OrçamentoVirtualGIEntities())
            {
                String usuario = Textusuario.Text;
                String senha = Textsenha.Text;

                USUARIOS objUsuario =
                    con.USUARIOS.
                    Where(linha => linha.login.Equals(usuario) && (linha.senha.Equals(senha))).FirstOrDefault();

                if (objUsuario != null)
                {
                    Session["nome_usuario"] = objUsuario.nome;
                    Response.Redirect("Principal.aspx");
                }
            }
        }
    }
}

