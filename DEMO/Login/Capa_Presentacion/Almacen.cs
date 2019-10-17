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

        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {

        }

        private void MostrarAlmacen()
        {
            CN_Almacen _CN_Almacen = new CN_Almacen();
            dgvAlmacen.DataSource = _CN_Almacen.MostrarAlmacen(Program.cargo, Program.nickname);
        }

        private void Almacen_Load(object sender, EventArgs e)
        {
            MostrarAlmacen();
        }
    }
}
