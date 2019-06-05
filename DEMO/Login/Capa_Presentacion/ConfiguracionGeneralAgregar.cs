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
    public partial class ConfiguracionGeneralAgregar : Form
    {
        public ConfiguracionGeneralAgregar()
        {
            InitializeComponent();
        }
        private CN_ABCUsuario _ABCUsuario = new CN_ABCUsuario();
        private void button3_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtNombre.Text.Equals("") || txtAP.Text.Equals("") || txtAM.Text.Equals("") || txtNick.Text.Equals("")
                    || txtContra.Text.Equals("") || txtCargo.Text.Equals("") || txtCorreo.Text.Equals(""))
                {
                    MessageBox.Show("Campos incompletos", "Advertencia", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                else
                {
                    //_ABCUsuario.EliminarUsuario("itzfilisalsa");
                    _ABCUsuario.RegistrarUsuario(txtNombre.Text, txtAP.Text + " " + txtAM.Text, txtContra.Text, txtCargo.Text, txtNick.Text, txtCorreo.Text);
                    MessageBox.Show("Usuario registrado con exito", "Exito", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    txtNombre.Text = "";
                    txtAP.Text = "";
                    txtAM.Text = "";
                    txtNick.Text = "";
                    txtContra.Text = "";
                    txtCargo.Text = "";
                    txtCorreo.Text = "";
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Ha ocurrido un error " + ex.ToString(), "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void panelContenedor_Paint(object sender, PaintEventArgs e)
        {

        }
    }
}
