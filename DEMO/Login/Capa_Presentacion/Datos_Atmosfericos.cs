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
            rutadirectorio = "C:\\SASPRE_DATOS_ATMOSFERICOS\\datos_CIUDADMANTE" + thisDay + ".csv";
            //crear carpeta
            crear_carpeta();
            //geteararchivo
            getArchivo("https://smn.cna.gob.mx/tools/PHP/sivea/siveaEsri2/php/manejador_descargas_csv_estaciones.php?estacion=CIUDADMANTE&organismo=SMN&variable=temperatura%27&fbclid=IwAR3lT8srywft8Sy7OVAHDQ9_6ePUYm-am6ZzcN-zSsdCOVxGGMy0aa_guDQ");
            System.Threading.Thread.Sleep(3000);
            //leer documento de datos
            leercsv(rutadirectorio);
        }
        public async void getArchivo(String url)
        {
            WebClient wc = new WebClient();
            await Task.Run(() =>
            {
                wc.DownloadFileAsync(new Uri(url), rutadirectorio);
            });
        }
        public void crear_carpeta()
        {
            string ruta = "C:\\SASPRE_DATOS_ATMOSFERICOS";
            if (!Directory.Exists(ruta))
            {
                System.IO.Directory.CreateDirectory(ruta);
            }

        }

        private void leercsv(String filepath)
        {
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
                MessageBox.Show("Archivo de datos en uso");
            }
        }
    }
}
