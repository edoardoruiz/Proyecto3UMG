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
    public partial class Busqueda : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    
        public string pintarMen()
        {
            NavBar nb = new NavBar();
            return nb.pintabarra();
        }
        protected void CargarProductos()
        {
            string busqueda ="";
            busqueda= Request.QueryString["Producto"];
            
            Conexion NuevaCnn = new Conexion();
            
            NuevaCnn.EstablecerSP("sp_productod");
            if (busqueda != null)
            {
                if (busqueda.Length >2)
                {
                    NuevaCnn.AgregarParametro("Operacion", System.Data.SqlDbType.Char, "B");
                    NuevaCnn.AgregarParametro("i_busqueda", System.Data.SqlDbType.Char, busqueda.Replace(" ", "%"));
                }
                else
                {
                    NuevaCnn.AgregarParametro("Operacion", System.Data.SqlDbType.Char, "C");
                }
            }
            else
            {
                NuevaCnn.AgregarParametro("Operacion", System.Data.SqlDbType.Char, "C");
            }
           
            NuevaCnn.EjecutarSP(true);
            DataSet Tabla = NuevaCnn.getTablasRetorno();

            if (Tabla.Tables.Count > 0)
            {
                if (Tabla.Tables[0].Rows.Count > 0)
                {
                    foreach (DataRow Fila in Tabla.Tables[0].Rows)
                    {
                        Response.Write("<tr>");
                        Response.Write("<td>");
                        //Response.Write("<img class='card-img-top img-fluid' src='http://placehold.it/100x100' alt=''>");
                        Response.Write("<img class='card-img-top img-fluid' style='width:150px' src=' images\\Img_Productos\\" + Fila["Imagen"] + "' alt=''>");
                        Response.Write("</td>");
                        Response.Write("<td>");
                        Response.Write("<a class='btn btn-sm btn-primary' runat='server' href='ProductoDetalle.aspx?Producto=" + Fila["PR_ID"] + "'>");
                        Response.Write(Fila["PR_Nombre"]);
                        Response.Write("</a>");
                        Response.Write("</td>");
                        Response.Write("<td>");
                        Response.Write("Cantidad disponible: ");
                        Response.Write(Fila["PR_Cantidad"]);
                        Response.Write("</br>");
                        Response.Write("Precio: ");
                        Response.Write(Fila["PR_Precio"]);
                        Response.Write("</td>");
                        Response.Write("<td>");
                        Response.Write("</td>");
                        Response.Write("</tr>");
                    }
                }
            }
        }
 
    }
}