using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using MySql.Data.MySqlClient;

namespace Capa_Datos
{
    public class CD_Gráficos
    {
        private CD_ConexionBD conexion = new CD_ConexionBD();
        MySqlDataReader leer;
        DataTable tablaPoligono = new DataTable();
        MySqlCommand comando;

        public DataTable MostrarPoligonos(String cargo, String usuario)
        {
            comando = new MySqlCommand();
            comando.Connection = conexion.AbrirConexion();
            if (cargo == "Admin")
            {
                comando.CommandText = "SELECT * FROM graficos";
            }
            else
            {
                comando.CommandText = "SELECT * FROM graficos";
            }
            comando.CommandType = CommandType.Text;
            leer = comando.ExecuteReader();
            tablaPoligono.Load(leer);
            conexion.CerrarConexion();
            return tablaPoligono;
        }

        int ultimoId = 0;
        public int ObtenerUltimoId()
        { 
            
            comando = new MySqlCommand();
            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "SELECT DISTINCT MAX(Identificador) AS 'valor' FROM Graficos";
            comando.CommandType = CommandType.Text;
            leer = comando.ExecuteReader();
            int salida = 0 ;
            if (leer.Read() == true)
            {
                if (leer["valor"] == DBNull.Value)
                {
                    salida = 0;
                }
                else
                {
                    salida = Convert.ToInt32(leer["valor"]);
                }
            }
            conexion.CerrarConexion();
            return salida;
        }

        public void AgregarPoligono(int identificador,string latitud,string longitud, string color,string nombredelterreno,string usuario,string cultivo,string fechaplantado,string fechacosecha,double cantidad, string estado)
        {
            comando = new MySqlCommand();
            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "INSERT INTO graficos (Identificador,Latitud,Longitud,Color,NombreDelTerreno,Usuario,Cultivo,FechaPlantado,FechaCosecha,Cantidad,Estado) VALUES (@identificador,@latitud,@longitud,@color,@cultivo,@usuario,@cultivo,@fechaplantado,@fechacosecha,@cantidad,@estado);";
            comando.CommandType = CommandType.Text;
            comando.Parameters.AddWithValue("@identificador",identificador);
            comando.Parameters.AddWithValue("@latitud", latitud);
            comando.Parameters.AddWithValue("@longitud", longitud);
            comando.Parameters.AddWithValue("@color", color);
            comando.Parameters.AddWithValue("@nombredelterreno", nombredelterreno);
            comando.Parameters.AddWithValue("@usuario", usuario);
            comando.Parameters.AddWithValue("@cultivo", cultivo);
            comando.Parameters.AddWithValue("@fechaplantado", fechaplantado);
            comando.Parameters.AddWithValue("@fechacosecha", fechacosecha);
            comando.Parameters.AddWithValue("@cantidad", cantidad);
            comando.Parameters.AddWithValue("@estado", estado);
            comando.ExecuteNonQuery();
            comando.Parameters.Clear();
            conexion.CerrarConexion();
        }


        public void BorrarPoligono(int identificador)
        {
            comando = new MySqlCommand();
            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "DELETE FROM graficos WHERE Identificador=@identificador;";
            comando.CommandType = CommandType.Text;
            comando.Parameters.AddWithValue("@identificador", identificador);
            comando.ExecuteNonQuery();
            comando.Parameters.Clear();
            conexion.CerrarConexion();
        }

    }
}
