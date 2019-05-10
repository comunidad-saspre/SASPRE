using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;
using Capa_Negocio;
using MySql.Data.MySqlClient;
using System.Runtime;
using System.Runtime.InteropServices;

namespace Capa_Presentacion
{
    public partial class Login : Form
    {
        Thread th;
        private string rutadirectorio;
        String thisDay = DateTime.Now.ToLongDateString().ToString();
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
        [DllImport("wininet.dll")]
        public extern static bool InternetGetConnectedState(out int Description, int ReservedValue);
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

        public Login()
        {
            InitializeComponent();
            m_aeroEnabled = false;
        }

        //protected override CreateParams CreateParams
        //{
        //    get
        //    {
        //        const int CS_DROPSHADOW = 0x20000;
        //        CreateParams cp = base.CreateParams;
        //        cp.ClassStyle |= CS_DROPSHADOW;
        //        cp.ExStyle |= 0x02000000;   // WS_EX_COMPOSITED   
        //        return cp;
        //    }
        //}

        private void pictureBox4_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void bunifuFlatButton1_Click(object sender, EventArgs e)
        {
            if(ConexionAInternet() == true)
            {
                try
                {
                    rutadirectorio = "C:\\SASPRE_DATOS_ATMOSFERICOS\\datos_CIUDADMANTE_" + thisDay + ".csv";
                    //crear carpeta
                    crear_carpeta();
                    //Guardar informacion
                    getArchivo("https://smn.cna.gob.mx/tools/PHP/sivea/siveaEsri2/php/manejador_descargas_csv_estaciones.php?estacion=CIUDADMANTE&organismo=SMN&variable=temperatura%27&fbclid=IwAR3lT8srywft8Sy7OVAHDQ9_6ePUYm-am6ZzcN-zSsdCOVxGGMy0aa_guDQ");
                    CN_Login _Login = new CN_Login();
                    MySqlDataReader Loguear;
                    Loguear = _Login.IniciarSesion(txtNickname.Text, txtContra.Text);
                    if (Loguear.Read() == true)
                    {
                        Application.Exit();
                        th = new Thread(open);
                        th.SetApartmentState(ApartmentState.STA);
                        th.Start();
                        Program.nickname = txtNickname.Text;
                        Program.contraseña = txtContra.Text;
                        Program.cargo = Loguear["Cargo"].ToString();
                        Program.nombre = Loguear["Nombre"].ToString();
                        Program.apellidos = Loguear["Apellidos"].ToString();
                        Program.correo = Loguear["Correo"].ToString();
                    }
                    else
                    {
                        MessageBox.Show("Usuario o contraseña incorrectos", "Advertencia", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        txtContra.Focus();
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Ha ocurrido un error " + ex.ToString(), "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
            else
            {
                MessageBox.Show("Compruebe su conexión a internet","Error",MessageBoxButtons.OK,MessageBoxIcon.Error);
            }
        }

        public bool ConexionAInternet()
        {
            int Desc;
            if (InternetGetConnectedState(out Desc, 0) == true)
                return true;
            else
                return false;
        }

        private void open()
        {
            Application.Run(new Menu());
        }

        private void Login_Load(object sender, EventArgs e)
        {
            if(ConexionAInternet() == true)
            {
                
            }
            else
            {
                MessageBox.Show("Compruebe su conexión a internet", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

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

        private void txtContra_OnValueChanged(object sender, EventArgs e)
        {
            txtContra.isPassword = true;
        }

        private void linklblcontrasena_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            if(ConexionAInternet() == true)
            {
                Envio_Correo ec = new Envio_Correo();
                ec.ShowDialog();
            }
            else
            {
                MessageBox.Show("Compruebe su conexión a internet", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            
        }
    }
}
