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
using Microsoft.VisualBasic;

namespace Capa_Presentacion
{
    public partial class AdministrarCultivos2 : Form
    {
        private CN_Cultivos _Cultivo = new CN_Cultivos();
        private CN_Cosechas _Cosechas = new CN_Cosechas();
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
                MessageBox.Show("ADVERTENCIA", "Error en administrar cultivos", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
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
        public void limpiar()
        {
            txtCantidad.Clear();
            dtpPlantado.Value = DateTime.Now;
            dtpCosecha.Value = DateTime.Now;
            cbPlanta.SelectedIndex = 0;
        }

        private void button3_Click(object sender, EventArgs e)
        {
            if(txtCantidad.Text != "")
            {
                if(Convert.ToInt32(txtCantidad.Text) != 0)
                {
                    AgregarCultivo();
                    MostrarCultivos();
                    limpiar();
                }
                else
                {
                    MessageBox.Show("¡Debe ingresar una cantidad mayor a 0!", "Informacion", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                
            }
            else
            {
                MessageBox.Show("¡Debe ingresar una cantidad!", "Informacion", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            
        }
        private void AgregarCultivo()
        {
            if(Convert.ToInt32(txtCantidad.Text) == 0)
            {
                MessageBox.Show("¡No puede ingresar esta cantidad!", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else
            {
                _Cultivo.AgregarCultivo(Program.nickname, cbPlanta.SelectedItem.ToString(), dtpPlantado.Value.ToString("yy-MM-dd"), dtpCosecha.Value.ToString("yy-MM-dd"), txtCantidad.Text, null);
                MessageBox.Show("¡Cultivo agregado con exito!", "Exito", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            if(dgvCultivo.Rows.Count == 0)
            {
                MessageBox.Show("¡No hay ningun cultivo agregado!", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else
            {
                var op = DialogResult.Yes;
                if (MessageBox.Show("¿Esta seguro de eliminar este cultivo?", "Confirmación", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == op)
                {
                    EliminarCultivo();
                    MostrarCultivos();
                    MessageBox.Show("¡Cultivo eliminado con exito!", "Exito", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
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
            LlenarDataTableDatosClimaMes();
        }

        private void MostrarCultivos()
        {
            CN_Cultivos _Cultivos = new CN_Cultivos();
            tablaCultivos = _Cultivos.MostrarCultivos(Program.cargo, Program.nickname);
            dgvCultivo.DataSource = tablaCultivos;
            if (Program.cargo != "Admin")
            {
                dgvCultivo.Columns["Usuario"].Visible = false;
            }
        }

        private void cbPlanta_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                if (cbPlanta.SelectedItem.ToString() == "Sorgo")
                {
                    picCultivo.Image = imageListPlantas.Images[1];
                }
                else if (cbPlanta.SelectedItem.ToString() == "Maíz")
                {
                    picCultivo.Image = imageListPlantas.Images[0];
                }
                else if (cbPlanta.SelectedItem.ToString() == "Soya")
                {
                    picCultivo.Image = imageListPlantas.Images[2];
                }
                else if (cbPlanta.SelectedItem.ToString() == "Caña")
                {
                    picCultivo.Image = imageListPlantas.Images[3];
                }
                else if (cbPlanta.SelectedItem.ToString() == "Cebolla")
                {
                    picCultivo.Image = imageListPlantas.Images[4];
                }
            }
            catch (Exception a) {
                MessageBox.Show("ADVERTENCIA", "Error en seleccionar planta", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
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
            if (e.KeyChar == (char)13)
            {

            }
        }

        private void txtBuscarUnCultivo_TextChanged(object sender, EventArgs e)
        {
            try { 
            DataView dv = tablaCultivos.DefaultView;
            dv.RowFilter = string.Format("Cultivo like '%{0}%'", txtBuscarUnCultivo.Text);
            dgvCultivo.DataSource = dv.ToTable();
        }catch (Exception a)
            {
                MessageBox.Show("ADVERTENCIA", "Error en buscar cultivo", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }
        }

        private void btnCosechar_Click(object sender, EventArgs e)
        {
            try { 
            if (dgvCultivo.Rows.Count == 0)
            {
                MessageBox.Show("¡No hay ningun cultivo agregado!", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else
            {
                if (MessageBox.Show("¿Está seguro de cosechar este cultivo?", "Confirmación", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                {
                    String Cantidad;
                    Cantidad = Interaction.InputBox("Ingrese cantidad de cosechados", "Cantidad");
                    if (saberSiEsNumero(Cantidad) == false)
                    {
                        MessageBox.Show("¡No es un numero el que se ingresó!", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                    else
                    {
                        if (Convert.ToInt32(Cantidad) == 0 || Convert.ToInt32(Cantidad) < 0 || Convert.ToInt32(Cantidad) > Convert.ToInt32(dgvCultivo.CurrentRow.Cells["Cantidad"].Value.ToString()))
                        {
                            MessageBox.Show("¡Error con la cantidad!", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        }
                        else
                        {
                            AgregarCosecha(Cantidad);
                            EliminarCultivo();
                            MostrarCultivos();
                            MessageBox.Show("¡Cultivo cosechado con exito!", "Exito", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        }
                    }
                }
            }
        } catch (Exception a)
            {
                MessageBox.Show("ADVERTENCIA", "Error en cosechar", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }
        }

        private Boolean saberSiEsNumero(String numero)
        {
            try
            {
                int n = Convert.ToInt32(numero);
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }

        private void AgregarCosecha(String Cantidad)
        {
            try
            {
                DateTime fechaplantado;
                String Usuario_Cultivo, Cultivo, FechaPlantado, fechacosecha;

                Usuario_Cultivo = dgvCultivo.CurrentRow.Cells["Usuario"].Value.ToString();
                Cultivo = dgvCultivo.CurrentRow.Cells["Cultivo"].Value.ToString();
                fechaplantado = Convert.ToDateTime(dgvCultivo.CurrentRow.Cells["Plantado"].Value.ToString());
                fechacosecha = DateTime.Now.ToString("yy-MM-dd");
                //Cantidad = dgvCultivo.CurrentRow.Cells["Cantidad"].Value.ToString();
                _Cosechas.AgregarCosechas(Usuario_Cultivo, Cultivo, fechaplantado.ToString("yy-MM-dd"), fechacosecha, Cantidad, null);
            }
            catch (Exception a)
            {
                MessageBox.Show("ADVERTENCIA", "Error al agregar cosecha", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }

        }

        private void btnExportar_Click(object sender, EventArgs e)
        {
            if(dgvCultivo.Rows.Count == 0)
            {
                MessageBox.Show("¡La tabla se encuentra vacia!", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        DataTable tablaDatosClimaMes;

        private void btnCalcularEstado_Click(object sender, EventArgs e)
        {
            var query = from row in tablaDatosClimaMes.AsEnumerable()
                        where row.Field<DateTime>("Fecha_Local") >= Convert.ToDateTime(dgvCultivo.CurrentRow.Cells["Plantado"].Value.ToString()) && row.Field<DateTime>("Fecha_Local") <= DateTime.Now
                        select row;


            //0.- Estacion, 1.- Fecha Local, 2.- Fecha UTC, 3.- Direccion del viento, 4.-Direccion de rafaga, 5.- Rapidez de viento, 
            //6.- Rapidez de rafaga, 7.- Temperatura, 8.- Humedad Relativa, 9.- Presion Atmosferica, 10.- Precipitacion, 11.- Radiacion Solar
            double prom = 0;
            int cont = 0;
            if (query.Any())
            {
                DataTable resultados = query.CopyToDataTable();

                foreach (DataRow row in resultados.Rows)
                {
                    if(cont <= 360)
                    {
                        prom += Convert.ToDouble(row[7].ToString());
                        cont++;

                    }
                    else
                    {
                        break;
                    }
                    
                }
                prom = prom / cont;
                MessageBox.Show($"Promedio temperatura {prom}");
            }
            else
            {
                MessageBox.Show("No hay resultados");
            }
        }

        private void LlenarDataTableDatosClimaMes()
        {
            CN_DatosClimaMes _DatosClimaMes = new CN_DatosClimaMes();
            tablaDatosClimaMes = _DatosClimaMes.MostrarDatosClimaMes();
        }


        private void PlagaMaiz()
        {

        }

        private void PlagaSoyaOscar()
        {
            string fechaa_actual = DateTime.Now.ToString("dd/MM/yyyy");

            String ano = DateTime.Now.ToString("yyyy");
            MessageBox.Show(fechaa_actual);
            DateTime fecha1 = Convert.ToDateTime("21/03/" + ano);

            DateTime fecha2 = Convert.ToDateTime("20/06/" + ano);

            DateTime fecha__actual = Convert.ToDateTime(fechaa_actual);
            if ((fecha__actual >= fecha1) && (fecha__actual <= fecha2))
            {
             MessageBox.Show("PRIMAVERA");
            }
        }
        private void PlagaSorgoAndres()
        {

        }
        private void PlagaCañaAndre()
        {

        }
        private void PlagaCebolla()
        {

        }
    }
}
           
