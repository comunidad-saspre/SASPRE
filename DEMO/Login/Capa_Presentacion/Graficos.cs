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
    public partial class Graficos : Form
    {
        public Graficos()
        {
            InitializeComponent();
        }

        private void Graficos_Load(object sender, EventArgs e)
        {
        }

        private void panelPrincipal_Paint(object sender, PaintEventArgs e)
        {

        }

        private void Posicion_Tick(object sender, EventArgs e)
        {

        }

        private void tomatepng_DragEnter(object sender, DragEventArgs e)
        {
        }

        int i = 0;
        int j = 0;
        int NoTomate = 0;
        int NoTerreno = 0;

        PictureBox tomates;
        //PictureBox terrenos;

        private void button1_Click(object sender, EventArgs e)
        {
            tomates= new PictureBox();
            tomates.Name = "tomate" + NoTomate++;
            tomates.SizeMode = PictureBoxSizeMode.Zoom;
            tomates.Image = Properties.Resources.TOMATE;
            tomates.BackColor = Color.Transparent;
            tomates.BringToFront();
            tomates.Location = new System.Drawing.Point(90, 25 + i);
            tomates.Size = new System.Drawing.Size(30, 30);
            tomates.Cursor = Cursors.Hand;
            this.panelPrincipal.Controls.Add(tomates);
            ControlExtension.Draggable(tomates, true);
            i += 60;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.panelPrincipal.Controls.Remove(tomates);
        }

        private void button3_Click(object sender, EventArgs e)
        {
            this.panelPrincipal.Controls.Clear();
        }

        Bunifu.Framework.UI.BunifuImageButton terrenos;

        private void button6_Click(object sender, EventArgs e)
        {
            terrenos = new Bunifu.Framework.UI.BunifuImageButton();
            terrenos.Name = "terreno" + NoTerreno++;
            terrenos.SizeMode = PictureBoxSizeMode.Zoom;
            terrenos.BackgroundImage = Properties.Resources.TIERRA;
            //terrenos.Image = Properties.Resources.TOMATE;
            terrenos.BackColor = Color.Transparent;
            terrenos.Zoom = 0;
            terrenos.SendToBack();
           // terrenos.Location = new System.Drawing.Point(90, 25 + j);
            terrenos.Size = new System.Drawing.Size(200, 200);
            terrenos.Cursor = Cursors.Hand;
            this.layout.Controls.Add(terrenos);
            //ControlExtension.Draggable(terrenos, true);
            //j += 60;
        }

        private void button4_Click(object sender, EventArgs e)
        {
            this.layout.Controls.Remove(terrenos);
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (comboBox1.SelectedIndex)
            {
                case 0:
                    terrenos.Image = Properties.Resources.MAÍZFINAL;
                    break;
                case 1:
                    terrenos.Image = Properties.Resources.SORGO;
                    break;
                case 2:
                    terrenos.Image = Properties.Resources.TOMATE;
                    break;
                case 3:
                    terrenos.Image = Properties.Resources.CEBOLLA;
                    break;
                case 4:
                    terrenos.Image = Properties.Resources.SOYA3;
                    break;
            }
        }

        private void button1_Click_1(object sender, EventArgs e)
        {

            Point locationOnForm = terrenos.FindForm().PointToClient(terrenos.Parent.PointToScreen(terrenos.Location));
            terrenos.Location = new Point(locationOnForm.X, locationOnForm.Y);
            MessageBox.Show("X:" + terrenos.Location.X.ToString()); /*Aquí para obtener la localización de X*/
            MessageBox.Show("Y:" + terrenos.Location.Y.ToString()); /*Aqúí para obtener la localización de Y*/
        }
    }
}
