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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Menu));
            this.MouseDetect = new System.Timers.Timer();
            this.toolTip1 = new System.Windows.Forms.ToolTip(this.components);
            this.Vectores = new System.Windows.Forms.ImageList(this.components);
            this.myPanel1 = new Capa_Presentacion.MyPanel();
            this.panelClima = new Capa_Presentacion.MyPanel();
            this.myPanel5 = new Capa_Presentacion.MyPanel();
            this.picClimaQuinto = new System.Windows.Forms.PictureBox();
            this.label26 = new System.Windows.Forms.Label();
            this.label27 = new System.Windows.Forms.Label();
            this.label28 = new System.Windows.Forms.Label();
            this.label29 = new System.Windows.Forms.Label();
            this.label30 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.myPanel10 = new Capa_Presentacion.MyPanel();
            this.picClimaSegundo = new System.Windows.Forms.PictureBox();
            this.label11 = new System.Windows.Forms.Label();
            this.label12 = new System.Windows.Forms.Label();
            this.label15 = new System.Windows.Forms.Label();
            this.label13 = new System.Windows.Forms.Label();
            this.label14 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.myPanel8 = new Capa_Presentacion.MyPanel();
            this.picClimaTercero = new System.Windows.Forms.PictureBox();
            this.label16 = new System.Windows.Forms.Label();
            this.label20 = new System.Windows.Forms.Label();
            this.label17 = new System.Windows.Forms.Label();
            this.label19 = new System.Windows.Forms.Label();
            this.label18 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.myPanel7 = new Capa_Presentacion.MyPanel();
            this.picClimaCuarto = new System.Windows.Forms.PictureBox();
            this.label21 = new System.Windows.Forms.Label();
            this.label22 = new System.Windows.Forms.Label();
            this.label25 = new System.Windows.Forms.Label();
            this.label23 = new System.Windows.Forms.Label();
            this.label24 = new System.Windows.Forms.Label();
            this.myPanel3 = new Capa_Presentacion.MyPanel();
            this.picClimaPrimero = new System.Windows.Forms.PictureBox();
            this.label10 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.myPanel4 = new Capa_Presentacion.MyPanel();
            this.panelDerecho = new Capa_Presentacion.MyPanel();
            this.lblTemp = new System.Windows.Forms.Label();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.lblPrecipitacionmm = new System.Windows.Forms.Label();
            this.lblHumedad = new System.Windows.Forms.Label();
            this.lblEstado = new System.Windows.Forms.Label();
            this.lblPrecipitacion = new System.Windows.Forms.Label();
            this.lblCentigrados = new System.Windows.Forms.Label();
            this.myPanel2 = new Capa_Presentacion.MyPanel();
            this.btnHistorialDePlagas = new Bunifu.Framework.UI.BunifuFlatButton();
            this.label1 = new System.Windows.Forms.Label();
            this.btnConfiguracionGeneral = new Bunifu.Framework.UI.BunifuFlatButton();
            this.btnGenerarReportes = new Bunifu.Framework.UI.BunifuFlatButton();
            this.btnAdministrarCultivos = new Bunifu.Framework.UI.BunifuFlatButton();
            this.btnEstadisticasDePlagas = new Bunifu.Framework.UI.BunifuFlatButton();
            this.btnInicio = new Bunifu.Framework.UI.BunifuFlatButton();
            this.btnMenuPrincipal = new Bunifu.Framework.UI.BunifuFlatButton();
            this.bunifuDragControl1 = new Bunifu.Framework.UI.BunifuDragControl(this.components);
            ((System.ComponentModel.ISupportInitialize)(this.MouseDetect)).BeginInit();
            this.myPanel1.SuspendLayout();
            this.panelClima.SuspendLayout();
            this.myPanel5.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.picClimaQuinto)).BeginInit();
            this.myPanel10.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.picClimaSegundo)).BeginInit();
            this.myPanel8.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.picClimaTercero)).BeginInit();
            this.myPanel7.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.picClimaCuarto)).BeginInit();
            this.myPanel3.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.picClimaPrimero)).BeginInit();
            this.panelDerecho.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.myPanel2.SuspendLayout();
            this.SuspendLayout();
            // 
            // MouseDetect
            // 
            this.MouseDetect.Enabled = true;
            this.MouseDetect.SynchronizingObject = this;
            this.MouseDetect.Elapsed += new System.Timers.ElapsedEventHandler(this.MouseDetect_Elapsed);
            // 
            // Vectores
            // 
            this.Vectores.ImageStream = ((System.Windows.Forms.ImageListStreamer)(resources.GetObject("Vectores.ImageStream")));
            this.Vectores.TransparentColor = System.Drawing.Color.Transparent;
            this.Vectores.Images.SetKeyName(0, "Dia lluvioso blanco.png");
            this.Vectores.Images.SetKeyName(1, "Dia lluvioso color.png");
            this.Vectores.Images.SetKeyName(2, "Dia lluvioso Negro.png");
            this.Vectores.Images.SetKeyName(3, "Llovizna blanca.png");
            this.Vectores.Images.SetKeyName(4, "Llovizna color.png");
            this.Vectores.Images.SetKeyName(5, "Llovizna negro.png");
            this.Vectores.Images.SetKeyName(6, "Luna blanca.png");
            this.Vectores.Images.SetKeyName(7, "Luna negra.png");
            this.Vectores.Images.SetKeyName(8, "Noche lluviosa blanca.png");
            this.Vectores.Images.SetKeyName(9, "Noche lluviosa negro.png");
            this.Vectores.Images.SetKeyName(10, "Nublado Blanco.png");
            this.Vectores.Images.SetKeyName(11, "Nublado colorizado.png");
            this.Vectores.Images.SetKeyName(12, "Nublado negro.png");
            this.Vectores.Images.SetKeyName(13, "Nublado noche blanca.png");
            this.Vectores.Images.SetKeyName(14, "Nublado noche negro.png");
            this.Vectores.Images.SetKeyName(15, "Parcialmente nublado blanco.png");
            this.Vectores.Images.SetKeyName(16, "Parcialmente nublado color.png");
            this.Vectores.Images.SetKeyName(17, "Parcialmente nublado negro.png");
            this.Vectores.Images.SetKeyName(18, "Soleado Blanco.png");
            this.Vectores.Images.SetKeyName(19, "Soleado Color.png");
            this.Vectores.Images.SetKeyName(20, "Soleado Negro.png");
            this.Vectores.Images.SetKeyName(21, "Clima.png");
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
            this.panelClima.Controls.Add(this.label5);
            this.panelClima.Controls.Add(this.myPanel10);
            this.panelClima.Controls.Add(this.label4);
            this.panelClima.Controls.Add(this.label3);
            this.panelClima.Controls.Add(this.myPanel8);
            this.panelClima.Controls.Add(this.label2);
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
            this.myPanel5.Controls.Add(this.picClimaQuinto);
            this.myPanel5.Controls.Add(this.label26);
            this.myPanel5.Controls.Add(this.label27);
            this.myPanel5.Controls.Add(this.label28);
            this.myPanel5.Controls.Add(this.label29);
            this.myPanel5.Controls.Add(this.label30);
            this.myPanel5.Location = new System.Drawing.Point(661, 181);
            this.myPanel5.Name = "myPanel5";
            this.myPanel5.Size = new System.Drawing.Size(160, 350);
            this.myPanel5.TabIndex = 53;
            // 
            // picClimaQuinto
            // 
            this.picClimaQuinto.Location = new System.Drawing.Point(14, 104);
            this.picClimaQuinto.Name = "picClimaQuinto";
            this.picClimaQuinto.Size = new System.Drawing.Size(128, 128);
            this.picClimaQuinto.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.picClimaQuinto.TabIndex = 39;
            this.picClimaQuinto.TabStop = false;
            // 
            // label26
            // 
            this.label26.AutoSize = true;
            this.label26.BackColor = System.Drawing.Color.Transparent;
            this.label26.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label26.ForeColor = System.Drawing.Color.Black;
            this.label26.Location = new System.Drawing.Point(57, 279);
            this.label26.Name = "label26";
            this.label26.Size = new System.Drawing.Size(61, 20);
            this.label26.TabIndex = 52;
            this.label26.Text = "0.3 mm";
            // 
            // label27
            // 
            this.label27.AutoSize = true;
            this.label27.BackColor = System.Drawing.Color.Transparent;
            this.label27.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label27.ForeColor = System.Drawing.Color.Black;
            this.label27.Location = new System.Drawing.Point(28, 62);
            this.label27.Name = "label27";
            this.label27.Size = new System.Drawing.Size(109, 37);
            this.label27.TabIndex = 49;
            this.label27.Text = "9 Abril";
            // 
            // label28
            // 
            this.label28.AutoSize = true;
            this.label28.BackColor = System.Drawing.Color.Transparent;
            this.label28.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label28.ForeColor = System.Drawing.Color.Black;
            this.label28.Location = new System.Drawing.Point(28, 20);
            this.label28.Name = "label28";
            this.label28.Size = new System.Drawing.Size(114, 37);
            this.label28.TabIndex = 48;
            this.label28.Text = "Martes";
            // 
            // label29
            // 
            this.label29.AutoSize = true;
            this.label29.BackColor = System.Drawing.Color.Transparent;
            this.label29.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label29.ForeColor = System.Drawing.Color.Black;
            this.label29.Location = new System.Drawing.Point(88, 235);
            this.label29.Name = "label29";
            this.label29.Size = new System.Drawing.Size(32, 20);
            this.label29.TabIndex = 51;
            this.label29.Text = "14°";
            // 
            // label30
            // 
            this.label30.AutoSize = true;
            this.label30.BackColor = System.Drawing.Color.Transparent;
            this.label30.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label30.ForeColor = System.Drawing.Color.Black;
            this.label30.Location = new System.Drawing.Point(47, 235);
            this.label30.Name = "label30";
            this.label30.Size = new System.Drawing.Size(32, 20);
            this.label30.TabIndex = 50;
            this.label30.Text = "29°";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.BackColor = System.Drawing.Color.Transparent;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.ForeColor = System.Drawing.Color.White;
            this.label5.Location = new System.Drawing.Point(93, 101);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(298, 37);
            this.label5.TabIndex = 32;
            this.label5.Text = "Sensación de 30° C";
            // 
            // myPanel10
            // 
            this.myPanel10.BackColor = System.Drawing.Color.White;
            this.myPanel10.Controls.Add(this.picClimaSegundo);
            this.myPanel10.Controls.Add(this.label11);
            this.myPanel10.Controls.Add(this.label12);
            this.myPanel10.Controls.Add(this.label15);
            this.myPanel10.Controls.Add(this.label13);
            this.myPanel10.Controls.Add(this.label14);
            this.myPanel10.Location = new System.Drawing.Point(186, 181);
            this.myPanel10.Name = "myPanel10";
            this.myPanel10.Size = new System.Drawing.Size(160, 350);
            this.myPanel10.TabIndex = 7;
            // 
            // picClimaSegundo
            // 
            this.picClimaSegundo.Location = new System.Drawing.Point(17, 104);
            this.picClimaSegundo.Name = "picClimaSegundo";
            this.picClimaSegundo.Size = new System.Drawing.Size(128, 128);
            this.picClimaSegundo.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.picClimaSegundo.TabIndex = 39;
            this.picClimaSegundo.TabStop = false;
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.BackColor = System.Drawing.Color.Transparent;
            this.label11.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label11.ForeColor = System.Drawing.Color.Black;
            this.label11.Location = new System.Drawing.Point(57, 279);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(61, 20);
            this.label11.TabIndex = 42;
            this.label11.Text = "0.3 mm";
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.BackColor = System.Drawing.Color.Transparent;
            this.label12.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label12.ForeColor = System.Drawing.Color.Black;
            this.label12.Location = new System.Drawing.Point(88, 235);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(32, 20);
            this.label12.TabIndex = 41;
            this.label12.Text = "14°";
            // 
            // label15
            // 
            this.label15.AutoSize = true;
            this.label15.BackColor = System.Drawing.Color.Transparent;
            this.label15.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label15.ForeColor = System.Drawing.Color.Black;
            this.label15.Location = new System.Drawing.Point(26, 16);
            this.label15.Name = "label15";
            this.label15.Size = new System.Drawing.Size(128, 37);
            this.label15.TabIndex = 38;
            this.label15.Text = "Sabado";
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.BackColor = System.Drawing.Color.Transparent;
            this.label13.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label13.ForeColor = System.Drawing.Color.Black;
            this.label13.Location = new System.Drawing.Point(47, 235);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(32, 20);
            this.label13.TabIndex = 40;
            this.label13.Text = "29°";
            // 
            // label14
            // 
            this.label14.AutoSize = true;
            this.label14.BackColor = System.Drawing.Color.Transparent;
            this.label14.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label14.ForeColor = System.Drawing.Color.Black;
            this.label14.Location = new System.Drawing.Point(26, 58);
            this.label14.Name = "label14";
            this.label14.Size = new System.Drawing.Size(109, 37);
            this.label14.TabIndex = 39;
            this.label14.Text = "6 Abril";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.BackColor = System.Drawing.Color.Transparent;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 50.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.ForeColor = System.Drawing.Color.White;
            this.label4.Location = new System.Drawing.Point(146, 25);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(200, 76);
            this.label4.TabIndex = 31;
            this.label4.Text = "29° C";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.BackColor = System.Drawing.Color.Transparent;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.ForeColor = System.Drawing.Color.White;
            this.label3.Location = new System.Drawing.Point(431, 101);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(270, 37);
            this.label3.TabIndex = 30;
            this.label3.Text = "Viernes 5 de Abril";
            // 
            // myPanel8
            // 
            this.myPanel8.BackColor = System.Drawing.Color.White;
            this.myPanel8.Controls.Add(this.picClimaTercero);
            this.myPanel8.Controls.Add(this.label16);
            this.myPanel8.Controls.Add(this.label20);
            this.myPanel8.Controls.Add(this.label17);
            this.myPanel8.Controls.Add(this.label19);
            this.myPanel8.Controls.Add(this.label18);
            this.myPanel8.Location = new System.Drawing.Point(346, 181);
            this.myPanel8.Name = "myPanel8";
            this.myPanel8.Size = new System.Drawing.Size(160, 350);
            this.myPanel8.TabIndex = 5;
            // 
            // picClimaTercero
            // 
            this.picClimaTercero.Location = new System.Drawing.Point(18, 104);
            this.picClimaTercero.Name = "picClimaTercero";
            this.picClimaTercero.Size = new System.Drawing.Size(128, 128);
            this.picClimaTercero.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.picClimaTercero.TabIndex = 43;
            this.picClimaTercero.TabStop = false;
            // 
            // label16
            // 
            this.label16.AutoSize = true;
            this.label16.BackColor = System.Drawing.Color.Transparent;
            this.label16.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label16.ForeColor = System.Drawing.Color.Black;
            this.label16.Location = new System.Drawing.Point(57, 279);
            this.label16.Name = "label16";
            this.label16.Size = new System.Drawing.Size(61, 20);
            this.label16.TabIndex = 47;
            this.label16.Text = "0.3 mm";
            // 
            // label20
            // 
            this.label20.AutoSize = true;
            this.label20.BackColor = System.Drawing.Color.Transparent;
            this.label20.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label20.ForeColor = System.Drawing.Color.Black;
            this.label20.Location = new System.Drawing.Point(27, 58);
            this.label20.Name = "label20";
            this.label20.Size = new System.Drawing.Size(109, 37);
            this.label20.TabIndex = 44;
            this.label20.Text = "7 Abril";
            // 
            // label17
            // 
            this.label17.AutoSize = true;
            this.label17.BackColor = System.Drawing.Color.Transparent;
            this.label17.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label17.ForeColor = System.Drawing.Color.Black;
            this.label17.Location = new System.Drawing.Point(88, 235);
            this.label17.Name = "label17";
            this.label17.Size = new System.Drawing.Size(32, 20);
            this.label17.TabIndex = 46;
            this.label17.Text = "14°";
            // 
            // label19
            // 
            this.label19.AutoSize = true;
            this.label19.BackColor = System.Drawing.Color.Transparent;
            this.label19.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label19.ForeColor = System.Drawing.Color.Black;
            this.label19.Location = new System.Drawing.Point(47, 235);
            this.label19.Name = "label19";
            this.label19.Size = new System.Drawing.Size(32, 20);
            this.label19.TabIndex = 45;
            this.label19.Text = "29°";
            // 
            // label18
            // 
            this.label18.AutoSize = true;
            this.label18.BackColor = System.Drawing.Color.Transparent;
            this.label18.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label18.ForeColor = System.Drawing.Color.Black;
            this.label18.Location = new System.Drawing.Point(11, 16);
            this.label18.Name = "label18";
            this.label18.Size = new System.Drawing.Size(146, 37);
            this.label18.TabIndex = 43;
            this.label18.Text = "Domingo";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.BackColor = System.Drawing.Color.Transparent;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 50.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.ForeColor = System.Drawing.Color.White;
            this.label2.Location = new System.Drawing.Point(425, 22);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(296, 76);
            this.label2.TabIndex = 29;
            this.label2.Text = "El Mante";
            // 
            // myPanel7
            // 
            this.myPanel7.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(212)))), ((int)(((byte)(212)))), ((int)(((byte)(212)))));
            this.myPanel7.Controls.Add(this.picClimaCuarto);
            this.myPanel7.Controls.Add(this.label21);
            this.myPanel7.Controls.Add(this.label22);
            this.myPanel7.Controls.Add(this.label25);
            this.myPanel7.Controls.Add(this.label23);
            this.myPanel7.Controls.Add(this.label24);
            this.myPanel7.Location = new System.Drawing.Point(506, 181);
            this.myPanel7.Name = "myPanel7";
            this.myPanel7.Size = new System.Drawing.Size(160, 350);
            this.myPanel7.TabIndex = 4;
            // 
            // picClimaCuarto
            // 
            this.picClimaCuarto.Location = new System.Drawing.Point(21, 104);
            this.picClimaCuarto.Name = "picClimaCuarto";
            this.picClimaCuarto.Size = new System.Drawing.Size(128, 128);
            this.picClimaCuarto.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.picClimaCuarto.TabIndex = 48;
            this.picClimaCuarto.TabStop = false;
            // 
            // label21
            // 
            this.label21.AutoSize = true;
            this.label21.BackColor = System.Drawing.Color.Transparent;
            this.label21.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label21.ForeColor = System.Drawing.Color.Black;
            this.label21.Location = new System.Drawing.Point(58, 279);
            this.label21.Name = "label21";
            this.label21.Size = new System.Drawing.Size(61, 20);
            this.label21.TabIndex = 52;
            this.label21.Text = "0.3 mm";
            // 
            // label22
            // 
            this.label22.AutoSize = true;
            this.label22.BackColor = System.Drawing.Color.Transparent;
            this.label22.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label22.ForeColor = System.Drawing.Color.Black;
            this.label22.Location = new System.Drawing.Point(28, 62);
            this.label22.Name = "label22";
            this.label22.Size = new System.Drawing.Size(109, 37);
            this.label22.TabIndex = 49;
            this.label22.Text = "8 Abril";
            // 
            // label25
            // 
            this.label25.AutoSize = true;
            this.label25.BackColor = System.Drawing.Color.Transparent;
            this.label25.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label25.ForeColor = System.Drawing.Color.Black;
            this.label25.Location = new System.Drawing.Point(28, 20);
            this.label25.Name = "label25";
            this.label25.Size = new System.Drawing.Size(104, 37);
            this.label25.TabIndex = 48;
            this.label25.Text = "Lunes";
            // 
            // label23
            // 
            this.label23.AutoSize = true;
            this.label23.BackColor = System.Drawing.Color.Transparent;
            this.label23.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label23.ForeColor = System.Drawing.Color.Black;
            this.label23.Location = new System.Drawing.Point(89, 235);
            this.label23.Name = "label23";
            this.label23.Size = new System.Drawing.Size(32, 20);
            this.label23.TabIndex = 51;
            this.label23.Text = "14°";
            // 
            // label24
            // 
            this.label24.AutoSize = true;
            this.label24.BackColor = System.Drawing.Color.Transparent;
            this.label24.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label24.ForeColor = System.Drawing.Color.Black;
            this.label24.Location = new System.Drawing.Point(48, 235);
            this.label24.Name = "label24";
            this.label24.Size = new System.Drawing.Size(32, 20);
            this.label24.TabIndex = 50;
            this.label24.Text = "29°";
            // 
            // myPanel3
            // 
            this.myPanel3.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(127)))), ((int)(((byte)(144)))), ((int)(((byte)(64)))));
            this.myPanel3.Controls.Add(this.picClimaPrimero);
            this.myPanel3.Controls.Add(this.label10);
            this.myPanel3.Controls.Add(this.label9);
            this.myPanel3.Controls.Add(this.label8);
            this.myPanel3.Controls.Add(this.label7);
            this.myPanel3.Controls.Add(this.label6);
            this.myPanel3.Controls.Add(this.myPanel4);
            this.myPanel3.Location = new System.Drawing.Point(26, 181);
            this.myPanel3.Name = "myPanel3";
            this.myPanel3.Size = new System.Drawing.Size(160, 350);
            this.myPanel3.TabIndex = 0;
            // 
            // picClimaPrimero
            // 
            this.picClimaPrimero.Location = new System.Drawing.Point(16, 102);
            this.picClimaPrimero.Name = "picClimaPrimero";
            this.picClimaPrimero.Size = new System.Drawing.Size(128, 128);
            this.picClimaPrimero.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.picClimaPrimero.TabIndex = 38;
            this.picClimaPrimero.TabStop = false;
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.BackColor = System.Drawing.Color.Transparent;
            this.label10.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label10.ForeColor = System.Drawing.Color.White;
            this.label10.Location = new System.Drawing.Point(54, 279);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(61, 20);
            this.label10.TabIndex = 37;
            this.label10.Text = "0.3 mm";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.BackColor = System.Drawing.Color.Transparent;
            this.label9.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label9.ForeColor = System.Drawing.Color.White;
            this.label9.Location = new System.Drawing.Point(85, 235);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(32, 20);
            this.label9.TabIndex = 36;
            this.label9.Text = "14°";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.BackColor = System.Drawing.Color.Transparent;
            this.label8.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label8.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(103)))), ((int)(((byte)(25)))), ((int)(((byte)(0)))));
            this.label8.Location = new System.Drawing.Point(44, 235);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(32, 20);
            this.label8.TabIndex = 35;
            this.label8.Text = "29°";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.BackColor = System.Drawing.Color.Transparent;
            this.label7.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label7.ForeColor = System.Drawing.Color.White;
            this.label7.Location = new System.Drawing.Point(23, 62);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(109, 37);
            this.label7.TabIndex = 34;
            this.label7.Text = "5 Abril";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.BackColor = System.Drawing.Color.Transparent;
            this.label6.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.ForeColor = System.Drawing.Color.White;
            this.label6.Location = new System.Drawing.Point(41, 20);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(73, 37);
            this.label6.TabIndex = 33;
            this.label6.Text = "Hoy";
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
            this.myPanel2.Controls.Add(this.btnHistorialDePlagas);
            this.myPanel2.Controls.Add(this.label1);
            this.myPanel2.Controls.Add(this.btnConfiguracionGeneral);
            this.myPanel2.Controls.Add(this.btnGenerarReportes);
            this.myPanel2.Controls.Add(this.btnAdministrarCultivos);
            this.myPanel2.Controls.Add(this.btnEstadisticasDePlagas);
            this.myPanel2.Controls.Add(this.btnInicio);
            this.myPanel2.Controls.Add(this.btnMenuPrincipal);
            this.myPanel2.Dock = System.Windows.Forms.DockStyle.Left;
            this.myPanel2.Location = new System.Drawing.Point(0, 0);
            this.myPanel2.Name = "myPanel2";
            this.myPanel2.Size = new System.Drawing.Size(45, 720);
            this.myPanel2.TabIndex = 20;
            // 
            // btnHistorialDePlagas
            // 
            this.btnHistorialDePlagas.Activecolor = System.Drawing.Color.FromArgb(((int)(((byte)(126)))), ((int)(((byte)(145)))), ((int)(((byte)(64)))));
            this.btnHistorialDePlagas.BackColor = System.Drawing.Color.Transparent;
            this.btnHistorialDePlagas.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.btnHistorialDePlagas.BorderRadius = 0;
            this.btnHistorialDePlagas.ButtonText = "   Historial de plagas";
            this.btnHistorialDePlagas.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnHistorialDePlagas.DisabledColor = System.Drawing.Color.Gray;
            this.btnHistorialDePlagas.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnHistorialDePlagas.Iconcolor = System.Drawing.Color.Transparent;
            this.btnHistorialDePlagas.Iconimage = global::Capa_Presentacion.Properties.Resources.icons8_Time_Machine_32px;
            this.btnHistorialDePlagas.Iconimage_right = null;
            this.btnHistorialDePlagas.Iconimage_right_Selected = null;
            this.btnHistorialDePlagas.Iconimage_Selected = null;
            this.btnHistorialDePlagas.IconMarginLeft = 0;
            this.btnHistorialDePlagas.IconMarginRight = 0;
            this.btnHistorialDePlagas.IconRightVisible = true;
            this.btnHistorialDePlagas.IconRightZoom = 0D;
            this.btnHistorialDePlagas.IconVisible = true;
            this.btnHistorialDePlagas.IconZoom = 60D;
            this.btnHistorialDePlagas.IsTab = false;
            this.btnHistorialDePlagas.Location = new System.Drawing.Point(0, 147);
            this.btnHistorialDePlagas.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.btnHistorialDePlagas.Name = "btnHistorialDePlagas";
            this.btnHistorialDePlagas.Normalcolor = System.Drawing.Color.Transparent;
            this.btnHistorialDePlagas.OnHovercolor = System.Drawing.Color.FromArgb(((int)(((byte)(126)))), ((int)(((byte)(145)))), ((int)(((byte)(64)))));
            this.btnHistorialDePlagas.OnHoverTextColor = System.Drawing.Color.Black;
            this.btnHistorialDePlagas.selected = false;
            this.btnHistorialDePlagas.Size = new System.Drawing.Size(250, 45);
            this.btnHistorialDePlagas.TabIndex = 52;
            this.btnHistorialDePlagas.Text = "   Historial de plagas";
            this.btnHistorialDePlagas.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnHistorialDePlagas.Textcolor = System.Drawing.Color.Black;
            this.btnHistorialDePlagas.TextFont = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnHistorialDePlagas.Click += new System.EventHandler(this.bunifuFlatButton5_Click);
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
            // btnConfiguracionGeneral
            // 
            this.btnConfiguracionGeneral.Activecolor = System.Drawing.Color.FromArgb(((int)(((byte)(126)))), ((int)(((byte)(145)))), ((int)(((byte)(64)))));
            this.btnConfiguracionGeneral.BackColor = System.Drawing.Color.Transparent;
            this.btnConfiguracionGeneral.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.btnConfiguracionGeneral.BorderRadius = 0;
            this.btnConfiguracionGeneral.ButtonText = "   Configuración general";
            this.btnConfiguracionGeneral.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnConfiguracionGeneral.DisabledColor = System.Drawing.Color.Gray;
            this.btnConfiguracionGeneral.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnConfiguracionGeneral.Iconcolor = System.Drawing.Color.Transparent;
            this.btnConfiguracionGeneral.Iconimage = global::Capa_Presentacion.Properties.Resources.icons8_Settings_32px;
            this.btnConfiguracionGeneral.Iconimage_right = null;
            this.btnConfiguracionGeneral.Iconimage_right_Selected = null;
            this.btnConfiguracionGeneral.Iconimage_Selected = null;
            this.btnConfiguracionGeneral.IconMarginLeft = 0;
            this.btnConfiguracionGeneral.IconMarginRight = 0;
            this.btnConfiguracionGeneral.IconRightVisible = true;
            this.btnConfiguracionGeneral.IconRightZoom = 0D;
            this.btnConfiguracionGeneral.IconVisible = true;
            this.btnConfiguracionGeneral.IconZoom = 60D;
            this.btnConfiguracionGeneral.IsTab = false;
            this.btnConfiguracionGeneral.Location = new System.Drawing.Point(0, 347);
            this.btnConfiguracionGeneral.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.btnConfiguracionGeneral.Name = "btnConfiguracionGeneral";
            this.btnConfiguracionGeneral.Normalcolor = System.Drawing.Color.Transparent;
            this.btnConfiguracionGeneral.OnHovercolor = System.Drawing.Color.FromArgb(((int)(((byte)(126)))), ((int)(((byte)(145)))), ((int)(((byte)(64)))));
            this.btnConfiguracionGeneral.OnHoverTextColor = System.Drawing.Color.Black;
            this.btnConfiguracionGeneral.selected = false;
            this.btnConfiguracionGeneral.Size = new System.Drawing.Size(250, 45);
            this.btnConfiguracionGeneral.TabIndex = 56;
            this.btnConfiguracionGeneral.Text = "   Configuración general";
            this.btnConfiguracionGeneral.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnConfiguracionGeneral.Textcolor = System.Drawing.Color.Black;
            this.btnConfiguracionGeneral.TextFont = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnConfiguracionGeneral.Load += new System.EventHandler(this.bunifuFlatButton10_Load);
            this.btnConfiguracionGeneral.Click += new System.EventHandler(this.bunifuFlatButton10_Click);
            // 
            // btnGenerarReportes
            // 
            this.btnGenerarReportes.Activecolor = System.Drawing.Color.FromArgb(((int)(((byte)(126)))), ((int)(((byte)(145)))), ((int)(((byte)(64)))));
            this.btnGenerarReportes.BackColor = System.Drawing.Color.Transparent;
            this.btnGenerarReportes.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.btnGenerarReportes.BorderRadius = 0;
            this.btnGenerarReportes.ButtonText = "   Generar reportes";
            this.btnGenerarReportes.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnGenerarReportes.DisabledColor = System.Drawing.Color.Gray;
            this.btnGenerarReportes.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnGenerarReportes.Iconcolor = System.Drawing.Color.Transparent;
            this.btnGenerarReportes.Iconimage = global::Capa_Presentacion.Properties.Resources.icons8_Edit_Pie_Chart_Report_32px;
            this.btnGenerarReportes.Iconimage_right = null;
            this.btnGenerarReportes.Iconimage_right_Selected = null;
            this.btnGenerarReportes.Iconimage_Selected = null;
            this.btnGenerarReportes.IconMarginLeft = 0;
            this.btnGenerarReportes.IconMarginRight = 0;
            this.btnGenerarReportes.IconRightVisible = true;
            this.btnGenerarReportes.IconRightZoom = 0D;
            this.btnGenerarReportes.IconVisible = true;
            this.btnGenerarReportes.IconZoom = 60D;
            this.btnGenerarReportes.IsTab = false;
            this.btnGenerarReportes.Location = new System.Drawing.Point(0, 297);
            this.btnGenerarReportes.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.btnGenerarReportes.Name = "btnGenerarReportes";
            this.btnGenerarReportes.Normalcolor = System.Drawing.Color.Transparent;
            this.btnGenerarReportes.OnHovercolor = System.Drawing.Color.FromArgb(((int)(((byte)(126)))), ((int)(((byte)(145)))), ((int)(((byte)(64)))));
            this.btnGenerarReportes.OnHoverTextColor = System.Drawing.Color.Black;
            this.btnGenerarReportes.selected = false;
            this.btnGenerarReportes.Size = new System.Drawing.Size(250, 45);
            this.btnGenerarReportes.TabIndex = 55;
            this.btnGenerarReportes.Text = "   Generar reportes";
            this.btnGenerarReportes.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnGenerarReportes.Textcolor = System.Drawing.Color.Black;
            this.btnGenerarReportes.TextFont = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnGenerarReportes.Click += new System.EventHandler(this.bunifuFlatButton8_Click);
            // 
            // btnAdministrarCultivos
            // 
            this.btnAdministrarCultivos.Activecolor = System.Drawing.Color.FromArgb(((int)(((byte)(126)))), ((int)(((byte)(145)))), ((int)(((byte)(64)))));
            this.btnAdministrarCultivos.BackColor = System.Drawing.Color.Transparent;
            this.btnAdministrarCultivos.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.btnAdministrarCultivos.BorderRadius = 0;
            this.btnAdministrarCultivos.ButtonText = "   Administrar cultivos";
            this.btnAdministrarCultivos.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnAdministrarCultivos.DisabledColor = System.Drawing.Color.Gray;
            this.btnAdministrarCultivos.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnAdministrarCultivos.Iconcolor = System.Drawing.Color.Transparent;
            this.btnAdministrarCultivos.Iconimage = global::Capa_Presentacion.Properties.Resources.icons8_Leaf_32px;
            this.btnAdministrarCultivos.Iconimage_right = null;
            this.btnAdministrarCultivos.Iconimage_right_Selected = null;
            this.btnAdministrarCultivos.Iconimage_Selected = null;
            this.btnAdministrarCultivos.IconMarginLeft = 0;
            this.btnAdministrarCultivos.IconMarginRight = 0;
            this.btnAdministrarCultivos.IconRightVisible = true;
            this.btnAdministrarCultivos.IconRightZoom = 0D;
            this.btnAdministrarCultivos.IconVisible = true;
            this.btnAdministrarCultivos.IconZoom = 60D;
            this.btnAdministrarCultivos.IsTab = false;
            this.btnAdministrarCultivos.Location = new System.Drawing.Point(0, 247);
            this.btnAdministrarCultivos.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.btnAdministrarCultivos.Name = "btnAdministrarCultivos";
            this.btnAdministrarCultivos.Normalcolor = System.Drawing.Color.Transparent;
            this.btnAdministrarCultivos.OnHovercolor = System.Drawing.Color.FromArgb(((int)(((byte)(126)))), ((int)(((byte)(145)))), ((int)(((byte)(64)))));
            this.btnAdministrarCultivos.OnHoverTextColor = System.Drawing.Color.Black;
            this.btnAdministrarCultivos.selected = false;
            this.btnAdministrarCultivos.Size = new System.Drawing.Size(250, 45);
            this.btnAdministrarCultivos.TabIndex = 54;
            this.btnAdministrarCultivos.Text = "   Administrar cultivos";
            this.btnAdministrarCultivos.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnAdministrarCultivos.Textcolor = System.Drawing.Color.Black;
            this.btnAdministrarCultivos.TextFont = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnAdministrarCultivos.Click += new System.EventHandler(this.bunifuFlatButton7_Click);
            // 
            // btnEstadisticasDePlagas
            // 
            this.btnEstadisticasDePlagas.Activecolor = System.Drawing.Color.FromArgb(((int)(((byte)(126)))), ((int)(((byte)(145)))), ((int)(((byte)(64)))));
            this.btnEstadisticasDePlagas.BackColor = System.Drawing.Color.Transparent;
            this.btnEstadisticasDePlagas.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.btnEstadisticasDePlagas.BorderRadius = 0;
            this.btnEstadisticasDePlagas.ButtonText = "   Estadisticas de plagas";
            this.btnEstadisticasDePlagas.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnEstadisticasDePlagas.DisabledColor = System.Drawing.Color.Gray;
            this.btnEstadisticasDePlagas.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnEstadisticasDePlagas.Iconcolor = System.Drawing.Color.Transparent;
            this.btnEstadisticasDePlagas.Iconimage = global::Capa_Presentacion.Properties.Resources.icons8_Combo_Chart_32px;
            this.btnEstadisticasDePlagas.Iconimage_right = null;
            this.btnEstadisticasDePlagas.Iconimage_right_Selected = null;
            this.btnEstadisticasDePlagas.Iconimage_Selected = null;
            this.btnEstadisticasDePlagas.IconMarginLeft = 0;
            this.btnEstadisticasDePlagas.IconMarginRight = 0;
            this.btnEstadisticasDePlagas.IconRightVisible = true;
            this.btnEstadisticasDePlagas.IconRightZoom = 0D;
            this.btnEstadisticasDePlagas.IconVisible = true;
            this.btnEstadisticasDePlagas.IconZoom = 60D;
            this.btnEstadisticasDePlagas.IsTab = false;
            this.btnEstadisticasDePlagas.Location = new System.Drawing.Point(0, 197);
            this.btnEstadisticasDePlagas.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.btnEstadisticasDePlagas.Name = "btnEstadisticasDePlagas";
            this.btnEstadisticasDePlagas.Normalcolor = System.Drawing.Color.Transparent;
            this.btnEstadisticasDePlagas.OnHovercolor = System.Drawing.Color.FromArgb(((int)(((byte)(126)))), ((int)(((byte)(145)))), ((int)(((byte)(64)))));
            this.btnEstadisticasDePlagas.OnHoverTextColor = System.Drawing.Color.Black;
            this.btnEstadisticasDePlagas.selected = false;
            this.btnEstadisticasDePlagas.Size = new System.Drawing.Size(250, 45);
            this.btnEstadisticasDePlagas.TabIndex = 53;
            this.btnEstadisticasDePlagas.Text = "   Estadisticas de plagas";
            this.btnEstadisticasDePlagas.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnEstadisticasDePlagas.Textcolor = System.Drawing.Color.Black;
            this.btnEstadisticasDePlagas.TextFont = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnEstadisticasDePlagas.Click += new System.EventHandler(this.bunifuFlatButton6_Click);
            // 
            // btnInicio
            // 
            this.btnInicio.Activecolor = System.Drawing.Color.FromArgb(((int)(((byte)(126)))), ((int)(((byte)(145)))), ((int)(((byte)(64)))));
            this.btnInicio.BackColor = System.Drawing.Color.Transparent;
            this.btnInicio.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.btnInicio.BorderRadius = 0;
            this.btnInicio.ButtonText = "   Inicio";
            this.btnInicio.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnInicio.DisabledColor = System.Drawing.Color.Gray;
            this.btnInicio.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnInicio.Iconcolor = System.Drawing.Color.Transparent;
            this.btnInicio.Iconimage = global::Capa_Presentacion.Properties.Resources.icons8_Partly_Cloudy_Day_32px;
            this.btnInicio.Iconimage_right = null;
            this.btnInicio.Iconimage_right_Selected = null;
            this.btnInicio.Iconimage_Selected = null;
            this.btnInicio.IconMarginLeft = 0;
            this.btnInicio.IconMarginRight = 0;
            this.btnInicio.IconRightVisible = true;
            this.btnInicio.IconRightZoom = 0D;
            this.btnInicio.IconVisible = true;
            this.btnInicio.IconZoom = 60D;
            this.btnInicio.IsTab = false;
            this.btnInicio.Location = new System.Drawing.Point(0, 55);
            this.btnInicio.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.btnInicio.Name = "btnInicio";
            this.btnInicio.Normalcolor = System.Drawing.Color.Transparent;
            this.btnInicio.OnHovercolor = System.Drawing.Color.FromArgb(((int)(((byte)(126)))), ((int)(((byte)(145)))), ((int)(((byte)(64)))));
            this.btnInicio.OnHoverTextColor = System.Drawing.Color.Black;
            this.btnInicio.selected = false;
            this.btnInicio.Size = new System.Drawing.Size(250, 45);
            this.btnInicio.TabIndex = 51;
            this.btnInicio.Text = "   Inicio";
            this.btnInicio.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnInicio.Textcolor = System.Drawing.Color.Black;
            this.btnInicio.TextFont = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnInicio.Click += new System.EventHandler(this.bunifuFlatButton4_Click);
            // 
            // btnMenuPrincipal
            // 
            this.btnMenuPrincipal.Activecolor = System.Drawing.Color.FromArgb(((int)(((byte)(126)))), ((int)(((byte)(145)))), ((int)(((byte)(64)))));
            this.btnMenuPrincipal.BackColor = System.Drawing.Color.Transparent;
            this.btnMenuPrincipal.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.btnMenuPrincipal.BorderRadius = 0;
            this.btnMenuPrincipal.ButtonText = "   Menu Principal";
            this.btnMenuPrincipal.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnMenuPrincipal.DisabledColor = System.Drawing.Color.Gray;
            this.btnMenuPrincipal.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnMenuPrincipal.Iconcolor = System.Drawing.Color.Transparent;
            this.btnMenuPrincipal.Iconimage = global::Capa_Presentacion.Properties.Resources.icons8_Long_Arrow_Left_32px_1;
            this.btnMenuPrincipal.Iconimage_right = null;
            this.btnMenuPrincipal.Iconimage_right_Selected = null;
            this.btnMenuPrincipal.Iconimage_Selected = null;
            this.btnMenuPrincipal.IconMarginLeft = 0;
            this.btnMenuPrincipal.IconMarginRight = 0;
            this.btnMenuPrincipal.IconRightVisible = true;
            this.btnMenuPrincipal.IconRightZoom = 0D;
            this.btnMenuPrincipal.IconVisible = true;
            this.btnMenuPrincipal.IconZoom = 60D;
            this.btnMenuPrincipal.IsTab = false;
            this.btnMenuPrincipal.Location = new System.Drawing.Point(0, 0);
            this.btnMenuPrincipal.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.btnMenuPrincipal.Name = "btnMenuPrincipal";
            this.btnMenuPrincipal.Normalcolor = System.Drawing.Color.Transparent;
            this.btnMenuPrincipal.OnHovercolor = System.Drawing.Color.FromArgb(((int)(((byte)(126)))), ((int)(((byte)(145)))), ((int)(((byte)(64)))));
            this.btnMenuPrincipal.OnHoverTextColor = System.Drawing.Color.Black;
            this.btnMenuPrincipal.selected = false;
            this.btnMenuPrincipal.Size = new System.Drawing.Size(250, 45);
            this.btnMenuPrincipal.TabIndex = 15;
            this.btnMenuPrincipal.Text = "   Menu Principal";
            this.btnMenuPrincipal.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnMenuPrincipal.Textcolor = System.Drawing.Color.Black;
            this.btnMenuPrincipal.TextFont = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnMenuPrincipal.Click += new System.EventHandler(this.bunifuFlatButton3_Click);
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
            this.myPanel1.ResumeLayout(false);
            this.panelClima.ResumeLayout(false);
            this.panelClima.PerformLayout();
            this.myPanel5.ResumeLayout(false);
            this.myPanel5.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.picClimaQuinto)).EndInit();
            this.myPanel10.ResumeLayout(false);
            this.myPanel10.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.picClimaSegundo)).EndInit();
            this.myPanel8.ResumeLayout(false);
            this.myPanel8.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.picClimaTercero)).EndInit();
            this.myPanel7.ResumeLayout(false);
            this.myPanel7.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.picClimaCuarto)).EndInit();
            this.myPanel3.ResumeLayout(false);
            this.myPanel3.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.picClimaPrimero)).EndInit();
            this.panelDerecho.ResumeLayout(false);
            this.panelDerecho.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.myPanel2.ResumeLayout(false);
            this.myPanel2.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion
        private System.Timers.Timer MouseDetect;
        private Bunifu.Framework.UI.BunifuDragControl bunifuDragControl1;
        private MyPanel myPanel1;
        private MyPanel myPanel2;
        private Bunifu.Framework.UI.BunifuFlatButton btnMenuPrincipal;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Label label1;
        private Bunifu.Framework.UI.BunifuFlatButton btnConfiguracionGeneral;
        private Bunifu.Framework.UI.BunifuFlatButton btnGenerarReportes;
        private Bunifu.Framework.UI.BunifuFlatButton btnAdministrarCultivos;
        private Bunifu.Framework.UI.BunifuFlatButton btnEstadisticasDePlagas;
        private Bunifu.Framework.UI.BunifuFlatButton btnHistorialDePlagas;
        private Bunifu.Framework.UI.BunifuFlatButton btnInicio;
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
        private System.Windows.Forms.Label label2;
        private MyPanel myPanel10;
        private MyPanel myPanel8;
        private MyPanel myPanel7;
        private MyPanel myPanel4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.Label label15;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.Label label14;
        private System.Windows.Forms.Label label16;
        private System.Windows.Forms.Label label20;
        private System.Windows.Forms.Label label17;
        private System.Windows.Forms.Label label19;
        private System.Windows.Forms.Label label18;
        private System.Windows.Forms.Label label21;
        private System.Windows.Forms.Label label22;
        private System.Windows.Forms.Label label25;
        private System.Windows.Forms.Label label23;
        private System.Windows.Forms.Label label24;
        private MyPanel myPanel5;
        private System.Windows.Forms.Label label26;
        private System.Windows.Forms.Label label27;
        private System.Windows.Forms.Label label28;
        private System.Windows.Forms.Label label29;
        private System.Windows.Forms.Label label30;
        public System.Windows.Forms.ImageList Vectores;
        private System.Windows.Forms.PictureBox picClimaPrimero;
        private System.Windows.Forms.PictureBox picClimaQuinto;
        private System.Windows.Forms.PictureBox picClimaSegundo;
        private System.Windows.Forms.PictureBox picClimaTercero;
        private System.Windows.Forms.PictureBox picClimaCuarto;
    }
}