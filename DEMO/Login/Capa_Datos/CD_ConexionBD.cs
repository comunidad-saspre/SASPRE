using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using MySql.Data.MySqlClient;


namespace Capa_Datos
{
    
    public class CD_ConexionBD
    {
        //MySqlConnection Conexion = new MySqlConnection("Server = localhost; Port = 3306; Database = saspre; Uid = root; Pwd = oscarraul");
       // MySqlConnection Conexion = new MySqlConnection("Server = localhost; Port = 3320; Database = saspre; Uid = root; Pwd = muski");
        MySqlConnection Conexion = new MySqlConnection("Server = localhost; Port = 3306; Database = saspre; Uid = root; Pwd = 1234");
        //MySqlConnection Conexion = new MySqlConnection("Server = localhost; Port = 3320; Database = saspre; Uid = root; Pwd = fili");
        // Andres :v
        //MySqlConnection Conexion = new MySqlConnection("Server = localhost; Port = 3306; Database = saspre; Uid = root; Pwd = root");
        //Aqui cada quien ingrese mejor su MySqlConnection y asi nadamas comenta las demas para no estar borrando y asi

        public MySqlConnection AbrirConexion()
        {
            try
            {
                if (Conexion.State == ConnectionState.Closed)
                    Conexion.Open();
            }
            catch (Exception ex)
            {
                ex.ToString();
                throw;
            }
            return Conexion;
        }

        public MySqlConnection CerrarConexion()
        {
            try
            {
                if (Conexion.State == System.Data.ConnectionState.Open)
                    Conexion.Close();       
            }
            catch (Exception ex)
            {
                ex.ToString();
                throw;
            }
            
            return Conexion;
        }
        
        
    }
}