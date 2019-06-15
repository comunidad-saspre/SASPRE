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
            catch (Exception a)
            {
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
            if (txtCantidad.Text != "")
            {
                if (Convert.ToInt32(txtCantidad.Text) != 0)
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
            if (Convert.ToInt32(txtCantidad.Text) == 0)
            {
                MessageBox.Show("¡No puede ingresar esta cantidad!", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else
            {
                _Cultivo.AgregarCultivo(Program.nickname, cbPlanta.SelectedItem.ToString(), dtpPlantado.Value.ToString("yy-MM-dd"), dtpCosecha.Value.ToString("yy-MM-dd"), txtCantidad.Text, "Sin estado");
                MessageBox.Show("¡Cultivo agregado con exito!", "Exito", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            if (dgvCultivo.Rows.Count == 0)
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
            catch (Exception a)
            {
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
            try
            {
                DataView dv = tablaCultivos.DefaultView;
                dv.RowFilter = string.Format("Cultivo like '%{0}%'", txtBuscarUnCultivo.Text);
                dgvCultivo.DataSource = dv.ToTable();
            }
            catch (Exception a)
            {
                MessageBox.Show("ADVERTENCIA", "Error en buscar cultivo", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }
        }

        private void btnCosechar_Click(object sender, EventArgs e)
        {
            try
            {
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
            }
            catch (Exception a)
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
            if (dgvCultivo.Rows.Count == 0)
            {
                MessageBox.Show("¡La tabla se encuentra vacia!", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        DataTable tablaDatosClimaMes;
        String estadocaña = null;
        String estadocebolla = null;
        String estadomaiz = null;
        private void btnCalcularEstado_Click(object sender, EventArgs e)
        {
            String estadoprincipal = null;
            estadocaña = null;
            estadocebolla = null;
            estadomaiz = null;
            var query = from row in tablaDatosClimaMes.AsEnumerable()
                        where row.Field<DateTime>("Fecha_Local") >= Convert.ToDateTime(dgvCultivo.CurrentRow.Cells["Plantado"].Value.ToString()) && row.Field<DateTime>("Fecha_Local") <= DateTime.Now
                        select row;


            //0.- Estacion, 1.- Fecha Local, 2.- Fecha UTC, 3.- Direccion del viento, 4.-Direccion de rafaga, 5.- Rapidez de viento, 
            //6.- Rapidez de rafaga, 7.- Temperatura, 8.- Humedad Relativa, 9.- Presion Atmosferica, 10.- Precipitacion, 11.- Radiacion Solar
            double temperaturaprom = 0;
            double humedad_relativaprom = 0;
            double precipitacionprom = 0;
            int cont = 0;
            if (query.Any())
            {
                DataTable resultados = query.CopyToDataTable();

                foreach (DataRow row in resultados.Rows)
                {
                    if (cont <= 360)
                    {
                        temperaturaprom += Convert.ToDouble(row[7].ToString());
                        humedad_relativaprom += Convert.ToDouble(row[8].ToString());
                        precipitacionprom += Convert.ToDouble(row[10].ToString());
                        cont++;
                    }
                    else
                    {
                        break;
                    }

                }
                temperaturaprom /= cont;
                humedad_relativaprom /= cont;
                precipitacionprom /= cont;


                String cultivo = dgvCultivo.CurrentRow.Cells["Cultivo"].Value.ToString();

                if (cultivo == "Caña")
                {
                    estadoprincipal = PlagaCañaAndre(temperaturaprom, humedad_relativaprom, precipitacionprom);
                }
                else if(cultivo == "Maíz")
                {
                    estadoprincipal = PlagaMaiz(temperaturaprom, humedad_relativaprom, precipitacionprom);
                }
                else if (cultivo == "Cebolla")
                {
                    estadoprincipal = PlagaCebolla(temperaturaprom, humedad_relativaprom, precipitacionprom);
                }
                else if (cultivo == "Sorgo")
                {
                    //PlagaSorgoAndres(temperaturaprom, humedad_relativaprom, precipitacionprom);
                }
                else if (cultivo == "Soya")
                {
                    //PlagaSoyaOscar(temperaturaprom, humedad_relativaprom, precipitacionprom);
                }
                if (estadoprincipal == "" || estadoprincipal == null)
                    estadoprincipal = "Sin estado";
                _Cultivo.EditarCultivo(dgvCultivo.CurrentRow.Cells["IDCultivo"].Value.ToString(),estadoprincipal);
            }
            else
            {
                MessageBox.Show("No hay datos climaticos de estas fechas");
            }
            MostrarCultivos();
        }

        private void LlenarDataTableDatosClimaMes()
        {
            CN_DatosClimaMes _DatosClimaMes = new CN_DatosClimaMes();
            tablaDatosClimaMes = _DatosClimaMes.MostrarDatosClimaMes();
        }

        String plaga = null;
        private String PlagaMaiz(double temperaturaprom, double humedad_relativaprom, double precipitacionprom)
        {
            DateTime fechahoy = DateTime.Now;
            DateTime fechatentativacosecha = Convert.ToDateTime(dgvCultivo.CurrentRow.Cells["Cosecha"].Value.ToString());
            DateTime fechatentativacosecha5dias = fechatentativacosecha.AddDays(5);
            String mes = fechahoy.ToString("MMMM");
            int dia = Convert.ToInt32(fechahoy.ToString("dd"));
            _informacionAXDias = new InformacionAXDias(tablaDatosClimaMes, dgvCultivo.CurrentRow.Cells["Plantado"].Value.ToString(), 720);
            if (((fechahoy >= primaverainicio && fechahoy <= veranofin) && (temperaturaprom >= 8 && temperaturaprom <= 35)) || ((fechahoy >= primaverainicio && fechahoy <= veranofin) && (temperaturaprom >= 8 && temperaturaprom <= 35) && _informacionAXDias.precipitacionprom < 0.25))
            {
                estadomaiz += "Gusano cogollero, ";
            }
            _informacionAXDias = new InformacionAXDias(tablaDatosClimaMes, dgvCultivo.CurrentRow.Cells["Plantado"].Value.ToString(), 240);
            if((_informacionAXDias.temperaturaprom >=34 && _informacionAXDias.temperaturaprom <= 36) && _informacionAXDias.precipitacionprom <0.25 && (fechahoy >= primaverainicio && fechahoy <= veranofin))
            {
                estadomaiz += "Araña roja, ";
            }
            if(fechahoy <= Convert.ToDateTime(dgvCultivo.CurrentRow.Cells["Plantado"].Value.ToString()).AddDays(25))
            {
                estadomaiz += "Trips, ";
            }
            if(fechahoy <= Convert.ToDateTime(dgvCultivo.CurrentRow.Cells["Plantado"].Value.ToString()).AddDays(85))
            {
                estadomaiz += "Gusano elotero, ";
            }
            DateTime junioinicio = DateTime.Parse("01/06/19");
            DateTime septiembrefin = DateTime.Parse("30/09/19");
            if (fechahoy >= junioinicio && fechahoy <= septiembrefin)
            {
                if(fechahoy >= junioinicio.AddDays(25))
                {
                    estadomaiz += "Gallina ciega, ";
                }
                else
                {
                    estadomaiz += "30% gallina ciega, ";
                }
            }
            return estadomaiz.TrimEnd(new Char[] { ' ', ',' });
        }

        private void PlagaSoyaOscar()
        {

        }
        private void PlagaSorgoAndres()
        {

        }
        InformacionAXDias _informacionAXDias;
        DateTime primaverainicio = DateTime.Parse("21/03/19");
        DateTime primaverafin = DateTime.Parse("20/06/19");
        DateTime veranoinicio = DateTime.Parse("21/06/19");
        DateTime veranofin = DateTime.Parse("20/09/19");
        DateTime otoñoinicio = DateTime.Parse("21/09/19");
        DateTime otoñofin = DateTime.Parse("20/12/19");
        DateTime inviernoinicio = DateTime.Parse("21/12/19");
        DateTime inviernofin = DateTime.Parse("20/03/19");

        private String PlagaCañaAndre(double temperaturaprom, double humedad_relativaprom, double precipitacionprom)
        {
            DateTime fechahoy = DateTime.Now;
            DateTime fechatentativacosecha = Convert.ToDateTime(dgvCultivo.CurrentRow.Cells["Cosecha"].Value.ToString());
            DateTime fechatentativacosecha5dias = fechatentativacosecha.AddDays(5);
            _informacionAXDias = new InformacionAXDias(tablaDatosClimaMes, dgvCultivo.CurrentRow.Cells["Plantado"].Value.ToString(), 360);
            String mes = fechahoy.ToString("MMMM");
            int dia = Convert.ToInt32(fechahoy.ToString("dd"));
            //Mosca pinta 
            if ((dia >= 20 && mes == "octubre") || (dia <= 10 && mes == "noviembre") || mes == "mayo" || mes == "junio")
            {
                if (mes == "octubre" || mes == "noviembre")
                {
                    estadocaña += "Huevecillos de mosca pinta, ";
                }
                if (mes == "mayo" || mes == "junio")
                {
                    if (humedad_relativaprom >= 80)
                        estadocaña += "Mosca pinta comiendo cultivo, ";
                }
            }
            if (fechatentativacosecha <= fechahoy)
            {
                _informacionAXDias = new InformacionAXDias(tablaDatosClimaMes, dgvCultivo.CurrentRow.Cells["Plantado"].Value.ToString(), 168);
                if (_informacionAXDias.precipitacionprom > 0.25)
                {
                    estadocaña += "Gusano Barrenador, Rata, ";
                }
                estadocaña += "Gusano Barrenador, Rata, ";
            }
            if (fechahoy < fechatentativacosecha5dias && temperaturaprom > 24 && temperaturaprom < 26)
            {
                estadocaña += "Pulgon amarillo, ";
            }
            _informacionAXDias = new InformacionAXDias(tablaDatosClimaMes, dgvCultivo.CurrentRow.Cells["Plantado"].Value.ToString(), 720);
            if ((mes == "mayo" || mes == "junio" || mes == "julio" || mes == "agosto" || mes == "septiembre") && _informacionAXDias.temperaturaprom > 35)
            {
                estadocaña += "Chinche de encaje, ";
            }
            if ((fechahoy >= primaverainicio && fechahoy <= primaverafin) || (fechahoy >= veranoinicio && fechahoy <= veranoinicio.AddDays(30)))
            {
                estadocaña += "Piojo harinoso de la vid, ";
            }
            return estadocaña.TrimEnd(new Char[] { ' ', ',' });
        }
        private String PlagaCebolla(double temperaturaprom, double humedad_relativaprom, double precipitacionprom)
        {
            DateTime fechahoy = DateTime.Now;
            DateTime fechatentativacosecha = Convert.ToDateTime(dgvCultivo.CurrentRow.Cells["Cosecha"].Value.ToString());
            DateTime fechatentativacosecha5dias = fechatentativacosecha.AddDays(5);
            String mes = fechahoy.ToString("MMMM");
            int dia = Convert.ToInt32(fechahoy.ToString("dd"));

            if((fechahoy >= inviernoinicio && fechahoy <= inviernofin) && temperaturaprom >= 25 && temperaturaprom <= 30)
            {
                estadocebolla += "Trips Frankliniella, ";
            }
            if ((dia > 20 && mes == "agosto")||(dia > 15 && mes == "septiembre")||(dia < 15 && mes == "octubre"))
            {
                estadocebolla += "Gusano soldado, ";
            }
            _informacionAXDias = new InformacionAXDias(tablaDatosClimaMes, dgvCultivo.CurrentRow.Cells["Plantado"].Value.ToString(), 96);
            if(_informacionAXDias.temperaturaprom <= 32 && _informacionAXDias.temperaturaprom >= 28)
            {
                estadocebolla += "Larva minador de la hoja, ";
            }
            _informacionAXDias = new InformacionAXDias(tablaDatosClimaMes, dgvCultivo.CurrentRow.Cells["Plantado"].Value.ToString(), 192);
            if (_informacionAXDias.temperaturaprom <= 22 && _informacionAXDias.temperaturaprom >= 18)
            {
                estadocebolla += "Larva minador de la hoja, ";
            }
            _informacionAXDias = new InformacionAXDias(tablaDatosClimaMes, dgvCultivo.CurrentRow.Cells["Plantado"].Value.ToString(), 720);
            if (estadocebolla.Contains("Larva minador de la hoja") && _informacionAXDias.temperaturaprom >= 20 && _informacionAXDias.temperaturaprom <= 30)
            {
                estadocebolla += "Minador de la hoja adulto";
            }
            return estadocebolla.TrimEnd(new Char[] { ' ', ',' });
        }
    }
}

