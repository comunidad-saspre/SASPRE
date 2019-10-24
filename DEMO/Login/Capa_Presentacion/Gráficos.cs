using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using GMap.NET;
using GMap.NET.MapProviders;
using GMap.NET.WindowsForms;
using GMap.NET.WindowsForms.Markers;
using MySql.Data.MySqlClient;
using Capa_Negocio;

namespace Capa_Presentacion
{
    public partial class Gráficos : Form
    {
        GMarkerGoogle marker;
        GMapOverlay markerOverlay;
        DataTable dt;

        /*
         * Tabla de base de datos para los puntos guardados en el DGV
         * 
           CREATE TABLE `saspre`.`graficos` (
          `idGraficos` INT NOT NULL AUTO_INCREMENT,
          `Identificador` BIGINT NOT NULL,
          `Latitud` DOUBLE NOT NULL,
          `Longitud` DOUBLE NOT NULL,
          PRIMARY KEY (`idGraficos`)); 
        */



        int filaSeleccionada = 0;
        double LatInicial = 22.7031103;
        double LongInicial = -99.0117213;

        public Gráficos()
        {
            InitializeComponent();
        }

        private void gMapControl1_MouseDoubleClick(object sender, MouseEventArgs e)
        {
            ///Se obtiene los datos de lat y lng del mapa donde el usuario presiono
            double lat = gMapControl1.FromLocalToLatLng(e.X, e.Y).Lat;
            double lng = gMapControl1.FromLocalToLatLng(e.X, e.Y).Lng;


            //Se posicionan en el txt de la latitud y longitud

            txtLati.Text = lat.ToString();
            txtLong.Text = lng.ToString();

            //Creamos el marcador para moverlo al lugar índicado

            marker.Position = new PointLatLng(lat, lng);
            //Tambien agregamos el mensaje al marcador (tooltip)

            //marker.ToolTipText = string.Format("Ubicación: \n Latitud:{0} \n Longitud{1}", lat, lng);
        }

        private void Gráficos_Load(object sender, EventArgs e)
        {
            dt = new DataTable();
            dt.Columns.Add(new DataColumn("Descripción", typeof(string)));
            dt.Columns.Add(new DataColumn("Lat", typeof(double)));
            dt.Columns.Add(new DataColumn("Long", typeof(double)));

            //Insertando datos al dt para mostrar en la lista
            //dt.Rows.Add("Ubicación 1", LatInicial, LongInicial);
            dataGridView1.DataSource = dt;

            dataGridView1.Columns[1].Visible = true;
            dataGridView1.Columns[2].Visible = true;

            gMapControl1.DragButton = MouseButtons.Left;
            gMapControl1.CanDragMap = true;
            gMapControl1.MapProvider = GMapProviders.GoogleHybridMap;
            gMapControl1.Position = new PointLatLng(LatInicial, LongInicial);
            gMapControl1.MinZoom = 0;
            gMapControl1.MaxZoom = 24;
            gMapControl1.Zoom = 18;
            gMapControl1.AutoScroll = true;


            //Marcador

            markerOverlay = new GMapOverlay("Marcador");
            marker = new GMarkerGoogle(new PointLatLng(LatInicial, LongInicial), GMarkerGoogleType.green);
            markerOverlay.Markers.Add(marker); //Agregamos al mapa

            //Agregamos un tooltip de texto a los marcadores

            marker.ToolTipMode = MarkerTooltipMode.Always;
            marker.ToolTipText = string.Format("Ubicación: \n Latitud:{0} \n Longitud{1}", LatInicial, LongInicial);

            //Ahora agregamos el mapa y el marcador al map control
            gMapControl1.Overlays.Add(markerOverlay);
        }


        int contador = 0;
        private void btnAgregar_Click(object sender, EventArgs e)
        {
            dt.Rows.Add(contador, txtLati.Text, txtLong.Text); //agregar
            contador++;
            //Procedimientos para ingresar a una base de datos



        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            dataGridView1.Rows.RemoveAt(filaSeleccionada); //remover de la tabla

            //Procedimientos para borrar a una base de datos
        }


        
        MySqlDataReader leer;
        MySqlCommand comando;

        private void ObtenerUltimoIdDePoligono()
        {
            //comando = new MySqlCommand();
            //comando.Connection = conexion.AbrirConexion();
            //comando.CommandText = "SELECT MAX(Identificador) FROM Graficos";
            //comando.CommandType = CommandType.Text;
            //NoPoligono = comando.ExecuteNonQuery();
            //comando.Parameters.Clear();
            //conexion.CerrarConexion();

            MessageBox.Show("Se Obtuvo ultimo id:"+NoPoligono.ToString());
        }

        int NoPoligono = 0;
        private void btnCancelar_Click(object sender, EventArgs e)
        {
            
            MessageBox.Show(NoPoligono.ToString());


            //Ahora agregamos el mapa y el marcador al map control
            //gMapControl1.Overlays.Add(markerOverlay); //Descomentar esto si quieres tener posiciones
            GMapOverlay Poligono = new GMapOverlay("Poligono");
            List<PointLatLng> puntos = new List<PointLatLng>();

            //variables para almacenar los datos

            double lng = 0, lat = 0;


            //agarramos los datos del grid

            for (int filas = 0; filas < dataGridView1.Rows.Count; filas++)
            {

                lat = Convert.ToDouble(dataGridView1.Rows[filas].Cells[1].Value);
                lng = Convert.ToDouble(dataGridView1.Rows[filas].Cells[2].Value);
                puntos.Add(new PointLatLng(lat, lng));


            }


            GMapPolygon poligonoPuntos = new GMapPolygon(puntos, "Poligono");
            poligonoPuntos.Fill = new SolidBrush(Color.FromArgb(50, Color.Red));
            poligonoPuntos.Stroke = new Pen(Color.Red, 1);
            poligonoPuntos.IsHitTestVisible = true;

            Poligono.Polygons.Add(poligonoPuntos);
            gMapControl1.Overlays.Add(Poligono);
            Poligono.Markers.Add(new GMarkerCross(new PointLatLng(lat, lng)) { ToolTipText = txtnombreterreno.Text + "\nAgregado por:"+txtusuario.Text + "\nTipo de cultivo:"+txtcultivo.Text + "\nFecha plantado:"+txtfechaplantado.Text + "\nFecha cosecha:"+txtfechacosecha.Text + "\nCantidad:"+txtcantidad.Text + "\nEstado:"+rtxtestado.Text, IsVisible = true, ToolTipMode = MarkerTooltipMode.Always });

            //Actualizar el mapa
            gMapControl1.Zoom = gMapControl1.Zoom + 1;
            gMapControl1.Zoom = gMapControl1.Zoom - 1;


            NoPoligono++;
           // dataGridView1.Rows.Clear();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (gMapControl1.Overlays.Count > 0)
            {
                gMapControl1.Overlays.RemoveAt(0);
                gMapControl1.Refresh();
            }
        }

        private void dataGridView1_CellMouseClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            filaSeleccionada = e.RowIndex; //Seleciona la fila
            //Recuperamos los datos del grid y los asignamos a los textbox

            txtDescripcion.Text = dataGridView1.Rows[filaSeleccionada].Cells[0].Value.ToString();
            txtLati.Text = dataGridView1.Rows[filaSeleccionada].Cells[1].Value.ToString();
            txtLong.Text = dataGridView1.Rows[filaSeleccionada].Cells[2].Value.ToString();

            //Se asignan los valores del grid al marcador
            marker.Position = new PointLatLng(Convert.ToDouble(txtLati.Text), Convert.ToDouble(txtLong.Text));
            //Se posiciona el foco en el punto
            gMapControl1.Position = marker.Position;
        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }
    }
}
