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
    public partial class Reportes : Form
    {
        public DataSet DS;
        public int reporte;
        public void setReporte(int reporte)
        {
            this.reporte = reporte;
        }
        public int getReporte()
        {
            return this.reporte;
        }
        public void setData(DataSet DS)
        {
            this.DS = DS;
        }
        public DataSet getDs()
        {
            return this.DS;
        }
        public Reportes()
        {
            InitializeComponent();
        }
        public void llenarReporte()
        {
            if (reporte == 1)
            {
                var rptPractica61 = new ReporteUsuario();
                this.crystalReportViewer1.ReportSource = rptPractica61;
                this.crystalReportViewer1.Show();
            }
            if (reporte == 2)
            {
                ReporteFertilizantes crpt = new ReporteFertilizantes();
                crpt.SetDataSource(DS);
                this.crystalReportViewer1.ReportSource = crpt;
                this.crystalReportViewer1.Show();
            }
            if(reporte==3)
            {
                ReporteCosechas crpt = new ReporteCosechas();
                crpt.SetDataSource(DS);
                this.crystalReportViewer1.ReportSource = crpt;
                this.crystalReportViewer1.Show();
            }
            if (reporte == 4)
            {
                ReporteCultivo crpt = new ReporteCultivo();
                crpt.SetDataSource(DS);
                this.crystalReportViewer1.ReportSource = crpt;
                this.crystalReportViewer1.Show();
            }
            if (reporte == 5)
            {
                HistorialPlagas crpt = new HistorialPlagas();
                crpt.SetDataSource(DS);
                this.crystalReportViewer1.ReportSource = crpt;
                this.crystalReportViewer1.Show();
            }
        }
        private void crystalReportViewer1_Load(object sender, EventArgs e)
        {
           llenarReporte();
        }
    }
}
