using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using MySql.Data.MySqlClient;

namespace Capa_Datos
{
    public class CD_Almacen
    {
        private CD_ConexionBD conexion = new CD_ConexionBD();
        MySqlDataReader leer;
        DataTable tablaAlmacen = new DataTable();
        MySqlCommand comando;

        public DataTable MostrarAlmacen()
        {
            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "verAlmacen";
            comando.CommandType = CommandType.StoredProcedure;
            leer = comando.ExecuteReader();
            tablaAlmacen.Load(leer);
            conexion.CerrarConexion();
            return tablaAlmacen;
        }

        public void AgregarAlmacen()
        {
        }

        public void EditarAlmacen()
        {

        }
        public void BorrarAlmacen()
        {

        }

    }
}
