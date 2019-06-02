﻿using System;
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
        private CN_Cultivos _Cultivo = new CN_Cultivos();
        DataTable tablaCultivos;
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
            AgregarCultivo();
            MostrarCultivos();
        }
        private void AgregarCultivo()
        {
            _Cultivo.AgregarCultivo(Program.nickname, cbPlanta.SelectedItem.ToString(), dtpPlantado.Value.ToString("yy-MM-dd"), dtpCosecha.Value.ToString("yy-MM-dd"), txtCantidad.Text,null);
        }

        private void button2_Click(object sender, EventArgs e)
        {
            var op = DialogResult.Yes;
            if (MessageBox.Show("¿Esta seguro de eliminar este cultivo?", "Confirmación", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == op)
            {
                EliminarCultivo();
                MostrarCultivos();
            }
        }
        private void EliminarCultivo()
        {

            String id = dgvCultivo.CurrentRow.Cells["IDCultivo"].Value.ToString();
            _Cultivo.EliminarCultivo(id);
        }

        private void AdministrarCultivos2_Load(object sender, EventArgs e)
        {
            cbPlanta.SelectedIndex = 0;
            dtpCosecha.MinDate = dtpPlantado.Value;
            MostrarCultivos();
            
        }

    private void MostrarCultivos()
        {
            CN_Cultivos _Cultivos = new CN_Cultivos();
            tablaCultivos = _Cultivos.MostrarCultivos(Program.cargo,Program.nickname);
            dgvCultivo.DataSource = tablaCultivos;
            if (Program.cargo != "Admin")
            {
                dgvCultivo.Columns["Usuario"].Visible = false;
            }
        }

        private void cbPlanta_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(cbPlanta.SelectedItem.ToString() == "Sorgo")
            {
                picCultivo.Image = imageListPlantas.Images[1];
            }else if(cbPlanta.SelectedItem.ToString() == "Maíz")
            {
                picCultivo.Image = imageListPlantas.Images[0];
            }else if(cbPlanta.SelectedItem.ToString() == "Soya")
            {
                picCultivo.Image = imageListPlantas.Images[2];
            }else if(cbPlanta.SelectedItem.ToString() == "Caña")
            {
                picCultivo.Image = imageListPlantas.Images[3];
            }else if(cbPlanta.SelectedItem.ToString() == "Cebolla")
            {
                picCultivo.Image = imageListPlantas.Images[4];
            }
        }

        private void dtpPlantado_ValueChanged(object sender, EventArgs e)
        {
            dtpCosecha.MinDate = dtpPlantado.Value;
        }

        private void txtCantidad_TextChanged(object sender, EventArgs e)
        {

        }

        private void txtCantidad_KeyPress(object sender, KeyPressEventArgs e)
        {
            SoloNumeros(e);
        }
        private void SoloNumeros(KeyPressEventArgs e)
        {
            //Para obligar a que sólo se introduzcan números 
            if (Char.IsDigit(e.KeyChar))
            {
                e.Handled = false;
            }
            else if (Char.IsControl(e.KeyChar)) //permitir teclas de control como retroceso 
            {
                e.Handled = false;
            }
            else
            {
                //el resto de teclas pulsadas se desactivan 
                e.Handled = true;
            }
        }

        private void txtBuscarUnCultivo_KeyPress(object sender, KeyPressEventArgs e)
        {
            if(e.KeyChar == (char)13)
            {
                
            }
        }

        private void txtBuscarUnCultivo_TextChanged(object sender, EventArgs e)
        {
            DataView dv = tablaCultivos.DefaultView;
            dv.RowFilter = string.Format("Cultivo like '%{0}%'", txtBuscarUnCultivo.Text);
            dgvCultivo.DataSource = dv.ToTable();
        }
    }
}
