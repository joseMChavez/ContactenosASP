using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
namespace Contactos
{
    public partial class Consulta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private void Mostrar(Mensajes mensaje)
        {
            string filtro = "1=1";

            if (TextBoxFiltro.Text.Length > 0)
            {
                if (DropDLFiltro.SelectedIndex == 0)
                {
                    filtro = "Id =" + TextBoxFiltro.Text;
                }
                else
                {
                    filtro = DropDLFiltro.Text + " like '%" + TextBoxFiltro.Text + "%'";
                }

            }else
                filtro = "1=1";

            GridView1.DataSource = mensaje.Listado("Id ,Nombre,Email,Asunto,Mensaje", filtro, "");
           GridView1.DataBind();
        }
        protected void ButtonBuscar_Click(object sender, EventArgs e)
        {
            Mensajes men = new Mensajes();
            Mostrar(men);
        }
    }
}