using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Capa_Presentacion
{
    public partial class Alarmas : Form
    {
        public Alarmas()
        {
            InitializeComponent();
        }

        private void btnAgregar_Click(object sender, EventArgs e)
        {
            lbCult.Enabled = true;
            lbDias.Enabled = true;
            lbMax.Enabled = true;
            lbMin.Enabled = true;
            lbNombre.Enabled = true;
            lbTem.Enabled = true;

            txtCultivo.Enabled = true;
            txtDias.Enabled = true;
            txtMax.Enabled = true;
            txtMin.Enabled = true;
            txtNombre.Enabled = true;

            btnGuardar.Enabled = true;
            
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            lbCult.Enabled = true;
            lbDias.Enabled = true;
            lbMax.Enabled = true;
            lbMin.Enabled = true;
            lbNombre.Enabled = true;
            lbTem.Enabled = true;

            txtCultivo.Enabled = true;
            txtDias.Enabled = true;
            txtMax.Enabled = true;
            txtMin.Enabled = true;
            txtNombre.Enabled = true;

            btnGuardar.Enabled = true;
        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {
            lbCult.Enabled = false;
            lbDias.Enabled = false;
            lbMax.Enabled = false;
            lbMin.Enabled = false;
            lbNombre.Enabled = false;
            lbTem.Enabled = false;

            txtCultivo.Enabled = false;
            txtDias.Enabled = false;
            txtMax.Enabled = false;
            txtMin.Enabled = false;
            txtNombre.Enabled = false;

            btnGuardar.Enabled = false;
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            lbCult.Enabled = false;
            lbDias.Enabled = false;
            lbMax.Enabled = false;
            lbMin.Enabled = false;
            lbNombre.Enabled = false;
            lbTem.Enabled = false;

            txtCultivo.Enabled = false;
            txtDias.Enabled = false;
            txtMax.Enabled = false;
            txtMin.Enabled = false;
            txtNombre.Enabled = false;

            btnGuardar.Enabled = false;
        }
    }
}
