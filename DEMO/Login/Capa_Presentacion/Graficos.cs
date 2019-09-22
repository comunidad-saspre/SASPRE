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
            ControlExtension.Draggable(button1, true);
        }

        private void panelPrincipal_Paint(object sender, PaintEventArgs e)
        {

        }

        private void Posicion_Tick(object sender, EventArgs e)
        {

            //Point locationOnForm = tomatepng.FindForm().PointToClient(tomatepng.Parent.PointToScreen(tomatepng.Location));
            //tomatepng.Location = new Point(locationOnForm.X, locationOnForm.Y);
            //MessageBox.Show("X:"+tomatepng.Location.X.ToString()); /*Aquí para obtener la localización de X*/
            //MessageBox.Show("Y:" + tomatepng.Location.Y.ToString()); /*Aqúí para obtener la localización de Y*/
        }

        private void tomatepng_DragEnter(object sender, DragEventArgs e)
        {
        }

        int i = 0;
        int NoTomate = 0;
        PictureBox pb;
        private void button1_Click(object sender, EventArgs e)
        {
            pb= new PictureBox();
            pb.Name = "tomate" + NoTomate++;
            pb.SizeMode = PictureBoxSizeMode.Zoom;
            pb.Image = Properties.Resources.TOMATE;
            pb.Location = new System.Drawing.Point(90, 25 + i);
            pb.Size = new System.Drawing.Size(50, 50);
            pb.Cursor = Cursors.Hand;
            this.panelPrincipal.Controls.Add(pb);
            ControlExtension.Draggable(pb , true);
            i += 60;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.panelPrincipal.Controls.Remove(pb);
        }

        private void button3_Click(object sender, EventArgs e)
        {
            this.panelPrincipal.Controls.Clear();
        }
    }
}
