using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dw_Proyecto_3.Clases;
using System.Data;
namespace Dw_Proyecto_3
{
    public partial class MisProductos : System.Web.UI.Page
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
            Conexion NuevaCnn = new Conexion();
            NuevaCnn.AgregarParametro("Operacion", System.Data.SqlDbType.Char, "C");
            NuevaCnn.EstablecerSP("sp_productod");
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
                        Response.Write("<a class='btn btn-sm btn-primary' runat='server' href='Producto.aspx?Producto=" + Fila["PR_ID"] + "'>");
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