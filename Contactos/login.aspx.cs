using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Contactos
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonBuscar_Click(object sender, EventArgs e)
        {
            //Almacenamos las dos variables de sesion
            Session["usuario"] = TextBoxId.Text;
            Session["clave"] = TextBoxName.ToString();
            //Redireccionamos a la siguiente pagina
            Response.Redirect("Contactanos.aspx");
        }
    }
}