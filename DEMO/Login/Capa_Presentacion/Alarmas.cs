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
    public partial class Alarmas : Form
    {
        private CN_Alarmas _Alarmas = new CN_Alarmas();
        DataTable tablaNombresCultivos = new DataTable();
        DataTable tablaNombresAlarmas = new DataTable();
        DataTable tablaAlarmas = new DataTable();
        String nombreAlarma, nombrePlanta,opcion="";
        double tempMaxAlarma, tempMinAlarma;
        int lapsoDias;

        public Alarmas()
        {
            InitializeComponent();
            BloquearCampos();
            CargarNombresCultivos();
            MostrarAlarmas();
        }

        private void CargarNombresCultivos()
        {
            tablaNombresCultivos = _Alarmas.MostrarNombresCultivos();
            txtCultivo.DataSource = tablaNombresCultivos;
            txtCultivo.ValueMember = "IDplanta";
            txtCultivo.DisplayMember = "NombreComun";
        }

        private void BloquearCampos()
        {
            lbCult.Enabled = false;
            lbDias.Enabled = false;
            lbMax.Enabled = false;
            lbMin.Enabled = false;
            lbNombre.Enabled = false;
            lbTem.Enabled = false;

            txtCultivo.Enabled = true;
            txtDias.Enabled = false;
            txtMax.Enabled = false;
            txtMin.Enabled = false;
            txtNombre.Enabled = false;

            btnGuardar.Enabled = false;
        }

        private void DesbloquearCampos()
        {
            lbCult.Enabled = true;
            lbDias.Enabled = true;
            lbMax.Enabled = true;
            lbMin.Enabled = true;
            lbNombre.Enabled = true;
            lbTem.Enabled = true;

            txtCultivo.Enabled = true;
            txtDias.Enabled = true;
            txtMax.Enabled = true;
            txtMin.Enabled = true;
            txtNombre.Enabled = true;
        }

        private void MostrarAlarmas()
        {
            CN_Alarmas _Alarmas = new CN_Alarmas();
            tablaAlarmas = _Alarmas.MostrarAlarmas();

            dgvAlmacen.DataSource = tablaAlarmas;
        }

        private void btnAgregar_Click(object sender, EventArgs e)
        {
            DesbloquearCampos();
            btnEditar.Enabled = false;
            btnEliminar.Enabled = false;
            opcion = "Alta";
            btnGuardar.Enabled = true;

        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            DesbloquearCampos();
            btnAgregar.Enabled = false;
            btnEliminar.Enabled = false;
            btnGuardar.Enabled = true;
            opcion = "Cambio";
        }

        private void btnEliminar_Click(object sender, EventArgs e)
        {
            BloquearCampos();
            opcion = "Baja";
            btnGuardar.Enabled = true;
            btnAgregar.Enabled = false;
            btnEditar.Enabled = false;
            txtNombre.Enabled = true;
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            BloquearCampos();
            Limpiar();
            opcion = "Cancelar";
        }

        private void TxtCultivo_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {
            BloquearCampos();

            switch (opcion)
            {
                case "Alta":
                    nombreAlarma = txtNombre.Text;
                    if (Evaluar(nombreAlarma) == true)
                    {

                        nombreAlarma = txtNombre.Text;
                        nombrePlanta = txtCultivo.SelectedValue.ToString();
                        tempMaxAlarma = Convert.ToDouble(txtMax.Text);
                        tempMinAlarma = Convert.ToDouble(txtMin.Text);
                        lapsoDias = Convert.ToInt32(txtDias.Text);

                        _Alarmas.InsertarAlarma(nombreAlarma,nombrePlanta,tempMaxAlarma,tempMinAlarma,lapsoDias);
                        MessageBox.Show("Se agrego exitosamente la alarma");
                        Limpiar();
                    }
                    else
                    {
                        MessageBox.Show("No puede agregar alarmas que contengan el mismo nombre de una alarma ya existente");
                        txtNombre.Text = "";
                    }
                    break;

                case "Baja":
                    nombreAlarma = txtNombre.Text;
                    if (Evaluar(nombreAlarma) == false)
                    {
                        _Alarmas.EliminarAlarma(nombreAlarma);
                        MessageBox.Show("Se ha eliminado exitosamente la alarma");
                        Limpiar();
                    }
                    else
                    {
                        MessageBox.Show("No se encontro la alarma ");
                    }
                    break;

                case "Cambio":
                    nombreAlarma = txtNombre.Text;
                    if (Evaluar(nombreAlarma) == false)
                    {
                        nombreAlarma = txtNombre.Text;
                        nombrePlanta = txtCultivo.SelectedValue.ToString();
                        tempMaxAlarma = Convert.ToDouble(txtMax.Text);
                        tempMinAlarma = Convert.ToDouble(txtMin.Text);
                        lapsoDias = Convert.ToInt32(txtDias.Text);

                        _Alarmas.ModificarAlarma(nombreAlarma, nombrePlanta, tempMaxAlarma, tempMinAlarma, lapsoDias);

                        MessageBox.Show("Se ha modificado exitosamente la alarma");
                        Limpiar();
                    }
                    else
                    {
                        MessageBox.Show("No se encontro la alarma ");
                    }
                    break;

            }
        }

        private void Limpiar()
        {
            txtNombre.Text = "";
            txtMax.Text = "";
            txtMin.Text = "";
            txtDias.Text = "";

            btnAgregar.Enabled = true;
            btnEditar.Enabled = true;
            btnEliminar.Enabled = true;
            MostrarAlarmas();
        }

        private Boolean Evaluar(String nombreAlarma) 
        {
            String nombre;
            tablaNombresAlarmas = _Alarmas.MostrarNombreAlarmas();

            foreach(DataRow row in tablaNombresAlarmas.Rows)
            {
                nombre = row["nombreAlarma"].ToString();
                if (nombre == nombreAlarma)
                {
                    return false;
                }
            }
            return true;
        }
    }
}
