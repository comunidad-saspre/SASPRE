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
    public partial class alertCalendario : Form
    {
        public alertCalendario(string _message)
        {
            InitializeComponent();

            message.Text = _message;

                    this.BackColor = Color.FromArgb(31, 139, 188);
                    pictureBox.Image = imageList1.Images[0];
            
        }
        public static void Show(string message)
        {
            new alertCalendario(message).Show();
        }

        private void alertCalendario_Load(object sender, EventArgs e)
        {
            this.Top = Screen.PrimaryScreen.Bounds.Height - Screen.PrimaryScreen.Bounds.Height/2-500;
            this.Left = Screen.PrimaryScreen.Bounds.Width - Screen.PrimaryScreen.Bounds.Width/2-500;

           // show.Start();
        }
        
        private void btnCer_Click(object sender, EventArgs e)
        {
            close.Start();

        }

        private void timeout_Tick(object sender, EventArgs e)
        {
            close.Start();
        }
        int interval = 0;

        private void show_Tick(object sender, EventArgs e)
        {
            if (this.Top < 60)
            {
                this.Top += interval;
                interval += 2;
            }
            else
            {
                show.Stop();
            }
        }

        private void close_Tick(object sender, EventArgs e)
        {
            if (this.Opacity > 0)
            {
                this.Opacity -= 0.1;
            }
            else
            {
                this.Close();
            }
        }
       
    }
}
