<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class MenuAdmin
    Inherits System.Windows.Forms.Form

    'Form reemplaza a Dispose para limpiar la lista de componentes.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Requerido por el Diseñador de Windows Forms
    Private components As System.ComponentModel.IContainer

    'NOTA: el Diseñador de Windows Forms necesita el siguiente procedimiento
    'Se puede modificar usando el Diseñador de Windows Forms.  
    'No lo modifique con el editor de código.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(MenuAdmin))
        Me.TabControl1 = New System.Windows.Forms.TabControl()
        Me.TabPage1 = New System.Windows.Forms.TabPage()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.DgvCargos = New System.Windows.Forms.DataGridView()
        Me.Id = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.Nombre = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.TxtIdCargo = New System.Windows.Forms.TextBox()
        Me.TxtNombreCargo = New System.Windows.Forms.TextBox()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.MenuCargos = New System.Windows.Forms.ToolStrip()
        Me.BtnNuevoCargo = New System.Windows.Forms.ToolStripButton()
        Me.ToolStripSeparator1 = New System.Windows.Forms.ToolStripSeparator()
        Me.BtnGuardarCargo = New System.Windows.Forms.ToolStripButton()
        Me.ToolStripSeparator2 = New System.Windows.Forms.ToolStripSeparator()
        Me.BtnEditarCargo = New System.Windows.Forms.ToolStripButton()
        Me.ToolStripSeparator3 = New System.Windows.Forms.ToolStripSeparator()
        Me.BtnEliminarCargo = New System.Windows.Forms.ToolStripButton()
        Me.ToolStripSeparator16 = New System.Windows.Forms.ToolStripSeparator()
        Me.BtnCerrarSesionC = New System.Windows.Forms.ToolStripButton()
        Me.TabPage2 = New System.Windows.Forms.TabPage()
        Me.Label4 = New System.Windows.Forms.Label()
        Me.DGVPartidos = New System.Windows.Forms.DataGridView()
        Me.IdPartido = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.NombrePartido = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.TxtIdPartido = New System.Windows.Forms.TextBox()
        Me.TxtNombrePartido = New System.Windows.Forms.TextBox()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.MenuPartidos = New System.Windows.Forms.ToolStrip()
        Me.BtnNuevoPartido = New System.Windows.Forms.ToolStripButton()
        Me.ToolStripSeparator4 = New System.Windows.Forms.ToolStripSeparator()
        Me.BtnGuardarPartido = New System.Windows.Forms.ToolStripButton()
        Me.ToolStripSeparator5 = New System.Windows.Forms.ToolStripSeparator()
        Me.BtnEditarPartido = New System.Windows.Forms.ToolStripButton()
        Me.ToolStripSeparator6 = New System.Windows.Forms.ToolStripSeparator()
        Me.BtnEliminarPartido = New System.Windows.Forms.ToolStripButton()
        Me.ToolStripSeparator15 = New System.Windows.Forms.ToolStripSeparator()
        Me.BtnCerrarSesionPa = New System.Windows.Forms.ToolStripButton()
        Me.TabPage3 = New System.Windows.Forms.TabPage()
        Me.BtnCargarImagen = New System.Windows.Forms.Button()
        Me.ImgCandidatos = New System.Windows.Forms.PictureBox()
        Me.LblMuniCmb = New System.Windows.Forms.Label()
        Me.CmbMuni = New System.Windows.Forms.ComboBox()
        Me.LblDptCmb = New System.Windows.Forms.Label()
        Me.CmbDpt = New System.Windows.Forms.ComboBox()
        Me.Label8 = New System.Windows.Forms.Label()
        Me.CmbPartidos = New System.Windows.Forms.ComboBox()
        Me.Label7 = New System.Windows.Forms.Label()
        Me.CmbCargos = New System.Windows.Forms.ComboBox()
        Me.Label5 = New System.Windows.Forms.Label()
        Me.DGVCandidatos = New System.Windows.Forms.DataGridView()
        Me.CandidatoId = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.CandidatoNombre = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.CandidatoCargo = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.CandidatoPartido = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.DptCandidato = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.MuniCandidato = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.ImagenCandidato = New System.Windows.Forms.DataGridViewImageColumn()
        Me.TxtIdCandidato = New System.Windows.Forms.TextBox()
        Me.TxtNombreCandidato = New System.Windows.Forms.TextBox()
        Me.Label6 = New System.Windows.Forms.Label()
        Me.MenuCandidatos = New System.Windows.Forms.ToolStrip()
        Me.BtnNuevoCandidato = New System.Windows.Forms.ToolStripButton()
        Me.ToolStripSeparator7 = New System.Windows.Forms.ToolStripSeparator()
        Me.BtnGuardarCandidato = New System.Windows.Forms.ToolStripButton()
        Me.ToolStripSeparator8 = New System.Windows.Forms.ToolStripSeparator()
        Me.BtnEditarCandidato = New System.Windows.Forms.ToolStripButton()
        Me.ToolStripSeparator9 = New System.Windows.Forms.ToolStripSeparator()
        Me.BtnEliminarCandidato = New System.Windows.Forms.ToolStripButton()
        Me.ToolStripSeparator14 = New System.Windows.Forms.ToolStripSeparator()
        Me.BtnCerrarSsionC = New System.Windows.Forms.ToolStripButton()
        Me.TabPage4 = New System.Windows.Forms.TabPage()
        Me.TxtIdPersona = New System.Windows.Forms.TextBox()
        Me.Label15 = New System.Windows.Forms.Label()
        Me.TxtDniPersona = New System.Windows.Forms.TextBox()
        Me.MenuPersona = New System.Windows.Forms.ToolStrip()
        Me.BtnNuevoPersona = New System.Windows.Forms.ToolStripButton()
        Me.ToolStripSeparator10 = New System.Windows.Forms.ToolStripSeparator()
        Me.BtnGuardarPersona = New System.Windows.Forms.ToolStripButton()
        Me.ToolStripSeparator11 = New System.Windows.Forms.ToolStripSeparator()
        Me.BtnEditarPersona = New System.Windows.Forms.ToolStripButton()
        Me.ToolStripSeparator12 = New System.Windows.Forms.ToolStripSeparator()
        Me.BtnEliminarPersona = New System.Windows.Forms.ToolStripButton()
        Me.ToolStripSeparator13 = New System.Windows.Forms.ToolStripSeparator()
        Me.BtnCerrarSesionP = New System.Windows.Forms.ToolStripButton()
        Me.Label14 = New System.Windows.Forms.Label()
        Me.Label13 = New System.Windows.Forms.Label()
        Me.CmbAldPersona = New System.Windows.Forms.ComboBox()
        Me.Label11 = New System.Windows.Forms.Label()
        Me.CmbMuniPersona = New System.Windows.Forms.ComboBox()
        Me.Label12 = New System.Windows.Forms.Label()
        Me.CmbDptPersona = New System.Windows.Forms.ComboBox()
        Me.TxtNombrePersona = New System.Windows.Forms.TextBox()
        Me.Label10 = New System.Windows.Forms.Label()
        Me.Label9 = New System.Windows.Forms.Label()
        Me.DgvPersonas = New System.Windows.Forms.DataGridView()
        Me.IdPersona = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.NombrePersona = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.DNIPersona = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.DptPersona = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.MuniPersona = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.AldPersona = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.TabControl1.SuspendLayout()
        Me.TabPage1.SuspendLayout()
        CType(Me.DgvCargos, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.MenuCargos.SuspendLayout()
        Me.TabPage2.SuspendLayout()
        CType(Me.DGVPartidos, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.MenuPartidos.SuspendLayout()
        Me.TabPage3.SuspendLayout()
        CType(Me.ImgCandidatos, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.DGVCandidatos, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.MenuCandidatos.SuspendLayout()
        Me.TabPage4.SuspendLayout()
        Me.MenuPersona.SuspendLayout()
        CType(Me.DgvPersonas, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'TabControl1
        '
        Me.TabControl1.Controls.Add(Me.TabPage1)
        Me.TabControl1.Controls.Add(Me.TabPage2)
        Me.TabControl1.Controls.Add(Me.TabPage3)
        Me.TabControl1.Controls.Add(Me.TabPage4)
        Me.TabControl1.Location = New System.Drawing.Point(12, 12)
        Me.TabControl1.Name = "TabControl1"
        Me.TabControl1.SelectedIndex = 0
        Me.TabControl1.Size = New System.Drawing.Size(980, 573)
        Me.TabControl1.TabIndex = 0
        '
        'TabPage1
        '
        Me.TabPage1.BackgroundImage = CType(resources.GetObject("TabPage1.BackgroundImage"), System.Drawing.Image)
        Me.TabPage1.Controls.Add(Me.Label2)
        Me.TabPage1.Controls.Add(Me.DgvCargos)
        Me.TabPage1.Controls.Add(Me.TxtIdCargo)
        Me.TabPage1.Controls.Add(Me.TxtNombreCargo)
        Me.TabPage1.Controls.Add(Me.Label1)
        Me.TabPage1.Controls.Add(Me.MenuCargos)
        Me.TabPage1.Location = New System.Drawing.Point(4, 22)
        Me.TabPage1.Name = "TabPage1"
        Me.TabPage1.Padding = New System.Windows.Forms.Padding(3)
        Me.TabPage1.Size = New System.Drawing.Size(972, 547)
        Me.TabPage1.TabIndex = 0
        Me.TabPage1.Text = "CARGOS"
        Me.TabPage1.UseVisualStyleBackColor = True
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Font = New System.Drawing.Font("Times New Roman", 12.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label2.Location = New System.Drawing.Point(31, 183)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(195, 19)
        Me.Label2.TabIndex = 5
        Me.Label2.Text = "CARGOS REGISTRADOS"
        '
        'DgvCargos
        '
        Me.DgvCargos.AllowDrop = True
        Me.DgvCargos.AllowUserToOrderColumns = True
        Me.DgvCargos.BackgroundColor = System.Drawing.Color.FromArgb(CType(CType(181, Byte), Integer), CType(CType(242, Byte), Integer), CType(CType(254, Byte), Integer))
        Me.DgvCargos.BorderStyle = System.Windows.Forms.BorderStyle.None
        Me.DgvCargos.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.DgvCargos.Columns.AddRange(New System.Windows.Forms.DataGridViewColumn() {Me.Id, Me.Nombre})
        Me.DgvCargos.Location = New System.Drawing.Point(33, 205)
        Me.DgvCargos.Name = "DgvCargos"
        Me.DgvCargos.RowHeadersVisible = False
        Me.DgvCargos.Size = New System.Drawing.Size(918, 333)
        Me.DgvCargos.TabIndex = 4
        '
        'Id
        '
        Me.Id.HeaderText = "Id"
        Me.Id.Name = "Id"
        Me.Id.Visible = False
        '
        'Nombre
        '
        Me.Nombre.HeaderText = "Nombre"
        Me.Nombre.Name = "Nombre"
        Me.Nombre.Width = 910
        '
        'TxtIdCargo
        '
        Me.TxtIdCargo.Enabled = False
        Me.TxtIdCargo.Location = New System.Drawing.Point(804, 129)
        Me.TxtIdCargo.Name = "TxtIdCargo"
        Me.TxtIdCargo.Size = New System.Drawing.Size(141, 20)
        Me.TxtIdCargo.TabIndex = 2
        Me.TxtIdCargo.Visible = False
        '
        'TxtNombreCargo
        '
        Me.TxtNombreCargo.Location = New System.Drawing.Point(35, 155)
        Me.TxtNombreCargo.Name = "TxtNombreCargo"
        Me.TxtNombreCargo.Size = New System.Drawing.Size(910, 20)
        Me.TxtNombreCargo.TabIndex = 1
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(32, 136)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(119, 13)
        Me.Label1.TabIndex = 1
        Me.Label1.Text = "NOMBRE DEL CARGO"
        '
        'MenuCargos
        '
        Me.MenuCargos.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.BtnNuevoCargo, Me.ToolStripSeparator1, Me.BtnGuardarCargo, Me.ToolStripSeparator2, Me.BtnEditarCargo, Me.ToolStripSeparator3, Me.BtnEliminarCargo, Me.ToolStripSeparator16, Me.BtnCerrarSesionC})
        Me.MenuCargos.Location = New System.Drawing.Point(3, 3)
        Me.MenuCargos.Name = "MenuCargos"
        Me.MenuCargos.Size = New System.Drawing.Size(966, 25)
        Me.MenuCargos.TabIndex = 0
        Me.MenuCargos.Text = "ToolStrip1"
        '
        'BtnNuevoCargo
        '
        Me.BtnNuevoCargo.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Text
        Me.BtnNuevoCargo.Image = CType(resources.GetObject("BtnNuevoCargo.Image"), System.Drawing.Image)
        Me.BtnNuevoCargo.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.BtnNuevoCargo.Name = "BtnNuevoCargo"
        Me.BtnNuevoCargo.Size = New System.Drawing.Size(46, 22)
        Me.BtnNuevoCargo.Text = "Nuevo"
        '
        'ToolStripSeparator1
        '
        Me.ToolStripSeparator1.Name = "ToolStripSeparator1"
        Me.ToolStripSeparator1.Size = New System.Drawing.Size(6, 25)
        '
        'BtnGuardarCargo
        '
        Me.BtnGuardarCargo.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Text
        Me.BtnGuardarCargo.Image = CType(resources.GetObject("BtnGuardarCargo.Image"), System.Drawing.Image)
        Me.BtnGuardarCargo.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.BtnGuardarCargo.Name = "BtnGuardarCargo"
        Me.BtnGuardarCargo.Size = New System.Drawing.Size(53, 22)
        Me.BtnGuardarCargo.Text = "Guardar"
        '
        'ToolStripSeparator2
        '
        Me.ToolStripSeparator2.Name = "ToolStripSeparator2"
        Me.ToolStripSeparator2.Size = New System.Drawing.Size(6, 25)
        '
        'BtnEditarCargo
        '
        Me.BtnEditarCargo.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Text
        Me.BtnEditarCargo.Image = CType(resources.GetObject("BtnEditarCargo.Image"), System.Drawing.Image)
        Me.BtnEditarCargo.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.BtnEditarCargo.Name = "BtnEditarCargo"
        Me.BtnEditarCargo.Size = New System.Drawing.Size(41, 22)
        Me.BtnEditarCargo.Text = "Editar"
        '
        'ToolStripSeparator3
        '
        Me.ToolStripSeparator3.Name = "ToolStripSeparator3"
        Me.ToolStripSeparator3.Size = New System.Drawing.Size(6, 25)
        '
        'BtnEliminarCargo
        '
        Me.BtnEliminarCargo.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Text
        Me.BtnEliminarCargo.Image = CType(resources.GetObject("BtnEliminarCargo.Image"), System.Drawing.Image)
        Me.BtnEliminarCargo.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.BtnEliminarCargo.Name = "BtnEliminarCargo"
        Me.BtnEliminarCargo.Size = New System.Drawing.Size(54, 22)
        Me.BtnEliminarCargo.Text = "Eliminar"
        '
        'ToolStripSeparator16
        '
        Me.ToolStripSeparator16.Name = "ToolStripSeparator16"
        Me.ToolStripSeparator16.Size = New System.Drawing.Size(6, 25)
        '
        'BtnCerrarSesionC
        '
        Me.BtnCerrarSesionC.Alignment = System.Windows.Forms.ToolStripItemAlignment.Right
        Me.BtnCerrarSesionC.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Text
        Me.BtnCerrarSesionC.Image = CType(resources.GetObject("BtnCerrarSesionC.Image"), System.Drawing.Image)
        Me.BtnCerrarSesionC.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.BtnCerrarSesionC.Name = "BtnCerrarSesionC"
        Me.BtnCerrarSesionC.Size = New System.Drawing.Size(80, 22)
        Me.BtnCerrarSesionC.Text = "Cerrar Sesión"
        '
        'TabPage2
        '
        Me.TabPage2.BackgroundImage = CType(resources.GetObject("TabPage2.BackgroundImage"), System.Drawing.Image)
        Me.TabPage2.Controls.Add(Me.Label4)
        Me.TabPage2.Controls.Add(Me.DGVPartidos)
        Me.TabPage2.Controls.Add(Me.TxtIdPartido)
        Me.TabPage2.Controls.Add(Me.TxtNombrePartido)
        Me.TabPage2.Controls.Add(Me.Label3)
        Me.TabPage2.Controls.Add(Me.MenuPartidos)
        Me.TabPage2.Location = New System.Drawing.Point(4, 22)
        Me.TabPage2.Name = "TabPage2"
        Me.TabPage2.Padding = New System.Windows.Forms.Padding(3)
        Me.TabPage2.Size = New System.Drawing.Size(972, 547)
        Me.TabPage2.TabIndex = 1
        Me.TabPage2.Text = "PARTIDOS"
        Me.TabPage2.UseVisualStyleBackColor = True
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Font = New System.Drawing.Font("Times New Roman", 12.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label4.Location = New System.Drawing.Point(16, 213)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(207, 19)
        Me.Label4.TabIndex = 8
        Me.Label4.Text = "PARTIDOS REGISTRADOS"
        '
        'DGVPartidos
        '
        Me.DGVPartidos.AllowDrop = True
        Me.DGVPartidos.AllowUserToOrderColumns = True
        Me.DGVPartidos.BackgroundColor = System.Drawing.Color.FromArgb(CType(CType(181, Byte), Integer), CType(CType(242, Byte), Integer), CType(CType(254, Byte), Integer))
        Me.DGVPartidos.BorderStyle = System.Windows.Forms.BorderStyle.None
        Me.DGVPartidos.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.DGVPartidos.Columns.AddRange(New System.Windows.Forms.DataGridViewColumn() {Me.IdPartido, Me.NombrePartido})
        Me.DGVPartidos.Location = New System.Drawing.Point(20, 245)
        Me.DGVPartidos.Name = "DGVPartidos"
        Me.DGVPartidos.RowHeadersVisible = False
        Me.DGVPartidos.Size = New System.Drawing.Size(915, 282)
        Me.DGVPartidos.TabIndex = 7
        '
        'IdPartido
        '
        Me.IdPartido.HeaderText = "Id"
        Me.IdPartido.Name = "IdPartido"
        Me.IdPartido.Visible = False
        '
        'NombrePartido
        '
        Me.NombrePartido.HeaderText = "Nombre"
        Me.NombrePartido.Name = "NombrePartido"
        Me.NombrePartido.Width = 910
        '
        'TxtIdPartido
        '
        Me.TxtIdPartido.Enabled = False
        Me.TxtIdPartido.Location = New System.Drawing.Point(779, 133)
        Me.TxtIdPartido.Name = "TxtIdPartido"
        Me.TxtIdPartido.Size = New System.Drawing.Size(141, 20)
        Me.TxtIdPartido.TabIndex = 4
        Me.TxtIdPartido.Visible = False
        '
        'TxtNombrePartido
        '
        Me.TxtNombrePartido.Location = New System.Drawing.Point(20, 159)
        Me.TxtNombrePartido.Name = "TxtNombrePartido"
        Me.TxtNombrePartido.Size = New System.Drawing.Size(915, 20)
        Me.TxtNombrePartido.TabIndex = 3
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(17, 136)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(181, 13)
        Me.Label3.TabIndex = 2
        Me.Label3.Text = "NOMBRE DEL PARTIDO POLITICO"
        '
        'MenuPartidos
        '
        Me.MenuPartidos.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.BtnNuevoPartido, Me.ToolStripSeparator4, Me.BtnGuardarPartido, Me.ToolStripSeparator5, Me.BtnEditarPartido, Me.ToolStripSeparator6, Me.BtnEliminarPartido, Me.ToolStripSeparator15, Me.BtnCerrarSesionPa})
        Me.MenuPartidos.Location = New System.Drawing.Point(3, 3)
        Me.MenuPartidos.Name = "MenuPartidos"
        Me.MenuPartidos.Size = New System.Drawing.Size(966, 25)
        Me.MenuPartidos.TabIndex = 1
        Me.MenuPartidos.Text = "ToolStrip1"
        '
        'BtnNuevoPartido
        '
        Me.BtnNuevoPartido.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Text
        Me.BtnNuevoPartido.Image = CType(resources.GetObject("BtnNuevoPartido.Image"), System.Drawing.Image)
        Me.BtnNuevoPartido.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.BtnNuevoPartido.Name = "BtnNuevoPartido"
        Me.BtnNuevoPartido.Size = New System.Drawing.Size(46, 22)
        Me.BtnNuevoPartido.Text = "Nuevo"
        '
        'ToolStripSeparator4
        '
        Me.ToolStripSeparator4.Name = "ToolStripSeparator4"
        Me.ToolStripSeparator4.Size = New System.Drawing.Size(6, 25)
        '
        'BtnGuardarPartido
        '
        Me.BtnGuardarPartido.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Text
        Me.BtnGuardarPartido.Image = CType(resources.GetObject("BtnGuardarPartido.Image"), System.Drawing.Image)
        Me.BtnGuardarPartido.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.BtnGuardarPartido.Name = "BtnGuardarPartido"
        Me.BtnGuardarPartido.Size = New System.Drawing.Size(53, 22)
        Me.BtnGuardarPartido.Text = "Guardar"
        '
        'ToolStripSeparator5
        '
        Me.ToolStripSeparator5.Name = "ToolStripSeparator5"
        Me.ToolStripSeparator5.Size = New System.Drawing.Size(6, 25)
        '
        'BtnEditarPartido
        '
        Me.BtnEditarPartido.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Text
        Me.BtnEditarPartido.Image = CType(resources.GetObject("BtnEditarPartido.Image"), System.Drawing.Image)
        Me.BtnEditarPartido.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.BtnEditarPartido.Name = "BtnEditarPartido"
        Me.BtnEditarPartido.Size = New System.Drawing.Size(41, 22)
        Me.BtnEditarPartido.Text = "Editar"
        '
        'ToolStripSeparator6
        '
        Me.ToolStripSeparator6.Name = "ToolStripSeparator6"
        Me.ToolStripSeparator6.Size = New System.Drawing.Size(6, 25)
        '
        'BtnEliminarPartido
        '
        Me.BtnEliminarPartido.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Text
        Me.BtnEliminarPartido.Image = CType(resources.GetObject("BtnEliminarPartido.Image"), System.Drawing.Image)
        Me.BtnEliminarPartido.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.BtnEliminarPartido.Name = "BtnEliminarPartido"
        Me.BtnEliminarPartido.Size = New System.Drawing.Size(54, 22)
        Me.BtnEliminarPartido.Text = "Eliminar"
        '
        'ToolStripSeparator15
        '
        Me.ToolStripSeparator15.Name = "ToolStripSeparator15"
        Me.ToolStripSeparator15.Size = New System.Drawing.Size(6, 25)
        '
        'BtnCerrarSesionPa
        '
        Me.BtnCerrarSesionPa.Alignment = System.Windows.Forms.ToolStripItemAlignment.Right
        Me.BtnCerrarSesionPa.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Text
        Me.BtnCerrarSesionPa.Image = CType(resources.GetObject("BtnCerrarSesionPa.Image"), System.Drawing.Image)
        Me.BtnCerrarSesionPa.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.BtnCerrarSesionPa.Name = "BtnCerrarSesionPa"
        Me.BtnCerrarSesionPa.Size = New System.Drawing.Size(80, 22)
        Me.BtnCerrarSesionPa.Text = "Cerrar Sesión"
        '
        'TabPage3
        '
        Me.TabPage3.BackgroundImage = CType(resources.GetObject("TabPage3.BackgroundImage"), System.Drawing.Image)
        Me.TabPage3.Controls.Add(Me.BtnCargarImagen)
        Me.TabPage3.Controls.Add(Me.ImgCandidatos)
        Me.TabPage3.Controls.Add(Me.LblMuniCmb)
        Me.TabPage3.Controls.Add(Me.CmbMuni)
        Me.TabPage3.Controls.Add(Me.LblDptCmb)
        Me.TabPage3.Controls.Add(Me.CmbDpt)
        Me.TabPage3.Controls.Add(Me.Label8)
        Me.TabPage3.Controls.Add(Me.CmbPartidos)
        Me.TabPage3.Controls.Add(Me.Label7)
        Me.TabPage3.Controls.Add(Me.CmbCargos)
        Me.TabPage3.Controls.Add(Me.Label5)
        Me.TabPage3.Controls.Add(Me.DGVCandidatos)
        Me.TabPage3.Controls.Add(Me.TxtIdCandidato)
        Me.TabPage3.Controls.Add(Me.TxtNombreCandidato)
        Me.TabPage3.Controls.Add(Me.Label6)
        Me.TabPage3.Controls.Add(Me.MenuCandidatos)
        Me.TabPage3.Location = New System.Drawing.Point(4, 22)
        Me.TabPage3.Name = "TabPage3"
        Me.TabPage3.Padding = New System.Windows.Forms.Padding(3)
        Me.TabPage3.Size = New System.Drawing.Size(972, 547)
        Me.TabPage3.TabIndex = 2
        Me.TabPage3.Text = "CANDIDATOS"
        Me.TabPage3.UseVisualStyleBackColor = True
        '
        'BtnCargarImagen
        '
        Me.BtnCargarImagen.Location = New System.Drawing.Point(815, 128)
        Me.BtnCargarImagen.Name = "BtnCargarImagen"
        Me.BtnCargarImagen.Size = New System.Drawing.Size(132, 23)
        Me.BtnCargarImagen.TabIndex = 10
        Me.BtnCargarImagen.Text = "Cargar Imagen"
        Me.BtnCargarImagen.UseVisualStyleBackColor = True
        '
        'ImgCandidatos
        '
        Me.ImgCandidatos.Location = New System.Drawing.Point(637, 157)
        Me.ImgCandidatos.Name = "ImgCandidatos"
        Me.ImgCandidatos.Size = New System.Drawing.Size(262, 152)
        Me.ImgCandidatos.TabIndex = 24
        Me.ImgCandidatos.TabStop = False
        '
        'LblMuniCmb
        '
        Me.LblMuniCmb.AutoSize = True
        Me.LblMuniCmb.Location = New System.Drawing.Point(263, 240)
        Me.LblMuniCmb.Name = "LblMuniCmb"
        Me.LblMuniCmb.Size = New System.Drawing.Size(70, 13)
        Me.LblMuniCmb.TabIndex = 21
        Me.LblMuniCmb.Text = "MUNICIPIOS"
        Me.LblMuniCmb.Visible = False
        '
        'CmbMuni
        '
        Me.CmbMuni.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.CmbMuni.FormattingEnabled = True
        Me.CmbMuni.Location = New System.Drawing.Point(254, 256)
        Me.CmbMuni.Name = "CmbMuni"
        Me.CmbMuni.Size = New System.Drawing.Size(341, 21)
        Me.CmbMuni.TabIndex = 9
        Me.CmbMuni.Visible = False
        '
        'LblDptCmb
        '
        Me.LblDptCmb.AutoSize = True
        Me.LblDptCmb.Location = New System.Drawing.Point(256, 190)
        Me.LblDptCmb.Name = "LblDptCmb"
        Me.LblDptCmb.Size = New System.Drawing.Size(104, 13)
        Me.LblDptCmb.TabIndex = 19
        Me.LblDptCmb.Text = "DEPARTAMENTOS"
        Me.LblDptCmb.Visible = False
        '
        'CmbDpt
        '
        Me.CmbDpt.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.CmbDpt.FormattingEnabled = True
        Me.CmbDpt.Location = New System.Drawing.Point(252, 206)
        Me.CmbDpt.Name = "CmbDpt"
        Me.CmbDpt.Size = New System.Drawing.Size(342, 21)
        Me.CmbDpt.TabIndex = 8
        Me.CmbDpt.Visible = False
        '
        'Label8
        '
        Me.Label8.AutoSize = True
        Me.Label8.Location = New System.Drawing.Point(16, 240)
        Me.Label8.Name = "Label8"
        Me.Label8.Size = New System.Drawing.Size(62, 13)
        Me.Label8.TabIndex = 17
        Me.Label8.Text = "PARTIDOS"
        '
        'CmbPartidos
        '
        Me.CmbPartidos.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.CmbPartidos.FormattingEnabled = True
        Me.CmbPartidos.Location = New System.Drawing.Point(19, 256)
        Me.CmbPartidos.Name = "CmbPartidos"
        Me.CmbPartidos.Size = New System.Drawing.Size(226, 21)
        Me.CmbPartidos.TabIndex = 7
        '
        'Label7
        '
        Me.Label7.AutoSize = True
        Me.Label7.Location = New System.Drawing.Point(16, 190)
        Me.Label7.Name = "Label7"
        Me.Label7.Size = New System.Drawing.Size(52, 13)
        Me.Label7.TabIndex = 15
        Me.Label7.Text = "CARGOS"
        '
        'CmbCargos
        '
        Me.CmbCargos.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.CmbCargos.FormattingEnabled = True
        Me.CmbCargos.Location = New System.Drawing.Point(18, 206)
        Me.CmbCargos.Name = "CmbCargos"
        Me.CmbCargos.Size = New System.Drawing.Size(228, 21)
        Me.CmbCargos.TabIndex = 6
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.Font = New System.Drawing.Font("Times New Roman", 12.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label5.Location = New System.Drawing.Point(25, 307)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(233, 19)
        Me.Label5.TabIndex = 13
        Me.Label5.Text = "CANDIDATOS REGISTRADOS"
        '
        'DGVCandidatos
        '
        Me.DGVCandidatos.AllowDrop = True
        Me.DGVCandidatos.AllowUserToOrderColumns = True
        Me.DGVCandidatos.BackgroundColor = System.Drawing.Color.FromArgb(CType(CType(181, Byte), Integer), CType(CType(242, Byte), Integer), CType(CType(254, Byte), Integer))
        Me.DGVCandidatos.BorderStyle = System.Windows.Forms.BorderStyle.None
        Me.DGVCandidatos.CellBorderStyle = System.Windows.Forms.DataGridViewCellBorderStyle.None
        Me.DGVCandidatos.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.DGVCandidatos.Columns.AddRange(New System.Windows.Forms.DataGridViewColumn() {Me.CandidatoId, Me.CandidatoNombre, Me.CandidatoCargo, Me.CandidatoPartido, Me.DptCandidato, Me.MuniCandidato, Me.ImagenCandidato})
        Me.DGVCandidatos.Location = New System.Drawing.Point(29, 332)
        Me.DGVCandidatos.Name = "DGVCandidatos"
        Me.DGVCandidatos.RowHeadersVisible = False
        Me.DGVCandidatos.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
        Me.DGVCandidatos.Size = New System.Drawing.Size(918, 206)
        Me.DGVCandidatos.TabIndex = 12
        '
        'CandidatoId
        '
        Me.CandidatoId.HeaderText = "Id"
        Me.CandidatoId.Name = "CandidatoId"
        Me.CandidatoId.Visible = False
        '
        'CandidatoNombre
        '
        Me.CandidatoNombre.HeaderText = "Nombre"
        Me.CandidatoNombre.Name = "CandidatoNombre"
        Me.CandidatoNombre.Width = 200
        '
        'CandidatoCargo
        '
        Me.CandidatoCargo.HeaderText = "Cargo"
        Me.CandidatoCargo.Name = "CandidatoCargo"
        Me.CandidatoCargo.Width = 150
        '
        'CandidatoPartido
        '
        Me.CandidatoPartido.HeaderText = "Partido"
        Me.CandidatoPartido.Name = "CandidatoPartido"
        Me.CandidatoPartido.Width = 150
        '
        'DptCandidato
        '
        Me.DptCandidato.HeaderText = "Departamento"
        Me.DptCandidato.Name = "DptCandidato"
        Me.DptCandidato.Width = 200
        '
        'MuniCandidato
        '
        Me.MuniCandidato.HeaderText = "Municipio"
        Me.MuniCandidato.Name = "MuniCandidato"
        Me.MuniCandidato.Width = 200
        '
        'ImagenCandidato
        '
        Me.ImagenCandidato.HeaderText = "Imagen"
        Me.ImagenCandidato.Name = "ImagenCandidato"
        Me.ImagenCandidato.Visible = False
        '
        'TxtIdCandidato
        '
        Me.TxtIdCandidato.Enabled = False
        Me.TxtIdCandidato.Location = New System.Drawing.Point(543, 306)
        Me.TxtIdCandidato.Name = "TxtIdCandidato"
        Me.TxtIdCandidato.Size = New System.Drawing.Size(39, 20)
        Me.TxtIdCandidato.TabIndex = 11
        Me.TxtIdCandidato.Visible = False
        '
        'TxtNombreCandidato
        '
        Me.TxtNombreCandidato.Location = New System.Drawing.Point(17, 160)
        Me.TxtNombreCandidato.Name = "TxtNombreCandidato"
        Me.TxtNombreCandidato.Size = New System.Drawing.Size(577, 20)
        Me.TxtNombreCandidato.TabIndex = 5
        '
        'Label6
        '
        Me.Label6.AutoSize = True
        Me.Label6.Location = New System.Drawing.Point(14, 144)
        Me.Label6.Name = "Label6"
        Me.Label6.Size = New System.Drawing.Size(54, 13)
        Me.Label6.TabIndex = 9
        Me.Label6.Text = "NOMBRE"
        '
        'MenuCandidatos
        '
        Me.MenuCandidatos.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.BtnNuevoCandidato, Me.ToolStripSeparator7, Me.BtnGuardarCandidato, Me.ToolStripSeparator8, Me.BtnEditarCandidato, Me.ToolStripSeparator9, Me.BtnEliminarCandidato, Me.ToolStripSeparator14, Me.BtnCerrarSsionC})
        Me.MenuCandidatos.Location = New System.Drawing.Point(3, 3)
        Me.MenuCandidatos.Name = "MenuCandidatos"
        Me.MenuCandidatos.Size = New System.Drawing.Size(966, 25)
        Me.MenuCandidatos.TabIndex = 2
        Me.MenuCandidatos.Text = "ToolStrip2"
        '
        'BtnNuevoCandidato
        '
        Me.BtnNuevoCandidato.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Text
        Me.BtnNuevoCandidato.Image = CType(resources.GetObject("BtnNuevoCandidato.Image"), System.Drawing.Image)
        Me.BtnNuevoCandidato.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.BtnNuevoCandidato.Name = "BtnNuevoCandidato"
        Me.BtnNuevoCandidato.Size = New System.Drawing.Size(46, 22)
        Me.BtnNuevoCandidato.Text = "Nuevo"
        '
        'ToolStripSeparator7
        '
        Me.ToolStripSeparator7.Name = "ToolStripSeparator7"
        Me.ToolStripSeparator7.Size = New System.Drawing.Size(6, 25)
        '
        'BtnGuardarCandidato
        '
        Me.BtnGuardarCandidato.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Text
        Me.BtnGuardarCandidato.Image = CType(resources.GetObject("BtnGuardarCandidato.Image"), System.Drawing.Image)
        Me.BtnGuardarCandidato.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.BtnGuardarCandidato.Name = "BtnGuardarCandidato"
        Me.BtnGuardarCandidato.Size = New System.Drawing.Size(53, 22)
        Me.BtnGuardarCandidato.Text = "Guardar"
        '
        'ToolStripSeparator8
        '
        Me.ToolStripSeparator8.Name = "ToolStripSeparator8"
        Me.ToolStripSeparator8.Size = New System.Drawing.Size(6, 25)
        '
        'BtnEditarCandidato
        '
        Me.BtnEditarCandidato.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Text
        Me.BtnEditarCandidato.Image = CType(resources.GetObject("BtnEditarCandidato.Image"), System.Drawing.Image)
        Me.BtnEditarCandidato.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.BtnEditarCandidato.Name = "BtnEditarCandidato"
        Me.BtnEditarCandidato.Size = New System.Drawing.Size(41, 22)
        Me.BtnEditarCandidato.Text = "Editar"
        '
        'ToolStripSeparator9
        '
        Me.ToolStripSeparator9.Name = "ToolStripSeparator9"
        Me.ToolStripSeparator9.Size = New System.Drawing.Size(6, 25)
        '
        'BtnEliminarCandidato
        '
        Me.BtnEliminarCandidato.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Text
        Me.BtnEliminarCandidato.Image = CType(resources.GetObject("BtnEliminarCandidato.Image"), System.Drawing.Image)
        Me.BtnEliminarCandidato.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.BtnEliminarCandidato.Name = "BtnEliminarCandidato"
        Me.BtnEliminarCandidato.Size = New System.Drawing.Size(54, 22)
        Me.BtnEliminarCandidato.Text = "Eliminar"
        '
        'ToolStripSeparator14
        '
        Me.ToolStripSeparator14.Name = "ToolStripSeparator14"
        Me.ToolStripSeparator14.Size = New System.Drawing.Size(6, 25)
        '
        'BtnCerrarSsionC
        '
        Me.BtnCerrarSsionC.Alignment = System.Windows.Forms.ToolStripItemAlignment.Right
        Me.BtnCerrarSsionC.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Text
        Me.BtnCerrarSsionC.Image = CType(resources.GetObject("BtnCerrarSsionC.Image"), System.Drawing.Image)
        Me.BtnCerrarSsionC.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.BtnCerrarSsionC.Name = "BtnCerrarSsionC"
        Me.BtnCerrarSsionC.Size = New System.Drawing.Size(80, 22)
        Me.BtnCerrarSsionC.Text = "Cerrar Sesión"
        '
        'TabPage4
        '
        Me.TabPage4.BackgroundImage = CType(resources.GetObject("TabPage4.BackgroundImage"), System.Drawing.Image)
        Me.TabPage4.Controls.Add(Me.TxtIdPersona)
        Me.TabPage4.Controls.Add(Me.Label15)
        Me.TabPage4.Controls.Add(Me.TxtDniPersona)
        Me.TabPage4.Controls.Add(Me.MenuPersona)
        Me.TabPage4.Controls.Add(Me.Label14)
        Me.TabPage4.Controls.Add(Me.Label13)
        Me.TabPage4.Controls.Add(Me.CmbAldPersona)
        Me.TabPage4.Controls.Add(Me.Label11)
        Me.TabPage4.Controls.Add(Me.CmbMuniPersona)
        Me.TabPage4.Controls.Add(Me.Label12)
        Me.TabPage4.Controls.Add(Me.CmbDptPersona)
        Me.TabPage4.Controls.Add(Me.TxtNombrePersona)
        Me.TabPage4.Controls.Add(Me.Label10)
        Me.TabPage4.Controls.Add(Me.Label9)
        Me.TabPage4.Controls.Add(Me.DgvPersonas)
        Me.TabPage4.Location = New System.Drawing.Point(4, 22)
        Me.TabPage4.Name = "TabPage4"
        Me.TabPage4.Padding = New System.Windows.Forms.Padding(3)
        Me.TabPage4.Size = New System.Drawing.Size(972, 547)
        Me.TabPage4.TabIndex = 3
        Me.TabPage4.Text = "REGISTRO NACIONAL"
        Me.TabPage4.UseVisualStyleBackColor = True
        '
        'TxtIdPersona
        '
        Me.TxtIdPersona.Location = New System.Drawing.Point(240, 131)
        Me.TxtIdPersona.Name = "TxtIdPersona"
        Me.TxtIdPersona.Size = New System.Drawing.Size(48, 20)
        Me.TxtIdPersona.TabIndex = 32
        Me.TxtIdPersona.Visible = False
        '
        'Label15
        '
        Me.Label15.AutoSize = True
        Me.Label15.Location = New System.Drawing.Point(262, 158)
        Me.Label15.Name = "Label15"
        Me.Label15.Size = New System.Drawing.Size(26, 13)
        Me.Label15.TabIndex = 31
        Me.Label15.Text = "DNI"
        '
        'TxtDniPersona
        '
        Me.TxtDniPersona.Location = New System.Drawing.Point(265, 174)
        Me.TxtDniPersona.Name = "TxtDniPersona"
        Me.TxtDniPersona.Size = New System.Drawing.Size(227, 20)
        Me.TxtDniPersona.TabIndex = 12
        '
        'MenuPersona
        '
        Me.MenuPersona.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.BtnNuevoPersona, Me.ToolStripSeparator10, Me.BtnGuardarPersona, Me.ToolStripSeparator11, Me.BtnEditarPersona, Me.ToolStripSeparator12, Me.BtnEliminarPersona, Me.ToolStripSeparator13, Me.BtnCerrarSesionP})
        Me.MenuPersona.Location = New System.Drawing.Point(3, 3)
        Me.MenuPersona.Name = "MenuPersona"
        Me.MenuPersona.Size = New System.Drawing.Size(966, 25)
        Me.MenuPersona.TabIndex = 29
        Me.MenuPersona.Text = "ToolStrip2"
        '
        'BtnNuevoPersona
        '
        Me.BtnNuevoPersona.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Text
        Me.BtnNuevoPersona.Image = CType(resources.GetObject("BtnNuevoPersona.Image"), System.Drawing.Image)
        Me.BtnNuevoPersona.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.BtnNuevoPersona.Name = "BtnNuevoPersona"
        Me.BtnNuevoPersona.Size = New System.Drawing.Size(46, 22)
        Me.BtnNuevoPersona.Text = "Nuevo"
        '
        'ToolStripSeparator10
        '
        Me.ToolStripSeparator10.Name = "ToolStripSeparator10"
        Me.ToolStripSeparator10.Size = New System.Drawing.Size(6, 25)
        '
        'BtnGuardarPersona
        '
        Me.BtnGuardarPersona.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Text
        Me.BtnGuardarPersona.Image = CType(resources.GetObject("BtnGuardarPersona.Image"), System.Drawing.Image)
        Me.BtnGuardarPersona.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.BtnGuardarPersona.Name = "BtnGuardarPersona"
        Me.BtnGuardarPersona.Size = New System.Drawing.Size(53, 22)
        Me.BtnGuardarPersona.Text = "Guardar"
        '
        'ToolStripSeparator11
        '
        Me.ToolStripSeparator11.Name = "ToolStripSeparator11"
        Me.ToolStripSeparator11.Size = New System.Drawing.Size(6, 25)
        '
        'BtnEditarPersona
        '
        Me.BtnEditarPersona.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Text
        Me.BtnEditarPersona.Image = CType(resources.GetObject("BtnEditarPersona.Image"), System.Drawing.Image)
        Me.BtnEditarPersona.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.BtnEditarPersona.Name = "BtnEditarPersona"
        Me.BtnEditarPersona.Size = New System.Drawing.Size(41, 22)
        Me.BtnEditarPersona.Text = "Editar"
        '
        'ToolStripSeparator12
        '
        Me.ToolStripSeparator12.Name = "ToolStripSeparator12"
        Me.ToolStripSeparator12.Size = New System.Drawing.Size(6, 25)
        '
        'BtnEliminarPersona
        '
        Me.BtnEliminarPersona.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Text
        Me.BtnEliminarPersona.Image = CType(resources.GetObject("BtnEliminarPersona.Image"), System.Drawing.Image)
        Me.BtnEliminarPersona.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.BtnEliminarPersona.Name = "BtnEliminarPersona"
        Me.BtnEliminarPersona.Size = New System.Drawing.Size(54, 22)
        Me.BtnEliminarPersona.Text = "Eliminar"
        '
        'ToolStripSeparator13
        '
        Me.ToolStripSeparator13.Name = "ToolStripSeparator13"
        Me.ToolStripSeparator13.Size = New System.Drawing.Size(6, 25)
        '
        'BtnCerrarSesionP
        '
        Me.BtnCerrarSesionP.Alignment = System.Windows.Forms.ToolStripItemAlignment.Right
        Me.BtnCerrarSesionP.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Text
        Me.BtnCerrarSesionP.Image = CType(resources.GetObject("BtnCerrarSesionP.Image"), System.Drawing.Image)
        Me.BtnCerrarSesionP.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.BtnCerrarSesionP.Name = "BtnCerrarSesionP"
        Me.BtnCerrarSesionP.Size = New System.Drawing.Size(80, 22)
        Me.BtnCerrarSesionP.Text = "Cerrar Sesión"
        '
        'Label14
        '
        Me.Label14.AutoSize = True
        Me.Label14.Font = New System.Drawing.Font("Times New Roman", 12.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label14.Location = New System.Drawing.Point(28, 130)
        Me.Label14.Name = "Label14"
        Me.Label14.Size = New System.Drawing.Size(162, 19)
        Me.Label14.TabIndex = 28
        Me.Label14.Text = "DATOS GENERALES"
        '
        'Label13
        '
        Me.Label13.AutoSize = True
        Me.Label13.Location = New System.Drawing.Point(311, 210)
        Me.Label13.Name = "Label13"
        Me.Label13.Size = New System.Drawing.Size(49, 13)
        Me.Label13.TabIndex = 27
        Me.Label13.Text = "ALDEAS"
        '
        'CmbAldPersona
        '
        Me.CmbAldPersona.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.CmbAldPersona.FormattingEnabled = True
        Me.CmbAldPersona.Location = New System.Drawing.Point(314, 226)
        Me.CmbAldPersona.Name = "CmbAldPersona"
        Me.CmbAldPersona.Size = New System.Drawing.Size(156, 21)
        Me.CmbAldPersona.TabIndex = 15
        '
        'Label11
        '
        Me.Label11.AutoSize = True
        Me.Label11.Location = New System.Drawing.Point(176, 210)
        Me.Label11.Name = "Label11"
        Me.Label11.Size = New System.Drawing.Size(70, 13)
        Me.Label11.TabIndex = 25
        Me.Label11.Text = "MUNICIPIOS"
        '
        'CmbMuniPersona
        '
        Me.CmbMuniPersona.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.CmbMuniPersona.FormattingEnabled = True
        Me.CmbMuniPersona.Location = New System.Drawing.Point(177, 226)
        Me.CmbMuniPersona.Name = "CmbMuniPersona"
        Me.CmbMuniPersona.Size = New System.Drawing.Size(131, 21)
        Me.CmbMuniPersona.TabIndex = 14
        '
        'Label12
        '
        Me.Label12.AutoSize = True
        Me.Label12.Location = New System.Drawing.Point(29, 210)
        Me.Label12.Name = "Label12"
        Me.Label12.Size = New System.Drawing.Size(104, 13)
        Me.Label12.TabIndex = 23
        Me.Label12.Text = "DEPARTAMENTOS"
        '
        'CmbDptPersona
        '
        Me.CmbDptPersona.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.CmbDptPersona.FormattingEnabled = True
        Me.CmbDptPersona.Location = New System.Drawing.Point(32, 226)
        Me.CmbDptPersona.Name = "CmbDptPersona"
        Me.CmbDptPersona.Size = New System.Drawing.Size(134, 21)
        Me.CmbDptPersona.TabIndex = 13
        '
        'TxtNombrePersona
        '
        Me.TxtNombrePersona.Location = New System.Drawing.Point(32, 174)
        Me.TxtNombrePersona.Name = "TxtNombrePersona"
        Me.TxtNombrePersona.Size = New System.Drawing.Size(222, 20)
        Me.TxtNombrePersona.TabIndex = 11
        '
        'Label10
        '
        Me.Label10.AutoSize = True
        Me.Label10.Location = New System.Drawing.Point(29, 158)
        Me.Label10.Name = "Label10"
        Me.Label10.Size = New System.Drawing.Size(54, 13)
        Me.Label10.TabIndex = 16
        Me.Label10.Text = "NOMBRE"
        '
        'Label9
        '
        Me.Label9.AutoSize = True
        Me.Label9.Font = New System.Drawing.Font("Times New Roman", 12.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label9.Location = New System.Drawing.Point(28, 266)
        Me.Label9.Name = "Label9"
        Me.Label9.Size = New System.Drawing.Size(211, 19)
        Me.Label9.TabIndex = 15
        Me.Label9.Text = "PERSONAS REGISTRADAS"
        '
        'DgvPersonas
        '
        Me.DgvPersonas.AllowDrop = True
        Me.DgvPersonas.AllowUserToOrderColumns = True
        Me.DgvPersonas.BackgroundColor = System.Drawing.Color.FromArgb(CType(CType(181, Byte), Integer), CType(CType(242, Byte), Integer), CType(CType(254, Byte), Integer))
        Me.DgvPersonas.BorderStyle = System.Windows.Forms.BorderStyle.None
        Me.DgvPersonas.CellBorderStyle = System.Windows.Forms.DataGridViewCellBorderStyle.None
        Me.DgvPersonas.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.DgvPersonas.Columns.AddRange(New System.Windows.Forms.DataGridViewColumn() {Me.IdPersona, Me.NombrePersona, Me.DNIPersona, Me.DptPersona, Me.MuniPersona, Me.AldPersona})
        Me.DgvPersonas.Location = New System.Drawing.Point(32, 302)
        Me.DgvPersonas.Name = "DgvPersonas"
        Me.DgvPersonas.RowHeadersVisible = False
        Me.DgvPersonas.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
        Me.DgvPersonas.Size = New System.Drawing.Size(905, 236)
        Me.DgvPersonas.TabIndex = 14
        '
        'IdPersona
        '
        Me.IdPersona.HeaderText = "Id"
        Me.IdPersona.Name = "IdPersona"
        Me.IdPersona.Visible = False
        '
        'NombrePersona
        '
        Me.NombrePersona.HeaderText = "Nombre"
        Me.NombrePersona.Name = "NombrePersona"
        Me.NombrePersona.Width = 200
        '
        'DNIPersona
        '
        Me.DNIPersona.HeaderText = "DNI"
        Me.DNIPersona.Name = "DNIPersona"
        '
        'DptPersona
        '
        Me.DptPersona.HeaderText = "Departamento"
        Me.DptPersona.Name = "DptPersona"
        Me.DptPersona.Width = 200
        '
        'MuniPersona
        '
        Me.MuniPersona.HeaderText = "Municipio"
        Me.MuniPersona.Name = "MuniPersona"
        Me.MuniPersona.Width = 200
        '
        'AldPersona
        '
        Me.AldPersona.HeaderText = "Aldea"
        Me.AldPersona.Name = "AldPersona"
        Me.AldPersona.Width = 200
        '
        'MenuAdmin
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackgroundImage = CType(resources.GetObject("$this.BackgroundImage"), System.Drawing.Image)
        Me.ClientSize = New System.Drawing.Size(1004, 584)
        Me.Controls.Add(Me.TabControl1)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None
        Me.Name = "MenuAdmin"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "---"
        Me.TabControl1.ResumeLayout(False)
        Me.TabPage1.ResumeLayout(False)
        Me.TabPage1.PerformLayout()
        CType(Me.DgvCargos, System.ComponentModel.ISupportInitialize).EndInit()
        Me.MenuCargos.ResumeLayout(False)
        Me.MenuCargos.PerformLayout()
        Me.TabPage2.ResumeLayout(False)
        Me.TabPage2.PerformLayout()
        CType(Me.DGVPartidos, System.ComponentModel.ISupportInitialize).EndInit()
        Me.MenuPartidos.ResumeLayout(False)
        Me.MenuPartidos.PerformLayout()
        Me.TabPage3.ResumeLayout(False)
        Me.TabPage3.PerformLayout()
        CType(Me.ImgCandidatos, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.DGVCandidatos, System.ComponentModel.ISupportInitialize).EndInit()
        Me.MenuCandidatos.ResumeLayout(False)
        Me.MenuCandidatos.PerformLayout()
        Me.TabPage4.ResumeLayout(False)
        Me.TabPage4.PerformLayout()
        Me.MenuPersona.ResumeLayout(False)
        Me.MenuPersona.PerformLayout()
        CType(Me.DgvPersonas, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)

    End Sub

    Friend WithEvents TabControl1 As TabControl
    Friend WithEvents TabPage1 As TabPage
    Friend WithEvents MenuCargos As ToolStrip
    Friend WithEvents BtnNuevoCargo As ToolStripButton
    Friend WithEvents TabPage2 As TabPage
    Friend WithEvents TxtIdCargo As TextBox
    Friend WithEvents TxtNombreCargo As TextBox
    Friend WithEvents Label1 As Label
    Friend WithEvents ToolStripSeparator1 As ToolStripSeparator
    Friend WithEvents BtnGuardarCargo As ToolStripButton
    Friend WithEvents ToolStripSeparator2 As ToolStripSeparator
    Friend WithEvents BtnEditarCargo As ToolStripButton
    Friend WithEvents ToolStripSeparator3 As ToolStripSeparator
    Friend WithEvents BtnEliminarCargo As ToolStripButton
    Friend WithEvents DgvCargos As DataGridView
    Friend WithEvents Label2 As Label
    Friend WithEvents Label4 As Label
    Friend WithEvents DGVPartidos As DataGridView
    Friend WithEvents TxtIdPartido As TextBox
    Friend WithEvents TxtNombrePartido As TextBox
    Friend WithEvents Label3 As Label
    Friend WithEvents MenuPartidos As ToolStrip
    Friend WithEvents BtnNuevoPartido As ToolStripButton
    Friend WithEvents ToolStripSeparator4 As ToolStripSeparator
    Friend WithEvents BtnGuardarPartido As ToolStripButton
    Friend WithEvents ToolStripSeparator5 As ToolStripSeparator
    Friend WithEvents BtnEditarPartido As ToolStripButton
    Friend WithEvents ToolStripSeparator6 As ToolStripSeparator
    Friend WithEvents BtnEliminarPartido As ToolStripButton
    Friend WithEvents TabPage3 As TabPage
    Friend WithEvents Label5 As Label
    Friend WithEvents DGVCandidatos As DataGridView
    Friend WithEvents TxtIdCandidato As TextBox
    Friend WithEvents TxtNombreCandidato As TextBox
    Friend WithEvents MenuCandidatos As ToolStrip
    Friend WithEvents BtnNuevoCandidato As ToolStripButton
    Friend WithEvents ToolStripSeparator7 As ToolStripSeparator
    Friend WithEvents BtnGuardarCandidato As ToolStripButton
    Friend WithEvents ToolStripSeparator8 As ToolStripSeparator
    Friend WithEvents BtnEditarCandidato As ToolStripButton
    Friend WithEvents ToolStripSeparator9 As ToolStripSeparator
    Friend WithEvents BtnEliminarCandidato As ToolStripButton
    Friend WithEvents LblMuniCmb As Label
    Friend WithEvents CmbMuni As ComboBox
    Friend WithEvents LblDptCmb As Label
    Friend WithEvents CmbDpt As ComboBox
    Friend WithEvents Label8 As Label
    Friend WithEvents CmbPartidos As ComboBox
    Friend WithEvents Label7 As Label
    Friend WithEvents CmbCargos As ComboBox
    Friend WithEvents BtnCargarImagen As Button
    Friend WithEvents ImgCandidatos As PictureBox
    Friend WithEvents Label6 As Label
    Friend WithEvents TabPage4 As TabPage
    Friend WithEvents MenuPersona As ToolStrip
    Friend WithEvents BtnNuevoPersona As ToolStripButton
    Friend WithEvents ToolStripSeparator10 As ToolStripSeparator
    Friend WithEvents BtnGuardarPersona As ToolStripButton
    Friend WithEvents ToolStripSeparator11 As ToolStripSeparator
    Friend WithEvents BtnEditarPersona As ToolStripButton
    Friend WithEvents ToolStripSeparator12 As ToolStripSeparator
    Friend WithEvents BtnEliminarPersona As ToolStripButton
    Friend WithEvents Label14 As Label
    Friend WithEvents Label13 As Label
    Friend WithEvents CmbAldPersona As ComboBox
    Friend WithEvents Label11 As Label
    Friend WithEvents CmbMuniPersona As ComboBox
    Friend WithEvents Label12 As Label
    Friend WithEvents CmbDptPersona As ComboBox
    Friend WithEvents TxtNombrePersona As TextBox
    Friend WithEvents Label10 As Label
    Friend WithEvents Label9 As Label
    Friend WithEvents DgvPersonas As DataGridView
    Friend WithEvents Label15 As Label
    Friend WithEvents TxtDniPersona As TextBox
    Friend WithEvents TxtIdPersona As TextBox
    Friend WithEvents IdPersona As DataGridViewTextBoxColumn
    Friend WithEvents NombrePersona As DataGridViewTextBoxColumn
    Friend WithEvents DNIPersona As DataGridViewTextBoxColumn
    Friend WithEvents DptPersona As DataGridViewTextBoxColumn
    Friend WithEvents MuniPersona As DataGridViewTextBoxColumn
    Friend WithEvents AldPersona As DataGridViewTextBoxColumn
    Friend WithEvents CandidatoId As DataGridViewTextBoxColumn
    Friend WithEvents CandidatoNombre As DataGridViewTextBoxColumn
    Friend WithEvents CandidatoCargo As DataGridViewTextBoxColumn
    Friend WithEvents CandidatoPartido As DataGridViewTextBoxColumn
    Friend WithEvents DptCandidato As DataGridViewTextBoxColumn
    Friend WithEvents MuniCandidato As DataGridViewTextBoxColumn
    Friend WithEvents ImagenCandidato As DataGridViewImageColumn
    Friend WithEvents Id As DataGridViewTextBoxColumn
    Friend WithEvents Nombre As DataGridViewTextBoxColumn
    Friend WithEvents IdPartido As DataGridViewTextBoxColumn
    Friend WithEvents NombrePartido As DataGridViewTextBoxColumn
    Friend WithEvents ToolStripSeparator13 As ToolStripSeparator
    Friend WithEvents BtnCerrarSesionP As ToolStripButton
    Friend WithEvents ToolStripSeparator14 As ToolStripSeparator
    Friend WithEvents BtnCerrarSsionC As ToolStripButton
    Friend WithEvents ToolStripSeparator15 As ToolStripSeparator
    Friend WithEvents BtnCerrarSesionPa As ToolStripButton
    Friend WithEvents ToolStripSeparator16 As ToolStripSeparator
    Friend WithEvents BtnCerrarSesionC As ToolStripButton
End Class
