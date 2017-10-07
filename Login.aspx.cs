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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                Conexion cnn = new Conexion();
                cnn.AgregarParametro("@i_operacion", SqlDbType.Char, "C");
                cnn.AgregarParametro("@i_usuario", SqlDbType.Char, txtUsuario.Text);
                Encriptacion en = new Encriptacion();
                cnn.AgregarParametro("@i_contraseña", SqlDbType.Char, en.Encriptar(txtPass.Text));
                cnn.EstablecerSP("sp_login");
                cnn.EjecutarSP(true);
                DataSet ds = cnn.getTablasRetorno();
                DataTable dt = new DataTable();
                dt = ds.Tables[0];
                if (dt.Rows.Count > 0)
                {
                    Session["usuario"] = ds.Tables[0].Rows[0][1];
                    Session["nombre"] = ds.Tables[0].Rows[0][3];
                    Response.Redirect("Menu.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Usuario o Contraseña Incorrecta')</script>");
                }
            }
            catch (Exception ex)
            {
                string errorEx = "";
                errorEx = "<script>alert('Error:" + ex.Message.ToString() + " Detalle: " + ex.ToString() + "')</script>";
                Response.Write(errorEx);

            }




        }
    }
}