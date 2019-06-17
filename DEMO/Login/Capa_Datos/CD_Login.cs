using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace Capa_Datos
{
    public class CD_Login
    {
        private CD_ConexionBD conexion = new CD_ConexionBD();
        private MySqlDataReader leer;
        MySqlCommand comando = new MySqlCommand();

        public MySqlDataReader IniciarSesion(String nickname, String contraseña)
        {
            try
            {


                conexion.CerrarConexion();
                comando.Parameters.Clear();
                comando.Connection = conexion.AbrirConexion();
                comando.CommandText = "IniciarSesion";
                comando.CommandType = CommandType.StoredProcedure;
                comando.Parameters.AddWithValue("_nickname", nickname);
                comando.Parameters.AddWithValue("_contra", contraseña);
                leer = comando.ExecuteReader();
            }catch(Exception a )
            {
                MessageBox.Show("Ha ocurrido un error " + a.Message, "Advertencia", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }
            return leer;
        }
    }
}
