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
    public partial class Almacen : Form
    {
        public Almacen()
        {
            InitializeComponent();
        }
        CN_Almacen _CN_Almacen = new CN_Almacen();
        private void CbTipoObjeto_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cbTipoObjeto.SelectedItem.Equals("Cultivo"))
            {
                cbNombre.Items.Clear();
                cbNombre.DropDownStyle = ComboBoxStyle.DropDownList;
                cbNombre.Items.Add("Maíz");
                cbNombre.Items.Add("Caña");
                cbNombre.Items.Add("Sorgo");
                cbNombre.Items.Add("Soya");
                cbNombre.Items.Add("Cebolla");
                cbNombre.SelectedIndex = 0;
                cbTipoSiembra.Enabled = true;
                labelCantidad.Text = "Cantidad (kg)";
            }
            else if (cbTipoObjeto.SelectedItem.Equals("Fertilizante"))
            {
                cbNombre.Items.Clear();
                cbNombre.DropDownStyle = ComboBoxStyle.Simple;
                cbTipoSiembra.Enabled = false;
                cbTipoSiembra.Text = "";
                labelCantidad.Text = "Cantidad (kg)";
            }
            else
            {
                cbNombre.Items.Clear();
                cbNombre.DropDownStyle = ComboBoxStyle.Simple;
                cbTipoSiembra.Enabled = false;
                cbTipoSiembra.Text = "";
                labelCantidad.Text = "Cantidad";
            }
        }

        private void BtnAgregar_Click(object sender, EventArgs e)
        {
            if ((cbTipoObjeto.Text.Equals("Cultivo") && cbTipoSiembra.Text != "" && txtCantidad.Text != "" && txtPrecio.Text != "")
                || ((cbTipoObjeto.Text.Equals("Fertilizante") || cbTipoObjeto.Text.Equals("Otro")) && cbNombre.Text != "" && txtCantidad.Text != "" && txtPrecio.Text != ""))
            {
                _CN_Almacen.AgregarAlmacen(cbTipoObjeto.Text, cbNombre.Text, txtCantidad.Text, cbTipoSiembra.Text, txtPrecio.Text, dtpFechaAgregado.Value.ToString("yy-MM-dd"), Program.nickname);
                MostrarAlmacen();
                limpiarCampos();
            }
            else
            {
                MessageBox.Show("Debe tener todos los campos llenos", "Campos vacios", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            _CN_Almacen.EditarAlmacen(dgvAlmacen.CurrentRow.Cells["IDAlmacen"].Value.ToString(), cbTipoObjeto.Text, cbNombre.Text, txtCantidad.Text, cbTipoSiembra.Text, txtPrecio.Text, dtpFechaAgregado.Value.ToString("yy-MM-dd"));
            btnAgregar.Enabled = true;
            btnEditar.Enabled = false;
            btnCancelar.Enabled = false;
            btnEliminar.Enabled = false;
            cbTipoObjeto.SelectedIndex = 0;
            limpiarCampos();
            MostrarAlmacen();
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            btnAgregar.Enabled = true;
            btnEditar.Enabled = false;
            btnCancelar.Enabled = false;
            btnEliminar.Enabled = false;
            cbTipoObjeto.SelectedIndex = 0;
            limpiarCampos();
            MostrarAlmacen();
        }

        private void MostrarAlmacen()
        {
            CN_Almacen _CN_Almacen = new CN_Almacen();
            dgvAlmacen.DataSource = _CN_Almacen.MostrarAlmacen(Program.cargo, Program.nickname);
            if (Program.cargo != "Admin")
            {
                dgvAlmacen.Columns["usuarioAlmacen"].Visible = false;
            }
        }

        private void Almacen_Load(object sender, EventArgs e)
        {
            cbTipoObjeto.SelectedIndex = 0;
            cbNombre.SelectedIndex = 0;
            MostrarAlmacen();
        }

        private void editarAlmacen()
        {
            cbTipoObjeto.Text = dgvAlmacen.CurrentRow.Cells["tipoObjeto"].Value.ToString();
            cbNombre.Text = dgvAlmacen.CurrentRow.Cells["nombreObjeto"].Value.ToString();
            cbTipoSiembra.Text = dgvAlmacen.CurrentRow.Cells["tipoSiembra"].Value.ToString();
            txtPrecio.Text = dgvAlmacen.CurrentRow.Cells["Precio"].Value.ToString();
            txtCantidad.Text = dgvAlmacen.CurrentRow.Cells["cantidadObjeto"].Value.ToString();
            dtpFechaAgregado.Value = Convert.ToDateTime(dgvAlmacen.CurrentRow.Cells["fechaIngreso"].Value.ToString());
        }

        private void dgvAlmacen_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            btnEditar.Enabled = true;
            btnCancelar.Enabled = true;
            btnEliminar.Enabled = true;
            editarAlmacen();
            btnAgregar.Enabled = false;
        }

        private void limpiarCampos()
        {
            cbTipoObjeto.SelectedIndex = 0;
            cbNombre.SelectedIndex = 0;
            cbTipoSiembra.Text = "";
            txtPrecio.Clear();
            txtCantidad.Clear();
            dtpFechaAgregado.Value = DateTime.Now;
        }

        private void BtnEliminar_Click(object sender, EventArgs e)
        {
            var op = DialogResult.Yes;
            if (MessageBox.Show("¿Esta seguro de eliminar este elemento del almacén?", "Confirmación", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == op)
            {
                _CN_Almacen.BorrarAlmacen(dgvAlmacen.CurrentRow.Cells["IDAlmacen"].Value.ToString());
                btnAgregar.Enabled = true;
                btnEditar.Enabled = false;
                btnCancelar.Enabled = false;
                btnEliminar.Enabled = false;
                cbTipoObjeto.SelectedIndex = 0;
                limpiarCampos();
                MostrarAlmacen();
            }
        }
    }
}
