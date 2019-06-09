using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using Capa_Negocio;
using System.Windows.Forms;

namespace Capa_Presentacion
{
    public partial class Fertilizantes : Form
    {
        DataTable tablaFertilizantes;

        private List<string> _plagas, _cultivos;

        public Fertilizantes()
        {
            InitializeComponent();
            _plagas = new List<string>();
            _cultivos = new List<string>();
        }

        private void IniciarComponentes()
        {
            MostrarFertilizantes();
            LlenarComboCultivo();
            LlenarComboPlaga();
            loaded = true;
        }

        private void MostrarFertilizantes()
        {
            tablaFertilizantes = CN_Fertilizantes.MostrarFertilizantes();
            dgvFertilizantes.DataSource = tablaFertilizantes;
        }

        private void LlenarComboPlaga()
        {
            DataTable tablaControlPlagas = CN_Fertilizantes.MostrarFertilizantes();
            foreach (DataRow row in tablaControlPlagas.Rows)
            {
                var valor = row["Plaga"].ToString();
                if (!_plagas.Contains(valor))
                {
                    _plagas.Add(valor);
                }
            }

            foreach (var item in _plagas)
            {
                comboPlaga.Items.Add(item.ToString());
            }
        }

        private void LlenarComboCultivo()
        {
            DataTable tablaControlPlagas = CN_Fertilizantes.MostrarFertilizantes();
            foreach (DataRow row in tablaControlPlagas.Rows)
            {
                var valor = row["Cultivo"].ToString();
                if (!_cultivos.Contains(valor))
                {
                    _cultivos.Add(valor);
                }
            }

            foreach (var item in _cultivos)
            {
                comboCultivo.Items.Add(item.ToString());
            }
        }

        private void dgvFertilizantes_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void txtBuscar_TextChanged(object sender, EventArgs e)
        {

            DataView dv = tablaFertilizantes.DefaultView;
            var query = "Plaga like '%{0}%'";
            query += " or `Nombre Comercial` like '%{0}%'";
            query += " or `Epoca de Control` like '%{0}%'";
            dv.RowFilter = string.Format(query, txtBuscar.Text);
            dgvFertilizantes.DataSource = dv.ToTable();
        }

        private void txtBuscar_MouseLeave(object sender, EventArgs e)
        {

        }

        private void txtBuscar_Leave(object sender, EventArgs e)
        {
            if (txtBuscar.Text.Equals(""))
            {
                txtBuscar.Text = "Buscar";
                txtBuscar.ForeColor = Color.Gray;
            }
        }

        private void txtBuscar_Enter(object sender, EventArgs e)
        {
            if (txtBuscar.Text.Equals("Buscar"))
            {
                txtBuscar.Text = "";
                txtBuscar.ForeColor = Color.Black;
            }
        }

        bool loaded = false;

        private void comboPlaga_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataView dv = tablaFertilizantes.DefaultView;
            var query = "Plaga like '%{0}%'";
            var index = comboPlaga.SelectedIndex;
            if (index != -1)
            {
                var value = _plagas[index];
                dv.RowFilter = string.Format(query, value);
                dgvFertilizantes.DataSource = dv.ToTable();
            }
        }

        private void comboCultivo_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataView dv = tablaFertilizantes.DefaultView;
            var query = "Cultivo like '%{0}%'";
            var index = comboCultivo.SelectedIndex;
            if (index != -1)
            {
                var value = _cultivos[index];
                dv.RowFilter = string.Format(query, value);
                dgvFertilizantes.DataSource = dv.ToTable();
            }
        }

        private void Fertilizantes_Load(object sender, EventArgs e)
        {
            IniciarComponentes();
        }
    }
}
