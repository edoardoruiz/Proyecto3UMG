using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Services;
using Dw_Proyecto_3.Clases;

namespace Dw_Proyecto_3
{
    public partial class Producto : System.Web.UI.Page
    {

        public string pintarMen()
        {
            NavBar nb = new NavBar();
            return nb.pintabarra();
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static string ConsultarProducto(int Id)
        {
            string respuesta = "";
            try
            {
                DataTable dt = new DataTable();
                Conexion cnn = new Conexion();
                cnn.EstablecerSP("sp_producto");
                cnn.AgregarParametro("@i_mantenimiento", SqlDbType.VarChar, "C");
                cnn.AgregarParametro("@i_operacion", SqlDbType.VarChar, "CP");
                cnn.AgregarParametro("@i_producto", SqlDbType.Int, Id.ToString());
                cnn.EjecutarSP(true);
                DataSet ds = cnn.getTablasRetorno();
                dt = ds.Tables[0];
                if (dt.Rows.Count > 0)
                {
                    for (int i = 0; i < dt.Columns.Count; i++)
                    {
                        respuesta = respuesta + dt.Rows[0][i].ToString() + ";";
                    }
                }
                else 
                {
                    respuesta = "-1";
                }
               

            }
            catch (Exception e)
            {
                throw new Exception("Error 10001 en la carga de Catalogo " + e.Message);
            }

            return respuesta;

        }
        [WebMethod]
        public static string GuardarProducto(int producto, int categoria, int subCategoria, string nombre, string descripcion, double cantidad, double precio, int moneda, int pais, string usuario)
        {
            try
            {
                //Session["usuario"] = "prueba";
                DataTable dt = new DataTable();
                Conexion cnn = new Conexion();
                //string categoria = Request.Form["txtCategoria"];// txtCategoria.Items.
                cnn.EstablecerSP("sp_producto");
                if (producto == 0)
                {
                    cnn.AgregarParametro("@i_mantenimiento", SqlDbType.VarChar, "I");
                    cnn.AgregarParametro("@i_operacion", SqlDbType.VarChar, "IP");
                }
                else
                {
                    cnn.AgregarParametro("@i_mantenimiento", SqlDbType.VarChar, "U");
                    cnn.AgregarParametro("@i_operacion", SqlDbType.VarChar, "UP");
                    cnn.AgregarParametro("@i_producto", SqlDbType.Int, producto.ToString());
                }
                cnn.AgregarParametro("@i_Categoria", SqlDbType.Int, categoria.ToString());
                cnn.AgregarParametro("@i_SubCategoria", SqlDbType.Int, subCategoria.ToString());
                cnn.AgregarParametro("@i_Nombre", SqlDbType.VarChar, nombre);
                cnn.AgregarParametro("@i_Descripcion", SqlDbType.VarChar, descripcion);
                cnn.AgregarParametro("@i_Cantidad", SqlDbType.Decimal, cantidad.ToString());
                cnn.AgregarParametro("@i_Precio", SqlDbType.Decimal, precio.ToString());
                cnn.AgregarParametro("@i_Moneda", SqlDbType.Int, moneda.ToString());
                cnn.AgregarParametro("@i_Pais", SqlDbType.Int, pais.ToString());
                cnn.AgregarParametro("@i_Usuario", SqlDbType.VarChar, usuario);

                //cnn.AgregarParametro("@i_Categoria", SqlDbType.Int, Request.Form["txtCategoria"]);
                //cnn.AgregarParametro("@i_SubCategoria", SqlDbType.Int, Request.Form["txtSubCategoria"]);
                //cnn.AgregarParametro("@i_Nombre", SqlDbType.VarChar, txtNombre.Value);
                //cnn.AgregarParametro("@i_Descripcion", SqlDbType.VarChar, txtDescripcion.Value);
                //cnn.AgregarParametro("@i_Cantidad", SqlDbType.Decimal, txtCantidad.Value);
                //cnn.AgregarParametro("@i_Precio", SqlDbType.Decimal, txtPrecio.Value);
                //cnn.AgregarParametro("@i_Moneda", SqlDbType.Int, Request.Form["txtMoneda"]);
                //cnn.AgregarParametro("@i_Pais", SqlDbType.Int, Request.Form["txtPais"]);
                //cnn.AgregarParametro("@i_Usuario", SqlDbType.VarChar, Session["usuario"].ToString());
                cnn.EjecutarSP(true);
                DataSet ds = cnn.getTablasRetorno();
                dt = ds.Tables[0];
                return dt.Rows[0][0].ToString();
            }
            catch (Exception ex)
            {
                throw new Exception("Error 10002 al guardar Producto : " + ex.Message);
            }
        }

        [WebMethod]
        public static string CargaCatalogos(int Id, int Categoria = 0)
        {
            string respuesta = "";
            try
            {
                DataTable dt = new DataTable();
                Conexion cnn = new Conexion();
                cnn.EstablecerSP("sp_catalogo");
                cnn.AgregarParametro("@i_operacion", SqlDbType.VarChar, "C");
                cnn.AgregarParametro("@i_tabla", SqlDbType.Int, Id.ToString());
                if (Categoria != 0)
                {
                    cnn.AgregarParametro("@i_id", SqlDbType.Int, Categoria.ToString());
                }
                cnn.EjecutarSP(true);
                DataSet ds = cnn.getTablasRetorno();
                dt = ds.Tables[0];

                foreach (DataRow row in dt.Rows)
                {
                    respuesta = respuesta + "<option value='" + row[0] + "'>" + row[1] + "</option>";
                }
            }
            catch (Exception e)
            {
                throw new Exception("Error 10001 en la carga de Catalogo " + e.Message);
            }

            return respuesta;
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {

        }





    }
}