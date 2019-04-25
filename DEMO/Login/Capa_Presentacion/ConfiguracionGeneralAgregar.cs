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
                //_ABCUsuario.EliminarUsuario("itzfilisalsa");
                _ABCUsuario.RegistrarUsuario(txtNombre.Text, txtAP.Text + " " + txtA.Text, txtContra.Text, txtCargo.Text, txtNick.Text, txtCorreo.Text);
                MessageBox.Show("Usuario registrado con exito", "Exito", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Ha ocurrido un error " + ex.ToString(), "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
    }
}
