using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;
using System.Data;
using System.Windows.Forms;

namespace Capa_Datos
{
    public class CD_Cosechas
    {
        private CD_ConexionBD conexion = new CD_ConexionBD();
        MySqlDataReader leer;
        DataTable tablaCosechas = new DataTable();
        MySqlCommand comando;
        
        public DataTable MostrarCosechas(String cargo,String usuario)
        {
            try
            {
                comando = new MySqlCommand();
                comando.Connection = conexion.AbrirConexion();
                if (cargo == "Admin")
                {
                    comando.CommandText = "MostrarCosechas";
                }
                else
                {
                    comando.CommandText = "MostrarCosechasUsuario";
                    comando.Parameters.AddWithValue("_Usuario_Cultivo", usuario);
                }
                comando.CommandType = CommandType.StoredProcedure;
                leer = comando.ExecuteReader();
                tablaCosechas.Load(leer);
                conexion.CerrarConexion();
            }
            catch (Exception )
            {
                MessageBox.Show("ADVERTENCIA", "ERROR AL MOSTRAR COSECHAS", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }
            return tablaCosechas;
        }

        public void AgregarCosechas(String Usuario_Cultivo, String Cultivo, String Fecha_Plantado, String Fecha_Cosecha, String Cantidad, String Estado)
        {
            try
            {
                comando = new MySqlCommand();
                comando.Connection = conexion.AbrirConexion();
                comando.CommandText = "AgregarCosechas";
                comando.CommandType = CommandType.StoredProcedure;
                comando.Parameters.AddWithValue("_Usuario_Cultivo", Usuario_Cultivo);
                comando.Parameters.AddWithValue("_Cultivo", Cultivo);
                comando.Parameters.AddWithValue("_Fecha_Plantado", Fecha_Plantado);
                comando.Parameters.AddWithValue("_Fecha_Cosecha", Fecha_Cosecha);
                comando.Parameters.AddWithValue("_Cantidad", Cantidad);
                comando.Parameters.AddWithValue("_Estado", Estado);
                comando.ExecuteNonQuery();
                comando.Parameters.Clear();
                conexion.CerrarConexion();
            }
            catch (Exception )
            {
                MessageBox.Show("ADVERTENCIA", "ERROR AL AGREGAR COSECHAS", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }
        }
    }
}
