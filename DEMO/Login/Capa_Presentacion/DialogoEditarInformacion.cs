using System;
using System.Drawing;
using System.Windows.Forms;
using Capa_Negocio;

namespace Capa_Presentacion
{
    public partial class DialogoEditarInformacion : Form
    {
        public DialogoEditarInformacion()
        {
            InitializeComponent();
        }

        // Se encargará de los clicks en cualquier textbox.
        private void textboxes_Click(Object s, EventArgs e)
        {
            try
            {
                var txtSeleccionado = s as TextBox;

                if (txtSeleccionado.Text.Equals(txtSeleccionado.Tag.ToString()))
                {
                    if (txtSeleccionado.Tag.Equals("Contraseña"))
                    {
                        txtSeleccionado.UseSystemPasswordChar = true;
                    }
                    txtSeleccionado.Text = String.Empty;
                    txtSeleccionado.ForeColor = Color.Black;

                }
            }
            catch (Exception a)
            {
                MessageBox.Show("Ha ocurrido un error " + a.Message, "Advertencia", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }

        }
        
        private void textboxes_Leave(object s, EventArgs e)
        {
            try
            {
                var txtSeleccionado = s as TextBox;

                if (txtSeleccionado.Text.Equals(String.Empty))
                {

                    if (txtSeleccionado.Tag.Equals("Contraseña"))
                    {
                        txtSeleccionado.UseSystemPasswordChar = false;
                    }

                    txtSeleccionado.Text = txtSeleccionado.Tag.ToString();
                    txtSeleccionado.ForeColor = Color.DimGray;
                }
            }
            catch (Exception a)
            {
                MessageBox.Show("Ha ocurrido un error " + a.Message, "Advertencia", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }
        }

        private CN_ABCUsuario _ABCUsuario = new CN_ABCUsuario();
        
        private void btnGuardar_Click(object sender, EventArgs e)
        {
            /*try
            {
                _ABCUsuario.RegistrarUsuario(txtNombre.Text, txtAP.Text + " " + txtAM.Text, txtContra.Text, txtCargo.Text, txtNick.Text, txtCorreo.Text);
                MessageBox.Show("Usuario registrado con exito", "Exito", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Ha ocurrido un error " + ex.ToString(), "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }*/
        }

        private void btnBuscarUsuario_Click(object sender, EventArgs e)
        {
            if (!txtNickname.Text.Equals(String.Empty))
            {
                // Temporal, en lugar de esto, mostrar una lista de los usuarios existentes
                // para poder seleccionarlo, y toda su info se pondrá en los txtboxes.
                // Luego ya podrá editar.
                MessageBox.Show("Cuadro con la lista de los usuarios para seleccionar alguno");
            }
        }

        private void DialogoEditarInformacion_Load(object sender, EventArgs e)
        {

        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {

        }
    }
}
