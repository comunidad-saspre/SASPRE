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
    public partial class Cosechas : Form
    {
        DataTable tablaCosechas;
        public Cosechas()
        {
            InitializeComponent();
        }

        CN_Cosechas _Cosechas = new CN_Cosechas();
        private void Cosechas_Load(object sender, EventArgs e)
        {
            MostrarCosechas();
        }
        private void MostrarCosechas()
        {
            try
            {
                tablaCosechas = _Cosechas.MostrarCosechas(Program.cargo, Program.nickname);
                dgvCultivo.DataSource = tablaCosechas;
                dgvCultivo.Columns["Usuario"].Visible = false;
            }
            catch(Exception ex)
            {
                MessageBox.Show("Ha ocurrido un error al mostrar las cosechas","Error",MessageBoxButtons.OK,MessageBoxIcon.Error);
            }
        }

        private void txtBuscarUnCultivo_TextChanged(object sender, EventArgs e)
        {
            DataView dv = tablaCosechas.DefaultView;
            dv.RowFilter = string.Format("Cultivo like '%{0}%'", txtBuscarUnCultivo.Text);
            dgvCultivo.DataSource = dv.ToTable();
        }

        private void dateTimePicker1_ValueChanged(object sender, EventArgs e)
        {
            DataView dv = tablaCosechas.DefaultView;
            dv.RowFilter = string.Format("Fecha_Plantado = '{0:yyyy-MM-dd}'", dtpPlantado.Value);
            dgvCultivo.DataSource = dv.ToTable();
        }
    }
}
