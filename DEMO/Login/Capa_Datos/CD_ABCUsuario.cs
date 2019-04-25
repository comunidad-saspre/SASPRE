using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;
using System.Data;

namespace Capa_Datos
{
    public class CD_ABCUsuario
    {
        private CD_ConexionBD conexion = new CD_ConexionBD();
        MySqlCommand comando = new MySqlCommand();
        DataTable tablaUsuarios = new DataTable();
        MySqlDataReader leer;

        public void RegistrarUsuario(String nombre, String apellidos, String contra, String cargo, String nickname, String correo)
        {
            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "RegistrarUsuario";
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("_Nombre",nombre);
            comando.Parameters.AddWithValue("_Apellidos",apellidos);
            comando.Parameters.AddWithValue("_Contra",contra);
            comando.Parameters.AddWithValue("_Cargo", cargo);
            comando.Parameters.AddWithValue("_Nickname",nickname);
            comando.Parameters.AddWithValue("_Correo",correo);
            comando.ExecuteNonQuery();
            comando.Parameters.Clear();
            conexion.CerrarConexion();
        }

         public DataTable MostrarUsuarios()
        {
            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "MostrarUsuarios";
            comando.CommandType = CommandType.StoredProcedure;
            leer = comando.ExecuteReader();
            tablaUsuarios.Load(leer);
            conexion.CerrarConexion();
            return tablaUsuarios;
        }
    }
}
