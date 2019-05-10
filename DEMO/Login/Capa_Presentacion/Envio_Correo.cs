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
    public partial class Envio_Correo : Form
    {
        public Envio_Correo()
        {
            InitializeComponent();
        }

        private void btnEnviar_Click(object sender, EventArgs e)
        {
            var correo = new System.Net.Mail.MailMessage();
            correo.From = new System.Net.Mail.MailAddress("sistemarhvb@gmail.com");
            correo.To.Add(txtCorreo.Text);
            correo.Subject = "Recuperacion de contraseña";
            correo.Body = "Su contraseña es: *****";
            correo.IsBodyHtml = false;
            correo.Priority = System.Net.Mail.MailPriority.Normal;

            var smtp = new System.Net.Mail.SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.Credentials = new System.Net.NetworkCredential("sistemarhvb@gmail.com", "Skate1234");
            try
            {
                smtp.Send(correo);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error " + ex);
                throw;
            }
        }
    }
}
