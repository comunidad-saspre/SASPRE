using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;
using System.Data;

namespace Capa_Datos
{
    public class CD_Cultivos
    {
        private CD_ConexionBD conexion = new CD_ConexionBD();
        MySqlDataReader leer;
        DataTable tablaCultivos = new DataTable();
        MySqlCommand comando;
        public DataTable MostrarCultivos()
        {
            comando = new MySqlCommand();
            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "MostrarCultivos";
            comando.CommandType = CommandType.StoredProcedure;
            leer = comando.ExecuteReader();
            tablaCultivos.Load(leer);
            conexion.CerrarConexion();
            return tablaCultivos;
        }
    }
}
