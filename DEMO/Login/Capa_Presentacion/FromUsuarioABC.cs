using System;
using System.Data;
using Capa_Negocio;
using System.Windows.Forms;
using System.IO;
using System.Drawing;

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
        }

        private void dgvUsers_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            IsEditar(isEditar = true);

            var fila = dgvUsers.SelectedRows[0];
            txtNombre.Text = fila.Cells[1].Value.ToString();

            var apellidos = fila.Cells[2].Value.ToString();
            var espacio = apellidos.IndexOf(' ');
            var apellidoMaterno = apellidos.Substring(0, espacio);
            var apellidoPaterno = apellidos.Substring(espacio, apellidos.Length - (apellidoMaterno.Length+1));
            txtAM.Text = apellidoMaterno;
            txtAP.Text = apellidoPaterno;
            txtContra.Text = fila.Cells[3].Value.ToString();
            txtCargo.Text = fila.Cells[4].Value.ToString();
            txtNick.Text = fila.Cells[5].Value.ToString();

            var correo = fila.Cells[6].Value.ToString();
            txtCorreo.Text = String.IsNullOrEmpty(correo) ? "" : correo;

            id = Convert.ToInt32(fila.Cells[0].Value.ToString());

        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            if (ValidarCampos() == true)
            {
                Editar();
                Mostrar();
            }
        }

        private void Agregar()
        {
            try
            {
                _ABCUsuario.RegistrarUsuario(txtNombre.Text, txtAP.Text + " " + txtAM.Text, txtContra.Text, txtCargo.Text,
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
                _ABCUsuario.EditarUsuario(id, txtNombre.Text, txtAM.Text + " " + txtAP.Text,
                txtContra.Text, txtCargo.Text, txtNick.Text, txtCorreo.Text);

                IsEditar(isEditar = false);
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
            var tablaUsuarios = _ABCUsuario.MostrarUsuarios();
            dgvUsers.DataSource = tablaUsuarios;
        }

        private void IsEditar(bool isEditar)
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

        private bool ValidarCampos()
        {
            var validos = true;

            if (!EsCampoValido(txtAM)) validos = false;
            if (!EsCampoValido(txtAP)) validos = false;
            if (!EsCampoValido(txtNombre)) validos = false;
            if (!EsCampoValido(txtContra)) validos = false;
            if (!EsCampoValido(txtCorreo)) validos = false;
            if (!EsCampoValido(txtNick)) validos = false;
            if (!EsCampoValido(txtCargo)) validos = false;

            return validos;
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
            txtAM.Text = string.Empty;
            txtAP.Text = string.Empty;
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
            Mostrar();
        }

        private void btnEliminar_Click(object sender, EventArgs e)
        {
            Eliminar();
            Mostrar();
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
    }
}
