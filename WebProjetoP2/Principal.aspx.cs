using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebProjetoP2
{
    public partial class Principal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String nome_usuario = (String)Session["nome_usuario"];
            if (nome_usuario == null)
            {
                Response.Redirect("Default.aspx");
            }
            else
            {
                lbluser.Text = "Seja bem vindo" + nome_usuario + "!";
            }
        }

        protected void button1_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("Default.aspx");
        }
    }
}