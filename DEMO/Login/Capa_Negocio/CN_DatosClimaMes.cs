using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Capa_Datos;

namespace Capa_Negocio
{
    public class CN_DatosClimaMes
    {
        private CD_DatosClimaMes _DatosClimaMes = new CD_DatosClimaMes();

        public void InsertarDatosClimaMes(String Fecha_Local, String Direccion_de_Viento, String Direccion_de_Rafaga,
            String Rapidez_de_Viento, String Rapidez_de_Rafaga, String Temperatura, String Humedad_Relativa, String Presion_Atmosferica,
            String Precipitacion, String Radiacion_Solar)
        {
            _DatosClimaMes.InsertarDatosClimaMes(Fecha_Local,Convert.ToDouble(Direccion_de_Viento), Convert.ToDouble(Direccion_de_Rafaga),
                Convert.ToDouble(Rapidez_de_Viento),Convert.ToDouble(Rapidez_de_Rafaga),Convert.ToDouble(Temperatura),
                Convert.ToInt32(Humedad_Relativa),Convert.ToDouble(Presion_Atmosferica),Convert.ToDouble(Precipitacion),Convert.ToInt32(Radiacion_Solar));
        }
    }
}
