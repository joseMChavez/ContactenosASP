using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace Contactos
{
    public partial class Contactanos : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!this.IsPostBack)
            {
                Mensajes mensaje = new Mensajes();


                if (Request.QueryString["Id"] != null)
                {
                    string id = Request.QueryString["Id"].ToString();

                    if (mensaje.Buscar(int.Parse(id)))
                    {
                        DevolverDatos(mensaje);
                        TextBoxId.Focus();
                    }
                    else
                    {
                        Response.Write("<Script> alert('" + TextBoxId.Text + " No Existe!')</Script>");
                    }
                }


                if (Request.Cookies["mail"] == null)
                {
                    Label3.Text = "No existe la cookie Email";
                }
                else
                {
                    Label3.Text = this.Request.Cookies["mail"].Value;
                    Label1.Text = this.Session["nombre"].ToString();
                    Label2.Text = this.Session["apellido"].ToString();
                }
            }
        }
        private void Limpiar()
        {
            TextBoxId.Text = string.Empty;
            TextBoxName.Text = string.Empty;
            TextBoxEmail.Text = string.Empty;
            TextBoxAsunto.Text = string.Empty;
            TextBoxMensaje.Text = string.Empty;
        }
        private void CargarDatos(Mensajes mensaje)
        {
            int id = 0;
            int.TryParse(TextBoxId.Text, out id);
            mensaje.Id = id;
            mensaje.Nombre = TextBoxName.Text;
            mensaje.Email = TextBoxEmail.Text;
            mensaje.Asunto = TextBoxAsunto.Text;
            mensaje.Mensaje = TextBoxMensaje.Text;
        }
        private void DevolverDatos(Mensajes mensaje)
        {
            TextBoxId.Text = mensaje.Id.ToString();
            TextBoxName.Text = mensaje.Nombre;
            TextBoxEmail.Text = mensaje.Email;
            TextBoxAsunto.Text = mensaje.Asunto;
            TextBoxMensaje.Text = mensaje.Mensaje;
        }
        protected void ButtonNuevo_Click(object sender, EventArgs e)
        {
            Limpiar();
            TextBoxName.Focus();
        }

        protected void ButtonGuardar_Click(object sender, EventArgs e)
        {
            Mensajes mensaje = new Mensajes();
            try
            {
                CargarDatos(mensaje);
                if (TextBoxId.Text.Equals(""))
                {
                    if (!TextBoxName.Text.Equals("") && !TextBoxEmail.Text.Equals("") && !TextBoxAsunto.Text.Equals("") && !TextBoxMensaje.Text.Equals(""))
                    {
                        if (mensaje.Insertar())
                        {
                            Response.Write("<script>alert('Guardado Correctamente')</script>");
                        }
                        else
                        {
                            Response.Write("<script>alert('ERROR')</script>");
                        }
                    }
                }
                else
                {
                    if (!TextBoxName.Text.Equals("") && !TextBoxEmail.Text.Equals("") && !TextBoxAsunto.Text.Equals("") && !TextBoxMensaje.Text.Equals(""))
                    {
                        if (mensaje.Editar())
                        {
                            Response.Write("<script>alert('Modificado Correctamente')</script>");
                        }
                        else
                        {
                            Response.Write("<script>alert('ERROR')</script>");
                        }
                    }
                }
            }
            catch (Exception ex)
            {

                Response.Write("<Script> alert('" + ex.Message + "')</Script>");
            }
        }

        protected void ButtonEliminar_Click(object sender, EventArgs e)
        {
            Mensajes mensaje = new Mensajes();
            int id = int.Parse(TextBoxId.Text);
            try
            {
                CargarDatos(mensaje);
                if (mensaje.Buscar(id))
                {
                    if (!TextBoxName.Text.Equals("") && !TextBoxEmail.Text.Equals("") && !TextBoxAsunto.Text.Equals("") && !TextBoxMensaje.Text.Equals(""))
                    {
                        if (mensaje.Eliminar())
                        {
                            Response.Write("<script>alert('Eliminado Correctamente')</script>");
                        }
                        else
                        {
                            Response.Write("<script>alert('ERROR')</script>");
                        }
                    }
                }
            }
            catch (Exception ex)
            {

                Response.Write("<Script> alert('" + ex.Message + "')</Script>");
            }
        }

        protected void ButtonBuscar_Click(object sender, EventArgs e)
        {
            Mensajes mensaje = new Mensajes();
            int id = int.Parse(TextBoxId.Text);

            try
            {
                CargarDatos(mensaje);
                if (!String.IsNullOrWhiteSpace(TextBoxId.Text))
                {
                    if (mensaje.Buscar(id))
                    {
                        DevolverDatos(mensaje);
                        TextBoxId.Focus();
                    }
                    else
                    {
                        Response.Write("<Script> alert('" + TextBoxId.Text + " No Existe!')</Script>");
                    }
                }
            }
            catch (Exception ex)
            {

                Response.Write("<Script> alert('" + ex.Message + "')</Script>");
            }
        }
    }
}