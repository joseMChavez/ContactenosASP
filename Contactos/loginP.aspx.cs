using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Contactos
{
    public partial class loginP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.IsPostBack == false)
            {
                if (Request.Cookies["mail"] != null)
                {
                    TextBox1.Text = Request.Cookies["mail"].Value;
                }
            }
        }

        protected void ButtonBuscar_Click(object sender, EventArgs e)
        {
            //Almacenamos las dos variables de sesion
            Session["nombre"] = TextBoxName.Text;
            Session["apellido"] = TextBoxApe.Text;
            HttpCookie cookie1 = new HttpCookie("mail", TextBox1.Text);
            cookie1.Expires = new DateTime(2018, 12, 25);
            Response.Cookies.Add(cookie1);
            //Redireccionamos a la siguiente pagina

            Response.Redirect("Contactanos.aspx");

        }
    }
}