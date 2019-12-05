namespace Capa_Presentacion
{
    partial class BitacoraAlmacen
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(BitacoraAlmacen));
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle4 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle3 = new System.Windows.Forms.DataGridViewCellStyle();
            this.panel1 = new System.Windows.Forms.Panel();
            this.label1 = new System.Windows.Forms.Label();
            this.btnCer = new System.Windows.Forms.Button();
            this.dgvAlmacen = new Bunifu.Framework.UI.BunifuCustomDataGrid();
            this.IDAlmacen = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.usuarioAlmacen = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.tipoObjeto = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.nombreObjeto = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.tipoSiembra = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Precio = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.cantidadObjeto = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.fechaIngreso = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.btnExportar = new System.Windows.Forms.Button();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvAlmacen)).BeginInit();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(88)))), ((int)(((byte)(143)))), ((int)(((byte)(39)))));
            this.panel1.Controls.Add(this.label1);
            this.panel1.Controls.Add(this.btnCer);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(906, 35);
            this.panel1.TabIndex = 144;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Cursor = System.Windows.Forms.Cursors.Hand;
            this.label1.Font = new System.Drawing.Font("Calibri", 20.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.White;
            this.label1.Location = new System.Drawing.Point(3, 0);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(210, 33);
            this.label1.TabIndex = 145;
            this.label1.Text = "Bitácora Almacen";
            // 
            // btnCer
            // 
            this.btnCer.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnCer.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("btnCer.BackgroundImage")));
            this.btnCer.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.btnCer.FlatAppearance.BorderSize = 0;
            this.btnCer.FlatAppearance.MouseDownBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(199)))), ((int)(((byte)(15)))), ((int)(((byte)(33)))));
            this.btnCer.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(232)))), ((int)(((byte)(17)))), ((int)(((byte)(35)))));
            this.btnCer.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnCer.Location = new System.Drawing.Point(856, 0);
            this.btnCer.Name = "btnCer";
            this.btnCer.Size = new System.Drawing.Size(50, 35);
            this.btnCer.TabIndex = 20;
            this.btnCer.UseVisualStyleBackColor = true;
            this.btnCer.Click += new System.EventHandler(this.BtnCer_Click);
            // 
            // dgvAlmacen
            // 
            this.dgvAlmacen.AllowUserToAddRows = false;
            this.dgvAlmacen.AllowUserToDeleteRows = false;
            dataGridViewCellStyle1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(224)))), ((int)(((byte)(224)))), ((int)(((byte)(224)))));
            this.dgvAlmacen.AlternatingRowsDefaultCellStyle = dataGridViewCellStyle1;
            this.dgvAlmacen.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.dgvAlmacen.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgvAlmacen.BackgroundColor = System.Drawing.Color.Gainsboro;
            this.dgvAlmacen.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.dgvAlmacen.CellBorderStyle = System.Windows.Forms.DataGridViewCellBorderStyle.None;
            this.dgvAlmacen.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.Single;
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(102)))), ((int)(((byte)(164)))), ((int)(((byte)(46)))));
            dataGridViewCellStyle2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle2.ForeColor = System.Drawing.Color.White;
            dataGridViewCellStyle2.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle2.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dgvAlmacen.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle2;
            this.dgvAlmacen.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvAlmacen.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.IDAlmacen,
            this.usuarioAlmacen,
            this.tipoObjeto,
            this.nombreObjeto,
            this.tipoSiembra,
            this.Precio,
            this.cantidadObjeto,
            this.fechaIngreso});
            this.dgvAlmacen.Cursor = System.Windows.Forms.Cursors.Hand;
            dataGridViewCellStyle4.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle4.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle4.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle4.ForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle4.SelectionBackColor = System.Drawing.SystemColors.ControlDarkDark;
            dataGridViewCellStyle4.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle4.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.dgvAlmacen.DefaultCellStyle = dataGridViewCellStyle4;
            this.dgvAlmacen.DoubleBuffered = true;
            this.dgvAlmacen.EnableHeadersVisualStyles = false;
            this.dgvAlmacen.HeaderBgColor = System.Drawing.Color.FromArgb(((int)(((byte)(102)))), ((int)(((byte)(164)))), ((int)(((byte)(46)))));
            this.dgvAlmacen.HeaderForeColor = System.Drawing.Color.White;
            this.dgvAlmacen.Location = new System.Drawing.Point(9, 96);
            this.dgvAlmacen.Name = "dgvAlmacen";
            this.dgvAlmacen.ReadOnly = true;
            this.dgvAlmacen.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.dgvAlmacen.RowHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            this.dgvAlmacen.RowHeadersVisible = false;
            this.dgvAlmacen.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvAlmacen.Size = new System.Drawing.Size(882, 342);
            this.dgvAlmacen.TabIndex = 145;
            this.dgvAlmacen.MouseMove += new System.Windows.Forms.MouseEventHandler(this.dgvAlmacen_MouseMove);
            // 
            // IDAlmacen
            // 
            this.IDAlmacen.DataPropertyName = "IDAlmacen";
            this.IDAlmacen.HeaderText = "IDAlmacen";
            this.IDAlmacen.Name = "IDAlmacen";
            this.IDAlmacen.ReadOnly = true;
            // 
            // usuarioAlmacen
            // 
            this.usuarioAlmacen.DataPropertyName = "usuarioAlmacen";
            this.usuarioAlmacen.HeaderText = "Usuario";
            this.usuarioAlmacen.Name = "usuarioAlmacen";
            this.usuarioAlmacen.ReadOnly = true;
            // 
            // tipoObjeto
            // 
            this.tipoObjeto.DataPropertyName = "tipoObjeto";
            this.tipoObjeto.HeaderText = "Tipo de objeto";
            this.tipoObjeto.Name = "tipoObjeto";
            this.tipoObjeto.ReadOnly = true;
            // 
            // nombreObjeto
            // 
            this.nombreObjeto.DataPropertyName = "nombreObjeto";
            this.nombreObjeto.HeaderText = "Nombre del objeto";
            this.nombreObjeto.Name = "nombreObjeto";
            this.nombreObjeto.ReadOnly = true;
            // 
            // tipoSiembra
            // 
            this.tipoSiembra.DataPropertyName = "tipoSiembra";
            this.tipoSiembra.HeaderText = "Tipo de Siembra";
            this.tipoSiembra.Name = "tipoSiembra";
            this.tipoSiembra.ReadOnly = true;
            // 
            // Precio
            // 
            this.Precio.DataPropertyName = "Precio";
            this.Precio.HeaderText = "Precio";
            this.Precio.Name = "Precio";
            this.Precio.ReadOnly = true;
            // 
            // cantidadObjeto
            // 
            this.cantidadObjeto.DataPropertyName = "cantidadObjeto";
            this.cantidadObjeto.HeaderText = "Cantidad de objeto";
            this.cantidadObjeto.Name = "cantidadObjeto";
            this.cantidadObjeto.ReadOnly = true;
            // 
            // fechaIngreso
            // 
            this.fechaIngreso.DataPropertyName = "fechaIngreso";
            dataGridViewCellStyle3.Format = "d";
            dataGridViewCellStyle3.NullValue = null;
            this.fechaIngreso.DefaultCellStyle = dataGridViewCellStyle3;
            this.fechaIngreso.HeaderText = "Fecha de ingreso";
            this.fechaIngreso.Name = "fechaIngreso";
            this.fechaIngreso.ReadOnly = true;
            // 
            // btnExportar
            // 
            this.btnExportar.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.btnExportar.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(88)))), ((int)(((byte)(143)))), ((int)(((byte)(39)))));
            this.btnExportar.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnExportar.FlatAppearance.BorderSize = 0;
            this.btnExportar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnExportar.ForeColor = System.Drawing.Color.White;
            this.btnExportar.Location = new System.Drawing.Point(782, 61);
            this.btnExportar.Name = "btnExportar";
            this.btnExportar.Size = new System.Drawing.Size(109, 29);
            this.btnExportar.TabIndex = 146;
            this.btnExportar.Text = "Exportar";
            this.btnExportar.UseVisualStyleBackColor = false;
            // 
            // BitacoraAlmacen
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(51)))), ((int)(((byte)(51)))), ((int)(((byte)(51)))));
            this.ClientSize = new System.Drawing.Size(906, 449);
            this.Controls.Add(this.btnExportar);
            this.Controls.Add(this.dgvAlmacen);
            this.Controls.Add(this.panel1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "BitacoraAlmacen";
            this.Text = "BitacoraAlmacen";
            this.Load += new System.EventHandler(this.BitacoraAlmacen_Load);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvAlmacen)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnCer;
        private Bunifu.Framework.UI.BunifuCustomDataGrid dgvAlmacen;
        private System.Windows.Forms.DataGridViewTextBoxColumn IDAlmacen;
        private System.Windows.Forms.DataGridViewTextBoxColumn usuarioAlmacen;
        private System.Windows.Forms.DataGridViewTextBoxColumn tipoObjeto;
        private System.Windows.Forms.DataGridViewTextBoxColumn nombreObjeto;
        private System.Windows.Forms.DataGridViewTextBoxColumn tipoSiembra;
        private System.Windows.Forms.DataGridViewTextBoxColumn Precio;
        private System.Windows.Forms.DataGridViewTextBoxColumn cantidadObjeto;
        private System.Windows.Forms.DataGridViewTextBoxColumn fechaIngreso;
        private System.Windows.Forms.Button btnExportar;
    }
}