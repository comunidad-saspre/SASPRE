namespace Capa_Presentacion
{
    partial class DialogoEditarInformacion
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.pbPicture = new System.Windows.Forms.PictureBox();
            this.txtNombre = new System.Windows.Forms.TextBox();
            this.txtApellidoPaterno = new System.Windows.Forms.TextBox();
            this.txtCorreo = new System.Windows.Forms.TextBox();
            this.txtApellidoMaterno = new System.Windows.Forms.TextBox();
            this.txtContraseña = new System.Windows.Forms.TextBox();
            this.txtNickname = new System.Windows.Forms.TextBox();
            this.btnCancelar = new System.Windows.Forms.Button();
            this.btnGuardar = new System.Windows.Forms.Button();
            this.btnBuscarUsuario = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.pbPicture)).BeginInit();
            this.SuspendLayout();
            // 
            // pbPicture
            // 
            this.pbPicture.Location = new System.Drawing.Point(229, 13);
            this.pbPicture.Name = "pbPicture";
            this.pbPicture.Size = new System.Drawing.Size(192, 142);
            this.pbPicture.TabIndex = 0;
            this.pbPicture.TabStop = false;
            // 
            // txtNombre
            // 
            this.txtNombre.ForeColor = System.Drawing.Color.DimGray;
            this.txtNombre.Location = new System.Drawing.Point(22, 100);
            this.txtNombre.Name = "txtNombre";
            this.txtNombre.Size = new System.Drawing.Size(201, 20);
            this.txtNombre.TabIndex = 1;
            this.txtNombre.Tag = "Nombre";
            this.txtNombre.Text = "Nombre";
            this.txtNombre.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.txtNombre.Click += new System.EventHandler(this.textboxes_Click);
            this.txtNombre.Leave += new System.EventHandler(this.textboxes_Leave);
            // 
            // txtApellidoPaterno
            // 
            this.txtApellidoPaterno.ForeColor = System.Drawing.Color.DimGray;
            this.txtApellidoPaterno.Location = new System.Drawing.Point(22, 126);
            this.txtApellidoPaterno.Name = "txtApellidoPaterno";
            this.txtApellidoPaterno.Size = new System.Drawing.Size(201, 20);
            this.txtApellidoPaterno.TabIndex = 2;
            this.txtApellidoPaterno.Tag = "Apellido Paterno";
            this.txtApellidoPaterno.Text = "Apellido Paterno";
            this.txtApellidoPaterno.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.txtApellidoPaterno.Click += new System.EventHandler(this.textboxes_Click);
            this.txtApellidoPaterno.Leave += new System.EventHandler(this.textboxes_Leave);
            // 
            // txtCorreo
            // 
            this.txtCorreo.ForeColor = System.Drawing.Color.DimGray;
            this.txtCorreo.Location = new System.Drawing.Point(21, 178);
            this.txtCorreo.Name = "txtCorreo";
            this.txtCorreo.Size = new System.Drawing.Size(201, 20);
            this.txtCorreo.TabIndex = 4;
            this.txtCorreo.Tag = "Correo";
            this.txtCorreo.Text = "Correo";
            this.txtCorreo.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.txtCorreo.Click += new System.EventHandler(this.textboxes_Click);
            this.txtCorreo.Leave += new System.EventHandler(this.textboxes_Leave);
            // 
            // txtApellidoMaterno
            // 
            this.txtApellidoMaterno.ForeColor = System.Drawing.Color.DimGray;
            this.txtApellidoMaterno.Location = new System.Drawing.Point(21, 152);
            this.txtApellidoMaterno.Name = "txtApellidoMaterno";
            this.txtApellidoMaterno.Size = new System.Drawing.Size(201, 20);
            this.txtApellidoMaterno.TabIndex = 3;
            this.txtApellidoMaterno.Tag = "Apellido Materno";
            this.txtApellidoMaterno.Text = "Apellido Materno";
            this.txtApellidoMaterno.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.txtApellidoMaterno.Click += new System.EventHandler(this.textboxes_Click);
            this.txtApellidoMaterno.Leave += new System.EventHandler(this.textboxes_Leave);
            // 
            // txtContraseña
            // 
            this.txtContraseña.ForeColor = System.Drawing.Color.DimGray;
            this.txtContraseña.Location = new System.Drawing.Point(22, 74);
            this.txtContraseña.Name = "txtContraseña";
            this.txtContraseña.Size = new System.Drawing.Size(157, 20);
            this.txtContraseña.TabIndex = 6;
            this.txtContraseña.Tag = "Contraseña";
            this.txtContraseña.Text = "Contraseña";
            this.txtContraseña.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.txtContraseña.Click += new System.EventHandler(this.textboxes_Click);
            this.txtContraseña.Leave += new System.EventHandler(this.textboxes_Leave);
            // 
            // txtNickname
            // 
            this.txtNickname.ForeColor = System.Drawing.Color.DimGray;
            this.txtNickname.Location = new System.Drawing.Point(22, 13);
            this.txtNickname.Name = "txtNickname";
            this.txtNickname.Size = new System.Drawing.Size(157, 20);
            this.txtNickname.TabIndex = 5;
            this.txtNickname.Tag = "Nickname";
            this.txtNickname.Text = "Nickname";
            this.txtNickname.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.txtNickname.Click += new System.EventHandler(this.textboxes_Click);
            this.txtNickname.Leave += new System.EventHandler(this.textboxes_Leave);
            // 
            // btnCancelar
            // 
            this.btnCancelar.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(207)))), ((int)(((byte)(221)))), ((int)(((byte)(144)))));
            this.btnCancelar.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnCancelar.Location = new System.Drawing.Point(228, 161);
            this.btnCancelar.Name = "btnCancelar";
            this.btnCancelar.Size = new System.Drawing.Size(88, 37);
            this.btnCancelar.TabIndex = 7;
            this.btnCancelar.Text = "Cancelar";
            this.btnCancelar.UseVisualStyleBackColor = false;
            this.btnCancelar.Click += new System.EventHandler(this.btnCancelar_Click);
            // 
            // btnGuardar
            // 
            this.btnGuardar.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(207)))), ((int)(((byte)(221)))), ((int)(((byte)(144)))));
            this.btnGuardar.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnGuardar.Location = new System.Drawing.Point(322, 161);
            this.btnGuardar.Name = "btnGuardar";
            this.btnGuardar.Size = new System.Drawing.Size(99, 37);
            this.btnGuardar.TabIndex = 8;
            this.btnGuardar.Text = "Guardar";
            this.btnGuardar.UseVisualStyleBackColor = false;
            this.btnGuardar.Click += new System.EventHandler(this.btnGuardar_Click);
            // 
            // btnBuscarUsuario
            // 
            this.btnBuscarUsuario.Location = new System.Drawing.Point(22, 39);
            this.btnBuscarUsuario.Name = "btnBuscarUsuario";
            this.btnBuscarUsuario.Size = new System.Drawing.Size(157, 26);
            this.btnBuscarUsuario.TabIndex = 9;
            this.btnBuscarUsuario.Text = "Buscar usuario";
            this.btnBuscarUsuario.UseVisualStyleBackColor = true;
            this.btnBuscarUsuario.Click += new System.EventHandler(this.btnBuscarUsuario_Click);
            // 
            // DialogoEditarInformacion
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(439, 235);
            this.Controls.Add(this.btnBuscarUsuario);
            this.Controls.Add(this.btnGuardar);
            this.Controls.Add(this.btnCancelar);
            this.Controls.Add(this.txtContraseña);
            this.Controls.Add(this.txtNickname);
            this.Controls.Add(this.txtCorreo);
            this.Controls.Add(this.txtApellidoMaterno);
            this.Controls.Add(this.txtApellidoPaterno);
            this.Controls.Add(this.txtNombre);
            this.Controls.Add(this.pbPicture);
            this.Name = "DialogoEditarInformacion";
            this.Text = "DialogoEditarInformacion";
            this.Load += new System.EventHandler(this.DialogoEditarInformacion_Load);
            ((System.ComponentModel.ISupportInitialize)(this.pbPicture)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.PictureBox pbPicture;
        private System.Windows.Forms.TextBox txtNombre;
        private System.Windows.Forms.TextBox txtApellidoPaterno;
        private System.Windows.Forms.TextBox txtCorreo;
        private System.Windows.Forms.TextBox txtApellidoMaterno;
        private System.Windows.Forms.TextBox txtContraseña;
        private System.Windows.Forms.TextBox txtNickname;
        private System.Windows.Forms.Button btnCancelar;
        private System.Windows.Forms.Button btnGuardar;
        private System.Windows.Forms.Button btnBuscarUsuario;
    }
}