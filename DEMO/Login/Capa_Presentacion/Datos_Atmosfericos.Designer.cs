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
            this.Datos_El_Mante = new System.Windows.Forms.DataGridView();
            this.dias = new System.Windows.Forms.ComboBox();
            this.btnFiltrar = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.Datos_El_Mante)).BeginInit();
            this.SuspendLayout();
            // 
            // Datos_El_Mante
            // 
            this.Datos_El_Mante.BackgroundColor = System.Drawing.Color.Gainsboro;
            this.Datos_El_Mante.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.Datos_El_Mante.Location = new System.Drawing.Point(12, 65);
            this.Datos_El_Mante.Name = "Datos_El_Mante";
            this.Datos_El_Mante.Size = new System.Drawing.Size(1149, 559);
            this.Datos_El_Mante.TabIndex = 0;
            // 
            // dias
            // 
            this.dias.FormattingEnabled = true;
            this.dias.Location = new System.Drawing.Point(360, 32);
            this.dias.Name = "dias";
            this.dias.Size = new System.Drawing.Size(121, 21);
            this.dias.TabIndex = 1;
            this.dias.Text = "7 días";
            // 
            // btnFiltrar
            // 
            this.btnFiltrar.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(207)))), ((int)(((byte)(221)))), ((int)(((byte)(144)))));
            this.btnFiltrar.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnFiltrar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnFiltrar.ForeColor = System.Drawing.Color.Black;
            this.btnFiltrar.Location = new System.Drawing.Point(511, 32);
            this.btnFiltrar.Name = "btnFiltrar";
            this.btnFiltrar.Size = new System.Drawing.Size(149, 23);
            this.btnFiltrar.TabIndex = 57;
            this.btnFiltrar.Text = "Filtrar";
            this.btnFiltrar.UseVisualStyleBackColor = false;
            this.btnFiltrar.Click += new System.EventHandler(this.btnFiltrar_Click);
            // 
            // Datos_Atmosfericos
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1182, 681);
            this.Controls.Add(this.btnFiltrar);
            this.Controls.Add(this.dias);
            this.Controls.Add(this.Datos_El_Mante);
            this.Name = "Datos_Atmosfericos";
            this.Text = "Datos_Atmosfericos";
            this.Load += new System.EventHandler(this.Datos_Atmosfericos_Load);
            ((System.ComponentModel.ISupportInitialize)(this.Datos_El_Mante)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataGridView Datos_El_Mante;
        private System.Windows.Forms.ComboBox dias;
        private System.Windows.Forms.Button btnFiltrar;
    }
}