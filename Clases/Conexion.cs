using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;


namespace Dw_Proyecto_3.Clases
{

    public class Conexion
    {
        //private string db_BaseDatos = "dbWMS";
        //private string db_Instancia = "NELSON\\SQLEXPRESS";
        //private string db_Usuario = "sa";
        //private string db_Contrasenia = "123456";
        //string CadenaCnn = "Persist Security Info=False;User ID=DW_UMG;Password=123456;Initial Catalog=sa;Server=NELSON\\SQLEXPRESS ";
        string CadenaCnn = "Persist Security Info=False;User ID=" + "sa" + ";Password=" + "123456" + ";Initial Catalog=" + "DW_UMG" + ";Server=" + "NELSON\\SQLEXPRESS";


        private List<SqlParameter> VL_Parametros;
        private string _Qry;
        private string _Sp;
        private string _DB;
        private DataSet _TablasRetorno;
        public Conexion()
        {

            this.VL_Parametros = new List<SqlParameter>();
            this._DB = "";
        }

        public enum TipoEjecucionDB
        {
            StoredProcedure,
            Script
        }

        public void AgregarParametro_Imagen(string pNombre, byte[] imagen, bool pSalida = false)
        {
            SqlParameter NuevoParametro = new SqlParameter();
            NuevoParametro.ParameterName = pNombre;
            NuevoParametro.SqlDbType = SqlDbType.Image;
            NuevoParametro.SqlValue = imagen;
            if (pSalida)
            { NuevoParametro.Direction = System.Data.ParameterDirection.Output; }
            else
            { NuevoParametro.Direction = System.Data.ParameterDirection.Input; }
            this.VL_Parametros.Add(NuevoParametro);
        }
        public void AgregarParametro(string pNombre, System.Data.SqlDbType pTipo, string pValor, bool pSalida = false)
        {
            SqlParameter NuevoParametro = new SqlParameter();
            NuevoParametro.ParameterName = pNombre;
            NuevoParametro.SqlDbType = pTipo;
            NuevoParametro.SqlValue = pValor;
            if (pSalida)
            { NuevoParametro.Direction = System.Data.ParameterDirection.Output; }
            else
            { NuevoParametro.Direction = System.Data.ParameterDirection.Input; }
            this.VL_Parametros.Add(NuevoParametro);
        }

        public void AgregarDt(string pNombre, System.Data.SqlDbType pTipo, DataTable dt, bool pSalida = false)
        {
            SqlParameter NuevoParametro = new SqlParameter();
            NuevoParametro.ParameterName = pNombre;
            NuevoParametro.SqlDbType = pTipo;
            NuevoParametro.SqlValue = dt;
            if (pSalida)
            { NuevoParametro.Direction = System.Data.ParameterDirection.Output; }
            else
            { NuevoParametro.Direction = System.Data.ParameterDirection.Input; }
            this.VL_Parametros.Add(NuevoParametro);
        }

        public void EstablecerQry(string pQry) { this._Qry = pQry; }

        public void EstablecerSP(string pSp) { this._Sp = pSp; }
        public void EstablecerDB(string pDB) { this._DB = pDB; }

        public void EjecutarSP(bool pDevuelveTabla = false)
        {

            if (this.VL_Parametros.Count <= 0)
            {
                throw new Exception("Debe agregar parametros para la ejecución");
                return;
            }
            if (this._Sp == "")
            {
                throw new Exception("Debe agregar stored procedure a ejecutar");
                return;
            }

            SqlConnection Cnn = new SqlConnection(CadenaCnn);
            SqlCommand Comando;
            try
            {
                //Comando.Connection = Cnn;

                Comando = new SqlCommand(this._Sp, Cnn);
                Comando.CommandType = System.Data.CommandType.StoredProcedure;
                foreach (SqlParameter parametro in this.VL_Parametros)
                {
                    Comando.Parameters.Add(parametro);
                }
                Comando.Connection.Open();
                if (this._DB != "")
                {
                    Comando.Connection.ChangeDatabase(this._DB);
                }

                if (pDevuelveTabla)
                {
                    SqlDataAdapter Adaptador = new SqlDataAdapter(Comando);
                    this._TablasRetorno = new DataSet();
                    Adaptador.Fill(this._TablasRetorno);
                }
                else
                {
                    Comando.ExecuteNonQuery();
                }

                Comando.Connection.Close();

            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }



        public void EjecutarQuery(bool pDevuelveTabla = false)
        {

            if (this._Qry == "")
            {
                throw new Exception("Debe establecer script a ejecutar");
                return;
            }

            SqlConnection Cnn = new SqlConnection(CadenaCnn);
            SqlCommand Comando;
            try
            {
                Comando = new SqlCommand(this._Qry, Cnn);
                Comando.CommandType = System.Data.CommandType.Text;

                Comando.Connection.Open();
                if (this._DB != "")
                {
                    Comando.Connection.ChangeDatabase(this._DB);
                }

                if (pDevuelveTabla)
                {
                    SqlDataAdapter Adaptador = new SqlDataAdapter(Comando);
                    this._TablasRetorno = new DataSet();
                    Adaptador.Fill(this._TablasRetorno);
                }
                else
                {
                    Comando.ExecuteNonQuery();
                }

                Comando.Connection.Close();

            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }

        }
        public DataSet getTablasRetorno() { return this._TablasRetorno; }

    }
    
}