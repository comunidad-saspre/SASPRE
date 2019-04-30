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

        public void EditarUsuario(int idusuario, String nombre, String apellidos, String contra, String cargo, String nickname, String correo)
        {
            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "EditarUsuario";
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("_Idusuario", idusuario);
            comando.Parameters.AddWithValue("_Nombre", nombre);
            comando.Parameters.AddWithValue("_Apellidos", apellidos);
            comando.Parameters.AddWithValue("_Contra", contra);
            comando.Parameters.AddWithValue("_Cargo", cargo);
            comando.Parameters.AddWithValue("_Nickname", nickname);
            comando.Parameters.AddWithValue("_Correo", correo);
            comando.ExecuteNonQuery();
            comando.Parameters.Clear();
            conexion.CerrarConexion();
        }


        public System.Data.DataTable MostrarUsuarios()
        {
            var table = new DataTable("Usuarios");

            try
            {
                comando.Connection = conexion.AbrirConexion();
                comando.CommandText = "MostrarUsuarios";
                comando.CommandType = CommandType.StoredProcedure;

                var adapter = new MySql.Data.MySqlClient.MySqlDataAdapter(comando);
                adapter.Fill(table);

                comando.Parameters.Clear();
                conexion.CerrarConexion();
            }
            catch (Exception)
            {
                table = null;
                throw;
            }

            return table;
        }

    }
}
