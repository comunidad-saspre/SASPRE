namespace Capa_Presentacion
{
    partial class AdministrarCultivos2
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
            this.components = new System.ComponentModel.Container();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle3 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle4 = new System.Windows.Forms.DataGridViewCellStyle();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(AdministrarCultivos2));
            this.panelContenedor = new Capa_Presentacion.MyPanel();
            this.cbPlanta = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.lblNombreCientifico = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.lblDescripcion = new System.Windows.Forms.Label();
            this.picCultivo = new System.Windows.Forms.PictureBox();
            this.dgvCultivo = new Bunifu.Framework.UI.BunifuCustomDataGrid();
            this.Cultivo = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Plantación = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Cosechación = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Causa = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Estado = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.txtBuscarUnCultivo = new System.Windows.Forms.TextBox();
            this.btnAgregar = new System.Windows.Forms.Button();
            this.label6 = new System.Windows.Forms.Label();
            this.btnEditar = new System.Windows.Forms.Button();
            this.label7 = new System.Windows.Forms.Label();
            this.lblNombre = new System.Windows.Forms.Label();
            this.lblCaracteristicas = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.imageListPlantas = new System.Windows.Forms.ImageList(this.components);
            this.dtpPlantado = new System.Windows.Forms.DateTimePicker();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.dtpCosecha = new System.Windows.Forms.DateTimePicker();
            this.label5 = new System.Windows.Forms.Label();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.panelContenedor.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.picCultivo)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvCultivo)).BeginInit();
            this.SuspendLayout();
            // 
            // panelContenedor
            // 
            this.panelContenedor.Controls.Add(this.textBox1);
            this.panelContenedor.Controls.Add(this.label5);
            this.panelContenedor.Controls.Add(this.label4);
            this.panelContenedor.Controls.Add(this.dtpCosecha);
            this.panelContenedor.Controls.Add(this.label3);
            this.panelContenedor.Controls.Add(this.dtpPlantado);
            this.panelContenedor.Controls.Add(this.cbPlanta);
            this.panelContenedor.Controls.Add(this.label1);
            this.panelContenedor.Controls.Add(this.lblNombreCientifico);
            this.panelContenedor.Controls.Add(this.label2);
            this.panelContenedor.Controls.Add(this.lblDescripcion);
            this.panelContenedor.Controls.Add(this.picCultivo);
            this.panelContenedor.Controls.Add(this.dgvCultivo);
            this.panelContenedor.Controls.Add(this.txtBuscarUnCultivo);
            this.panelContenedor.Controls.Add(this.btnAgregar);
            this.panelContenedor.Controls.Add(this.label6);
            this.panelContenedor.Controls.Add(this.btnEditar);
            this.panelContenedor.Controls.Add(this.label7);
            this.panelContenedor.Controls.Add(this.lblNombre);
            this.panelContenedor.Controls.Add(this.lblCaracteristicas);
            this.panelContenedor.Controls.Add(this.label9);
            this.panelContenedor.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panelContenedor.Location = new System.Drawing.Point(0, 0);
            this.panelContenedor.Name = "panelContenedor";
            this.panelContenedor.Size = new System.Drawing.Size(985, 720);
            this.panelContenedor.TabIndex = 56;
            // 
            // cbPlanta
            // 
            this.cbPlanta.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbPlanta.FormattingEnabled = true;
            this.cbPlanta.Items.AddRange(new object[] {
            "Maíz",
            "Sorgo",
            "Soya",
            "Caña",
            "Cebolla"});
            this.cbPlanta.Location = new System.Drawing.Point(42, 329);
            this.cbPlanta.Name = "cbPlanta";
            this.cbPlanta.Size = new System.Drawing.Size(255, 21);
            this.cbPlanta.TabIndex = 56;
            this.cbPlanta.SelectedIndexChanged += new System.EventHandler(this.cbPlanta_SelectedIndexChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(37, 22);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(203, 25);
            this.label1.TabIndex = 30;
            this.label1.Text = "Administrar Cultivos";
            // 
            // lblNombreCientifico
            // 
            this.lblNombreCientifico.AutoSize = true;
            this.lblNombreCientifico.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblNombreCientifico.ForeColor = System.Drawing.SystemColors.ButtonShadow;
            this.lblNombreCientifico.Location = new System.Drawing.Point(330, 368);
            this.lblNombreCientifico.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblNombreCientifico.Name = "lblNombreCientifico";
            this.lblNombreCientifico.Size = new System.Drawing.Size(78, 20);
            this.lblNombreCientifico.TabIndex = 55;
            this.lblNombreCientifico.Text = "Zea Mays";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(38, 66);
            this.label2.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(129, 20);
            this.label2.TabIndex = 31;
            this.label2.Text = "Buscar un cultivo";
            // 
            // lblDescripcion
            // 
            this.lblDescripcion.AutoSize = true;
            this.lblDescripcion.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblDescripcion.ForeColor = System.Drawing.SystemColors.ButtonShadow;
            this.lblDescripcion.Location = new System.Drawing.Point(699, 246);
            this.lblDescripcion.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblDescripcion.Name = "lblDescripcion";
            this.lblDescripcion.Size = new System.Drawing.Size(290, 20);
            this.lblDescripcion.TabIndex = 54;
            this.lblDescripcion.Text = "Lorem ipsum Lorem ipsum Lorem ipsum";
            // 
            // picCultivo
            // 
            this.picCultivo.Image = global::Capa_Presentacion.Properties.Resources.MAÍZFINAL;
            this.picCultivo.Location = new System.Drawing.Point(42, 363);
            this.picCultivo.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.picCultivo.Name = "picCultivo";
            this.picCultivo.Size = new System.Drawing.Size(255, 207);
            this.picCultivo.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.picCultivo.TabIndex = 32;
            this.picCultivo.TabStop = false;
            // 
            // dgvCultivo
            // 
            dataGridViewCellStyle3.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(224)))), ((int)(((byte)(224)))), ((int)(((byte)(224)))));
            this.dgvCultivo.AlternatingRowsDefaultCellStyle = dataGridViewCellStyle3;
            this.dgvCultivo.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgvCultivo.BackgroundColor = System.Drawing.Color.Gainsboro;
            this.dgvCultivo.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.dgvCultivo.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.Single;
            dataGridViewCellStyle4.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle4.BackColor = System.Drawing.Color.DarkGreen;
            dataGridViewCellStyle4.Font = new System.Drawing.Font("Century Gothic", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle4.ForeColor = System.Drawing.Color.White;
            dataGridViewCellStyle4.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle4.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle4.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dgvCultivo.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle4;
            this.dgvCultivo.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvCultivo.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Cultivo,
            this.Plantación,
            this.Cosechación,
            this.Causa,
            this.Estado});
            this.dgvCultivo.Cursor = System.Windows.Forms.Cursors.Hand;
            this.dgvCultivo.DoubleBuffered = true;
            this.dgvCultivo.EnableHeadersVisualStyles = false;
            this.dgvCultivo.HeaderBgColor = System.Drawing.Color.DarkGreen;
            this.dgvCultivo.HeaderForeColor = System.Drawing.Color.White;
            this.dgvCultivo.Location = new System.Drawing.Point(42, 97);
            this.dgvCultivo.MultiSelect = false;
            this.dgvCultivo.Name = "dgvCultivo";
            this.dgvCultivo.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.dgvCultivo.RowHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            this.dgvCultivo.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvCultivo.Size = new System.Drawing.Size(650, 215);
            this.dgvCultivo.TabIndex = 53;
            this.dgvCultivo.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.bunifuCustomDataGrid1_CellContentClick);
            // 
            // Cultivo
            // 
            this.Cultivo.HeaderText = "Cultivo";
            this.Cultivo.Name = "Cultivo";
            this.Cultivo.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            // 
            // Plantación
            // 
            this.Plantación.HeaderText = "Fecha Plantado";
            this.Plantación.Name = "Plantación";
            // 
            // Cosechación
            // 
            this.Cosechación.HeaderText = "Fecha Cosecha";
            this.Cosechación.Name = "Cosechación";
            // 
            // Causa
            // 
            this.Causa.HeaderText = "Cantidad";
            this.Causa.Name = "Causa";
            // 
            // Estado
            // 
            this.Estado.HeaderText = "Estado";
            this.Estado.Name = "Estado";
            // 
            // txtBuscarUnCultivo
            // 
            this.txtBuscarUnCultivo.Location = new System.Drawing.Point(215, 66);
            this.txtBuscarUnCultivo.Name = "txtBuscarUnCultivo";
            this.txtBuscarUnCultivo.Size = new System.Drawing.Size(477, 20);
            this.txtBuscarUnCultivo.TabIndex = 36;
            // 
            // btnAgregar
            // 
            this.btnAgregar.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(207)))), ((int)(((byte)(221)))), ((int)(((byte)(144)))));
            this.btnAgregar.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnAgregar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnAgregar.ForeColor = System.Drawing.Color.White;
            this.btnAgregar.Location = new System.Drawing.Point(537, 649);
            this.btnAgregar.Name = "btnAgregar";
            this.btnAgregar.Size = new System.Drawing.Size(155, 34);
            this.btnAgregar.TabIndex = 52;
            this.btnAgregar.Text = "Agregar";
            this.btnAgregar.UseVisualStyleBackColor = false;
            this.btnAgregar.Click += new System.EventHandler(this.button3_Click);
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(699, 283);
            this.label6.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(114, 20);
            this.label6.TabIndex = 40;
            this.label6.Text = "Caracteristicas";
            // 
            // btnEditar
            // 
            this.btnEditar.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(207)))), ((int)(((byte)(221)))), ((int)(((byte)(144)))));
            this.btnEditar.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnEditar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnEditar.ForeColor = System.Drawing.Color.White;
            this.btnEditar.Location = new System.Drawing.Point(376, 649);
            this.btnEditar.Name = "btnEditar";
            this.btnEditar.Size = new System.Drawing.Size(155, 34);
            this.btnEditar.TabIndex = 51;
            this.btnEditar.Text = "Editar";
            this.btnEditar.UseVisualStyleBackColor = false;
            this.btnEditar.Click += new System.EventHandler(this.button2_Click);
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label7.Location = new System.Drawing.Point(699, 209);
            this.label7.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(92, 20);
            this.label7.TabIndex = 42;
            this.label7.Text = "Descripción";
            // 
            // lblNombre
            // 
            this.lblNombre.AutoSize = true;
            this.lblNombre.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblNombre.Location = new System.Drawing.Point(136, 575);
            this.lblNombre.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblNombre.Name = "lblNombre";
            this.lblNombre.Size = new System.Drawing.Size(42, 20);
            this.lblNombre.TabIndex = 45;
            this.lblNombre.Text = "Maíz";
            // 
            // lblCaracteristicas
            // 
            this.lblCaracteristicas.AutoSize = true;
            this.lblCaracteristicas.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblCaracteristicas.ForeColor = System.Drawing.SystemColors.ButtonShadow;
            this.lblCaracteristicas.Location = new System.Drawing.Point(699, 320);
            this.lblCaracteristicas.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblCaracteristicas.Name = "lblCaracteristicas";
            this.lblCaracteristicas.Size = new System.Drawing.Size(290, 20);
            this.lblCaracteristicas.TabIndex = 43;
            this.lblCaracteristicas.Text = "Lorem ipsum Lorem ipsum Lorem ipsum";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label9.Location = new System.Drawing.Point(330, 331);
            this.label9.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(131, 20);
            this.label9.TabIndex = 44;
            this.label9.Text = "Nombre científico";
            // 
            // imageListPlantas
            // 
            this.imageListPlantas.ImageStream = ((System.Windows.Forms.ImageListStreamer)(resources.GetObject("imageListPlantas.ImageStream")));
            this.imageListPlantas.TransparentColor = System.Drawing.Color.Transparent;
            this.imageListPlantas.Images.SetKeyName(0, "MAÍZFINAL.jpg");
            this.imageListPlantas.Images.SetKeyName(1, "SORGO.png");
            this.imageListPlantas.Images.SetKeyName(2, "SOYA.jpg");
            this.imageListPlantas.Images.SetKeyName(3, "CAÑA.jpg");
            this.imageListPlantas.Images.SetKeyName(4, "CEBOLLA.png");
            this.imageListPlantas.Images.SetKeyName(5, "SOYA2.jpg");
            // 
            // dtpPlantado
            // 
            this.dtpPlantado.Location = new System.Drawing.Point(334, 426);
            this.dtpPlantado.Name = "dtpPlantado";
            this.dtpPlantado.Size = new System.Drawing.Size(200, 20);
            this.dtpPlantado.TabIndex = 57;
            this.dtpPlantado.ValueChanged += new System.EventHandler(this.dtpPlantado_ValueChanged);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(330, 397);
            this.label3.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(146, 20);
            this.label3.TabIndex = 58;
            this.label3.Text = "Fecha de plantado:";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(330, 461);
            this.label4.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(209, 20);
            this.label4.TabIndex = 60;
            this.label4.Text = "Fecha tentativa de cosecha:";
            // 
            // dtpCosecha
            // 
            this.dtpCosecha.Location = new System.Drawing.Point(334, 491);
            this.dtpCosecha.Name = "dtpCosecha";
            this.dtpCosecha.Size = new System.Drawing.Size(200, 20);
            this.dtpCosecha.TabIndex = 59;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(330, 524);
            this.label5.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(73, 20);
            this.label5.TabIndex = 61;
            this.label5.Text = "Cantidad";
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(334, 550);
            this.textBox1.MaxLength = 4;
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(200, 20);
            this.textBox1.TabIndex = 62;
            // 
            // AdministrarCultivos2
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(985, 720);
            this.Controls.Add(this.panelContenedor);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "AdministrarCultivos2";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "AdministrarCultivos2";
            this.Load += new System.EventHandler(this.AdministrarCultivos2_Load);
            this.panelContenedor.ResumeLayout(false);
            this.panelContenedor.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.picCultivo)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvCultivo)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btnAgregar;
        private System.Windows.Forms.Button btnEditar;
        private System.Windows.Forms.Label lblNombre;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label lblCaracteristicas;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox txtBuscarUnCultivo;
        private System.Windows.Forms.PictureBox picCultivo;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private Bunifu.Framework.UI.BunifuCustomDataGrid dgvCultivo;
        private System.Windows.Forms.Label lblDescripcion;
        private System.Windows.Forms.Label lblNombreCientifico;
        private MyPanel panelContenedor;
        private System.Windows.Forms.DataGridViewTextBoxColumn Cultivo;
        private System.Windows.Forms.DataGridViewTextBoxColumn Plantación;
        private System.Windows.Forms.DataGridViewTextBoxColumn Cosechación;
        private System.Windows.Forms.DataGridViewTextBoxColumn Causa;
        private System.Windows.Forms.DataGridViewTextBoxColumn Estado;
        private System.Windows.Forms.ComboBox cbPlanta;
        private System.Windows.Forms.ImageList imageListPlantas;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.DateTimePicker dtpCosecha;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.DateTimePicker dtpPlantado;
    }
}