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
            this.SuspendLayout();
            // 
            // btn_crear_reporte
            // 
            this.btn_crear_reporte.Location = new System.Drawing.Point(447, 100);
            this.btn_crear_reporte.Name = "btn_crear_reporte";
            this.btn_crear_reporte.Size = new System.Drawing.Size(142, 64);
            this.btn_crear_reporte.TabIndex = 0;
            this.btn_crear_reporte.Text = "button1";
            this.btn_crear_reporte.UseVisualStyleBackColor = true;
            this.btn_crear_reporte.Click += new System.EventHandler(this.btn_crear_reporte_Click);
            // 
            // cmb_cultivo
            // 
            this.cmb_cultivo.FormattingEnabled = true;
            this.cmb_cultivo.Location = new System.Drawing.Point(126, 100);
            this.cmb_cultivo.Name = "cmb_cultivo";
            this.cmb_cultivo.Size = new System.Drawing.Size(121, 21);
            this.cmb_cultivo.TabIndex = 1;
            // 
            // cmb_plantado
            // 
            this.cmb_plantado.FormattingEnabled = true;
            this.cmb_plantado.Location = new System.Drawing.Point(126, 142);
            this.cmb_plantado.Name = "cmb_plantado";
            this.cmb_plantado.Size = new System.Drawing.Size(121, 21);
            this.cmb_plantado.TabIndex = 2;
            // 
            // cmb_cosecha
            // 
            this.cmb_cosecha.FormattingEnabled = true;
            this.cmb_cosecha.Location = new System.Drawing.Point(126, 186);
            this.cmb_cosecha.Name = "cmb_cosecha";
            this.cmb_cosecha.Size = new System.Drawing.Size(121, 21);
            this.cmb_cosecha.TabIndex = 3;
            // 
            // FRM_FiltroCultivos
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.cmb_cosecha);
            this.Controls.Add(this.cmb_plantado);
            this.Controls.Add(this.cmb_cultivo);
            this.Controls.Add(this.btn_crear_reporte);
            this.Name = "FRM_FiltroCultivos";
            this.Text = "FRM_FiltroCultivos";
            this.Load += new System.EventHandler(this.FRM_FiltroCultivos_Load);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btn_crear_reporte;
        private System.Windows.Forms.ComboBox cmb_cultivo;
        private System.Windows.Forms.ComboBox cmb_plantado;
        private System.Windows.Forms.ComboBox cmb_cosecha;
    }
}