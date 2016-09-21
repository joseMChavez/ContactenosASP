using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DAL;

namespace BLL
{
    public class Mensajes : ClaseMaestra
    {
        public int Id { get; set; }
        public string Nombre { get; set; }
        public string Email { get; set; }
        public string Asunto { get; set; }
        public string Mensaje { get; set; }

        public Mensajes()
        {
            Id = 0;
            Nombre = "";
            Email = "";
            Asunto = "";
            Mensaje = "";

        }

        public override bool Insertar()
        {
            bool retorno = false;
            ConexionDb conexion = new ConexionDb();
            try
            {
                retorno = conexion.Ejecutar(string.Format("insert into Mensajes(Nombre,Email,Asunto,Mensaje) values('{0}','{1}','{2}','{3}')", this.Nombre, this.Email, this.Asunto, this.Mensaje));
            }
            catch (Exception ex)
            {

                throw ex;
            }
            return retorno;
        }
        public override bool Editar()
        {
            bool retorno = false;
            ConexionDb conexion = new ConexionDb();
            try
            {
                retorno = conexion.Ejecutar(string.Format("update set Mensajes Nombre= '{0}', Email='{1}', Asunto= '{2}', Mensaje= '{3}' where Id={4}", this.Nombre, this.Email, this.Asunto, this.Mensaje, this.Id));
            }
            catch (Exception ex)
            {

                throw ex;
            }
            return retorno;
        }

        public override bool Eliminar()
        {
            bool retorno = false;
            ConexionDb conexion = new ConexionDb();
            try
            {
                retorno = conexion.Ejecutar(string.Format("Delete from Mensajes where Id= {0} ", this.Id));
            }
            catch (Exception ex)
            {

                throw ex;
            }
            return retorno;
        }


        public override bool Buscar(int IdBuscado)
        {

            ConexionDb conexion = new ConexionDb();
            DataTable tb = new DataTable();
            try
            {
                tb = conexion.ObtenerDatos(string.Format("select * from Mensajes where Id= {0}", IdBuscado));
                if (tb.Rows.Count > 0)
                {
                    this.Id = (int)tb.Rows[0]["Id"];
                    this.Nombre = tb.Rows[0]["Nombre"].ToString();
                    this.Email = tb.Rows[0]["Email"].ToString();
                    this.Asunto = tb.Rows[0]["Asunto"].ToString();
                    this.Mensaje = tb.Rows[0]["Mensaje"].ToString();
                }

            }
            catch (Exception ex)
            {

                throw ex;
            }
            return tb.Rows.Count > 0;
        }



        public override DataTable Listado(string Campos, string Condicion, string Orden)
        {
            ConexionDb conexion = new ConexionDb();
            string ordenFinal = "";
            if (!Orden.Equals(""))
                ordenFinal = " Order by  " + Orden;

            return conexion.ObtenerDatos("Select " + Campos + " From Mensajes Where " + Condicion + Orden);
        }
    }
}
