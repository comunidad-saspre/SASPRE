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
    public partial class CalendarioAct : Form
    {
        CN_CalendarioAct _calendario = new CN_CalendarioAct();
        DataTable tablaCalendario;


        public CalendarioAct()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {

            _calendario.AgregarCalendario(Program.nickname, nombre.Text, descripcion.Text, monthCalendar1.SelectionRange.Start.ToString("yy-MM-dd"), monthCalendar2.SelectionRange.Start.ToString("yy-MM-dd"));
            MessageBox.Show("Listo");
            //fechaInicio.Value.ToString("yy-MM-dd"), fechaFin.Value.ToString("yy-MM-dd"), id.Text
            MostrarCalendario();
            limpiar();
        }

        private void CalendarioAct_Load(object sender, EventArgs e)
        {
            MostrarCalendario();
            editar.Enabled = false;
            eliminar.Enabled = false;
            
        }


        public bool Evaluar(String fecha) {
            CN_CalendarioAct _Calendario = new CN_CalendarioAct();
            tablaCalendario = _Calendario.MostrarCalendario(Program.cargo, Program.nickname);
            String nombre;
            foreach (DataRow row in tablaCalendario.Rows)
            {
                nombre = row["FechaInicio"].ToString();
                var nombre2 = DateTime.Parse(nombre);
                var fec = nombre2.ToShortDateString();
                if (fec == fecha)
                {
                    return false;
                }
            }
            return true;
        }
        private void MostrarCalendario()
        {
            CN_CalendarioAct _Calendario = new CN_CalendarioAct();
            tablaCalendario = _Calendario.MostrarCalendario(Program.cargo, Program.nickname);
            dataGridView1.DataSource = tablaCalendario;
            if (Program.cargo != "Admin")
            {
                dataGridView1.Columns["Usuario_Calendario"].Visible = false;
            }

        }

        

        private void editar_Click(object sender, EventArgs e)
        {
            _calendario.EditarCalendario(nombre.Text, descripcion.Text, monthCalendar1.SelectionRange.Start.ToString("yy-MM-dd"), monthCalendar2.SelectionRange.Start.ToString("yy-MM-dd"), id.Text);
            MostrarCalendario();
            limpiar();
            editar.Enabled = false;
            eliminar.Enabled = false;
            agregar.Enabled = true;
        }

        private void eliminar_Click(object sender, EventArgs e)
        {
            _calendario.EliminarCalendario(id.Text);
            MostrarCalendario();
            limpiar();
            editar.Enabled = false;
            eliminar.Enabled = false;
            agregar.Enabled = true;
        }
        public void limpiar() {
            id.Text = "";
            nombre.Text = "";
            descripcion.Text = "";
        }

        private void dataGridView1_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            nombre.Text = dataGridView1.CurrentRow.Cells["Nombre"].Value.ToString();
            descripcion.Text = dataGridView1.CurrentRow.Cells["Descripcion"].Value.ToString();
            //fechaInicio.Value = Convert.ToDateTime(dataGridView1.CurrentRow.Cells["FechaInicio"].Value.ToString());
            //fechaFin.Value = Convert.ToDateTime(dataGridView1.CurrentRow.Cells["FechaFin"].Value.ToString());
            id.Text = dataGridView1.CurrentRow.Cells["idCalendario"].Value.ToString();
            editar.Enabled = true;
            eliminar.Enabled = true;
            agregar.Enabled = false;
        }
    }
}
