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

        public void AgregarAlmacen(String tipoObjeto, String nombreObjeto, double cantidadObjeto, String tipoSiembra, double precio, String fechaIngreso)
        {
            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "altaAlmacen";
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("_tipoObjeto", tipoObjeto);
            comando.Parameters.AddWithValue("_nombreObjeto", nombreObjeto);
            comando.Parameters.AddWithValue("_cantidadObjeto",cantidadObjeto);
            comando.Parameters.AddWithValue("_tipoSiembra", tipoSiembra);
            comando.Parameters.AddWithValue("_precio", precio);
            comando.Parameters.AddWithValue("_fechaIngreso", fechaIngreso);
            comando.ExecuteNonQuery();
            comando.Parameters.Clear();
            conexion.CerrarConexion();
        }

        public void EditarAlmacen(int IDAlmacen,String tipoObjeto, String nombreObjeto, double cantidadObjeto, String tipoSiembra, double precio, String fechaIngreso)
        {
            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "cambioAlmacen";
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("_IDAlmacen", IDAlmacen);
            comando.Parameters.AddWithValue("_tipoObjeto", tipoObjeto);
            comando.Parameters.AddWithValue("_nombreObjeto", nombreObjeto);
            comando.Parameters.AddWithValue("_cantidadObjeto", cantidadObjeto);
            comando.Parameters.AddWithValue("_tipoSiembra", tipoSiembra);
            comando.Parameters.AddWithValue("_precio", precio);
            comando.Parameters.AddWithValue("_fechaIngreso", fechaIngreso);
            comando.ExecuteNonQuery();
            comando.Parameters.Clear();
            conexion.CerrarConexion();
        }
        public void BorrarAlmacen(int IDAlmacen)
        {
            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "bajaAlmacen";
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("_IDAlmacen", IDAlmacen);
            comando.ExecuteNonQuery();
            comando.Parameters.Clear();
            conexion.CerrarConexion();
        }

    }
}
