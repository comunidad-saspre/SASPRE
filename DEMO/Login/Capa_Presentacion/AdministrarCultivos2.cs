using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Capa_Presentacion;
using Capa_Negocio;

namespace Capa_Presentacion
{
    public partial class AdministrarCultivos2 : Form
    {
        public AdministrarCultivos2()
        {
            InitializeComponent();
        }

        private void bunifuCustomDataGrid1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        //METODO PARA ABRIR FORM DENTRO DE PANEL-----------------------------------------------------
        private void AbrirFormEnPanel<Forms>() where Forms : Form, new()
        {
            try
            {
                Form formulario;
                formulario = panelContenedor.Controls.OfType<Forms>().FirstOrDefault();

                //si el formulario/instancia no existe, creamos nueva instancia y mostramos
                if (formulario == null)
                {
                    formulario = new Forms();
                    formulario.TopLevel = false;
                    formulario.FormBorderStyle = FormBorderStyle.None;
                    formulario.Dock = DockStyle.Fill;
                    panelContenedor.Controls.Add(formulario);
                    panelContenedor.Tag = formulario;
                    formulario.Show();
                    formulario.BringToFront();
                    formulario.Opacity = .5;
                    //  formulario.FormClosed += new FormClosedEventHandler(CloseForms);
                }
                else
                {

                    //si la Formulario/instancia existe, lo traemos a frente
                    formulario.BringToFront();

                    //Si la instancia esta minimizada mostramos
                    if (formulario.WindowState == FormWindowState.Minimized)
                    {
                        formulario.WindowState = FormWindowState.Normal;
                    }

                }
            }
            catch (Exception a) {
                MessageBox.Show("ADVERTENCIA", "ERROR EN ADMINISTRAR CULTIVOS", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }
        }

        private void CerrarFormEnPanel<Forms>() where Forms : Form, new()
        {
            Form formulario = new Forms();
            formulario = panelContenedor.Controls.OfType<Forms>().FirstOrDefault();

            if (!(formulario == null))
            {

                formulario.Close();
            }

        }


        private void button3_Click(object sender, EventArgs e)
        {
            Menu menu = new Menu();
            menu.AbrirFormEnPanel<AdministrarCultivosEditar>();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            AbrirFormEnPanel<AdministrarCultivos>();
        }

        private void AdministrarCultivos2_Load(object sender, EventArgs e)
        {
            cbPlanta.SelectedIndex = 0;
            MostrarCultivos();
        }

    private void MostrarCultivos()
        {
            CN_Cultivos _Cultivos = new CN_Cultivos();
            var tablaCultivos = _Cultivos.MostrarCultivos();
            dgvCultivo.DataSource = tablaCultivos;
        }

        private void cbPlanta_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                if (cbPlanta.SelectedItem == "Sorgo")
                {
                    picCultivo.Image = imageListPlantas.Images[1];
                }
                else if (cbPlanta.SelectedItem == "Maíz")
                {
                    picCultivo.Image = imageListPlantas.Images[0];
                }
                else if (cbPlanta.SelectedItem == "Soya")
                {
                    picCultivo.Image = imageListPlantas.Images[2];
                }
                else if (cbPlanta.SelectedItem == "Caña")
                {
                    picCultivo.Image = imageListPlantas.Images[3];
                }
                else if (cbPlanta.SelectedItem == "Cebolla")
                {
                    picCultivo.Image = imageListPlantas.Images[4];
                }
            }
            catch (Exception a) {
                MessageBox.Show("ADVERTENCIA", "ERROR EN SELECCIONAR PLANTA", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }
        }

        private void dtpPlantado_ValueChanged(object sender, EventArgs e)
        {
            dtpCosecha.MinDate = dtpPlantado.Value;
        }
    }
}
