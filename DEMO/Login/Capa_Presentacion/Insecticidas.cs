using Capa_Negocio;
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
    public partial class Insecticidas : Form
    {
        DataTable tablaInsecticidas = new DataTable();
        CN_Insecticidas _Insecticidas = new CN_Insecticidas();

        public Insecticidas()
        {
            InitializeComponent();
        }

        private void Insecticidas_Load(object sender, EventArgs e)
        {
            MostrarInsecticidas();
            comboBox1.SelectedIndex = 0;
        }

        public void MostrarInsecticidas()
        {
            CN_Insecticidas _Insecticidas = new CN_Insecticidas();
            tablaInsecticidas = _Insecticidas.MostrarInsecticidas(Program.cargo, Program.nickname);
            dataGridView1.DataSource = tablaInsecticidas;
            if (Program.cargo != "Admin")
            {
                dataGridView1.Columns["UsuarioNombre"].Visible = false;
            }
        }
        public void limpiar()
        {
            idInsecticida.Text = "";
            nombre.Text = "";
            precio.Text = "";
            comboBox1.SelectedIndex = 0;
        }

        private void agregar_Click(object sender, EventArgs e)
        {
            _Insecticidas.AgregarInsecticida(Program.nickname,nombre.Text, precio.Text, comboBox1.Text);
            MostrarInsecticidas();
            limpiar();

        }

        private void eliminar_Click(object sender, EventArgs e)
        {
            _Insecticidas.EliminarInsecticida(idInsecticida.Text);
            MostrarInsecticidas();
            limpiar();
        }

        private void editar_Click(object sender, EventArgs e)
        {
            _Insecticidas.EditarInsecticida(nombre.Text, precio.Text, comboBox1.Text, idInsecticida.Text);
            MostrarInsecticidas();
            limpiar();
        }

        private void dataGridView1_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            idInsecticida.Text = dataGridView1.CurrentRow.Cells["idInsecticida"].Value.ToString();
            nombre.Text = dataGridView1.CurrentRow.Cells["Nombre"].Value.ToString();
            precio.Text = dataGridView1.CurrentRow.Cells["Precio"].Value.ToString();
            comboBox1.Text =dataGridView1.CurrentRow.Cells["NombrePlaga"].Value.ToString();
        }
    }
}
