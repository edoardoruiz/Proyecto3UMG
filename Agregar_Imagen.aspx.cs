using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dw_Proyecto_3.Clases;
using System.Data;
using System.Web.Services;

namespace Dw_Proyecto_3
{
    public partial class Agregar_Imagen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] != null)
            {
                if (!IsPostBack)
                {
                    txtId.Value = Request.QueryString["id"];
                    CargaIamgenes();
                }
            }
        }
        [WebMethod]
        public static string ConsultaImages(int Id)
        {
            string respuesta = "";
            try
            {
                DataTable dt = new DataTable();
                Conexion cnn = new Conexion();
                cnn.EstablecerSP("sp_imagen");
                cnn.AgregarParametro("@i_mantenimiento", SqlDbType.VarChar, "C");
                cnn.AgregarParametro("@i_operacion", SqlDbType.VarChar, "CIP");
                cnn.AgregarParametro("@i_producto", SqlDbType.Int, Id.ToString());
                cnn.EjecutarSP(true);
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

            return respuesta;
        }

        private string CargaIamgenes()
        {
            try
            {
                if (txtId.Value != null)
                {
                    Conexion cnn = new Conexion();
                    cnn.AgregarParametro("@i_mantenimiento", System.Data.SqlDbType.VarChar, "C");
                    cnn.AgregarParametro("@i_operacion", System.Data.SqlDbType.VarChar, "CIP");
                    cnn.AgregarParametro("@i_producto", System.Data.SqlDbType.Int, txtId.Value);
                    //cnn.AgregarParametro("", System.Data.SqlDbType.VarChar, "");
                    cnn.EstablecerSP("sp_imagen");
                    cnn.EjecutarSP(true);
                    DataSet ds = cnn.getTablasRetorno();
                    DataTable dt = new DataTable();
                    dt = ds.Tables[0];
                }
            }
            catch (Exception ex)
            {

                throw new Exception("Error 10002 en la carga de Imagen" + ex.Message);
            }
            string resultado = "";

            return resultado;

        }
        protected void btnGuardarImagen_Click(object sender, EventArgs e)
        {
            try
            {
                if (IsPostBack)
                {
                    if (filMyFile.PostedFile != null && txtId.Value != null)
                    {
                        //Obtenemos los archivos
                        HttpFileCollection MyFileCollection = Request.Files;
                        string rutaGuardar = "";
                        //Obtenemos Ruta a Guardar
                        rutaGuardar = Server.MapPath("images/Img_Productos");
                        //Validamos que exista la ruta donde se guarda
                        if (!System.IO.Directory.Exists(rutaGuardar))
                        {
                            System.IO.Directory.CreateDirectory(rutaGuardar);
                        }
                        for (int i = 0; i < MyFileCollection.Count; i++)
                        {

                            //Separamos cada parte del archivo 
                            string nombre = System.IO.Path.GetFileName(MyFileCollection[i].FileName);
                            string extension = System.IO.Path.GetExtension(MyFileCollection[i].FileName);
                            //guardar datos en la BD
                            Conexion cnn = new Conexion();
                            cnn.AgregarParametro("@i_mantenimiento", System.Data.SqlDbType.VarChar, "I");
                            cnn.AgregarParametro("@i_operacion", System.Data.SqlDbType.VarChar, "IP");
                            cnn.AgregarParametro("@i_producto", System.Data.SqlDbType.Int, txtId.Value);
                            cnn.AgregarParametro("@i_extension", System.Data.SqlDbType.VarChar, extension);
                            //cnn.AgregarParametro("", System.Data.SqlDbType.VarChar, "");
                            cnn.EstablecerSP("sp_imagen");
                            cnn.EjecutarSP(true);
                            DataSet ds = cnn.getTablasRetorno();
                            DataTable dt = new DataTable();
                            dt = ds.Tables[0];

                            if (dt.Rows.Count > 0)
                            {
                                string id_imagen = dt.Rows[0][0].ToString();
                                //Generamos ruta donde sera almacenado
                                string guardar = rutaGuardar + "\\" + id_imagen + extension;
                                //Guardar el archivo
                                MyFileCollection[i].SaveAs(guardar);
                            }


                        }
                    }

                }
            }
            catch (Exception ex)
            {
                throw new Exception("Error 10002 en la carga de Imagen" + ex.Message);
            }
        }

    }
}