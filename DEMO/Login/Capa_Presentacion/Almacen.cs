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
                cbNombre.Items.Add("Maíz");
                cbNombre.Items.Add("Caña");
                cbNombre.Items.Add("Sorgo");
                cbNombre.Items.Add("Soya");
                cbNombre.Items.Add("Cebolla");
            }
        }

        private void BtnAgregar_Click(object sender, EventArgs e)
        {
            _CN_Almacen.AgregarAlmacen(cbTipoObjeto.Text, cbNombre.Text, txtCantidad.Text, cbTipoSiembra.Text, txtPrecio.Text, dtpFechaAgregado.Value.ToString(), Program.nickname);
            MostrarAlmacen();
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            //_CN_Almacen.EditarAlmacen(cbTipoObjeto.Text, cbNombre.Text, txtCantidad.Text, cbTipoSiembra.Text, txtPrecio.Text, dtpFechaAgregado.Value.ToString(),
            btnAgregar.Enabled = true;
            btnEditar.Enabled = false;
            btnCancelar.Enabled = false;
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {

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
            MostrarAlmacen();
        }

        private void editarAlmacen()
        {
            cbTipoObjeto.Text = dgvAlmacen.CurrentRow.Cells["tipoObjeto"].Value.ToString();
            cbNombre.Text = dgvAlmacen.CurrentRow.Cells["nombreObjeto"].Value.ToString();
            cbTipoSiembra.Text = dgvAlmacen.CurrentRow.Cells["tipoSiembra"].Value.ToString();
            txtPrecio.Text = dgvAlmacen.CurrentRow.Cells["Precio"].Value.ToString();
            txtCantidad.Text = dgvAlmacen.CurrentRow.Cells["cantidadObjeto"].Value.ToString();
            dtpFechaAgregado.Value = Convert.ToDateTime(dgvAlmacen.CurrentRow.Cells["nombreObjeto"].Value.ToString());
        }

        private void dgvAlmacen_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            btnEditar.Enabled = true;
            btnCancelar.Enabled = true;
            editarAlmacen();
            btnAgregar.Enabled = false;
        }

        private void limpiarCampos()
        {
            cbTipoObjeto.SelectedIndex = 0;
            cbNombre.SelectedIndex = 0;
            cbTipoSiembra.SelectedIndex = 0;
            txtPrecio.Clear();
            txtCantidad.Clear();
            dtpFechaAgregado.Value = DateTime.Now;
        }
    }
}
