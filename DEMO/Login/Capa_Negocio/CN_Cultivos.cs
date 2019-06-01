using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Capa_Datos;

namespace Capa_Negocio
{
    public class CN_Cultivos
    {
        private CD_Cultivos _Cultivos = new CD_Cultivos();
        DataTable tablaCultivos = new DataTable();
        public DataTable MostrarCultivos()
        {
            tablaCultivos = _Cultivos.MostrarCultivos();
            return tablaCultivos;
        }
    }
}
