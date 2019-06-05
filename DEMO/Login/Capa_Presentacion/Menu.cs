using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Net.Http;
using System.IO.Compression;
using System.IO;
using Newtonsoft.Json;
using System.Net;
using System.Globalization;
using Capa_Negocio;

namespace Capa_Presentacion
{
    public partial class Menu : Form
    {

        private bool Drag;
        private int MouseX;
        private int MouseY;

        private const int WM_NCHITTEST = 0x84;
        private const int HTCLIENT = 0x1;
        private const int HTCAPTION = 0x2;

        private bool m_aeroEnabled;

        private const int CS_DROPSHADOW = 0x00020000;
        private const int WM_NCPAINT = 0x0085;
        private const int WM_ACTIVATEAPP = 0x001C;

        Label[] labelsDia, labelsFecha;

        private const String MON = "Monday";
        private const String TUE = "Tuesday";
        private const String WED = "Wednesday";
        private const String THU = "Thursday";
        private const String FRI = "Friday";
        private const String SAT = "Saturday";
        private const String SUN = "Sunday";

        private const String LUN = "Lunes";
        private const String MAR = "Martes";
        private const String MIE = "Miercoles";
        private const String JUE = "Jueves";
        private const String VIE = "Viernes";
        private const String SAB = "Sabado";
        private const String DOM = "Domingo";


        [System.Runtime.InteropServices.DllImport("dwmapi.dll")]
        public static extern int DwmExtendFrameIntoClientArea(IntPtr hWnd, ref MARGINS pMarInset);
        [System.Runtime.InteropServices.DllImport("dwmapi.dll")]
        public static extern int DwmSetWindowAttribute(IntPtr hwnd, int attr, ref int attrValue, int attrSize);
        [System.Runtime.InteropServices.DllImport("dwmapi.dll")]

        public static extern int DwmIsCompositionEnabled(ref int pfEnabled);
        [System.Runtime.InteropServices.DllImport("Gdi32.dll", EntryPoint = "CreateRoundRectRgn")]
        private static extern IntPtr CreateRoundRectRgn(
            int nLeftRect,
            int nTopRect,
            int nRightRect,
            int nBottomRect,
            int nWidthEllipse,
            int nHeightEllipse
            );

        public struct MARGINS
        {
            public int leftWidth;
            public int rightWidth;
            public int topHeight;
            public int bottomHeight;
        }
        protected override CreateParams CreateParams
        {
            get
            {
                m_aeroEnabled = CheckAeroEnabled();
                CreateParams cp = base.CreateParams;
                if (!m_aeroEnabled)
                    cp.ExStyle |= 0x02000000;
                cp.ClassStyle |= CS_DROPSHADOW; return cp;
            }
        }
        private bool CheckAeroEnabled()
        {
            try
            {
                if (Environment.OSVersion.Version.Major >= 6)
                {
                    int enabled = 0; DwmIsCompositionEnabled(ref enabled);
                    return (enabled == 1) ? true : false;
                }
            }
            catch (Exception ) {
                MessageBox.Show("ADVERTENCIA", "ERROR EN EL MENU", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }
            return false;
        }
        protected override void WndProc(ref Message m)
        {
            try
            {
                switch (m.Msg)
                {
                    case WM_NCPAINT:
                        if (m_aeroEnabled)
                        {
                            var v = 2;
                            DwmSetWindowAttribute(this.Handle, 2, ref v, 4);
                            MARGINS margins = new MARGINS()
                            {
                                bottomHeight = 1,
                                leftWidth = 0,
                                rightWidth = 0,
                                topHeight = 0
                            }; DwmExtendFrameIntoClientArea(this.Handle, ref margins);
                        }
                        break;
                    default: break;
                }
                base.WndProc(ref m);
                if (m.Msg == WM_NCHITTEST && (int)m.Result == HTCLIENT) m.Result = (IntPtr)HTCAPTION;
            }
            catch (Exception a)
            {
                MessageBox.Show("ADVERTENCIA", "ERROR EN EL MENU", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }
        }
        private void PanelMove_MouseDown(object sender, MouseEventArgs e)
        {
            Drag = true;
            MouseX = Cursor.Position.X - this.Left;
            MouseY = Cursor.Position.Y - this.Top;
        }
        private void PanelMove_MouseMove(object sender, MouseEventArgs e)
        {
            if (Drag)
            {
                this.Top = Cursor.Position.Y - MouseY;
                this.Left = Cursor.Position.X - MouseX;
            }
        }
        private void PanelMove_MouseUp(object sender, MouseEventArgs e) { Drag = false; }


        DateTime fecha_hora;
        public Menu()
        {
            InitializeComponent();
            m_aeroEnabled = false;
            fecha_hora = DateTime.Now;
            labelsDia = new Label[] { labelDiaHoyNombre, labelDia1, labelDia2, labelDia3, labelDia4 };
            labelsFecha = new Label[] { labelHoy, labelFecha1, labelFecha2, labelFecha3, labelFecha4 };
        }

        //METODO PARA ABRIR FORM DENTRO DE PANEL-----------------------------------------------------
        public void AbrirFormEnPanel<Forms>() where Forms : Form, new()
        {
            try
            {
                Form formulario;
                formulario = myPanel1.Controls.OfType<Forms>().FirstOrDefault();

                //si el formulario/instancia no existe, creamos nueva instancia y mostramos
                if (formulario == null)
                {
                    formulario = new Forms();
                    formulario.TopLevel = false;
                    formulario.FormBorderStyle = FormBorderStyle.None;
                    formulario.Dock = DockStyle.Fill;
                    myPanel1.Controls.Add(formulario);
                    myPanel1.Tag = formulario;
                    formulario.Show();
                    formulario.BringToFront();
                    formulario.Opacity = .5;
                    //  formulario.FormClosed += new FormClosedEventHandler(CloseForms);
                }
                else
                {

                    //si la Formulario/instancia existe, lo traemos a frente
                    formulario.BringToFront();

                    //Si la instancia esta minimizada mostramos
                    if (formulario.WindowState == FormWindowState.Minimized)
                    {
                        formulario.WindowState = FormWindowState.Normal;
                    }

                }
            }
            catch (Exception a)
            {
                MessageBox.Show("ADVERTENCIA", "ERROR AL ABRIR FORM", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }
        }

        private void CerrarFormEnPanel<Forms>() where Forms : Form, new()
        {
            try
            {
                Form formulario = new Forms();
                formulario = myPanel1.Controls.OfType<Forms>().FirstOrDefault();

                if (!(formulario == null))
                {

                    formulario.Close();
                }
            }
            catch (Exception a)
            {
                MessageBox.Show("ADVERTENCIA", "ERROR AL CERRAR PANEL", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }

        }
        private void pictureBox4_Click(object sender, EventArgs e)
        {
            try
            {
                Application.Exit();
            }
            catch (Exception ex)
            {

            }
        }

        private void Menu_Load(object sender, EventArgs e)
        {
            try
            {

                panelDerecho.BackColor = Color.FromArgb(0, 0, 0, 0);

                PrivilegioUsuario();
                //GetRequestHora();
                //GetRequestDia();
                labelFechaCompletaHoy.Text = DateTime.Now.ToLongDateString();
                // Hago el ciclo para agregar hasta 7 días
                for (int i = 1; i <= 5; i++)
                {
                    // Este metodo solo pone en los labels el día que está en fecha_hora
                    SetDateTime(labelsDia[i - 1], fecha_hora);
                    PonerFechas(labelsFecha[i - 1], fecha_hora);
                    // Cambia el DateTime fecha_hora a un día después.
                    fecha_hora = fecha_hora.AddDays(1);
                }
                MostrarInformacionClima();
            }
            catch (Exception ex)
            {

            }
        }
        private void MostrarInformacionClima()
        {
            MostrarTemperaturaMaxima();
            MostrarTemperaturaMinima();
            MostrarPrecipitaciones();
            MostrarDescripcionDia();
        }

        private void MostrarTemperaturaMaxima()
        {
            var maxTemperature = ScrapperCN.GetMaxTemperature();

            labelHoyMax.Text = maxTemperature["dia1"] + "°C";
            labelMax1.Text = maxTemperature["dia2"] + "°C";
            labelMax2.Text = maxTemperature["dia3"] + "°C";
            labelMax3.Text = maxTemperature["dia4"] + "°C";
            labelMax4.Text = maxTemperature["dia5"] + "°C";
        }

        private void MostrarTemperaturaMinima()
        {
            var minTemperature = ScrapperCN.GetMinTemperature();

            labelHoyMin.Text = minTemperature["dia1"] + "°C";
            labelMin1.Text = minTemperature["dia2"] + "°C";
            labelMin2.Text = minTemperature["dia3"] + "°C";
            labelMin3.Text = minTemperature["dia4"] + "°C";
            labelMin4.Text = minTemperature["dia5"] + "°C";
        }

        private void MostrarPrecipitaciones()
        {
            labelPrecipitacionHoy.Text = GetPrecipitationDayString(1);
            labelPrecipitacion1.Text = GetPrecipitationDayString(2);
            labelPrecipitacion2.Text = GetPrecipitationDayString(3);
            labelPrecipitacion3.Text = GetPrecipitationDayString(4);
            labelPrecipitacion4.Text = GetPrecipitationDayString(5);
        }

        private string GetPrecipitationDayString(int day)
        {
            string result = "";
            var gap = "   ";

            var precipitationsInformation = ScrapperCN.GetPrecipitation();

            var precipitationDay = precipitationsInformation[$"dia{day}"];

            if (precipitationDay.Contains('%'))
            {
                var precipitationDayInformation = precipitationDay.Split(' ');

                var precipitationPercentageDay = precipitationDayInformation[0];
                var precipitationMmDay = precipitationDayInformation[1];

                result += gap + precipitationPercentageDay + "\n\r" + precipitationMmDay + " mm";

                return result;
            }

            result += precipitationDay;

            return result;
        }

        private void MostrarDescripcionDia()
        {
            var descriptions = ScrapperCN.GetDescription();

            this.picClimaHoy.Image = vectorClima(descriptions["dia1"], 0);
            this.picClima1.Image = vectorClima(descriptions["dia2"], 0);
            this.picClima2.Image = vectorClima(descriptions["dia3"], 0);
            this.picClima3.Image = vectorClima(descriptions["dia4"], 0);
            this.picClima4.Image = vectorClima(descriptions["dia5"], 0);

        }

        private void PonerFechas(Label lbl, DateTime datetime)
        {
            try
            {
                lbl.Text = datetime.ToString("M");
            }
            catch (Exception a)
            {
                MessageBox.Show("ADVERTENCIA", "ERROR AL PONER FECHAS", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }
        }
        private void SetDateTime(Label lbl, DateTime datetime)
        {
            try
            {
                lbl.Text = TranslateDay(datetime.DayOfWeek.ToString());
                //lbl.Text = "Fecha: " + datetime.ToShortDateString() + ", Hora: " + datetime.ToLongTimeString();
            }
            catch (Exception a)
            {
                MessageBox.Show("ADVERTENCIA", "ERROR EN EL SETDATETIME", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }
        }
        private String TranslateDay(String day)
        {
            try
            {

                if (day.Equals(MON)) return LUN;
                if (day.Equals(TUE)) return MAR;
                if (day.Equals(WED)) return MIE;
                if (day.Equals(THU)) return JUE;
                if (day.Equals(FRI)) return VIE;
                if (day.Equals(SAT)) return SAB;
                if (day.Equals(SUN)) return DOM;
                if (day.Equals(MON)) return LUN;
                if (day.Equals(MON)) return LUN;
            }
            catch (Exception a) {
                MessageBox.Show("ADVERTENCIA", "ERROR AL TRADUCIR DIA", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }
            return $"{day} NOT A DAY";

        }

        bool mnuExpanded = false;
        private void MouseDetect_Elapsed(object sender, System.Timers.ElapsedEventArgs e)
        {


            // if (!bunifuTransition1.IsCompleted) return;
            if (myPanel2.ClientRectangle.Contains(PointToClient(Control.MousePosition)))
            {
                if (!mnuExpanded)
                {
                    mnuExpanded = true;
                    myPanel2.Width = 250;
                }
            }
            else
            {
                if (mnuExpanded)
                {
                    mnuExpanded = false;
                    //   myPanel2.Visible = false;
                    myPanel2.Width = 45;
                    myPanel2.Visible = true;
                    // bunifuTransition1.ShowSync(myPanel2);
                }
            }
        }
        private void pictureBox1_Click(object sender, EventArgs e)
        {
            try
            {
                Application.Exit();
            }
            catch (Exception ex)
            {

            }

        }

        Thread th;
        private void bunifuFlatButton3_Click(object sender, EventArgs e)
        {

        }
        private void bunifuFlatButton5_Click(object sender, EventArgs e)
        {
            AbrirFormEnPanel<HistorialDePlagas>();
            panelClima.Visible = false;
            lblTemp.Visible = true;
            lblCentigrados.Visible = true;
            lblHumedad.Visible = true;
            lblEstado.Visible = true;
            lblPrecipitacion.Visible = true;
            lblPrecipitacionmm.Visible = true;
        }
        private void bunifuFlatButton6_Click(object sender, EventArgs e)
        {
            AbrirFormEnPanel<EstadisticasDePlagas>();
            panelClima.Visible = false;
            lblTemp.Visible = true;
            lblCentigrados.Visible = true;
            lblHumedad.Visible = true;
            lblEstado.Visible = true;
            lblPrecipitacion.Visible = true;
            lblPrecipitacionmm.Visible = true;
        }
        private void bunifuFlatButton7_Click(object sender, EventArgs e)
        {
            AbrirFormEnPanel<AdministrarCultivos2>();
            panelClima.Visible = false;
            lblTemp.Visible = true;
            lblCentigrados.Visible = true;
            lblHumedad.Visible = true;
            lblEstado.Visible = true;
            lblPrecipitacion.Visible = true;
            lblPrecipitacionmm.Visible = true;
        }
        private void bunifuFlatButton8_Click(object sender, EventArgs e)
        {
            AbrirFormEnPanel<GenerarReportes>();
            lblTemp.Visible = true;
            panelClima.Visible = false;
            lblCentigrados.Visible = true;
            lblHumedad.Visible = true;
            lblEstado.Visible = true;
            lblPrecipitacion.Visible = true;
            lblPrecipitacionmm.Visible = true;
        }
        private void bunifuFlatButton10_Click(object sender, EventArgs e)
        {
            AbrirFormEnPanel<ConfiguracionGeneral>();
            lblTemp.Visible = true;
            panelClima.Visible = false;
            lblCentigrados.Visible = true;
            lblHumedad.Visible = true;
            lblEstado.Visible = true;
            lblPrecipitacion.Visible = true;
            lblPrecipitacionmm.Visible = true;
        }
        private void panelDerecho_Paint(object sender, PaintEventArgs e)
        {

        }
        private void lblEstado_Click(object sender, EventArgs e)
        {

        }
        private void bunifuFlatButton4_Click(object sender, EventArgs e)
        {
            CerrarFormEnPanel<AdministrarCultivos2>();
            CerrarFormEnPanel<ConfiguracionGeneral>();
            CerrarFormEnPanel<EstadisticasDePlagas>();
            CerrarFormEnPanel<GenerarReportes>();
            CerrarFormEnPanel<HistorialDePlagas>();
            CerrarFormEnPanel<AdministrarCultivos>();
            CerrarFormEnPanel<AdministrarCultivosEditar>();
            CerrarFormEnPanel<ConfiguracionGeneralAgregar>();

            panelClima.Visible = true;
            lblTemp.Visible = false;
            lblCentigrados.Visible = false;
            lblHumedad.Visible = false;
            lblEstado.Visible = false;
            lblPrecipitacion.Visible = false;
            lblPrecipitacionmm.Visible = false;
        }
        private void myPanel1_Paint(object sender, PaintEventArgs e)
        {

        }
        private void PrivilegioUsuario()
        {
            if (Program.cargo != "Admin")
            {
                btnConfiguracionGeneral.Enabled = false;
            }
        }
        private void bunifuFlatButton10_Load(object sender, EventArgs e)
        {

        }
        async void GetRequestHora()
        {
            try
            {
                Cursor = Cursors.WaitCursor;
                String url = "https://smn.cna.gob.mx/webservices/index.php?method=3";
                using (HttpClient client = new HttpClient())
                using (HttpResponseMessage response = await client.GetAsync(url)) //obtener una variable con la info del url
                using (var content = await response.Content.ReadAsStreamAsync()) //obtener la info del archivo
                using (var descomprimido = new GZipStream(content, CompressionMode.Decompress)) //descomprimir el archivo
                {
                    if (response.IsSuccessStatusCode)
                    {
                        StreamReader reader = new StreamReader(descomprimido);
                        String data = reader.ReadLine();
                        var listInfo = JsonConvert.DeserializeObject<List<Ciudad>>(data);
                        foreach (var info in listInfo)
                        {
                            if (info.CityId.Equals("MXTS2043") && info.HourNumber == 0)
                            {
                                labelClimaHoy.Text = info.TempC.ToString() + "° C";
                            }
                        }
                    }
                }
                Cursor = Cursors.Default;
            }
            catch (Exception a)
            {
                MessageBox.Show("ADVERTENCIA", "ERROR OBTENER HORA", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }
        }


        async void GetRequestDia()
        {
            try
            {
                Cursor = Cursors.WaitCursor;
                String url = "https://smn.cna.gob.mx/webservices/index.php?method=1";
                using (HttpClient client = new HttpClient())
                using (HttpResponseMessage response = await client.GetAsync(url)) //obtener una variable con la info del url
                using (var content = await response.Content.ReadAsStreamAsync()) //obtener la info del archivo
                using (var descomprimido = new GZipStream(content, CompressionMode.Decompress)) //descomprimir el archivo
                {
                    if (response.IsSuccessStatusCode)
                    {
                        StreamReader reader = new StreamReader(descomprimido);
                        String data = reader.ReadLine();
                        var listInfo = JsonConvert.DeserializeObject<List<CiudadDia>>(data);
                        var iteracion = 0;
                        var diasSiguientes = false;
                        foreach (var info in listInfo)
                        {
                            if (info.CityId.Equals("MXTS2043") && DateTime.ParseExact(info.LocalValidDate.Substring(0, 8), "yyyyMMdd", CultureInfo.InvariantCulture).ToLongDateString().Equals(DateTime.Now.ToLongDateString()))
                            {
                                if (iteracion == 0)
                                {
                                    labelFechaCompletaHoy.Text = DateTime.ParseExact(info.LocalValidDate.Substring(0, 8), "yyyyMMdd", CultureInfo.InvariantCulture).ToLongDateString();
                                    labelHoy.Text = DateTime.Now.ToString("m");
                                    labelHoyMax.Text = info.HiTempC + "°";
                                    labelHoyMin.Text = info.LowTempC + "°";
                                    labelHoyPrecipitacion.Text = info.ProbabilityOfPrecip + "%";
                                    picClimaHoy.Image = vectorClima(info.SkyText, 0);
                                    iteracion++;
                                    diasSiguientes = true;
                                }
                            }
                            else if (info.CityId.Equals("MXTS2043") && diasSiguientes == true)
                            {
                                if (iteracion == 1)
                                {
                                    labelFecha1.Text = DateTime.Now.ToString("m");
                                    labelFecha1Max.Text = info.HiTempC + "°";
                                    labelFecha1Min.Text = info.LowTempC + "°";
                                    labelFecha1Precipitacion.Text = info.ProbabilityOfPrecip + "%";
                                    picClima1.Image = vectorClima(info.SkyText, 0);
                                    iteracion++;
                                }
                                else if (iteracion == 2)
                                {
                                    labelFecha2.Text = DateTime.Now.ToString("m");
                                    labelFecha2Max.Text = info.HiTempC + "°";
                                    labelFecha2Min.Text = info.LowTempC + "°";
                                    labelFecha2Precipitacion.Text = info.ProbabilityOfPrecip + "%";
                                    picClima2.Image = vectorClima(info.SkyText, 0);
                                    iteracion++;
                                }
                                else if (iteracion == 3)
                                {
                                    labelFecha3.Text = DateTime.Now.ToString("m");
                                    labelMax3.Text = info.HiTempC + "°";
                                    labelMin3.Text = info.LowTempC + "°";
                                    labelPrecipitacion3.Text = info.ProbabilityOfPrecip + "%";
                                    picClima3.Image = vectorClima(info.SkyText, 0);
                                    iteracion++;
                                }
                                else if (iteracion == 4)
                                {
                                    labelFecha4.Text = DateTime.Now.ToString("m");
                                    labelFecha4Max.Text = info.HiTempC + "°";
                                    labelFecha4Min.Text = info.LowTempC + "°";
                                    labelFecha4Precipitacion.Text = info.ProbabilityOfPrecip + "%";
                                    picClima4.Image = vectorClima(info.SkyText, 0);
                                    iteracion++;
                                    break;
                                }
                            }
                        }
                    }
                }
            }
            catch (Exception a) {
                MessageBox.Show("ADVERTENCIA", "ERROR AL OBTENER DIA", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }
        }


        private void ObtenerDias ()
        {


        }
        private void timerClima_Tick(object sender, EventArgs e)
        {
            if (Convert.ToInt32(DateTime.Now.Minute.ToString()) == 0 && Convert.ToInt32(DateTime.Now.Second.ToString()) == 0)
            {
                //GetRequestHora();
            }
        }

        public Image vectorClima (String texto, int panel)
        {
            try
            {
                if (texto.Equals("Nublado") && panel == 0)
                {
                    return Vectores.Images[11];
                }
                else if (texto.Equals("Parcialmente nublado / Viento") && panel == 0)
                {
                    return Vectores.Images[15];
                }
                else if (texto.Equals("Parcialmente nublado") && panel == 0)
                {
                    return Vectores.Images[15];
                }
                else if (texto.Equals("Aguaceros en la mañana") && panel == 0)
                {
                    return Vectores.Images[2];
                }
                else if (texto.Equals("Soleado") && panel == 0)
                {
                    return Vectores.Images[17];
                }
                else if (texto.Equals("Nubes por la mañana / Sol por la tarde") && panel == 0)
                {
                    return Vectores.Images[15];
                }
                else if (texto.Equals("Lluvia en la mañana") && panel == 0)
                {
                    return Vectores.Images[2];
                }
                else if (texto.Equals("Mayormente soleado / Viento") && panel == 0)
                {
                    return Vectores.Images[17];
                }
                else if (texto.Equals("Tormentas por la tarde") && panel == 0)
                {
                    return Vectores.Images[2];
                }
                else if (texto.Equals("Tormentas aisladas") && panel == 0)
                {
                    return Vectores.Images[2];
                }
                else if (texto.Equals("Tormentas dispersas") && panel == 0)
                {
                    return Vectores.Images[2];
                }
                else if (texto.Equals("Tormentas") && panel == 0)
                {
                    return Vectores.Images[2];
                }
                else if (texto.Equals("Tormentas en la mañana") && panel == 0)
                {
                    return Vectores.Images[2];
                }
                else if (texto.Equals("Aguaceros por la tarde") && panel == 0)
                {
                    return Vectores.Images[2];
                }
                else if (texto.Equals("Aguaceros") && panel == 0)
                {
                    return Vectores.Images[2];
                }
                else if (texto.Equals("Algunos aguaceros") && panel == 0)
                {
                    return Vectores.Images[2];
                }
                else if (texto.Equals("Lluvia débil por la tarde") && panel == 0)
                {
                    return Vectores.Images[2];
                }
                else if (texto.Equals("Lluvia por la tarde") && panel == 0)
                {
                    return Vectores.Images[2];
                }
                else if (texto.Equals("Aguaceros y tormentas por la tarde") && panel == 0)
                {
                    return Vectores.Images[2];
                }
                else if (texto.Equals("Soleado / Viento") && panel == 0)
                {
                    return Vectores.Images[17];
                }
                else if (texto.Equals("Aguaceros y tormentas") && panel == 0)
                {
                    return Vectores.Images[2];
                }
                else if (texto.Equals("Lluvia") && panel == 0)
                {
                    return Vectores.Images[2];
                }
                else if (texto.Equals("Nublado / Viento") && panel == 0)
                {
                    return Vectores.Images[11];
                }
                else if (texto.Equals("Mayormente nublado/ Viento") && panel == 0)
                {
                    return Vectores.Images[11];
                }
                else if (texto.Equals("Nubes por la mañana / Sol por la tarde / Viento") && panel == 0)
                {
                    return Vectores.Images[15];
                }
                else if (texto.Equals("Tormentas aisladas / Viento") && panel == 0)
                {
                    return Vectores.Images[2];
                }
                else
                {
                    return null;
                }
            }
            catch (Exception a) {

                MessageBox.Show("ADVERTENCIA", "ERROR en el vector clima", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return null;
            } 
/*         
Nublado
Parcialmente nublado / Viento
Parcialmente nublado
Aguaceros en la mañana
Soleado
Nubes por la mañana / Sol por la tarde
Lluvia en la mañana
Mayormente soleado / Viento
Tormentas por la tarde
Tormentas aisladas
Tormentas dispersas
Tormentas
Tormentas en la mañana
Aguaceros por la tarde
Aguaceros
Algunos aguaceros
Lluvia débil por la tarde
Lluvia por la tarde
Aguaceros y tormentas por la tarde
Soleado / Viento
Aguaceros y tormentas
Lluvia
Nublado / Viento
Mayormente nublado/ Viento
Nubes por la mañana / Sol por la tarde / Viento
Tormentas aisladas / Viento
*/
        }
        private void btnAdministrarUsuarios_Click(object sender, EventArgs e)
        {
            try
            {
                AbrirFormEnPanel<FromUsuarioABC>();
                lblTemp.Visible = true;
                panelClima.Visible = false;
                lblCentigrados.Visible = true;
                lblHumedad.Visible = true;
                lblEstado.Visible = true;
                lblPrecipitacion.Visible = true;
                lblPrecipitacionmm.Visible = true;
            }
            catch (Exception a)
            {

                MessageBox.Show("ADVERTENCIA", "ERROR AL ADMINISTRAR USUARIOS", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }
        }

        private void pictureBox2_Click(object sender, EventArgs e)
        {
            WindowState = FormWindowState.Minimized;
        }
        private void bunifuFlatButton1_Click(object sender, EventArgs e)
        {
            Datos_Atmosfericos datos = new Datos_Atmosfericos();
            datos.Visible = true;

        }
    }
}
