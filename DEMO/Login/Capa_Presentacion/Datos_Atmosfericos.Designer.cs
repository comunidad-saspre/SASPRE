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
            this.filtrar = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.Datos_El_Mante)).BeginInit();
            this.SuspendLayout();
            // 
            // Datos_El_Mante
            // 
            this.Datos_El_Mante.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.Datos_El_Mante.Location = new System.Drawing.Point(12, 65);
            this.Datos_El_Mante.Name = "Datos_El_Mante";
            this.Datos_El_Mante.Size = new System.Drawing.Size(1149, 403);
            this.Datos_El_Mante.TabIndex = 0;
            // 
            // dias
            // 
            this.dias.FormattingEnabled = true;
            this.dias.Location = new System.Drawing.Point(339, 32);
            this.dias.Name = "dias";
            this.dias.Size = new System.Drawing.Size(121, 21);
            this.dias.TabIndex = 1;
            this.dias.Text = "7 días";
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
            // Datos_Atmosfericos
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1182, 681);
            this.Controls.Add(this.filtrar);
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
        private System.Windows.Forms.Button filtrar;
    }
}