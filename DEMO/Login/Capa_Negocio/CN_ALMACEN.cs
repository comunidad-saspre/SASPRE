using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Capa_Datos;

namespace Capa_Negocio
{
    class CN_Almacen
    {
        DataTable tablaAlmacen = new DataTable();
        CD_Almacen _Almacen = new CD_Almacen();
        public DataTable MostrarAlmacen()
        {
            return tablaAlmacen = _Almacen.MostrarAlmacen();
        }
    }
}
