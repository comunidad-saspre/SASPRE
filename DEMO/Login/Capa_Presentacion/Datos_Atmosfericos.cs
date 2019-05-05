using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Capa_Presentacion
{
    public partial class Datos_Atmosfericos : Form
    {
        private string rutadirectorio;
        String thisDay = DateTime.Now.ToLongDateString().ToString();
        public Datos_Atmosfericos()
        {
            InitializeComponent();
        }

        private void Datos_Atmosfericos_Load(object sender, EventArgs e)
        {
            rutadirectorio = "C:\\SASPRE_DATOS_ATMOSFERICOS\\datos_CIUDADMANTE_" + thisDay + ".csv";
           
            leercsv(rutadirectorio);
        }
        //lectura del archivo con datos atmosfericos
        private void leercsv(String filepath)
        {
            bool salir = false;
            while(!salir==true)
 {
                salir = true;
            try
            {
                DataTable dt = new DataTable();
                String[] lines = System.IO.File.ReadAllLines(filepath);
                if (lines.Length > 0)
                {
                    String firsline = "Estación,Fecha Local,Fecha UTC,Dirección del Viento (grados),Dirección de ráfaga (grados),Rapidez de viento (km/h),Rapidez de ráfaga (km/h),Temperatura del Aire (°C),Humedad relativa (%),Presión Atmosférica,Precipitación (mm),Radiación Solar (W/m²)";
                    String[] headerlabels = firsline.Split(',');
                    foreach (String headerword in headerlabels)
                    {
                        dt.Columns.Add(new DataColumn(headerword));
                    }
                    //for data
                    int columnindex = 0;
                    for (int r = 5; r < lines.Length; r++)
                    {

                        String[] dataword = lines[r].Split(',');
                        DataRow dr = dt.NewRow();

                        foreach (String headerword in headerlabels)
                        {

                            dr[headerword] = dataword[columnindex];
                            columnindex++;
                        }
                        dt.Rows.Add(dr);
                        columnindex = 0;
                    }
                }
                else
                {
                    MessageBox.Show("Archivo vacio");
                }
                if (dt.Rows.Count > 0)
                {
                    Datos_El_Mante.DataSource = dt;
                }
            }
            catch (System.IO.IOException e)
            {
              
                    salir = false;
            }
        }
        }
    }
}
