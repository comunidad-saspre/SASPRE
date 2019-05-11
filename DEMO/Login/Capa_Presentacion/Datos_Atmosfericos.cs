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
        int Filtro_dia = 100;
        private string rutadirectorio;
        String thisDay = DateTime.Now.ToLongDateString().ToString();
        public Datos_Atmosfericos()
        {
            InitializeComponent();
        }

        private void Datos_Atmosfericos_Load(object sender, EventArgs e)
        {
            for (int i = 1; i < 31; i++)
            {
                dias.Items.Add(i);
            }
          
            rutadirectorio = "C:\\SASPRE_DATOS_ATMOSFERICOS\\datos_CIUDADMANTE_" + thisDay + ".csv";
           //crear carpeta
            crear_carpeta();
            //Guardar informacion
            getArchivo("https://smn.cna.gob.mx/tools/PHP/sivea/siveaEsri2/php/manejador_descargas_csv_estaciones.php?estacion=CIUDADMANTE&organismo=SMN&variable=temperatura%27&fbclid=IwAR3lT8srywft8Sy7OVAHDQ9_6ePUYm-am6ZzcN-zSsdCOVxGGMy0aa_guDQ");

            leercsv(rutadirectorio);
        }
        //Metodo para descargar archivo de datos atmosfericos
        public async void getArchivo(String url)
        {
            WebClient wc = new WebClient();
            await Task.Run(() =>
            {
                wc.DownloadFileAsync(new Uri(url), rutadirectorio);
            });
        }
        //metodo para crear carpeta donde se almacenara el documento descargado
        public void crear_carpeta()
        {
            string ruta = "C:\\SASPRE_DATOS_ATMOSFERICOS";
            if (!Directory.Exists(ruta))
            {
                System.IO.Directory.CreateDirectory(ruta);
            }

        }
        //lectura del archivo con datos atmosfericos
        private void leercsv(String filepath)
        {
            int contadordias = 0;
            String cambiodia = null;
            bool salir = false;
            while (!salir == true)
            {
                salir = true;
                try
                {
                    DataTable dt = new DataTable();
                    String[] lines = System.IO.File.ReadAllLines(filepath);
                    if (lines.Length > Filtro_dia)
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
                            //separa el csv utilizando las comas
                            String[] dataword = lines[r].Split(',');
                            DataRow dr = dt.NewRow();
                            String[] buscar = dataword[1].Split(':');

                            String aux = buscar[2].Replace("\"", "");



                            if (buscar[1].Equals("00") && aux.Equals("00"))
                            {
                                //llenar valores vacios
                                if (dataword[11].Equals(""))
                                {
                                    dataword[11] = "0";

                                }
                                //filtro de 7 dias 
                                String[] sietedias = dataword[1].Split('-');
                                String[] sietediasaux1 = sietedias[2].Split(' ');
                                if (!sietediasaux1[0].Equals(cambiodia))
                                {
                                    cambiodia = sietediasaux1[0];
                                    contadordias++;
                                }
                                if (contadordias < 8)
                                {
                                    foreach (String headerword in headerlabels)
                                    {

                                        dr[headerword] = dataword[columnindex];
                                        columnindex++;
                                    }
                                    dt.Rows.Add(dr);
                                    columnindex = 0;
                                }

                            }
                            //

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

        private void filtrar_Click(object sender, EventArgs e)
        {
            Filtro_dia = Convert.ToInt32(dias.Text);
            while (Datos_El_Mante.RowCount > 1)
            {
                Datos_El_Mante.Rows.Remove(Datos_El_Mante.CurrentRow);

            }
        }
    }
}
