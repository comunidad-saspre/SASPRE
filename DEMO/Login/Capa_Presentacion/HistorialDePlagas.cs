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
    public partial class HistorialDePlagas : Form
    {
        private CN_Plagas _Plagas = new CN_Plagas();
        public HistorialDePlagas()
        {
            InitializeComponent();
        }

        private void btnExportar_Click(object sender, EventArgs e)
        {
            dsHistorialPlagas Ds = new dsHistorialPlagas();
            int filas = dgvHistorial.Rows.Count;
            for (int i = 0; i < filas; i++)
            {
                Ds.Tables[0].Rows.Add(new object[] {
                    dgvHistorial[0,i].Value.ToString(),
                    dgvHistorial[1,i].Value.ToString(),
                    dgvHistorial[2,i].Value.ToString(),
                    dgvHistorial[3,i].Value.ToString()});
            }
            Reportes r = new Reportes();
            r.setData(Ds);
            r.setReporte(5);
            DialogResult resultado = new DialogResult();
            resultado = r.ShowDialog();
        }

        private void HistorialDePlagas_Load(object sender, EventArgs e)
        {
            CN_Plagas _Plagas = new CN_Plagas();
            dgvHistorial.DataSource = _Plagas.MostrarPlaga();
        }
    }
}
