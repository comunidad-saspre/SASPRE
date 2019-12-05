namespace Capa_Presentacion
{
    partial class FRM_FiltroCultivos
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
            this.btn_crear_reporte = new System.Windows.Forms.Button();
            this.cmb_cultivo = new System.Windows.Forms.ComboBox();
            this.cmb_plantado = new System.Windows.Forms.ComboBox();
            this.cmb_cosecha = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // btn_crear_reporte
            // 
            this.btn_crear_reporte.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(88)))), ((int)(((byte)(143)))), ((int)(((byte)(39)))));
            this.btn_crear_reporte.FlatAppearance.BorderSize = 0;
            this.btn_crear_reporte.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btn_crear_reporte.ForeColor = System.Drawing.Color.White;
            this.btn_crear_reporte.Location = new System.Drawing.Point(796, 617);
            this.btn_crear_reporte.Name = "btn_crear_reporte";
            this.btn_crear_reporte.Size = new System.Drawing.Size(145, 40);
            this.btn_crear_reporte.TabIndex = 0;
            this.btn_crear_reporte.Text = "button1";
            this.btn_crear_reporte.UseVisualStyleBackColor = false;
            this.btn_crear_reporte.Click += new System.EventHandler(this.btn_crear_reporte_Click);
            // 
            // cmb_cultivo
            // 
            this.cmb_cultivo.Font = new System.Drawing.Font("Calibri", 15.75F);
            this.cmb_cultivo.FormattingEnabled = true;
            this.cmb_cultivo.Location = new System.Drawing.Point(228, 104);
            this.cmb_cultivo.Name = "cmb_cultivo";
            this.cmb_cultivo.Size = new System.Drawing.Size(247, 34);
            this.cmb_cultivo.TabIndex = 1;
            // 
            // cmb_plantado
            // 
            this.cmb_plantado.Font = new System.Drawing.Font("Calibri", 15.75F);
            this.cmb_plantado.FormattingEnabled = true;
            this.cmb_plantado.Location = new System.Drawing.Point(228, 146);
            this.cmb_plantado.Name = "cmb_plantado";
            this.cmb_plantado.Size = new System.Drawing.Size(247, 34);
            this.cmb_plantado.TabIndex = 2;
            // 
            // cmb_cosecha
            // 
            this.cmb_cosecha.Font = new System.Drawing.Font("Calibri", 15.75F);
            this.cmb_cosecha.FormattingEnabled = true;
            this.cmb_cosecha.Location = new System.Drawing.Point(228, 190);
            this.cmb_cosecha.Name = "cmb_cosecha";
            this.cmb_cosecha.Size = new System.Drawing.Size(247, 34);
            this.cmb_cosecha.TabIndex = 3;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Calibri", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.label1.Location = new System.Drawing.Point(37, 25);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(191, 39);
            this.label1.TabIndex = 66;
            this.label1.Text = "Filtro cultivos";
            // 
            // FRM_FiltroCultivos
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(969, 681);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.cmb_cosecha);
            this.Controls.Add(this.cmb_plantado);
            this.Controls.Add(this.cmb_cultivo);
            this.Controls.Add(this.btn_crear_reporte);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "FRM_FiltroCultivos";
            this.Text = "FRM_FiltroCultivos";
            this.Load += new System.EventHandler(this.FRM_FiltroCultivos_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btn_crear_reporte;
        private System.Windows.Forms.ComboBox cmb_cultivo;
        private System.Windows.Forms.ComboBox cmb_plantado;
        private System.Windows.Forms.ComboBox cmb_cosecha;
        private System.Windows.Forms.Label label1;
    }
}