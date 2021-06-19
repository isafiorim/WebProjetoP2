using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebProjetoP2
{
    public partial class frmusuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using(OrçamentoVirtualGIEntities conn = new OrçamentoVirtualGIEntities())
            {
                carregarGrid(conn);
            }
        }

        protected void btnnovo_Click(object sender, EventArgs e)
        {
            limpar();
        }

        private void limpar()
        {
            txtnome.Text = string.Empty;
            txtsobrenome.Text = string.Empty;
            txtemail.Text = string.Empty;
            txtlogin.Text = string.Empty;
            txtsenha.Text = string.Empty;

        }

        protected void btnsalvar_Click(object sender, EventArgs e)
        {
            using (OrçamentoVirtualGIEntities conn = new OrçamentoVirtualGIEntities())
            {
                USUARIOS u = null;
                if (lblstatus.Text.Equals("ALTERANDO"))
                {
                    string login = gridDados.SelectedValue.ToString();
                    USUARIOS u = conn.USUARIOS.Where(linha => linha.login.Equals(login)).FirstOrDefault();
                }
                else
                {

                    u = new USUARIOS();
                }
                u.nome = txtnome.Text;
                u.sobrenome = txtsobrenome.Text;
                u.email = txtemail.Text;
                u.login = txtlogin.Text;
                u.senha = txtsenha.Text;


                if (lblstatus.Text.Equals("ALTERANDO"))
                {
                    conn.Entry(u);
                }
                else
                {
                    conn.USUARIOS.Add(u);
                }

                conn.SaveChanges();


                limpar();


                carregarGrid(conn);
            }
        }

        private void carregarGrid(OrçamentoVirtualGIEntities conn)
        {
            List<USUARIOS> dados = conn.USUARIOS.OrderBy(linha=>linha.nome).ToList();
            gridDados.DataSource = dados;
            gridDados.DataBind();
        }

        protected void btnexcluir_Click(object sender, EventArgs e)
        {
            if (gridDados.SelectedValue == null)
            {
                Response.
                    Write("<script>alert('Selecione um registro');</script>");
            }
            else
            {
                using(OrçamentoVirtualGIEntities conn = new OrçamentoVirtualGIEntities())
                {
                    string login = gridDados.SelectedValue.ToString();
                    USUARIOS u = conn.USUARIOS
                        .Where(linha => linha.login.Equals(login)).FirstOrDefault();

                    conn.USUARIOS.Remove(u);

                    conn.SaveChanges();

                    carregarGrid(conn);
                }
            }
        }

        protected void gridDados_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.ToString().Equals("btnalterar"))
            using (OrçamentoVirtualGIEntities conn = new OrçamentoVirtualGIEntities())
            string login = gridDados.SelectedValue.ToString();
            {
                USUARIOS u = conn.USUARIOS.Where(linha => linha.login.Equals(login)).FirstOrDefault();
                
                txtnome.Text = u.nome;
                txtsobrenome.Text = u.sobrenome;
                txtemail.Text = u.email;
                txtlogin.Text = u.login;
                txtsenha.Text = u.senha;

                lblstatus.Text = "ALTERANDO";
            }
            

        }
    }
}