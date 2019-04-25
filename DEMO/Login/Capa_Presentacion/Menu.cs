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
            if (Environment.OSVersion.Version.Major >= 6)
            {
                int enabled = 0; DwmIsCompositionEnabled(ref enabled);
                return (enabled == 1) ? true : false;
            }
            return false;
        }
        protected override void WndProc(ref Message m)
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



        public Menu()
        {
            InitializeComponent();
            m_aeroEnabled = false;

        }



        //METODO PARA ABRIR FORM DENTRO DE PANEL-----------------------------------------------------
        public void AbrirFormEnPanel<Forms>() where Forms : Form, new()
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

        private void CerrarFormEnPanel<Forms>() where Forms:Form,new()
        {
            Form formulario = new Forms();
            formulario = myPanel1.Controls.OfType<Forms>().FirstOrDefault();

            if (!(formulario == null))
            {
               
                formulario.Close();
            }

        }


        private void pictureBox4_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void Menu_Load(object sender, EventArgs e)
        {

            panelDerecho.BackColor = Color.FromArgb(0,0,0,0);

            PrivilegioUsuario();


            //Donde se llama el ImageList y se coloca la imagen en el picturebox.
            picClimaPrimero.Image = Vectores.Images[17];
            picClimaSegundo.Image = Vectores.Images[15];
            picClimaTercero.Image = Vectores.Images[5];
            picClimaCuarto.Image = Vectores.Images[7];
            picClimaQuinto.Image = Vectores.Images[9];
            picClimaActual.Image = Vectores.Images[2];



            //panelContenedor.BackColor = Color.FromArgb(0, 0, 0, 0);
            // myPanel2.BackColor = Color.FromArgb(120, 204, 222, 145);
            //panelContenedor.BackColor = Color.FromArgb(0, 0, 0, 0);
            //  this.ShadowTopleftVisible = true; BUNIFU SHADOW PANEL XDDDD
        }

        bool mnuExpanded = false;
        private void MouseDetect_Elapsed(object sender, System.Timers.ElapsedEventArgs e)
        {

            
           // if (!bunifuTransition1.IsCompleted) return;
            if(myPanel2.ClientRectangle.Contains(PointToClient(Control.MousePosition)))
            {
                if (!mnuExpanded)
                {
                        mnuExpanded = true;
                        myPanel2.Width = 250;
                }
            }
            else
            {
                if(mnuExpanded)
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
            Application.Exit();
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
            if(Program.cargo != "Admin")
            {
                btnConfiguracionGeneral.Enabled = false;
            }
        }

        private void bunifuFlatButton10_Load(object sender, EventArgs e)
        {
            
        }
    }
}
