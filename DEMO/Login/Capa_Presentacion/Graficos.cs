﻿using System;
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
            ControlExtension.Draggable(checkBox1, true);
            ControlExtension.Draggable(label1, true);
            ControlExtension.Draggable(button1, true);
            ControlExtension.Draggable(tomatepng, true);
        }

        private void panelPrincipal_Paint(object sender, PaintEventArgs e)
        {

        }

        private void Posicion_Tick(object sender, EventArgs e)
        {

            Point locationOnForm = tomatepng.FindForm().PointToClient(tomatepng.Parent.PointToScreen(tomatepng.Location));
            tomatepng.Location = new Point(locationOnForm.X, locationOnForm.Y);
            //MessageBox.Show("X:"+tomatepng.Location.X.ToString());
            //MessageBox.Show("Y:" + tomatepng.Location.Y.ToString());
        }

        private void tomatepng_DragEnter(object sender, DragEventArgs e)
        {
        }

        int i = 0;
        int NoTomate = 0;
        private void button1_Click(object sender, EventArgs e)
        {
            PictureBox pb = new PictureBox();
            pb.Name = "tomate" + NoTomate++;
            pb.SizeMode = PictureBoxSizeMode.Zoom;
            pb.Image = Properties.Resources.TOMATE;
            pb.Location = new System.Drawing.Point(90, 25 + i);
            pb.Size = new System.Drawing.Size(50, 50);
            this.panelPrincipal.Controls.Add(pb);
            ControlExtension.Draggable(pb , true);
            i += 60;
        }
    }
}
