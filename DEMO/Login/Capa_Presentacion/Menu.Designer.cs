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
            this.label26 = new System.Windows.Forms.Label();
            this.label27 = new System.Windows.Forms.Label();
            this.label28 = new System.Windows.Forms.Label();
            this.label29 = new System.Windows.Forms.Label();
            this.label30 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.myPanel10 = new Capa_Presentacion.MyPanel();
            this.label11 = new System.Windows.Forms.Label();
            this.label12 = new System.Windows.Forms.Label();
            this.label15 = new System.Windows.Forms.Label();
            this.label13 = new System.Windows.Forms.Label();
            this.label14 = new System.Windows.Forms.Label();
            this.labelClimaHoy = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.myPanel8 = new Capa_Presentacion.MyPanel();
            this.label16 = new System.Windows.Forms.Label();
            this.label20 = new System.Windows.Forms.Label();
            this.label17 = new System.Windows.Forms.Label();
            this.label19 = new System.Windows.Forms.Label();
            this.label18 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.myPanel7 = new Capa_Presentacion.MyPanel();
            this.label21 = new System.Windows.Forms.Label();
            this.label22 = new System.Windows.Forms.Label();
            this.label25 = new System.Windows.Forms.Label();
            this.label23 = new System.Windows.Forms.Label();
            this.label24 = new System.Windows.Forms.Label();
            this.myPanel3 = new Capa_Presentacion.MyPanel();
            this.label10 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
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
            this.timerClima = new System.Windows.Forms.Timer(this.components);
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
            this.panelClima.Controls.Add(this.label5);
            this.panelClima.Controls.Add(this.myPanel10);
            this.panelClima.Controls.Add(this.labelClimaHoy);
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
            // label26
            // 
            this.label26.AutoSize = true;
            this.label26.BackColor = System.Drawing.Color.Transparent;
            this.label26.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label26.ForeColor = System.Drawing.Color.Black;
            this.label26.Location = new System.Drawing.Point(59, 279);
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
            this.label29.Location = new System.Drawing.Point(90, 235);
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
            this.label30.Location = new System.Drawing.Point(49, 235);
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
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.BackColor = System.Drawing.Color.Transparent;
            this.label11.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label11.ForeColor = System.Drawing.Color.Black;
            this.label11.Location = new System.Drawing.Point(57, 275);
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
            this.label12.Location = new System.Drawing.Point(88, 231);
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
            this.label13.Location = new System.Drawing.Point(47, 231);
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
            // labelClimaHoy
            // 
            this.labelClimaHoy.AutoSize = true;
            this.labelClimaHoy.BackColor = System.Drawing.Color.Transparent;
            this.labelClimaHoy.Font = new System.Drawing.Font("Microsoft Sans Serif", 50.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.labelClimaHoy.ForeColor = System.Drawing.Color.White;
            this.labelClimaHoy.Location = new System.Drawing.Point(146, 25);
            this.labelClimaHoy.Name = "labelClimaHoy";
            this.labelClimaHoy.Size = new System.Drawing.Size(126, 76);
            this.labelClimaHoy.TabIndex = 31;
            this.labelClimaHoy.Text = "° C";
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
            // label16
            // 
            this.label16.AutoSize = true;
            this.label16.BackColor = System.Drawing.Color.Transparent;
            this.label16.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label16.ForeColor = System.Drawing.Color.Black;
            this.label16.Location = new System.Drawing.Point(57, 275);
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
            this.label17.Location = new System.Drawing.Point(88, 231);
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
            this.label19.Location = new System.Drawing.Point(47, 231);
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
            // label21
            // 
            this.label21.AutoSize = true;
            this.label21.BackColor = System.Drawing.Color.Transparent;
            this.label21.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label21.ForeColor = System.Drawing.Color.Black;
            this.label21.Location = new System.Drawing.Point(59, 279);
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
            this.label23.Location = new System.Drawing.Point(90, 235);
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
            this.label24.Location = new System.Drawing.Point(49, 235);
            this.label24.Name = "label24";
            this.label24.Size = new System.Drawing.Size(32, 20);
            this.label24.TabIndex = 50;
            this.label24.Text = "29°";
            // 
            // myPanel3
            // 
            this.myPanel3.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(127)))), ((int)(((byte)(144)))), ((int)(((byte)(64)))));
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
            this.bunifuFlatButton3.ButtonText = "   Menu Principal";
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
            this.bunifuFlatButton3.Text = "   Menu Principal";
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
            // timerClima
            // 
            this.timerClima.Enabled = true;
            this.timerClima.Interval = 3600000;
            this.timerClima.Tick += new System.EventHandler(this.timerClima_Tick);
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
        private System.Windows.Forms.Label label2;
        private MyPanel myPanel10;
        private MyPanel myPanel8;
        private MyPanel myPanel7;
        private MyPanel myPanel4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label labelClimaHoy;
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
        private System.Windows.Forms.Timer timerClima;
    }
}