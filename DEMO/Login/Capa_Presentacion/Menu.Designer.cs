namespace Capa_Presentacion
{
    partial class Menu
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
            this.MouseDetect = new System.Timers.Timer();
            this.toolTip1 = new System.Windows.Forms.ToolTip(this.components);
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.myPanel1 = new Capa_Presentacion.MyPanel();
            this.panelClima = new Capa_Presentacion.MyPanel();
            this.myPanel5 = new Capa_Presentacion.MyPanel();
            this.lblmm5 = new System.Windows.Forms.Label();
            this.lblfecha5 = new System.Windows.Forms.Label();
            this.lbldia5 = new System.Windows.Forms.Label();
            this.lblmin5 = new System.Windows.Forms.Label();
            this.lblmax5 = new System.Windows.Forms.Label();
            this.lblsensacion = new System.Windows.Forms.Label();
            this.myPanel10 = new Capa_Presentacion.MyPanel();
            this.lblmm2 = new System.Windows.Forms.Label();
            this.lblmin2 = new System.Windows.Forms.Label();
            this.lbldia2 = new System.Windows.Forms.Label();
            this.lblmax2 = new System.Windows.Forms.Label();
            this.lblfecha2 = new System.Windows.Forms.Label();
            this.lblgrados = new System.Windows.Forms.Label();
            this.lblfechaprincipal = new System.Windows.Forms.Label();
            this.myPanel8 = new Capa_Presentacion.MyPanel();
            this.lblmm3 = new System.Windows.Forms.Label();
            this.lblfecha3 = new System.Windows.Forms.Label();
            this.lblmin3 = new System.Windows.Forms.Label();
            this.lblmax3 = new System.Windows.Forms.Label();
            this.lbldia3 = new System.Windows.Forms.Label();
            this.lblmante = new System.Windows.Forms.Label();
            this.myPanel7 = new Capa_Presentacion.MyPanel();
            this.lblmm4 = new System.Windows.Forms.Label();
            this.lblfecha4 = new System.Windows.Forms.Label();
            this.lbldia4 = new System.Windows.Forms.Label();
            this.lblmin4 = new System.Windows.Forms.Label();
            this.lblmax4 = new System.Windows.Forms.Label();
            this.myPanel3 = new Capa_Presentacion.MyPanel();
            this.lblmm1 = new System.Windows.Forms.Label();
            this.lblmin1 = new System.Windows.Forms.Label();
            this.lblmax1 = new System.Windows.Forms.Label();
            this.lblfecha1 = new System.Windows.Forms.Label();
            this.lbldia1 = new System.Windows.Forms.Label();
            this.myPanel4 = new Capa_Presentacion.MyPanel();
            this.panelDerecho = new Capa_Presentacion.MyPanel();
            this.lblTemp = new System.Windows.Forms.Label();
            this.lblPrecipitacionmm = new System.Windows.Forms.Label();
            this.lblHumedad = new System.Windows.Forms.Label();
            this.lblEstado = new System.Windows.Forms.Label();
            this.lblPrecipitacion = new System.Windows.Forms.Label();
            this.lblCentigrados = new System.Windows.Forms.Label();
            this.myPanel2 = new Capa_Presentacion.MyPanel();
            this.bunifuFlatButton5 = new Bunifu.Framework.UI.BunifuFlatButton();
            this.label1 = new System.Windows.Forms.Label();
            this.btnConfiguracion = new Bunifu.Framework.UI.BunifuFlatButton();
            this.bunifuFlatButton8 = new Bunifu.Framework.UI.BunifuFlatButton();
            this.bunifuFlatButton7 = new Bunifu.Framework.UI.BunifuFlatButton();
            this.bunifuFlatButton6 = new Bunifu.Framework.UI.BunifuFlatButton();
            this.bunifuFlatButton4 = new Bunifu.Framework.UI.BunifuFlatButton();
            this.bunifuFlatButton3 = new Bunifu.Framework.UI.BunifuFlatButton();
            this.bunifuDragControl1 = new Bunifu.Framework.UI.BunifuDragControl(this.components);
            ((System.ComponentModel.ISupportInitialize)(this.MouseDetect)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.myPanel1.SuspendLayout();
            this.panelClima.SuspendLayout();
            this.myPanel5.SuspendLayout();
            this.myPanel10.SuspendLayout();
            this.myPanel8.SuspendLayout();
            this.myPanel7.SuspendLayout();
            this.myPanel3.SuspendLayout();
            this.panelDerecho.SuspendLayout();
            this.myPanel2.SuspendLayout();
            this.SuspendLayout();
            // 
            // MouseDetect
            // 
            this.MouseDetect.Enabled = true;
            this.MouseDetect.SynchronizingObject = this;
            this.MouseDetect.Elapsed += new System.Timers.ElapsedEventHandler(this.MouseDetect_Elapsed);
            // 
            // pictureBox1
            // 
            this.pictureBox1.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.pictureBox1.BackColor = System.Drawing.Color.White;
            this.pictureBox1.Image = global::Capa_Presentacion.Properties.Resources.icons8_Delete_32px_2;
            this.pictureBox1.Location = new System.Drawing.Point(222, 0);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(28, 28);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.pictureBox1.TabIndex = 0;
            this.pictureBox1.TabStop = false;
            this.toolTip1.SetToolTip(this.pictureBox1, "Cerrar");
            this.pictureBox1.Click += new System.EventHandler(this.pictureBox1_Click);
            // 
            // myPanel1
            // 
            this.myPanel1.BackgroundImage = global::Capa_Presentacion.Properties.Resources.fondomenu;
            this.myPanel1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.myPanel1.Controls.Add(this.panelClima);
            this.myPanel1.Controls.Add(this.panelDerecho);
            this.myPanel1.Controls.Add(this.myPanel2);
            this.myPanel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.myPanel1.Location = new System.Drawing.Point(0, 0);
            this.myPanel1.Name = "myPanel1";
            this.myPanel1.Size = new System.Drawing.Size(1280, 720);
            this.myPanel1.TabIndex = 1;
            this.myPanel1.Paint += new System.Windows.Forms.PaintEventHandler(this.myPanel1_Paint);
            // 
            // panelClima
            // 
            this.panelClima.BackColor = System.Drawing.Color.Transparent;
            this.panelClima.Controls.Add(this.myPanel5);
            this.panelClima.Controls.Add(this.lblsensacion);
            this.panelClima.Controls.Add(this.myPanel10);
            this.panelClima.Controls.Add(this.lblgrados);
            this.panelClima.Controls.Add(this.lblfechaprincipal);
            this.panelClima.Controls.Add(this.myPanel8);
            this.panelClima.Controls.Add(this.lblmante);
            this.panelClima.Controls.Add(this.myPanel7);
            this.panelClima.Controls.Add(this.myPanel3);
            this.panelClima.Location = new System.Drawing.Point(245, 89);
            this.panelClima.Name = "panelClima";
            this.panelClima.Size = new System.Drawing.Size(906, 586);
            this.panelClima.TabIndex = 28;
            // 
            // myPanel5
            // 
            this.myPanel5.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(212)))), ((int)(((byte)(212)))), ((int)(((byte)(212)))));
            this.myPanel5.Controls.Add(this.lblmm5);
            this.myPanel5.Controls.Add(this.lblfecha5);
            this.myPanel5.Controls.Add(this.lbldia5);
            this.myPanel5.Controls.Add(this.lblmin5);
            this.myPanel5.Controls.Add(this.lblmax5);
            this.myPanel5.Location = new System.Drawing.Point(661, 181);
            this.myPanel5.Name = "myPanel5";
            this.myPanel5.Size = new System.Drawing.Size(160, 350);
            this.myPanel5.TabIndex = 53;
            // 
            // lblmm5
            // 
            this.lblmm5.AutoSize = true;
            this.lblmm5.BackColor = System.Drawing.Color.Transparent;
            this.lblmm5.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblmm5.ForeColor = System.Drawing.Color.Black;
            this.lblmm5.Location = new System.Drawing.Point(59, 279);
            this.lblmm5.Name = "lblmm5";
            this.lblmm5.Size = new System.Drawing.Size(61, 20);
            this.lblmm5.TabIndex = 52;
            this.lblmm5.Text = "0.3 mm";
            // 
            // lblfecha5
            // 
            this.lblfecha5.AutoSize = true;
            this.lblfecha5.BackColor = System.Drawing.Color.Transparent;
            this.lblfecha5.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblfecha5.ForeColor = System.Drawing.Color.Black;
            this.lblfecha5.Location = new System.Drawing.Point(28, 62);
            this.lblfecha5.Name = "lblfecha5";
            this.lblfecha5.Size = new System.Drawing.Size(109, 37);
            this.lblfecha5.TabIndex = 49;
            this.lblfecha5.Text = "9 Abril";
            // 
            // lbldia5
            // 
            this.lbldia5.AutoSize = true;
            this.lbldia5.BackColor = System.Drawing.Color.Transparent;
            this.lbldia5.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbldia5.ForeColor = System.Drawing.Color.Black;
            this.lbldia5.Location = new System.Drawing.Point(28, 20);
            this.lbldia5.Name = "lbldia5";
            this.lbldia5.Size = new System.Drawing.Size(114, 37);
            this.lbldia5.TabIndex = 48;
            this.lbldia5.Text = "Martes";
            // 
            // lblmin5
            // 
            this.lblmin5.AutoSize = true;
            this.lblmin5.BackColor = System.Drawing.Color.Transparent;
            this.lblmin5.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblmin5.ForeColor = System.Drawing.Color.Black;
            this.lblmin5.Location = new System.Drawing.Point(90, 235);
            this.lblmin5.Name = "lblmin5";
            this.lblmin5.Size = new System.Drawing.Size(32, 20);
            this.lblmin5.TabIndex = 51;
            this.lblmin5.Text = "14°";
            // 
            // lblmax5
            // 
            this.lblmax5.AutoSize = true;
            this.lblmax5.BackColor = System.Drawing.Color.Transparent;
            this.lblmax5.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblmax5.ForeColor = System.Drawing.Color.Black;
            this.lblmax5.Location = new System.Drawing.Point(49, 235);
            this.lblmax5.Name = "lblmax5";
            this.lblmax5.Size = new System.Drawing.Size(32, 20);
            this.lblmax5.TabIndex = 50;
            this.lblmax5.Text = "29°";
            // 
            // lblsensacion
            // 
            this.lblsensacion.AutoSize = true;
            this.lblsensacion.BackColor = System.Drawing.Color.Transparent;
            this.lblsensacion.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblsensacion.ForeColor = System.Drawing.Color.White;
            this.lblsensacion.Location = new System.Drawing.Point(93, 101);
            this.lblsensacion.Name = "lblsensacion";
            this.lblsensacion.Size = new System.Drawing.Size(298, 37);
            this.lblsensacion.TabIndex = 32;
            this.lblsensacion.Text = "Sensación de 30° C";
            // 
            // myPanel10
            // 
            this.myPanel10.BackColor = System.Drawing.Color.White;
            this.myPanel10.Controls.Add(this.lblmm2);
            this.myPanel10.Controls.Add(this.lblmin2);
            this.myPanel10.Controls.Add(this.lbldia2);
            this.myPanel10.Controls.Add(this.lblmax2);
            this.myPanel10.Controls.Add(this.lblfecha2);
            this.myPanel10.Location = new System.Drawing.Point(186, 181);
            this.myPanel10.Name = "myPanel10";
            this.myPanel10.Size = new System.Drawing.Size(160, 350);
            this.myPanel10.TabIndex = 7;
            // 
            // lblmm2
            // 
            this.lblmm2.AutoSize = true;
            this.lblmm2.BackColor = System.Drawing.Color.Transparent;
            this.lblmm2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblmm2.ForeColor = System.Drawing.Color.Black;
            this.lblmm2.Location = new System.Drawing.Point(57, 275);
            this.lblmm2.Name = "lblmm2";
            this.lblmm2.Size = new System.Drawing.Size(61, 20);
            this.lblmm2.TabIndex = 42;
            this.lblmm2.Text = "0.3 mm";
            // 
            // lblmin2
            // 
            this.lblmin2.AutoSize = true;
            this.lblmin2.BackColor = System.Drawing.Color.Transparent;
            this.lblmin2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblmin2.ForeColor = System.Drawing.Color.Black;
            this.lblmin2.Location = new System.Drawing.Point(88, 231);
            this.lblmin2.Name = "lblmin2";
            this.lblmin2.Size = new System.Drawing.Size(32, 20);
            this.lblmin2.TabIndex = 41;
            this.lblmin2.Text = "14°";
            // 
            // lbldia2
            // 
            this.lbldia2.AutoSize = true;
            this.lbldia2.BackColor = System.Drawing.Color.Transparent;
            this.lbldia2.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbldia2.ForeColor = System.Drawing.Color.Black;
            this.lbldia2.Location = new System.Drawing.Point(26, 16);
            this.lbldia2.Name = "lbldia2";
            this.lbldia2.Size = new System.Drawing.Size(128, 37);
            this.lbldia2.TabIndex = 38;
            this.lbldia2.Text = "Sabado";
            // 
            // lblmax2
            // 
            this.lblmax2.AutoSize = true;
            this.lblmax2.BackColor = System.Drawing.Color.Transparent;
            this.lblmax2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblmax2.ForeColor = System.Drawing.Color.Black;
            this.lblmax2.Location = new System.Drawing.Point(47, 231);
            this.lblmax2.Name = "lblmax2";
            this.lblmax2.Size = new System.Drawing.Size(32, 20);
            this.lblmax2.TabIndex = 40;
            this.lblmax2.Text = "29°";
            // 
            // lblfecha2
            // 
            this.lblfecha2.AutoSize = true;
            this.lblfecha2.BackColor = System.Drawing.Color.Transparent;
            this.lblfecha2.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblfecha2.ForeColor = System.Drawing.Color.Black;
            this.lblfecha2.Location = new System.Drawing.Point(26, 58);
            this.lblfecha2.Name = "lblfecha2";
            this.lblfecha2.Size = new System.Drawing.Size(109, 37);
            this.lblfecha2.TabIndex = 39;
            this.lblfecha2.Text = "6 Abril";
            // 
            // lblgrados
            // 
            this.lblgrados.AutoSize = true;
            this.lblgrados.BackColor = System.Drawing.Color.Transparent;
            this.lblgrados.Font = new System.Drawing.Font("Microsoft Sans Serif", 50.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblgrados.ForeColor = System.Drawing.Color.White;
            this.lblgrados.Location = new System.Drawing.Point(146, 25);
            this.lblgrados.Name = "lblgrados";
            this.lblgrados.Size = new System.Drawing.Size(200, 76);
            this.lblgrados.TabIndex = 31;
            this.lblgrados.Text = "29° C";
            // 
            // lblfechaprincipal
            // 
            this.lblfechaprincipal.AutoSize = true;
            this.lblfechaprincipal.BackColor = System.Drawing.Color.Transparent;
            this.lblfechaprincipal.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblfechaprincipal.ForeColor = System.Drawing.Color.White;
            this.lblfechaprincipal.Location = new System.Drawing.Point(431, 101);
            this.lblfechaprincipal.Name = "lblfechaprincipal";
            this.lblfechaprincipal.Size = new System.Drawing.Size(270, 37);
            this.lblfechaprincipal.TabIndex = 30;
            this.lblfechaprincipal.Text = "Viernes 5 de Abril";
            // 
            // myPanel8
            // 
            this.myPanel8.BackColor = System.Drawing.Color.White;
            this.myPanel8.Controls.Add(this.lblmm3);
            this.myPanel8.Controls.Add(this.lblfecha3);
            this.myPanel8.Controls.Add(this.lblmin3);
            this.myPanel8.Controls.Add(this.lblmax3);
            this.myPanel8.Controls.Add(this.lbldia3);
            this.myPanel8.Location = new System.Drawing.Point(346, 181);
            this.myPanel8.Name = "myPanel8";
            this.myPanel8.Size = new System.Drawing.Size(160, 350);
            this.myPanel8.TabIndex = 5;
            // 
            // lblmm3
            // 
            this.lblmm3.AutoSize = true;
            this.lblmm3.BackColor = System.Drawing.Color.Transparent;
            this.lblmm3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblmm3.ForeColor = System.Drawing.Color.Black;
            this.lblmm3.Location = new System.Drawing.Point(57, 275);
            this.lblmm3.Name = "lblmm3";
            this.lblmm3.Size = new System.Drawing.Size(61, 20);
            this.lblmm3.TabIndex = 47;
            this.lblmm3.Text = "0.3 mm";
            // 
            // lblfecha3
            // 
            this.lblfecha3.AutoSize = true;
            this.lblfecha3.BackColor = System.Drawing.Color.Transparent;
            this.lblfecha3.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblfecha3.ForeColor = System.Drawing.Color.Black;
            this.lblfecha3.Location = new System.Drawing.Point(27, 58);
            this.lblfecha3.Name = "lblfecha3";
            this.lblfecha3.Size = new System.Drawing.Size(109, 37);
            this.lblfecha3.TabIndex = 44;
            this.lblfecha3.Text = "7 Abril";
            // 
            // lblmin3
            // 
            this.lblmin3.AutoSize = true;
            this.lblmin3.BackColor = System.Drawing.Color.Transparent;
            this.lblmin3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblmin3.ForeColor = System.Drawing.Color.Black;
            this.lblmin3.Location = new System.Drawing.Point(88, 231);
            this.lblmin3.Name = "lblmin3";
            this.lblmin3.Size = new System.Drawing.Size(32, 20);
            this.lblmin3.TabIndex = 46;
            this.lblmin3.Text = "14°";
            // 
            // lblmax3
            // 
            this.lblmax3.AutoSize = true;
            this.lblmax3.BackColor = System.Drawing.Color.Transparent;
            this.lblmax3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblmax3.ForeColor = System.Drawing.Color.Black;
            this.lblmax3.Location = new System.Drawing.Point(47, 231);
            this.lblmax3.Name = "lblmax3";
            this.lblmax3.Size = new System.Drawing.Size(32, 20);
            this.lblmax3.TabIndex = 45;
            this.lblmax3.Text = "29°";
            // 
            // lbldia3
            // 
            this.lbldia3.AutoSize = true;
            this.lbldia3.BackColor = System.Drawing.Color.Transparent;
            this.lbldia3.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbldia3.ForeColor = System.Drawing.Color.Black;
            this.lbldia3.Location = new System.Drawing.Point(11, 16);
            this.lbldia3.Name = "lbldia3";
            this.lbldia3.Size = new System.Drawing.Size(146, 37);
            this.lbldia3.TabIndex = 43;
            this.lbldia3.Text = "Domingo";
            // 
            // lblmante
            // 
            this.lblmante.AutoSize = true;
            this.lblmante.BackColor = System.Drawing.Color.Transparent;
            this.lblmante.Font = new System.Drawing.Font("Microsoft Sans Serif", 50.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblmante.ForeColor = System.Drawing.Color.White;
            this.lblmante.Location = new System.Drawing.Point(425, 22);
            this.lblmante.Name = "lblmante";
            this.lblmante.Size = new System.Drawing.Size(296, 76);
            this.lblmante.TabIndex = 29;
            this.lblmante.Text = "El Mante";
            // 
            // myPanel7
            // 
            this.myPanel7.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(212)))), ((int)(((byte)(212)))), ((int)(((byte)(212)))));
            this.myPanel7.Controls.Add(this.lblmm4);
            this.myPanel7.Controls.Add(this.lblfecha4);
            this.myPanel7.Controls.Add(this.lbldia4);
            this.myPanel7.Controls.Add(this.lblmin4);
            this.myPanel7.Controls.Add(this.lblmax4);
            this.myPanel7.Location = new System.Drawing.Point(506, 181);
            this.myPanel7.Name = "myPanel7";
            this.myPanel7.Size = new System.Drawing.Size(160, 350);
            this.myPanel7.TabIndex = 4;
            // 
            // lblmm4
            // 
            this.lblmm4.AutoSize = true;
            this.lblmm4.BackColor = System.Drawing.Color.Transparent;
            this.lblmm4.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblmm4.ForeColor = System.Drawing.Color.Black;
            this.lblmm4.Location = new System.Drawing.Point(59, 279);
            this.lblmm4.Name = "lblmm4";
            this.lblmm4.Size = new System.Drawing.Size(61, 20);
            this.lblmm4.TabIndex = 52;
            this.lblmm4.Text = "0.3 mm";
            // 
            // lblfecha4
            // 
            this.lblfecha4.AutoSize = true;
            this.lblfecha4.BackColor = System.Drawing.Color.Transparent;
            this.lblfecha4.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblfecha4.ForeColor = System.Drawing.Color.Black;
            this.lblfecha4.Location = new System.Drawing.Point(28, 62);
            this.lblfecha4.Name = "lblfecha4";
            this.lblfecha4.Size = new System.Drawing.Size(109, 37);
            this.lblfecha4.TabIndex = 49;
            this.lblfecha4.Text = "8 Abril";
            // 
            // lbldia4
            // 
            this.lbldia4.AutoSize = true;
            this.lbldia4.BackColor = System.Drawing.Color.Transparent;
            this.lbldia4.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbldia4.ForeColor = System.Drawing.Color.Black;
            this.lbldia4.Location = new System.Drawing.Point(28, 20);
            this.lbldia4.Name = "lbldia4";
            this.lbldia4.Size = new System.Drawing.Size(104, 37);
            this.lbldia4.TabIndex = 48;
            this.lbldia4.Text = "Lunes";
            // 
            // lblmin4
            // 
            this.lblmin4.AutoSize = true;
            this.lblmin4.BackColor = System.Drawing.Color.Transparent;
            this.lblmin4.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblmin4.ForeColor = System.Drawing.Color.Black;
            this.lblmin4.Location = new System.Drawing.Point(90, 235);
            this.lblmin4.Name = "lblmin4";
            this.lblmin4.Size = new System.Drawing.Size(32, 20);
            this.lblmin4.TabIndex = 51;
            this.lblmin4.Text = "14°";
            // 
            // lblmax4
            // 
            this.lblmax4.AutoSize = true;
            this.lblmax4.BackColor = System.Drawing.Color.Transparent;
            this.lblmax4.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblmax4.ForeColor = System.Drawing.Color.Black;
            this.lblmax4.Location = new System.Drawing.Point(49, 235);
            this.lblmax4.Name = "lblmax4";
            this.lblmax4.Size = new System.Drawing.Size(32, 20);
            this.lblmax4.TabIndex = 50;
            this.lblmax4.Text = "29°";
            // 
            // myPanel3
            // 
            this.myPanel3.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(127)))), ((int)(((byte)(144)))), ((int)(((byte)(64)))));
            this.myPanel3.Controls.Add(this.lblmm1);
            this.myPanel3.Controls.Add(this.lblmin1);
            this.myPanel3.Controls.Add(this.lblmax1);
            this.myPanel3.Controls.Add(this.lblfecha1);
            this.myPanel3.Controls.Add(this.lbldia1);
            this.myPanel3.Controls.Add(this.myPanel4);
            this.myPanel3.Location = new System.Drawing.Point(26, 181);
            this.myPanel3.Name = "myPanel3";
            this.myPanel3.Size = new System.Drawing.Size(160, 350);
            this.myPanel3.TabIndex = 0;
            // 
            // lblmm1
            // 
            this.lblmm1.AutoSize = true;
            this.lblmm1.BackColor = System.Drawing.Color.Transparent;
            this.lblmm1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblmm1.ForeColor = System.Drawing.Color.White;
            this.lblmm1.Location = new System.Drawing.Point(54, 279);
            this.lblmm1.Name = "lblmm1";
            this.lblmm1.Size = new System.Drawing.Size(61, 20);
            this.lblmm1.TabIndex = 37;
            this.lblmm1.Text = "0.3 mm";
            // 
            // lblmin1
            // 
            this.lblmin1.AutoSize = true;
            this.lblmin1.BackColor = System.Drawing.Color.Transparent;
            this.lblmin1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblmin1.ForeColor = System.Drawing.Color.White;
            this.lblmin1.Location = new System.Drawing.Point(85, 235);
            this.lblmin1.Name = "lblmin1";
            this.lblmin1.Size = new System.Drawing.Size(32, 20);
            this.lblmin1.TabIndex = 36;
            this.lblmin1.Text = "14°";
            // 
            // lblmax1
            // 
            this.lblmax1.AutoSize = true;
            this.lblmax1.BackColor = System.Drawing.Color.Transparent;
            this.lblmax1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblmax1.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(103)))), ((int)(((byte)(25)))), ((int)(((byte)(0)))));
            this.lblmax1.Location = new System.Drawing.Point(44, 235);
            this.lblmax1.Name = "lblmax1";
            this.lblmax1.Size = new System.Drawing.Size(32, 20);
            this.lblmax1.TabIndex = 35;
            this.lblmax1.Text = "29°";
            // 
            // lblfecha1
            // 
            this.lblfecha1.AutoSize = true;
            this.lblfecha1.BackColor = System.Drawing.Color.Transparent;
            this.lblfecha1.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblfecha1.ForeColor = System.Drawing.Color.White;
            this.lblfecha1.Location = new System.Drawing.Point(23, 62);
            this.lblfecha1.Name = "lblfecha1";
            this.lblfecha1.Size = new System.Drawing.Size(109, 37);
            this.lblfecha1.TabIndex = 34;
            this.lblfecha1.Text = "5 Abril";
            // 
            // lbldia1
            // 
            this.lbldia1.AutoSize = true;
            this.lbldia1.BackColor = System.Drawing.Color.Transparent;
            this.lbldia1.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbldia1.ForeColor = System.Drawing.Color.White;
            this.lbldia1.Location = new System.Drawing.Point(41, 20);
            this.lbldia1.Name = "lbldia1";
            this.lbldia1.Size = new System.Drawing.Size(73, 37);
            this.lbldia1.TabIndex = 33;
            this.lbldia1.Text = "Hoy";
            // 
            // myPanel4
            // 
            this.myPanel4.Location = new System.Drawing.Point(163, 0);
            this.myPanel4.Name = "myPanel4";
            this.myPanel4.Size = new System.Drawing.Size(167, 347);
            this.myPanel4.TabIndex = 1;
            // 
            // panelDerecho
            // 
            this.panelDerecho.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.panelDerecho.Controls.Add(this.lblTemp);
            this.panelDerecho.Controls.Add(this.pictureBox1);
            this.panelDerecho.Controls.Add(this.lblPrecipitacionmm);
            this.panelDerecho.Controls.Add(this.lblHumedad);
            this.panelDerecho.Controls.Add(this.lblEstado);
            this.panelDerecho.Controls.Add(this.lblPrecipitacion);
            this.panelDerecho.Controls.Add(this.lblCentigrados);
            this.panelDerecho.Dock = System.Windows.Forms.DockStyle.Right;
            this.panelDerecho.Location = new System.Drawing.Point(1030, 0);
            this.panelDerecho.Name = "panelDerecho";
            this.panelDerecho.Size = new System.Drawing.Size(250, 720);
            this.panelDerecho.TabIndex = 27;
            this.panelDerecho.Paint += new System.Windows.Forms.PaintEventHandler(this.panelDerecho_Paint);
            // 
            // lblTemp
            // 
            this.lblTemp.AutoSize = true;
            this.lblTemp.BackColor = System.Drawing.Color.Transparent;
            this.lblTemp.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblTemp.ForeColor = System.Drawing.Color.White;
            this.lblTemp.Location = new System.Drawing.Point(42, 138);
            this.lblTemp.Name = "lblTemp";
            this.lblTemp.Size = new System.Drawing.Size(100, 20);
            this.lblTemp.TabIndex = 21;
            this.lblTemp.Text = "Temperatura";
            this.lblTemp.Visible = false;
            // 
            // lblPrecipitacionmm
            // 
            this.lblPrecipitacionmm.AutoSize = true;
            this.lblPrecipitacionmm.BackColor = System.Drawing.Color.Transparent;
            this.lblPrecipitacionmm.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblPrecipitacionmm.ForeColor = System.Drawing.Color.White;
            this.lblPrecipitacionmm.Location = new System.Drawing.Point(42, 520);
            this.lblPrecipitacionmm.Name = "lblPrecipitacionmm";
            this.lblPrecipitacionmm.Size = new System.Drawing.Size(75, 16);
            this.lblPrecipitacionmm.TabIndex = 26;
            this.lblPrecipitacionmm.Text = "999.444mm";
            this.lblPrecipitacionmm.Visible = false;
            // 
            // lblHumedad
            // 
            this.lblHumedad.AutoSize = true;
            this.lblHumedad.BackColor = System.Drawing.Color.Transparent;
            this.lblHumedad.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblHumedad.ForeColor = System.Drawing.Color.White;
            this.lblHumedad.Location = new System.Drawing.Point(42, 322);
            this.lblHumedad.Name = "lblHumedad";
            this.lblHumedad.Size = new System.Drawing.Size(79, 20);
            this.lblHumedad.TabIndex = 22;
            this.lblHumedad.Text = "Humedad";
            this.lblHumedad.Visible = false;
            // 
            // lblEstado
            // 
            this.lblEstado.AutoSize = true;
            this.lblEstado.BackColor = System.Drawing.Color.Transparent;
            this.lblEstado.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblEstado.ForeColor = System.Drawing.Color.White;
            this.lblEstado.Location = new System.Drawing.Point(42, 356);
            this.lblEstado.Name = "lblEstado";
            this.lblEstado.Size = new System.Drawing.Size(130, 16);
            this.lblEstado.TabIndex = 25;
            this.lblEstado.Text = "Estado de humedad";
            this.lblEstado.Visible = false;
            this.lblEstado.Click += new System.EventHandler(this.lblEstado_Click);
            // 
            // lblPrecipitacion
            // 
            this.lblPrecipitacion.AutoSize = true;
            this.lblPrecipitacion.BackColor = System.Drawing.Color.Transparent;
            this.lblPrecipitacion.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblPrecipitacion.ForeColor = System.Drawing.Color.White;
            this.lblPrecipitacion.Location = new System.Drawing.Point(42, 486);
            this.lblPrecipitacion.Name = "lblPrecipitacion";
            this.lblPrecipitacion.Size = new System.Drawing.Size(99, 20);
            this.lblPrecipitacion.TabIndex = 23;
            this.lblPrecipitacion.Text = "Precipitación";
            this.lblPrecipitacion.Visible = false;
            // 
            // lblCentigrados
            // 
            this.lblCentigrados.AutoSize = true;
            this.lblCentigrados.BackColor = System.Drawing.Color.Transparent;
            this.lblCentigrados.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblCentigrados.ForeColor = System.Drawing.Color.White;
            this.lblCentigrados.Location = new System.Drawing.Point(42, 171);
            this.lblCentigrados.Name = "lblCentigrados";
            this.lblCentigrados.Size = new System.Drawing.Size(102, 16);
            this.lblCentigrados.TabIndex = 24;
            this.lblCentigrados.Text = "37° Centigrados";
            this.lblCentigrados.Visible = false;
            // 
            // myPanel2
            // 
            this.myPanel2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(204)))), ((int)(((byte)(222)))), ((int)(((byte)(145)))));
            this.myPanel2.BackgroundImage = global::Capa_Presentacion.Properties.Resources.MenuIzquierdoVerde;
            this.myPanel2.Controls.Add(this.bunifuFlatButton5);
            this.myPanel2.Controls.Add(this.label1);
            this.myPanel2.Controls.Add(this.btnConfiguracion);
            this.myPanel2.Controls.Add(this.bunifuFlatButton8);
            this.myPanel2.Controls.Add(this.bunifuFlatButton7);
            this.myPanel2.Controls.Add(this.bunifuFlatButton6);
            this.myPanel2.Controls.Add(this.bunifuFlatButton4);
            this.myPanel2.Controls.Add(this.bunifuFlatButton3);
            this.myPanel2.Dock = System.Windows.Forms.DockStyle.Left;
            this.myPanel2.Location = new System.Drawing.Point(0, 0);
            this.myPanel2.Name = "myPanel2";
            this.myPanel2.Size = new System.Drawing.Size(45, 720);
            this.myPanel2.TabIndex = 20;
            // 
            // bunifuFlatButton5
            // 
            this.bunifuFlatButton5.Activecolor = System.Drawing.Color.FromArgb(((int)(((byte)(126)))), ((int)(((byte)(145)))), ((int)(((byte)(64)))));
            this.bunifuFlatButton5.BackColor = System.Drawing.Color.Transparent;
            this.bunifuFlatButton5.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.bunifuFlatButton5.BorderRadius = 0;
            this.bunifuFlatButton5.ButtonText = "   Historial de plagas";
            this.bunifuFlatButton5.Cursor = System.Windows.Forms.Cursors.Hand;
            this.bunifuFlatButton5.DisabledColor = System.Drawing.Color.Gray;
            this.bunifuFlatButton5.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.bunifuFlatButton5.Iconcolor = System.Drawing.Color.Transparent;
            this.bunifuFlatButton5.Iconimage = global::Capa_Presentacion.Properties.Resources.icons8_Time_Machine_32px;
            this.bunifuFlatButton5.Iconimage_right = null;
            this.bunifuFlatButton5.Iconimage_right_Selected = null;
            this.bunifuFlatButton5.Iconimage_Selected = null;
            this.bunifuFlatButton5.IconMarginLeft = 0;
            this.bunifuFlatButton5.IconMarginRight = 0;
            this.bunifuFlatButton5.IconRightVisible = true;
            this.bunifuFlatButton5.IconRightZoom = 0D;
            this.bunifuFlatButton5.IconVisible = true;
            this.bunifuFlatButton5.IconZoom = 60D;
            this.bunifuFlatButton5.IsTab = false;
            this.bunifuFlatButton5.Location = new System.Drawing.Point(0, 147);
            this.bunifuFlatButton5.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.bunifuFlatButton5.Name = "bunifuFlatButton5";
            this.bunifuFlatButton5.Normalcolor = System.Drawing.Color.Transparent;
            this.bunifuFlatButton5.OnHovercolor = System.Drawing.Color.FromArgb(((int)(((byte)(126)))), ((int)(((byte)(145)))), ((int)(((byte)(64)))));
            this.bunifuFlatButton5.OnHoverTextColor = System.Drawing.Color.Black;
            this.bunifuFlatButton5.selected = false;
            this.bunifuFlatButton5.Size = new System.Drawing.Size(250, 45);
            this.bunifuFlatButton5.TabIndex = 52;
            this.bunifuFlatButton5.Text = "   Historial de plagas";
            this.bunifuFlatButton5.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.bunifuFlatButton5.Textcolor = System.Drawing.Color.Black;
            this.bunifuFlatButton5.TextFont = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.bunifuFlatButton5.Click += new System.EventHandler(this.bunifuFlatButton5_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.BackColor = System.Drawing.Color.Transparent;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(45, 114);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(123, 16);
            this.label1.TabIndex = 57;
            this.label1.Text = "Funcionalidades";
            // 
            // btnConfiguracion
            // 
            this.btnConfiguracion.Activecolor = System.Drawing.Color.FromArgb(((int)(((byte)(126)))), ((int)(((byte)(145)))), ((int)(((byte)(64)))));
            this.btnConfiguracion.BackColor = System.Drawing.Color.Transparent;
            this.btnConfiguracion.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.btnConfiguracion.BorderRadius = 0;
            this.btnConfiguracion.ButtonText = "   Configuración general";
            this.btnConfiguracion.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnConfiguracion.DisabledColor = System.Drawing.Color.Gray;
            this.btnConfiguracion.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnConfiguracion.Iconcolor = System.Drawing.Color.Transparent;
            this.btnConfiguracion.Iconimage = global::Capa_Presentacion.Properties.Resources.icons8_Settings_32px;
            this.btnConfiguracion.Iconimage_right = null;
            this.btnConfiguracion.Iconimage_right_Selected = null;
            this.btnConfiguracion.Iconimage_Selected = null;
            this.btnConfiguracion.IconMarginLeft = 0;
            this.btnConfiguracion.IconMarginRight = 0;
            this.btnConfiguracion.IconRightVisible = true;
            this.btnConfiguracion.IconRightZoom = 0D;
            this.btnConfiguracion.IconVisible = true;
            this.btnConfiguracion.IconZoom = 60D;
            this.btnConfiguracion.IsTab = false;
            this.btnConfiguracion.Location = new System.Drawing.Point(0, 347);
            this.btnConfiguracion.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.btnConfiguracion.Name = "btnConfiguracion";
            this.btnConfiguracion.Normalcolor = System.Drawing.Color.Transparent;
            this.btnConfiguracion.OnHovercolor = System.Drawing.Color.FromArgb(((int)(((byte)(126)))), ((int)(((byte)(145)))), ((int)(((byte)(64)))));
            this.btnConfiguracion.OnHoverTextColor = System.Drawing.Color.Black;
            this.btnConfiguracion.selected = false;
            this.btnConfiguracion.Size = new System.Drawing.Size(250, 45);
            this.btnConfiguracion.TabIndex = 56;
            this.btnConfiguracion.Text = "   Configuración general";
            this.btnConfiguracion.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnConfiguracion.Textcolor = System.Drawing.Color.Black;
            this.btnConfiguracion.TextFont = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnConfiguracion.Load += new System.EventHandler(this.bunifuFlatButton10_Load);
            this.btnConfiguracion.Click += new System.EventHandler(this.bunifuFlatButton10_Click);
            // 
            // bunifuFlatButton8
            // 
            this.bunifuFlatButton8.Activecolor = System.Drawing.Color.FromArgb(((int)(((byte)(126)))), ((int)(((byte)(145)))), ((int)(((byte)(64)))));
            this.bunifuFlatButton8.BackColor = System.Drawing.Color.Transparent;
            this.bunifuFlatButton8.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.bunifuFlatButton8.BorderRadius = 0;
            this.bunifuFlatButton8.ButtonText = "   Generar reportes";
            this.bunifuFlatButton8.Cursor = System.Windows.Forms.Cursors.Hand;
            this.bunifuFlatButton8.DisabledColor = System.Drawing.Color.Gray;
            this.bunifuFlatButton8.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.bunifuFlatButton8.Iconcolor = System.Drawing.Color.Transparent;
            this.bunifuFlatButton8.Iconimage = global::Capa_Presentacion.Properties.Resources.icons8_Edit_Pie_Chart_Report_32px;
            this.bunifuFlatButton8.Iconimage_right = null;
            this.bunifuFlatButton8.Iconimage_right_Selected = null;
            this.bunifuFlatButton8.Iconimage_Selected = null;
            this.bunifuFlatButton8.IconMarginLeft = 0;
            this.bunifuFlatButton8.IconMarginRight = 0;
            this.bunifuFlatButton8.IconRightVisible = true;
            this.bunifuFlatButton8.IconRightZoom = 0D;
            this.bunifuFlatButton8.IconVisible = true;
            this.bunifuFlatButton8.IconZoom = 60D;
            this.bunifuFlatButton8.IsTab = false;
            this.bunifuFlatButton8.Location = new System.Drawing.Point(0, 297);
            this.bunifuFlatButton8.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.bunifuFlatButton8.Name = "bunifuFlatButton8";
            this.bunifuFlatButton8.Normalcolor = System.Drawing.Color.Transparent;
            this.bunifuFlatButton8.OnHovercolor = System.Drawing.Color.FromArgb(((int)(((byte)(126)))), ((int)(((byte)(145)))), ((int)(((byte)(64)))));
            this.bunifuFlatButton8.OnHoverTextColor = System.Drawing.Color.Black;
            this.bunifuFlatButton8.selected = false;
            this.bunifuFlatButton8.Size = new System.Drawing.Size(250, 45);
            this.bunifuFlatButton8.TabIndex = 55;
            this.bunifuFlatButton8.Text = "   Generar reportes";
            this.bunifuFlatButton8.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.bunifuFlatButton8.Textcolor = System.Drawing.Color.Black;
            this.bunifuFlatButton8.TextFont = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.bunifuFlatButton8.Click += new System.EventHandler(this.bunifuFlatButton8_Click);
            // 
            // bunifuFlatButton7
            // 
            this.bunifuFlatButton7.Activecolor = System.Drawing.Color.FromArgb(((int)(((byte)(126)))), ((int)(((byte)(145)))), ((int)(((byte)(64)))));
            this.bunifuFlatButton7.BackColor = System.Drawing.Color.Transparent;
            this.bunifuFlatButton7.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.bunifuFlatButton7.BorderRadius = 0;
            this.bunifuFlatButton7.ButtonText = "   Administrar cultivos";
            this.bunifuFlatButton7.Cursor = System.Windows.Forms.Cursors.Hand;
            this.bunifuFlatButton7.DisabledColor = System.Drawing.Color.Gray;
            this.bunifuFlatButton7.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.bunifuFlatButton7.Iconcolor = System.Drawing.Color.Transparent;
            this.bunifuFlatButton7.Iconimage = global::Capa_Presentacion.Properties.Resources.icons8_Leaf_32px;
            this.bunifuFlatButton7.Iconimage_right = null;
            this.bunifuFlatButton7.Iconimage_right_Selected = null;
            this.bunifuFlatButton7.Iconimage_Selected = null;
            this.bunifuFlatButton7.IconMarginLeft = 0;
            this.bunifuFlatButton7.IconMarginRight = 0;
            this.bunifuFlatButton7.IconRightVisible = true;
            this.bunifuFlatButton7.IconRightZoom = 0D;
            this.bunifuFlatButton7.IconVisible = true;
            this.bunifuFlatButton7.IconZoom = 60D;
            this.bunifuFlatButton7.IsTab = false;
            this.bunifuFlatButton7.Location = new System.Drawing.Point(0, 247);
            this.bunifuFlatButton7.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.bunifuFlatButton7.Name = "bunifuFlatButton7";
            this.bunifuFlatButton7.Normalcolor = System.Drawing.Color.Transparent;
            this.bunifuFlatButton7.OnHovercolor = System.Drawing.Color.FromArgb(((int)(((byte)(126)))), ((int)(((byte)(145)))), ((int)(((byte)(64)))));
            this.bunifuFlatButton7.OnHoverTextColor = System.Drawing.Color.Black;
            this.bunifuFlatButton7.selected = false;
            this.bunifuFlatButton7.Size = new System.Drawing.Size(250, 45);
            this.bunifuFlatButton7.TabIndex = 54;
            this.bunifuFlatButton7.Text = "   Administrar cultivos";
            this.bunifuFlatButton7.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.bunifuFlatButton7.Textcolor = System.Drawing.Color.Black;
            this.bunifuFlatButton7.TextFont = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.bunifuFlatButton7.Click += new System.EventHandler(this.bunifuFlatButton7_Click);
            // 
            // bunifuFlatButton6
            // 
            this.bunifuFlatButton6.Activecolor = System.Drawing.Color.FromArgb(((int)(((byte)(126)))), ((int)(((byte)(145)))), ((int)(((byte)(64)))));
            this.bunifuFlatButton6.BackColor = System.Drawing.Color.Transparent;
            this.bunifuFlatButton6.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.bunifuFlatButton6.BorderRadius = 0;
            this.bunifuFlatButton6.ButtonText = "   Estadisticas de plagas";
            this.bunifuFlatButton6.Cursor = System.Windows.Forms.Cursors.Hand;
            this.bunifuFlatButton6.DisabledColor = System.Drawing.Color.Gray;
            this.bunifuFlatButton6.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.bunifuFlatButton6.Iconcolor = System.Drawing.Color.Transparent;
            this.bunifuFlatButton6.Iconimage = global::Capa_Presentacion.Properties.Resources.icons8_Combo_Chart_32px;
            this.bunifuFlatButton6.Iconimage_right = null;
            this.bunifuFlatButton6.Iconimage_right_Selected = null;
            this.bunifuFlatButton6.Iconimage_Selected = null;
            this.bunifuFlatButton6.IconMarginLeft = 0;
            this.bunifuFlatButton6.IconMarginRight = 0;
            this.bunifuFlatButton6.IconRightVisible = true;
            this.bunifuFlatButton6.IconRightZoom = 0D;
            this.bunifuFlatButton6.IconVisible = true;
            this.bunifuFlatButton6.IconZoom = 60D;
            this.bunifuFlatButton6.IsTab = false;
            this.bunifuFlatButton6.Location = new System.Drawing.Point(0, 197);
            this.bunifuFlatButton6.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.bunifuFlatButton6.Name = "bunifuFlatButton6";
            this.bunifuFlatButton6.Normalcolor = System.Drawing.Color.Transparent;
            this.bunifuFlatButton6.OnHovercolor = System.Drawing.Color.FromArgb(((int)(((byte)(126)))), ((int)(((byte)(145)))), ((int)(((byte)(64)))));
            this.bunifuFlatButton6.OnHoverTextColor = System.Drawing.Color.Black;
            this.bunifuFlatButton6.selected = false;
            this.bunifuFlatButton6.Size = new System.Drawing.Size(250, 45);
            this.bunifuFlatButton6.TabIndex = 53;
            this.bunifuFlatButton6.Text = "   Estadisticas de plagas";
            this.bunifuFlatButton6.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.bunifuFlatButton6.Textcolor = System.Drawing.Color.Black;
            this.bunifuFlatButton6.TextFont = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.bunifuFlatButton6.Click += new System.EventHandler(this.bunifuFlatButton6_Click);
            // 
            // bunifuFlatButton4
            // 
            this.bunifuFlatButton4.Activecolor = System.Drawing.Color.FromArgb(((int)(((byte)(126)))), ((int)(((byte)(145)))), ((int)(((byte)(64)))));
            this.bunifuFlatButton4.BackColor = System.Drawing.Color.Transparent;
            this.bunifuFlatButton4.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.bunifuFlatButton4.BorderRadius = 0;
            this.bunifuFlatButton4.ButtonText = "   Inicio";
            this.bunifuFlatButton4.Cursor = System.Windows.Forms.Cursors.Hand;
            this.bunifuFlatButton4.DisabledColor = System.Drawing.Color.Gray;
            this.bunifuFlatButton4.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.bunifuFlatButton4.Iconcolor = System.Drawing.Color.Transparent;
            this.bunifuFlatButton4.Iconimage = global::Capa_Presentacion.Properties.Resources.icons8_Partly_Cloudy_Day_32px;
            this.bunifuFlatButton4.Iconimage_right = null;
            this.bunifuFlatButton4.Iconimage_right_Selected = null;
            this.bunifuFlatButton4.Iconimage_Selected = null;
            this.bunifuFlatButton4.IconMarginLeft = 0;
            this.bunifuFlatButton4.IconMarginRight = 0;
            this.bunifuFlatButton4.IconRightVisible = true;
            this.bunifuFlatButton4.IconRightZoom = 0D;
            this.bunifuFlatButton4.IconVisible = true;
            this.bunifuFlatButton4.IconZoom = 60D;
            this.bunifuFlatButton4.IsTab = false;
            this.bunifuFlatButton4.Location = new System.Drawing.Point(0, 55);
            this.bunifuFlatButton4.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.bunifuFlatButton4.Name = "bunifuFlatButton4";
            this.bunifuFlatButton4.Normalcolor = System.Drawing.Color.Transparent;
            this.bunifuFlatButton4.OnHovercolor = System.Drawing.Color.FromArgb(((int)(((byte)(126)))), ((int)(((byte)(145)))), ((int)(((byte)(64)))));
            this.bunifuFlatButton4.OnHoverTextColor = System.Drawing.Color.Black;
            this.bunifuFlatButton4.selected = false;
            this.bunifuFlatButton4.Size = new System.Drawing.Size(250, 45);
            this.bunifuFlatButton4.TabIndex = 51;
            this.bunifuFlatButton4.Text = "   Inicio";
            this.bunifuFlatButton4.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.bunifuFlatButton4.Textcolor = System.Drawing.Color.Black;
            this.bunifuFlatButton4.TextFont = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.bunifuFlatButton4.Click += new System.EventHandler(this.bunifuFlatButton4_Click);
            // 
            // bunifuFlatButton3
            // 
            this.bunifuFlatButton3.Activecolor = System.Drawing.Color.FromArgb(((int)(((byte)(126)))), ((int)(((byte)(145)))), ((int)(((byte)(64)))));
            this.bunifuFlatButton3.BackColor = System.Drawing.Color.Transparent;
            this.bunifuFlatButton3.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.bunifuFlatButton3.BorderRadius = 0;
            this.bunifuFlatButton3.ButtonText = "   Cerrar sesión";
            this.bunifuFlatButton3.Cursor = System.Windows.Forms.Cursors.Hand;
            this.bunifuFlatButton3.DisabledColor = System.Drawing.Color.Gray;
            this.bunifuFlatButton3.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.bunifuFlatButton3.Iconcolor = System.Drawing.Color.Transparent;
            this.bunifuFlatButton3.Iconimage = global::Capa_Presentacion.Properties.Resources.icons8_Long_Arrow_Left_32px_1;
            this.bunifuFlatButton3.Iconimage_right = null;
            this.bunifuFlatButton3.Iconimage_right_Selected = null;
            this.bunifuFlatButton3.Iconimage_Selected = null;
            this.bunifuFlatButton3.IconMarginLeft = 0;
            this.bunifuFlatButton3.IconMarginRight = 0;
            this.bunifuFlatButton3.IconRightVisible = true;
            this.bunifuFlatButton3.IconRightZoom = 0D;
            this.bunifuFlatButton3.IconVisible = true;
            this.bunifuFlatButton3.IconZoom = 60D;
            this.bunifuFlatButton3.IsTab = false;
            this.bunifuFlatButton3.Location = new System.Drawing.Point(0, 0);
            this.bunifuFlatButton3.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.bunifuFlatButton3.Name = "bunifuFlatButton3";
            this.bunifuFlatButton3.Normalcolor = System.Drawing.Color.Transparent;
            this.bunifuFlatButton3.OnHovercolor = System.Drawing.Color.FromArgb(((int)(((byte)(126)))), ((int)(((byte)(145)))), ((int)(((byte)(64)))));
            this.bunifuFlatButton3.OnHoverTextColor = System.Drawing.Color.Black;
            this.bunifuFlatButton3.selected = false;
            this.bunifuFlatButton3.Size = new System.Drawing.Size(250, 45);
            this.bunifuFlatButton3.TabIndex = 15;
            this.bunifuFlatButton3.Text = "   Cerrar sesión";
            this.bunifuFlatButton3.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.bunifuFlatButton3.Textcolor = System.Drawing.Color.Black;
            this.bunifuFlatButton3.TextFont = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.bunifuFlatButton3.Click += new System.EventHandler(this.bunifuFlatButton3_Click);
            // 
            // bunifuDragControl1
            // 
            this.bunifuDragControl1.Fixed = true;
            this.bunifuDragControl1.Horizontal = true;
            this.bunifuDragControl1.TargetControl = this.myPanel1;
            this.bunifuDragControl1.Vertical = true;
            // 
            // Menu
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1280, 720);
            this.Controls.Add(this.myPanel1);
            this.DoubleBuffered = true;
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.MinimumSize = new System.Drawing.Size(1280, 720);
            this.Name = "Menu";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Menu";
            this.TransparencyKey = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(0)))), ((int)(((byte)(1)))));
            this.Load += new System.EventHandler(this.Menu_Load);
            ((System.ComponentModel.ISupportInitialize)(this.MouseDetect)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.myPanel1.ResumeLayout(false);
            this.panelClima.ResumeLayout(false);
            this.panelClima.PerformLayout();
            this.myPanel5.ResumeLayout(false);
            this.myPanel5.PerformLayout();
            this.myPanel10.ResumeLayout(false);
            this.myPanel10.PerformLayout();
            this.myPanel8.ResumeLayout(false);
            this.myPanel8.PerformLayout();
            this.myPanel7.ResumeLayout(false);
            this.myPanel7.PerformLayout();
            this.myPanel3.ResumeLayout(false);
            this.myPanel3.PerformLayout();
            this.panelDerecho.ResumeLayout(false);
            this.panelDerecho.PerformLayout();
            this.myPanel2.ResumeLayout(false);
            this.myPanel2.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion
        private System.Timers.Timer MouseDetect;
        private Bunifu.Framework.UI.BunifuDragControl bunifuDragControl1;
        private MyPanel myPanel1;
        private MyPanel myPanel2;
        private Bunifu.Framework.UI.BunifuFlatButton bunifuFlatButton3;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Label label1;
        private Bunifu.Framework.UI.BunifuFlatButton btnConfiguracion;
        private Bunifu.Framework.UI.BunifuFlatButton bunifuFlatButton8;
        private Bunifu.Framework.UI.BunifuFlatButton bunifuFlatButton7;
        private Bunifu.Framework.UI.BunifuFlatButton bunifuFlatButton6;
        private Bunifu.Framework.UI.BunifuFlatButton bunifuFlatButton5;
        private Bunifu.Framework.UI.BunifuFlatButton bunifuFlatButton4;
        private System.Windows.Forms.ToolTip toolTip1;
        private System.Windows.Forms.Label lblPrecipitacionmm;
        private System.Windows.Forms.Label lblEstado;
        private System.Windows.Forms.Label lblCentigrados;
        private System.Windows.Forms.Label lblPrecipitacion;
        private System.Windows.Forms.Label lblHumedad;
        private System.Windows.Forms.Label lblTemp;
        private MyPanel panelDerecho;
        private MyPanel panelClima;
        private MyPanel myPanel3;
        private System.Windows.Forms.Label lblmante;
        private MyPanel myPanel10;
        private MyPanel myPanel8;
        private MyPanel myPanel7;
        private MyPanel myPanel4;
        private System.Windows.Forms.Label lblsensacion;
        private System.Windows.Forms.Label lblgrados;
        private System.Windows.Forms.Label lblfechaprincipal;
        private System.Windows.Forms.Label lblmm1;
        private System.Windows.Forms.Label lblmin1;
        private System.Windows.Forms.Label lblmax1;
        private System.Windows.Forms.Label lblfecha1;
        private System.Windows.Forms.Label lbldia1;
        private System.Windows.Forms.Label lblmm2;
        private System.Windows.Forms.Label lblmin2;
        private System.Windows.Forms.Label lbldia2;
        private System.Windows.Forms.Label lblmax2;
        private System.Windows.Forms.Label lblfecha2;
        private System.Windows.Forms.Label lblmm3;
        private System.Windows.Forms.Label lblfecha3;
        private System.Windows.Forms.Label lblmin3;
        private System.Windows.Forms.Label lblmax3;
        private System.Windows.Forms.Label lbldia3;
        private System.Windows.Forms.Label lblmm4;
        private System.Windows.Forms.Label lblfecha4;
        private System.Windows.Forms.Label lbldia4;
        private System.Windows.Forms.Label lblmin4;
        private System.Windows.Forms.Label lblmax4;
        private MyPanel myPanel5;
        private System.Windows.Forms.Label lblmm5;
        private System.Windows.Forms.Label lblfecha5;
        private System.Windows.Forms.Label lbldia5;
        private System.Windows.Forms.Label lblmin5;
        private System.Windows.Forms.Label lblmax5;
    }
}