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

        public Fertilizantes()
        {
            InitializeComponent();
            MostrarFertilizantes();
        }

        private void MostrarFertilizantes()
        {
            tablaFertilizantes = CN_Fertilizantes.MostrarFertilizantes();
            dgvFertilizantes.DataSource = tablaFertilizantes;
        }

        private void LlenarComboPlaga()
        {
            tablaFertilizantes = CN_Fertilizantes.MostrarFertilizantes();
            comboPlaga.DataSource = tablaFertilizantes;
            comboPlaga.DisplayMember = "Plaga";
        }

        private void dgvFertilizantes_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            
        }

        private void txtBuscar_TextChanged(object sender, EventArgs e)
        {

            DataView dv = tablaFertilizantes.DefaultView;
            var query = "Plaga like '%{0}%' or Insecticida like '%{0}%' or Dosis like '%{0}%'";
            query += " or `Nombre Comercial` like '%{0}%' or `Dosis Comercial` like '%{0}%'";
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
            if(loaded)
            {
                DataView dv = tablaFertilizantes.DefaultView;
                var query = "Plaga like '%{0}%'";
                var index = comboPlaga.SelectedIndex;
                if(index != -1)
                {
                    var value = tablaFertilizantes.Rows[index][0].ToString();
                    dv.RowFilter = string.Format(query, value);
                    dgvFertilizantes.DataSource = dv.ToTable();
                }
            }
        }

        private void Fertilizantes_Load(object sender, EventArgs e)
        {
            LlenarComboPlaga();
            loaded = true;
        }
    }
}
