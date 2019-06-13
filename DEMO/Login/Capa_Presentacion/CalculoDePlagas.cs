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
    public partial class CalculoDePlagas : Form
    {
        DataGridView dgvDatosClimaMes = new DataGridView();
        public CalculoDePlagas()
        {
            InitializeComponent();
        }

        private void btnCargar_Click(object sender, EventArgs e)
        {
            CN_DatosClimaMes _DatosClimaMes = new CN_DatosClimaMes();
            
            DataTable tablaDatosClimaMes = _DatosClimaMes.MostrarDatosClimaMes();
            dgvDatosClimaMes.DataSource = tablaDatosClimaMes;
        }

        private void btnCalcular_Click(object sender, EventArgs e)
        {
            //foreach (DataGridViewRow item in dgvDatosClimaMes.Rows)
            //{
            //    Convert.ToInt32(item.Cells["Cantidad1"].Value)
            //}
        }
    }
}
