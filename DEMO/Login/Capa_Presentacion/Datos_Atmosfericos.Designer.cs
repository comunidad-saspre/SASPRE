namespace Capa_Presentacion
{
    partial class Datos_Atmosfericos
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
            this.dtgDatosElMante = new System.Windows.Forms.DataGridView();
            this.dias = new System.Windows.Forms.ComboBox();
            this.filtrar = new System.Windows.Forms.Button();
            this.button1 = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dtgDatosElMante)).BeginInit();
            this.SuspendLayout();
            // 
            // dtgDatosElMante
            // 
            this.dtgDatosElMante.AllowUserToAddRows = false;
            this.dtgDatosElMante.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dtgDatosElMante.Location = new System.Drawing.Point(12, 65);
            this.dtgDatosElMante.Name = "dtgDatosElMante";
            this.dtgDatosElMante.ReadOnly = true;
            this.dtgDatosElMante.Size = new System.Drawing.Size(1149, 403);
            this.dtgDatosElMante.TabIndex = 0;
            // 
            // dias
            // 
            this.dias.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.dias.FormattingEnabled = true;
            this.dias.Location = new System.Drawing.Point(339, 32);
            this.dias.Name = "dias";
            this.dias.Size = new System.Drawing.Size(121, 21);
            this.dias.TabIndex = 1;
            // 
            // filtrar
            // 
            this.filtrar.Location = new System.Drawing.Point(495, 32);
            this.filtrar.Name = "filtrar";
            this.filtrar.Size = new System.Drawing.Size(75, 23);
            this.filtrar.TabIndex = 2;
            this.filtrar.Text = "Filtrar";
            this.filtrar.UseVisualStyleBackColor = true;
            this.filtrar.Click += new System.EventHandler(this.filtrar_Click);
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(676, 32);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 23);
            this.button1.TabIndex = 3;
            this.button1.Text = "button1";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // Datos_Atmosfericos
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1182, 681);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.filtrar);
            this.Controls.Add(this.dias);
            this.Controls.Add(this.dtgDatosElMante);
            this.Name = "Datos_Atmosfericos";
            this.Text = "Datos_Atmosfericos";
            this.Load += new System.EventHandler(this.Datos_Atmosfericos_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dtgDatosElMante)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataGridView dtgDatosElMante;
        private System.Windows.Forms.ComboBox dias;
        private System.Windows.Forms.Button filtrar;
        private System.Windows.Forms.Button button1;
    }
}