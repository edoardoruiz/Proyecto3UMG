using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using iTextSharp.text.pdf ;
using System.IO;

namespace Dw_Proyecto_3
{
    public partial class pruebas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public string pintarMen()
        {
            NavBar nb = new NavBar();
            return nb.pintabarra();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string pdfTemplate = Server.MapPath("Componentes") + "\\Recibo.pdf";
            string newFile = Server.MapPath("Componentes") + "\\Recibo_1.pdf";

            PdfReader pdfReader = new PdfReader(pdfTemplate);
            PdfStamper pdfStamper = new PdfStamper(pdfReader, new System.IO.FileStream(newFile, FileMode.CreateNew));

            AcroFields pdfFormFields = pdfStamper.AcroFields;

            // Asigna los campos

            pdfFormFields.SetField("prod_1", "dato 1");
            pdfFormFields.SetField("prod_2", "dato 2");
            pdfFormFields.SetField("prod_3", "dato 3");
            pdfFormFields.SetField("prod_4", "dato 4");

           // string sTmp = "Datos asignados";
            //MessageBox.Show(sTmp, "Terminado");

            // Cambia la propiedad para que no se pueda editar el PDF
            pdfStamper.FormFlattening = true;

            // Cierra el PDF
            pdfStamper.Close();
        }
    }
}