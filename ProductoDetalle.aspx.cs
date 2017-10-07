using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Dw_Proyecto_3.Clases;
namespace Dw_Proyecto_3
{
    public partial class ProductoDetalle : System.Web.UI.Page
    {
        string IdProducto;
        protected void Page_Load(object sender, EventArgs e)
        {
            IdProducto = Request.QueryString["Producto"];

            if (IdProducto != null)
            {
                CargaDatosProducto();
            }
            else
            {
                Response.Redirect("Busqueda.aspx");
            }
        }
        public string pintarMen()
        {
            NavBar nb = new NavBar();
            return nb.pintabarra();
        }

        public void CargarCarrousell()
        {


            string respuesta = "";
            try
            {
                DataTable dt = new DataTable();
                Conexion cnn = new Conexion();
                cnn.EstablecerSP("sp_imagen");
                cnn.AgregarParametro("@i_mantenimiento", SqlDbType.VarChar, "C");
                cnn.AgregarParametro("@i_operacion", SqlDbType.VarChar, "CIP");
                cnn.AgregarParametro("@i_producto", SqlDbType.Int, IdProducto);
                cnn.EjecutarSP(true);
                txtproducto.Value = IdProducto;
                DataSet ds = cnn.getTablasRetorno();
                dt = ds.Tables[0];
                respuesta = respuesta + "  <div id='myCarousel' class='carousel slide' data-ride='carousel'> ";
                respuesta = respuesta + " <ol class='carousel-indicators'> ";
                //ciclo
                int contador = 0;
                foreach (DataRow row in dt.Rows)
                {
                    respuesta = respuesta + "<li data-target='#myCarousel' data-slide-to='" + contador + "' class='active'></li> ";
                    contador = contador + 1;
                }
                respuesta = respuesta + "</ol>  <!-- Wrapper for slides -->";
                respuesta = respuesta + "<div class='carousel-inner'> ";
                contador = 0;
                foreach (DataRow row in dt.Rows)
                {
                    if (contador == 0) { respuesta = respuesta + "<div class='item active'>  <img src='images/Img_Productos/" + row[0] + "' alt='Los Angeles'> </div> "; }
                    else { respuesta = respuesta + "<div class='item'>  <img src='images/Img_Productos/" + row[0] + "' alt='Los Angeles'> </div> "; }
                    contador = contador + 1;
                    // respuesta = respuesta + "<option value='" + row[0] + "'>" + row[1] + "</option>";
                }
                respuesta = respuesta + "</div>   <!-- Left and right controls -->";
                respuesta = respuesta + "<a class='left carousel-control' href='#myCarousel' data-slide='prev'> ";
                respuesta = respuesta + "<span class='glyphicon glyphicon-chevron-left'></span> ";
                respuesta = respuesta + " <span class='sr-only'>Previous</span> ";
                respuesta = respuesta + " </a>  <a class='right carousel-control' href='#myCarousel' data-slide='next'>";
                respuesta = respuesta + " <span class='glyphicon glyphicon-chevron-right'></span> ";
                respuesta = respuesta + " <span class='sr-only'>Next</span> ";
                respuesta = respuesta + " </a> ";
                respuesta = respuesta + " </div> ";
            }
            catch (Exception e)
            {
                throw new Exception("Error 10001 en la carga de Catalogo " + e.Message);
            }

            Response.Write(respuesta);

        }
        public void cargarBtnCompra()
        {
            Response.Write("<a class='btn btn-sm btn-primary' runat='server' href='Carrito.aspx?Producto=" + txtproducto.Value + "'>");
            Response.Write("Comprar");
            Response.Write("</a>");            
        }
        private void CargaDatosProducto()
        {
            Conexion NuevaCnn = new Conexion();
            NuevaCnn.AgregarParametro("Operacion", System.Data.SqlDbType.Char, "C");
            NuevaCnn.AgregarParametro("@PR_ID", System.Data.SqlDbType.Int, IdProducto);
            NuevaCnn.EstablecerDB("DW_UMG");
            NuevaCnn.EstablecerSP("sp_productod");
            NuevaCnn.EjecutarSP(true);
            DataSet Tabla = NuevaCnn.getTablasRetorno();
            txtproducto.Value = IdProducto;
            if (Tabla.Tables.Count > 0)
            {
                if (Tabla.Tables[0].Rows.Count > 0)
                {
                    lblnombreproducto.Text = Tabla.Tables[0].Rows[0]["PR_Nombre"].ToString();
                    lblcantidad.Text = Tabla.Tables[0].Rows[0]["PR_Cantidad"].ToString();
                    lblprecio.Text = Tabla.Tables[0].Rows[0]["PR_Precio"].ToString();
                    lbldescripcion.Text = Tabla.Tables[0].Rows[0]["PR_Descripcion"].ToString();
                    txtImagen.Src = "images\\Img_Productos\\" + Tabla.Tables[0].Rows[0]["Imagen"].ToString();

                }
            }

        }

        protected void compraloahora_Click(object sender, EventArgs e)
        {
            Conexion NuevaCnn = new Conexion();
            NuevaCnn.AgregarParametro("Operacion", System.Data.SqlDbType.Char, "I");
            NuevaCnn.AgregarParametro("@CAR_Producto", System.Data.SqlDbType.Int, IdProducto);
            NuevaCnn.AgregarParametro("@CAR_Cantidad", System.Data.SqlDbType.Int, txtCantidad.Value );
            NuevaCnn.AgregarParametro("@CAR_Usuario", System.Data.SqlDbType.Int, "1");
            //NuevaCnn.EstablecerDB("DW_UMG");
            NuevaCnn.EstablecerSP("sp_carrito");
            NuevaCnn.EjecutarSP(false);
            Response.Redirect("Carrito.aspx");
        }
    }
}