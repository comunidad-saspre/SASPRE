using System;
using System.Data;
using Capa_Negocio;
using System.Windows.Forms;
using System.IO;
using System.Drawing;
using System.Net.Mail;

namespace Capa_Presentacion
{
    public partial class FromUsuarioABC : Form
    {

        private bool isEditar = false;
        private CN_ABCUsuario _ABCUsuario = new CN_ABCUsuario();
        private int id ;

        public FromUsuarioABC()
        {
            InitializeComponent();
        }

        private void FromUsuarioABC_Load(object sender, EventArgs e)
        {
            Mostrar();
            txtCargo.SelectedIndex = 0;
        }

        private void dgvUsers_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                IsEditar(isEditar = true);

                var fila = dgvUsers.SelectedRows[0];
                txtNombre.Text = fila.Cells[1].Value.ToString();
                txtApellidos.Text = fila.Cells[2].Value.ToString();
                txtContra.Text = fila.Cells[3].Value.ToString();
                txtCargo.Text = fila.Cells[4].Value.ToString();
                txtNick.Text = fila.Cells[5].Value.ToString();

                var correo = fila.Cells[6].Value.ToString();
                txtCorreo.Text = String.IsNullOrEmpty(correo) ? "" : correo;

                id = Convert.ToInt32(fila.Cells[0].Value.ToString());
            }
            catch (Exception a) {

                MessageBox.Show("ADVERTENCIA", "Error en el form usuario", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            try
            {
                if (ValidarCampos() == true)
                {
                    Editar();
                    VaciarCampos();
                    Mostrar();
                }
            }
            catch (Exception a) {

                MessageBox.Show("ADVERTENCIA", "Error al editar usuario", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }
        }

        private bool EsDireccionDeCorreoValida(string correo)
        {
            try
            {
                var c = new MailAddress(correo);

                return true;
            }
            catch (FormatException)
            {
                return false;
            }
        }

        private void Agregar()
        {
            try
            {
                if (!EsDireccionDeCorreoValida(txtCorreo.Text))
                    throw new Exception("InvalidMailAddressException.");
                else
                    _ABCUsuario.RegistrarUsuario(txtNombre.Text, txtApellidos.Text, txtContra.Text, txtCargo.Text,
                    txtNick.Text, txtCorreo.Text);

                MessageBox.Show("Usuario registrado con exito", "Exito", MessageBoxButtons.OK, MessageBoxIcon.Information);

            }
            catch (Exception ex)
            {
                MessageBox.Show("Ha ocurrido un error " + ex.ToString(), "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void Editar()
        {
            try
            {
                if (!EsDireccionDeCorreoValida(txtCorreo.Text))
                    throw new Exception("InvalidMailAddressException.");
                else
                {
                    _ABCUsuario.EditarUsuario(id, txtNombre.Text, txtApellidos.Text,
                    txtContra.Text, txtCargo.Text, txtNick.Text, txtCorreo.Text);

                    IsEditar(isEditar = false);
                }
                MessageBox.Show("Usuario actualizado con exito", "Exito", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Ha ocurrido un error " + ex.ToString(), "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            
        }

        private void Eliminar()
        {
            var selectedRows = dgvUsers.SelectedRows;

            foreach (DataGridViewRow row in selectedRows)
            {
                //MessageBox.Show($"Row: {row.}");
                try
                {
                    _ABCUsuario.EliminarUsuario(row.Cells["NickName"].Value.ToString());
                    MessageBox.Show("Usuario eliminado correctamente", "Exito", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Ha ocurrido un error " + ex.ToString(), "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }

        private void Mostrar()
        {
            try
            {
                CN_ABCUsuario _ABCUsuarioo = new CN_ABCUsuario();
                var tablaUsuarios = _ABCUsuarioo.MostrarUsuarios();
                dgvUsers.DataSource = tablaUsuarios;
            }
            catch (Exception a) {

                MessageBox.Show("ADVERTENCIA", "Error al mostrar usuario", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }
        }

        private void IsEditar(bool isEditar)
        {
            try
            {
                if (isEditar)
                {
                    btnAgregar.Enabled = false;
                    btnEliminar.Enabled = false;
                }
                else
                {
                    btnAgregar.Enabled = true;
                    btnEliminar.Enabled = true;
                }
            }
            catch (Exception a)
            {

                MessageBox.Show("ADVERTENCIA", "Error en el método iseditar usuario", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }
        }

        private bool ValidarCampos()
        {
            var validos = true;
            try
            {
                

                if (!EsCampoValido(txtApellidos)) validos = false;
                if (!EsCampoValido(txtNombre)) validos = false;
                if (!EsCampoValido(txtContra)) validos = false;
                if (!EsCampoValido(txtCorreo)) validos = false;
                if (!EsCampoValido(txtNick)) validos = false;
                //if (!EsCampoValido(txtCargo)) validos = false;
                return validos;
            }
            catch (Exception a) {
                MessageBox.Show("ADVERTENCIA", "Error al validar campos", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return validos;
            }
            
        }

        private bool EsCampoValido(TextBox txtbox)
        {
            if (txtbox.Text == String.Empty)
            {
                return false;
            }
            return true;
        }

        private void VaciarCampos()
        {
            txtNombre.Text = string.Empty;
            txtApellidos.Text = string.Empty;
            txtNick.Text = string.Empty;
            txtContra.Text = string.Empty;
            txtCorreo.Text = string.Empty;
            txtCargo.Text = string.Empty;
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            VaciarCampos();
            if (isEditar) IsEditar(false);
            else IsEditar(true);
        }

        private void btnAgregar_Click(object sender, EventArgs e)
        {
            Agregar();
            VaciarCampos();
            Mostrar();
        }

        private void btnEliminar_Click(object sender, EventArgs e)
        {
            var op = DialogResult.Yes;
            if(MessageBox.Show("¿Esta seguro de eliminar este usuario?","Confirmación",MessageBoxButtons.YesNo,MessageBoxIcon.Question)==op)
            {
                Eliminar();
                VaciarCampos();
                Mostrar();
            }
        }

        private void pbImagen_Click(object sender, EventArgs e)
        {
            try
            {
                var fileDialog = new OpenFileDialog();
                fileDialog.Filter = "Image Files | *.jpg | .JPG | *.jpeg | .JPEG ";
                if (fileDialog.ShowDialog() == DialogResult.OK)
                {
                    pbImagen.BackgroundImage = Image.FromFile(fileDialog.FileName);
                }
            }
            catch(Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void dgvUsers_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void dgvUsers_CellContentClick_1(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }
    }
}
