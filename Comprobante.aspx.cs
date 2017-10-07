using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using iTextSharp.text.pdf;
using System.IO;
using Dw_Proyecto_3.Clases;
using System.Data;
namespace Dw_Proyecto_3
{
    public partial class Comprobante : System.Web.UI.Page
    {
        public string pintarMen()
        {
            NavBar nb = new NavBar();
            return nb.pintabarra();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            string Idcarrito = Request.QueryString["Carrito"];

            if (Idcarrito != null)
            {
                pagarProducto(Idcarrito);
            }
            else
            {
                Response.Redirect("Carrito.aspx");
            }

        }
        public void pagarProducto(string Idcarrito)
        {
            string pdfTemplate = Server.MapPath("Componentes") + "\\Recibo.pdf";
            string newFile = Server.MapPath("Componentes") + "\\Recibo_1.pdf";

            PdfReader pdfReader = new PdfReader(pdfTemplate);
            PdfStamper pdfStamper = new PdfStamper(pdfReader, new System.IO.FileStream(newFile, FileMode.Create));

            AcroFields pdfFormFields = pdfStamper.AcroFields;
            //info de BD
            Conexion NuevaCnn = new Conexion();
            NuevaCnn.AgregarParametro("Operacion", System.Data.SqlDbType.Char, "F");
            NuevaCnn.AgregarParametro("CAR_ID", System.Data.SqlDbType.Int, Idcarrito);
            NuevaCnn.EstablecerSP("sp_carrito");
            NuevaCnn.EjecutarSP(true);
            DataSet Tabla = NuevaCnn.getTablasRetorno();
            DataTable dt = Tabla.Tables[0];
           // Response.Redirect("Carrito.aspx");

            // Asigna los campos
            if (dt.Rows.Count > 0)
            {
                pdfFormFields.SetField("txtOrden", Idcarrito);
                pdfFormFields.SetField("txtFecha", dt.Rows[0][0].ToString());
                pdfFormFields.SetField("txtTotal", dt.Rows[0][1].ToString());
                pdfFormFields.SetField("txtProd1", dt.Rows[0][2].ToString());
                pdfFormFields.SetField("txtCant1", dt.Rows[0][3].ToString());
                pdfFormFields.SetField("txtPrecio1", dt.Rows[0][4].ToString());

            }

            

            // string sTmp = "Datos asignados";
            //MessageBox.Show(sTmp, "Terminado");

            // Cambia la propiedad para que no se pueda editar el PDF
            pdfStamper.FormFlattening = true;

            // Cierra el PDF
            pdfStamper.Close();
        }
    }
}