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
    public partial class BitacoraAlmacen : Form
    {
        public BitacoraAlmacen()
        {
            InitializeComponent();
        }

        private void BtnCer_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void BitacoraAlmacen_Load(object sender, EventArgs e)
        {
            MostrarAlmacen();
        }

        private void MostrarAlmacen()
        {
            CN_Almacen _CN_Almacen = new CN_Almacen();
            dgvAlmacen.DataSource = _CN_Almacen.MostrarBitacoraAlmacen(Program.cargo, Program.nickname);
            if (Program.cargo != "Admin")
            {
                dgvAlmacen.Columns["usuarioAlmacen"].Visible = false;
            }
        }
    }
}
