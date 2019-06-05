using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Capa_Negocio;

namespace Capa_Presentacion
{
    public partial class ConfiguracionGeneral : Form
    {
        public ConfiguracionGeneral()
        {
            InitializeComponent();
            //PanelDerecho.BackColor = Color.FromArgb(0, 0, 0, 0);
        }

        private void AbrirFormEnPanel<Forms>() where Forms : Form, new()
        {
            try
            {
                Form formulario;
                formulario = panelContenedor.Controls.OfType<Forms>().FirstOrDefault();

                //si el formulario/instancia no existe, creamos nueva instancia y mostramos
                if (formulario == null)
                {
                    formulario = new Forms();
                    formulario.TopLevel = false;
                    formulario.FormBorderStyle = FormBorderStyle.None;
                    formulario.Dock = DockStyle.Fill;
                    panelContenedor.Controls.Add(formulario);
                    panelContenedor.Tag = formulario;
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
            catch (Exception a) { MessageBox.Show("ADVERTENCIA", "ERROR EN CONFIGURACION GENERAL", MessageBoxButtons.OK, MessageBoxIcon.Exclamation); }
        }

        private void CerrarFormEnPanel<Forms>() where Forms : Form, new()
        {
            Form formulario = new Forms();
            formulario = panelContenedor.Controls.OfType<Forms>().FirstOrDefault();

            if (!(formulario == null))
            {

                formulario.Close();
            }

        }

        private void button3_Click(object sender, EventArgs e)
        {
            AbrirFormEnPanel<ConfiguracionGeneralAgregar>();
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            var dialog = new DialogoEditarInformacion();
            dialog.Show();
        }

        private void ConfiguracionGeneral_Load(object sender, EventArgs e)
        {
            MostrarUsuarios();
        }
        public void MostrarUsuarios()
        {
            CN_ABCUsuario _ABCUsuario = new CN_ABCUsuario();
            dvgUsuarios.DataSource = _ABCUsuario.MostrarUsuarios();
        }
    }
}
