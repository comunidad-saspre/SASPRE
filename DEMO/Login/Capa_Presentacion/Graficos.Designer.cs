namespace Capa_Presentacion
{
    partial class Graficos
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
            this.Posicion = new System.Windows.Forms.Timer(this.components);
            this.panelPrincipal = new Capa_Presentacion.MyPanel();
            this.panelControles = new Capa_Presentacion.MyPanel();
            this.button2 = new System.Windows.Forms.Button();
            this.button3 = new System.Windows.Forms.Button();
            this.button1 = new System.Windows.Forms.Button();
            this.panelControles.SuspendLayout();
            this.SuspendLayout();
            // 
            // Posicion
            // 
            this.Posicion.Enabled = true;
            this.Posicion.Interval = 5000;
            this.Posicion.Tick += new System.EventHandler(this.Posicion_Tick);
            // 
            // panelPrincipal
            // 
            this.panelPrincipal.BackColor = System.Drawing.Color.Silver;
            this.panelPrincipal.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panelPrincipal.Location = new System.Drawing.Point(0, 0);
            this.panelPrincipal.Name = "panelPrincipal";
            this.panelPrincipal.Size = new System.Drawing.Size(918, 579);
            this.panelPrincipal.TabIndex = 4;
            this.panelPrincipal.Paint += new System.Windows.Forms.PaintEventHandler(this.panelPrincipal_Paint);
            // 
            // panelControles
            // 
            this.panelControles.Controls.Add(this.button2);
            this.panelControles.Controls.Add(this.button3);
            this.panelControles.Controls.Add(this.button1);
            this.panelControles.Dock = System.Windows.Forms.DockStyle.Right;
            this.panelControles.Location = new System.Drawing.Point(677, 0);
            this.panelControles.Name = "panelControles";
            this.panelControles.Size = new System.Drawing.Size(241, 579);
            this.panelControles.TabIndex = 7;
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(82, 70);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(123, 38);
            this.button2.TabIndex = 5;
            this.button2.Text = "Borrar ultimo tomate";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // button3
            // 
            this.button3.Location = new System.Drawing.Point(82, 114);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(123, 38);
            this.button3.TabIndex = 6;
            this.button3.Text = "Borrar todo de panel principal";
            this.button3.UseVisualStyleBackColor = true;
            this.button3.Click += new System.EventHandler(this.button3_Click);
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(82, 26);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(123, 38);
            this.button1.TabIndex = 0;
            this.button1.Text = "Agregar tomates";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // Graficos
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(918, 579);
            this.Controls.Add(this.panelControles);
            this.Controls.Add(this.panelPrincipal);
            this.Name = "Graficos";
            this.Text = "Graficos";
            this.Load += new System.EventHandler(this.Graficos_Load);
            this.panelControles.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button button1;
        private MyPanel panelPrincipal;
        private System.Windows.Forms.Timer Posicion;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Button button3;
        private MyPanel panelControles;
    }
}