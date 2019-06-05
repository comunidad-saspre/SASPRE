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
using Capa_Negocio;

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
                dias.Items.Add(i + " días");
            }
            dias.SelectedIndex = 6;

            rutadirectorio = "C:\\SASPRE_DATOS_ATMOSFERICOS\\datos_CIUDADMANTE_" + thisDay + ".csv";
            //crear carpeta
            //crear_carpeta();
            //Guardar informacion
            //getArchivo("https://smn.cna.gob.mx/tools/PHP/sivea/siveaEsri2/php/manejador_descargas_csv_estaciones.php?estacion=CIUDADMANTE&organismo=SMN&variable=temperatura%27&fbclid=IwAR3lT8srywft8Sy7OVAHDQ9_6ePUYm-am6ZzcN-zSsdCOVxGGMy0aa_guDQ");
            leercsv(rutadirectorio);
        }
        //Metodo para descargar archivo de datos atmosfericos
        public async void getArchivo(String url)
        {
            try
            {
                WebClient wc = new WebClient();
                await Task.Run(() =>
                {
                    wc.DownloadFileAsync(new Uri(url), rutadirectorio);
                });
            }
            catch (Exception a)
            {
                MessageBox.Show("ADVERTENCIA", "ERROR EN LA DESCARGAR DATOS ATMOSFERICOS", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }
        }
        //metodo para crear carpeta donde se almacenara el documento descargado
        public void crear_carpeta()
        {
            try
            {
                string ruta = "C:\\SASPRE_DATOS_ATMOSFERICOS";
                if (!Directory.Exists(ruta))
                {
                    System.IO.Directory.CreateDirectory(ruta);
                }
            }
            catch (Exception a)
            {
                MessageBox.Show("ADVERTENCIA", "ERROR AL CREAR CARPETA", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
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
                            String[] dataword = lines[r].Split(','
                                );
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
                                if (contadordias <= Filtro_dia)
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
                        dtgDatosElMante.DataSource = dt;
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

        }

        private void InsertarDatosClimaMes()
        {
            try
            {
                CN_DatosClimaMes _DatosClimaMes = new CN_DatosClimaMes();
                foreach (DataGridViewRow item in dtgDatosElMante.Rows)
                {
                    String fecha = item.Cells["Fecha Local"].Value.ToString().Replace(@"""", "");
                    String fechautc = item.Cells["Fecha UTC"].Value.ToString().Replace(@"""", "");
                    _DatosClimaMes.InsertarDatosClimaMes(item.Cells["Estación"].Value.ToString(), fecha, fechautc, item.Cells["Dirección del Viento (grados)"].Value.ToString(), item.Cells["Dirección de ráfaga (grados)"].Value.ToString(),
                        item.Cells["Rapidez de viento (km/h)"].Value.ToString(), item.Cells["Rapidez de ráfaga (km/h)"].Value.ToString(), item.Cells["Temperatura del Aire (°C)"].Value.ToString(), item.Cells["Humedad relativa (%)"].Value.ToString(),
                        item.Cells["Presión Atmosférica"].Value.ToString(), item.Cells["Precipitación (mm)"].Value.ToString(), item.Cells["Radiación Solar (W/m²)"].Value.ToString());
                }
            }
            catch (Exception a)
            {
                MessageBox.Show("ADVERTENCIA", "ERROR AL INSERTAR DATOS ATNOSFERICOS", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            InsertarDatosClimaMes();
        }

        private void btnFiltrar_Click(object sender, EventArgs e)
        {
            try
            {
                Filtro_dia = Convert.ToInt32(dias.Text.Substring(0, 2));
                while (dtgDatosElMante.RowCount > 1)
                {
                    dtgDatosElMante.Rows.Remove(dtgDatosElMante.CurrentRow);

                }
                leercsv(rutadirectorio);
            }
            catch (Exception a)
            {
                MessageBox.Show("ADVERTENCIA", "ERROR AL FILTRAR DATOS ATMOSFERICOS", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }
        }
    }
}