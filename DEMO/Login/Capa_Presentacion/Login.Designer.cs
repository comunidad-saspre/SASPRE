namespace Capa_Presentacion
{
    partial class Login
    {
        /// <summary>
        /// Variable del diseñador necesaria.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Limpiar los recursos que se estén usando.
        /// </summary>
        /// <param name="disposing">true si los recursos administrados se deben desechar; false en caso contrario.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Código generado por el Diseñador de Windows Forms

        /// <summary>
        /// Método necesario para admitir el Diseñador. No se puede modificar
        /// el contenido de este método con el editor de código.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Login));
            this.panel1 = new System.Windows.Forms.Panel();
            this.BtnMinimizar = new System.Windows.Forms.PictureBox();
            this.pictureBox4 = new System.Windows.Forms.PictureBox();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.bunifuDragControl1 = new Bunifu.Framework.UI.BunifuDragControl(this.components);
            this.bunifuSeparator1 = new Bunifu.Framework.UI.BunifuSeparator();
            this.bunifuSeparator2 = new Bunifu.Framework.UI.BunifuSeparator();
            this.lblbienvenido = new System.Windows.Forms.Label();
            this.lblSASPRE = new System.Windows.Forms.Label();
            this.txtNickname = new Bunifu.Framework.UI.BunifuMaterialTextbox();
            this.txtContra = new Bunifu.Framework.UI.BunifuMaterialTextbox();
            this.btnIngresar = new Bunifu.Framework.UI.BunifuFlatButton();
            this.pictureBox2 = new System.Windows.Forms.PictureBox();
            this.pictureBox3 = new System.Windows.Forms.PictureBox();
            this.toolTip1 = new System.Windows.Forms.ToolTip(this.components);
            this.linklblcontrasena = new System.Windows.Forms.LinkLabel();
            this.pictureBox5 = new System.Windows.Forms.PictureBox();
            this.bunifuMaterialTextbox1 = new Bunifu.Framework.UI.BunifuMaterialTextbox();
            this.label1 = new System.Windows.Forms.Label();
            this.btnEnviar = new Bunifu.Framework.UI.BunifuFlatButton();
            this.btnCancelar = new Bunifu.Framework.UI.BunifuFlatButton();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.BtnMinimizar)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox4)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox3)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox5)).BeginInit();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(88)))), ((int)(((byte)(143)))), ((int)(((byte)(39)))));
            this.panel1.Controls.Add(this.BtnMinimizar);
            this.panel1.Controls.Add(this.pictureBox4);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(1280, 25);
            this.panel1.TabIndex = 0;
            // 
            // BtnMinimizar
            // 
            this.BtnMinimizar.BackColor = System.Drawing.Color.Transparent;
            this.BtnMinimizar.Cursor = System.Windows.Forms.Cursors.Hand;
            this.BtnMinimizar.Image = global::Capa_Presentacion.Properties.Resources.icons8_Minimize_Window_48px;
            this.BtnMinimizar.Location = new System.Drawing.Point(1231, 3);
            this.BtnMinimizar.Name = "BtnMinimizar";
            this.BtnMinimizar.Size = new System.Drawing.Size(20, 19);
            this.BtnMinimizar.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.BtnMinimizar.TabIndex = 12;
            this.BtnMinimizar.TabStop = false;
            this.toolTip1.SetToolTip(this.BtnMinimizar, "Minimizar");
            this.BtnMinimizar.Click += new System.EventHandler(this.pictureBox5_Click);
            // 
            // pictureBox4
            // 
            this.pictureBox4.BackColor = System.Drawing.Color.Transparent;
            this.pictureBox4.Cursor = System.Windows.Forms.Cursors.Hand;
            this.pictureBox4.Image = global::Capa_Presentacion.Properties.Resources.icons8_Delete_32px;
            this.pictureBox4.Location = new System.Drawing.Point(1257, 3);
            this.pictureBox4.Name = "pictureBox4";
            this.pictureBox4.Size = new System.Drawing.Size(20, 19);
            this.pictureBox4.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.pictureBox4.TabIndex = 11;
            this.pictureBox4.TabStop = false;
            this.toolTip1.SetToolTip(this.pictureBox4, "Cerrar");
            this.pictureBox4.Click += new System.EventHandler(this.pictureBox4_Click);
            // 
            // pictureBox1
            // 
            this.pictureBox1.BackColor = System.Drawing.Color.Transparent;
            this.pictureBox1.Image = global::Capa_Presentacion.Properties.Resources.logo;
            this.pictureBox1.Location = new System.Drawing.Point(580, 146);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(123, 144);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.pictureBox1.TabIndex = 1;
            this.pictureBox1.TabStop = false;
            // 
            // bunifuDragControl1
            // 
            this.bunifuDragControl1.Fixed = true;
            this.bunifuDragControl1.Horizontal = true;
            this.bunifuDragControl1.TargetControl = this.panel1;
            this.bunifuDragControl1.Vertical = true;
            // 
            // bunifuSeparator1
            // 
            this.bunifuSeparator1.BackColor = System.Drawing.Color.Transparent;
            this.bunifuSeparator1.LineColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.bunifuSeparator1.LineThickness = 1;
            this.bunifuSeparator1.Location = new System.Drawing.Point(520, 348);
            this.bunifuSeparator1.Name = "bunifuSeparator1";
            this.bunifuSeparator1.Size = new System.Drawing.Size(243, 35);
            this.bunifuSeparator1.TabIndex = 2;
            this.bunifuSeparator1.Transparency = 255;
            this.bunifuSeparator1.Vertical = false;
            // 
            // bunifuSeparator2
            // 
            this.bunifuSeparator2.BackColor = System.Drawing.Color.Transparent;
            this.bunifuSeparator2.LineColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.bunifuSeparator2.LineThickness = 1;
            this.bunifuSeparator2.Location = new System.Drawing.Point(520, 533);
            this.bunifuSeparator2.Name = "bunifuSeparator2";
            this.bunifuSeparator2.Size = new System.Drawing.Size(243, 35);
            this.bunifuSeparator2.TabIndex = 3;
            this.bunifuSeparator2.Transparency = 255;
            this.bunifuSeparator2.Vertical = false;
            this.bunifuSeparator2.Load += new System.EventHandler(this.bunifuSeparator2_Load);
            // 
            // lblbienvenido
            // 
            this.lblbienvenido.AutoSize = true;
            this.lblbienvenido.BackColor = System.Drawing.Color.Transparent;
            this.lblbienvenido.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblbienvenido.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.lblbienvenido.Location = new System.Drawing.Point(556, 106);
            this.lblbienvenido.Name = "lblbienvenido";
            this.lblbienvenido.Size = new System.Drawing.Size(170, 24);
            this.lblbienvenido.TabIndex = 4;
            this.lblbienvenido.Text = "B I E N V E N I D O";
            // 
            // lblSASPRE
            // 
            this.lblSASPRE.AutoSize = true;
            this.lblSASPRE.BackColor = System.Drawing.Color.Transparent;
            this.lblSASPRE.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblSASPRE.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.lblSASPRE.Location = new System.Drawing.Point(586, 312);
            this.lblSASPRE.Name = "lblSASPRE";
            this.lblSASPRE.Size = new System.Drawing.Size(110, 24);
            this.lblSASPRE.TabIndex = 5;
            this.lblSASPRE.Text = "S A S P R E";
            // 
            // txtNickname
            // 
            this.txtNickname.BackColor = System.Drawing.Color.White;
            this.txtNickname.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.txtNickname.Font = new System.Drawing.Font("Century Gothic", 9.75F);
            this.txtNickname.ForeColor = System.Drawing.Color.Silver;
            this.txtNickname.HintForeColor = System.Drawing.Color.Silver;
            this.txtNickname.HintText = "Usuario";
            this.txtNickname.isPassword = false;
            this.txtNickname.LineFocusedColor = System.Drawing.Color.FromArgb(((int)(((byte)(72)))), ((int)(((byte)(174)))), ((int)(((byte)(96)))));
            this.txtNickname.LineIdleColor = System.Drawing.Color.FromArgb(((int)(((byte)(88)))), ((int)(((byte)(143)))), ((int)(((byte)(39)))));
            this.txtNickname.LineMouseHoverColor = System.Drawing.Color.FromArgb(((int)(((byte)(88)))), ((int)(((byte)(143)))), ((int)(((byte)(39)))));
            this.txtNickname.LineThickness = 3;
            this.txtNickname.Location = new System.Drawing.Point(548, 399);
            this.txtNickname.Margin = new System.Windows.Forms.Padding(4);
            this.txtNickname.Name = "txtNickname";
            this.txtNickname.Size = new System.Drawing.Size(209, 30);
            this.txtNickname.TabIndex = 6;
            this.txtNickname.TextAlign = System.Windows.Forms.HorizontalAlignment.Left;
            this.toolTip1.SetToolTip(this.txtNickname, "Ingresa usuario");
            this.txtNickname.OnValueChanged += new System.EventHandler(this.txtNickname_OnValueChanged);
            // 
            // txtContra
            // 
            this.txtContra.BackColor = System.Drawing.Color.White;
            this.txtContra.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.txtContra.Font = new System.Drawing.Font("Century Gothic", 9.75F);
            this.txtContra.ForeColor = System.Drawing.Color.Silver;
            this.txtContra.HintForeColor = System.Drawing.Color.Silver;
            this.txtContra.HintText = "Contraseña";
            this.txtContra.isPassword = true;
            this.txtContra.LineFocusedColor = System.Drawing.Color.FromArgb(((int)(((byte)(72)))), ((int)(((byte)(174)))), ((int)(((byte)(96)))));
            this.txtContra.LineIdleColor = System.Drawing.Color.FromArgb(((int)(((byte)(88)))), ((int)(((byte)(143)))), ((int)(((byte)(39)))));
            this.txtContra.LineMouseHoverColor = System.Drawing.Color.FromArgb(((int)(((byte)(88)))), ((int)(((byte)(143)))), ((int)(((byte)(39)))));
            this.txtContra.LineThickness = 3;
            this.txtContra.Location = new System.Drawing.Point(547, 461);
            this.txtContra.Margin = new System.Windows.Forms.Padding(4);
            this.txtContra.Name = "txtContra";
            this.txtContra.Size = new System.Drawing.Size(210, 30);
            this.txtContra.TabIndex = 7;
            this.txtContra.TextAlign = System.Windows.Forms.HorizontalAlignment.Left;
            this.toolTip1.SetToolTip(this.txtContra, "Ingresa contraseña");
            this.txtContra.OnValueChanged += new System.EventHandler(this.txtContra_OnValueChanged);
            this.txtContra.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtContra_KeyPress);
            // 
            // btnIngresar
            // 
            this.btnIngresar.Activecolor = System.Drawing.Color.FromArgb(((int)(((byte)(72)))), ((int)(((byte)(174)))), ((int)(((byte)(96)))));
            this.btnIngresar.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(88)))), ((int)(((byte)(143)))), ((int)(((byte)(39)))));
            this.btnIngresar.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.btnIngresar.BorderRadius = 0;
            this.btnIngresar.ButtonText = "Ingresar";
            this.btnIngresar.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnIngresar.DisabledColor = System.Drawing.Color.Gray;
            this.btnIngresar.Iconcolor = System.Drawing.Color.Transparent;
            this.btnIngresar.Iconimage = ((System.Drawing.Image)(resources.GetObject("btnIngresar.Iconimage")));
            this.btnIngresar.Iconimage_right = null;
            this.btnIngresar.Iconimage_right_Selected = null;
            this.btnIngresar.Iconimage_Selected = null;
            this.btnIngresar.IconMarginLeft = 0;
            this.btnIngresar.IconMarginRight = 0;
            this.btnIngresar.IconRightVisible = false;
            this.btnIngresar.IconRightZoom = 0D;
            this.btnIngresar.IconVisible = false;
            this.btnIngresar.IconZoom = 90D;
            this.btnIngresar.IsTab = false;
            this.btnIngresar.Location = new System.Drawing.Point(569, 574);
            this.btnIngresar.Name = "btnIngresar";
            this.btnIngresar.Normalcolor = System.Drawing.Color.FromArgb(((int)(((byte)(88)))), ((int)(((byte)(143)))), ((int)(((byte)(39)))));
            this.btnIngresar.OnHovercolor = System.Drawing.Color.FromArgb(((int)(((byte)(72)))), ((int)(((byte)(174)))), ((int)(((byte)(96)))));
            this.btnIngresar.OnHoverTextColor = System.Drawing.Color.White;
            this.btnIngresar.selected = false;
            this.btnIngresar.Size = new System.Drawing.Size(145, 42);
            this.btnIngresar.TabIndex = 8;
            this.btnIngresar.Text = "Ingresar";
            this.btnIngresar.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.btnIngresar.Textcolor = System.Drawing.Color.White;
            this.btnIngresar.TextFont = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnIngresar.Click += new System.EventHandler(this.bunifuFlatButton1_Click);
            // 
            // pictureBox2
            // 
            this.pictureBox2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(88)))), ((int)(((byte)(143)))), ((int)(((byte)(39)))));
            this.pictureBox2.Image = global::Capa_Presentacion.Properties.Resources.usuarioprueba;
            this.pictureBox2.Location = new System.Drawing.Point(521, 399);
            this.pictureBox2.Name = "pictureBox2";
            this.pictureBox2.Size = new System.Drawing.Size(29, 30);
            this.pictureBox2.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.pictureBox2.TabIndex = 9;
            this.pictureBox2.TabStop = false;
            // 
            // pictureBox3
            // 
            this.pictureBox3.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(88)))), ((int)(((byte)(143)))), ((int)(((byte)(39)))));
            this.pictureBox3.Image = global::Capa_Presentacion.Properties.Resources.candado3;
            this.pictureBox3.Location = new System.Drawing.Point(521, 461);
            this.pictureBox3.Name = "pictureBox3";
            this.pictureBox3.Size = new System.Drawing.Size(29, 30);
            this.pictureBox3.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.pictureBox3.TabIndex = 10;
            this.pictureBox3.TabStop = false;
            // 
            // linklblcontrasena
            // 
            this.linklblcontrasena.ActiveLinkColor = System.Drawing.Color.Blue;
            this.linklblcontrasena.AutoSize = true;
            this.linklblcontrasena.BackColor = System.Drawing.Color.Transparent;
            this.linklblcontrasena.LinkColor = System.Drawing.Color.White;
            this.linklblcontrasena.Location = new System.Drawing.Point(587, 517);
            this.linklblcontrasena.Name = "linklblcontrasena";
            this.linklblcontrasena.Size = new System.Drawing.Size(106, 13);
            this.linklblcontrasena.TabIndex = 11;
            this.linklblcontrasena.TabStop = true;
            this.linklblcontrasena.Text = "Olvide mi contraseña";
            this.linklblcontrasena.VisitedLinkColor = System.Drawing.Color.Blue;
            this.linklblcontrasena.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.linklblcontrasena_LinkClicked);
            // 
            // pictureBox5
            // 
            this.pictureBox5.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(88)))), ((int)(((byte)(143)))), ((int)(((byte)(39)))));
            this.pictureBox5.Image = global::Capa_Presentacion.Properties.Resources.usuarioprueba;
            this.pictureBox5.Location = new System.Drawing.Point(50, 326);
            this.pictureBox5.Name = "pictureBox5";
            this.pictureBox5.Size = new System.Drawing.Size(29, 30);
            this.pictureBox5.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.pictureBox5.TabIndex = 13;
            this.pictureBox5.TabStop = false;
            this.pictureBox5.Visible = false;
            // 
            // bunifuMaterialTextbox1
            // 
            this.bunifuMaterialTextbox1.BackColor = System.Drawing.Color.White;
            this.bunifuMaterialTextbox1.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.bunifuMaterialTextbox1.Font = new System.Drawing.Font("Century Gothic", 9.75F);
            this.bunifuMaterialTextbox1.ForeColor = System.Drawing.Color.Silver;
            this.bunifuMaterialTextbox1.HintForeColor = System.Drawing.Color.Silver;
            this.bunifuMaterialTextbox1.HintText = "Correo electronico";
            this.bunifuMaterialTextbox1.isPassword = false;
            this.bunifuMaterialTextbox1.LineFocusedColor = System.Drawing.Color.FromArgb(((int)(((byte)(72)))), ((int)(((byte)(174)))), ((int)(((byte)(96)))));
            this.bunifuMaterialTextbox1.LineIdleColor = System.Drawing.Color.FromArgb(((int)(((byte)(88)))), ((int)(((byte)(143)))), ((int)(((byte)(39)))));
            this.bunifuMaterialTextbox1.LineMouseHoverColor = System.Drawing.Color.FromArgb(((int)(((byte)(88)))), ((int)(((byte)(143)))), ((int)(((byte)(39)))));
            this.bunifuMaterialTextbox1.LineThickness = 3;
            this.bunifuMaterialTextbox1.Location = new System.Drawing.Point(77, 326);
            this.bunifuMaterialTextbox1.Margin = new System.Windows.Forms.Padding(4);
            this.bunifuMaterialTextbox1.Name = "bunifuMaterialTextbox1";
            this.bunifuMaterialTextbox1.Size = new System.Drawing.Size(209, 30);
            this.bunifuMaterialTextbox1.TabIndex = 12;
            this.bunifuMaterialTextbox1.TextAlign = System.Windows.Forms.HorizontalAlignment.Left;
            this.toolTip1.SetToolTip(this.bunifuMaterialTextbox1, "Ingresa usuario");
            this.bunifuMaterialTextbox1.Visible = false;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.BackColor = System.Drawing.Color.Transparent;
            this.label1.ForeColor = System.Drawing.SystemColors.ButtonFace;
            this.label1.Location = new System.Drawing.Point(566, 382);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(144, 13);
            this.label1.TabIndex = 15;
            this.label1.Text = "Ingrese su correo electronico";
            this.label1.Visible = false;
            this.label1.Click += new System.EventHandler(this.label1_Click);
            // 
            // btnEnviar
            // 
            this.btnEnviar.Activecolor = System.Drawing.Color.FromArgb(((int)(((byte)(72)))), ((int)(((byte)(174)))), ((int)(((byte)(96)))));
            this.btnEnviar.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(88)))), ((int)(((byte)(143)))), ((int)(((byte)(39)))));
            this.btnEnviar.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.btnEnviar.BorderRadius = 0;
            this.btnEnviar.ButtonText = "Enviar";
            this.btnEnviar.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnEnviar.DisabledColor = System.Drawing.Color.Gray;
            this.btnEnviar.Iconcolor = System.Drawing.Color.Transparent;
            this.btnEnviar.Iconimage = ((System.Drawing.Image)(resources.GetObject("btnEnviar.Iconimage")));
            this.btnEnviar.Iconimage_right = null;
            this.btnEnviar.Iconimage_right_Selected = null;
            this.btnEnviar.Iconimage_Selected = null;
            this.btnEnviar.IconMarginLeft = 0;
            this.btnEnviar.IconMarginRight = 0;
            this.btnEnviar.IconRightVisible = false;
            this.btnEnviar.IconRightZoom = 0D;
            this.btnEnviar.IconVisible = false;
            this.btnEnviar.IconZoom = 90D;
            this.btnEnviar.IsTab = false;
            this.btnEnviar.Location = new System.Drawing.Point(165, 363);
            this.btnEnviar.Name = "btnEnviar";
            this.btnEnviar.Normalcolor = System.Drawing.Color.FromArgb(((int)(((byte)(88)))), ((int)(((byte)(143)))), ((int)(((byte)(39)))));
            this.btnEnviar.OnHovercolor = System.Drawing.Color.FromArgb(((int)(((byte)(72)))), ((int)(((byte)(174)))), ((int)(((byte)(96)))));
            this.btnEnviar.OnHoverTextColor = System.Drawing.Color.White;
            this.btnEnviar.selected = false;
            this.btnEnviar.Size = new System.Drawing.Size(109, 42);
            this.btnEnviar.TabIndex = 16;
            this.btnEnviar.Text = "Enviar";
            this.btnEnviar.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.btnEnviar.Textcolor = System.Drawing.Color.White;
            this.btnEnviar.TextFont = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnEnviar.Visible = false;
            this.btnEnviar.Click += new System.EventHandler(this.btnEnviar_Click);
            // 
            // btnCancelar
            // 
            this.btnCancelar.Activecolor = System.Drawing.Color.FromArgb(((int)(((byte)(72)))), ((int)(((byte)(174)))), ((int)(((byte)(96)))));
            this.btnCancelar.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(88)))), ((int)(((byte)(143)))), ((int)(((byte)(39)))));
            this.btnCancelar.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.btnCancelar.BorderRadius = 0;
            this.btnCancelar.ButtonText = "Cancelar";
            this.btnCancelar.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnCancelar.DisabledColor = System.Drawing.Color.Gray;
            this.btnCancelar.Iconcolor = System.Drawing.Color.Transparent;
            this.btnCancelar.Iconimage = ((System.Drawing.Image)(resources.GetObject("btnCancelar.Iconimage")));
            this.btnCancelar.Iconimage_right = null;
            this.btnCancelar.Iconimage_right_Selected = null;
            this.btnCancelar.Iconimage_Selected = null;
            this.btnCancelar.IconMarginLeft = 0;
            this.btnCancelar.IconMarginRight = 0;
            this.btnCancelar.IconRightVisible = false;
            this.btnCancelar.IconRightZoom = 0D;
            this.btnCancelar.IconVisible = false;
            this.btnCancelar.IconZoom = 90D;
            this.btnCancelar.IsTab = false;
            this.btnCancelar.Location = new System.Drawing.Point(50, 363);
            this.btnCancelar.Name = "btnCancelar";
            this.btnCancelar.Normalcolor = System.Drawing.Color.FromArgb(((int)(((byte)(88)))), ((int)(((byte)(143)))), ((int)(((byte)(39)))));
            this.btnCancelar.OnHovercolor = System.Drawing.Color.FromArgb(((int)(((byte)(72)))), ((int)(((byte)(174)))), ((int)(((byte)(96)))));
            this.btnCancelar.OnHoverTextColor = System.Drawing.Color.White;
            this.btnCancelar.selected = false;
            this.btnCancelar.Size = new System.Drawing.Size(109, 42);
            this.btnCancelar.TabIndex = 17;
            this.btnCancelar.Text = "Cancelar";
            this.btnCancelar.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.btnCancelar.Textcolor = System.Drawing.Color.White;
            this.btnCancelar.TextFont = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnCancelar.Visible = false;
            this.btnCancelar.Click += new System.EventHandler(this.btnCancelar_Click);
            // 
            // Login
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImage = global::Capa_Presentacion.Properties.Resources.Fondo2;
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(1280, 720);
            this.Controls.Add(this.btnCancelar);
            this.Controls.Add(this.btnEnviar);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.pictureBox5);
            this.Controls.Add(this.bunifuMaterialTextbox1);
            this.Controls.Add(this.linklblcontrasena);
            this.Controls.Add(this.pictureBox3);
            this.Controls.Add(this.pictureBox2);
            this.Controls.Add(this.btnIngresar);
            this.Controls.Add(this.txtContra);
            this.Controls.Add(this.txtNickname);
            this.Controls.Add(this.lblSASPRE);
            this.Controls.Add(this.lblbienvenido);
            this.Controls.Add(this.bunifuSeparator2);
            this.Controls.Add(this.bunifuSeparator1);
            this.Controls.Add(this.pictureBox1);
            this.Controls.Add(this.panel1);
            this.DoubleBuffered = true;
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.MinimumSize = new System.Drawing.Size(1280, 720);
            this.Name = "Login";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.Login_Load);
            this.panel1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.BtnMinimizar)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox4)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox3)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox5)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.PictureBox pictureBox1;
        private Bunifu.Framework.UI.BunifuDragControl bunifuDragControl1;
        private Bunifu.Framework.UI.BunifuSeparator bunifuSeparator1;
        private Bunifu.Framework.UI.BunifuSeparator bunifuSeparator2;
        private System.Windows.Forms.Label lblbienvenido;
        private System.Windows.Forms.Label lblSASPRE;
        private Bunifu.Framework.UI.BunifuMaterialTextbox txtNickname;
        private Bunifu.Framework.UI.BunifuMaterialTextbox txtContra;
        private Bunifu.Framework.UI.BunifuFlatButton btnIngresar;
        private System.Windows.Forms.PictureBox pictureBox2;
        private System.Windows.Forms.PictureBox pictureBox3;
        private System.Windows.Forms.PictureBox pictureBox4;
        private System.Windows.Forms.ToolTip toolTip1;
        private System.Windows.Forms.LinkLabel linklblcontrasena;
        private System.Windows.Forms.PictureBox BtnMinimizar;
        private System.Windows.Forms.PictureBox pictureBox5;
        private Bunifu.Framework.UI.BunifuMaterialTextbox bunifuMaterialTextbox1;
        private System.Windows.Forms.Label label1;
        private Bunifu.Framework.UI.BunifuFlatButton btnEnviar;
        private Bunifu.Framework.UI.BunifuFlatButton btnCancelar;
    }
}

