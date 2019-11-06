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
    public partial class Costos : Form
    {
        String cultivo, opcion="";
        double precio;
        int id;
        DataTable tablaCostos = new DataTable();
        private CN_Costos _Costos = new CN_Costos();

        public Costos()
        {
            InitializeComponent();
        }

        private void btnAgregar_Click(object sender, EventArgs e)
        {
            desbloquear();
            opcion = "agregar";
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            desbloquear();
            opcion = "modificar";
        }

        private void btnAceptar_Click(object sender, EventArgs e)
        {
            bloquear();

            switch (opcion)
            {
                case "agregar":
                    cultivo = cbCultivo.Text;
                    if (Evaluar(cultivo) == true)
                    {
                        precio = Convert.ToDouble(tbPrecio.Text);
                        _Costos.InsertarCostos(cultivo, precio);
                        alert.Show("Se agrego exitosamente el costo", Alertype.succes);
                        Limpiar();
                    }
                    else
                    {
                        alert.Show("No se puede agregar costo a un cultivo que ya a sido registrado", Alertype.warning);
                        Limpiar();
                    }
                    break;

                case "modificar":
                    cultivo = cbCultivo.Text;
                    if (Evaluar(cultivo) == false)
                    {

                        precio = Convert.ToDouble(tbPrecio.Text);

                        _Costos.ModificarCostos (cultivo, precio);

                        alert.Show("Se ha modificado el costo", Alertype.succes);
                        Limpiar();
                    }
                    else
                    {
                        alert.Show("No se encontro el cultivo", Alertype.warning);
                        Limpiar();
                    }
                    break;
            }
        }

        private void btnElimiar_Click(object sender, EventArgs e)
        {

            cultivo = cbCultivo.Text;
            if (Evaluar(cultivo) == false)
            {
                _Costos.ElimiarCostos(cultivo);
                alert.Show("Se ha eliminado el costo", Alertype.succes);
                Limpiar();
            }
            else
            {
                alert.Show("No se encontro el cultivo", Alertype.warning);
                Limpiar();
            }
        }

        public void bloquear()
        {
            lbCultivo.Enabled = false;
            lbPrecio.Enabled = false;
            cbCultivo.Enabled = false;
            tbPrecio.Enabled = false;
            btnAceptar.Enabled = false;

        }
        public void desbloquear()
        {
            lbCultivo.Enabled = true;
            lbPrecio.Enabled = true;
            cbCultivo.Enabled = true;
            tbPrecio.Enabled = true;
            btnAceptar.Enabled = true;
        }

        private Boolean Evaluar(String cultivo)
        {
            String nombre;
            tablaCostos = _Costos.MostrarCostos();

            foreach (DataRow row in tablaCostos.Rows)
            {
                nombre = row["cultivo"].ToString();
                if (nombre == cultivo)
                {
                    return false;
                }
            }
            return true;
        }

        private void Costos_Load(object sender, EventArgs e)
        {
            
            tablaCostos = _Costos.MostrarCostos();
           // cbCultivo.SelectedIndex = 0;
            cbCultivo.Items.Clear();

            foreach (DataRow row in tablaCostos.Rows)
            {
                cbCultivo.Items.Add(row["cultivo"].ToString());
                
            }
        }

        public void Limpiar()
        {
            tbPrecio.Text = "";
            cbCultivo.SelectedIndex = 0;
        }
    }
}
