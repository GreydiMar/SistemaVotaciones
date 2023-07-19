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
        Me.TabPage3 = New System.Windows.Forms.TabPage()
        Me.Label10 = New System.Windows.Forms.Label()
        Me.CmbMuni = New System.Windows.Forms.ComboBox()
        Me.Label9 = New System.Windows.Forms.Label()
        Me.CmbDpt = New System.Windows.Forms.ComboBox()
        Me.Label8 = New System.Windows.Forms.Label()
        Me.CmbPartidos = New System.Windows.Forms.ComboBox()
        Me.Label7 = New System.Windows.Forms.Label()
        Me.CmbCargos = New System.Windows.Forms.ComboBox()
        Me.Label5 = New System.Windows.Forms.Label()
        Me.DGVCandidatos = New System.Windows.Forms.DataGridView()
        Me.DataGridViewTextBoxColumn1 = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.DataGridViewTextBoxColumn2 = New System.Windows.Forms.DataGridViewTextBoxColumn()
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
        Me.ImgCandidatos = New System.Windows.Forms.PictureBox()
        Me.BtnCargar = New System.Windows.Forms.Button()
        Me.TabControl1.SuspendLayout()
        Me.TabPage1.SuspendLayout()
        CType(Me.DgvCargos, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.MenuCargos.SuspendLayout()
        Me.TabPage2.SuspendLayout()
        CType(Me.DGVPartidos, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.MenuPartidos.SuspendLayout()
        Me.TabPage3.SuspendLayout()
        CType(Me.DGVCandidatos, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.MenuCandidatos.SuspendLayout()
        CType(Me.ImgCandidatos, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'TabControl1
        '
        Me.TabControl1.Controls.Add(Me.TabPage1)
        Me.TabControl1.Controls.Add(Me.TabPage2)
        Me.TabControl1.Controls.Add(Me.TabPage3)
        Me.TabControl1.Location = New System.Drawing.Point(12, 12)
        Me.TabControl1.Name = "TabControl1"
        Me.TabControl1.SelectedIndex = 0
        Me.TabControl1.Size = New System.Drawing.Size(628, 434)
        Me.TabControl1.TabIndex = 0
        '
        'TabPage1
        '
        Me.TabPage1.Controls.Add(Me.Label2)
        Me.TabPage1.Controls.Add(Me.DgvCargos)
        Me.TabPage1.Controls.Add(Me.TxtIdCargo)
        Me.TabPage1.Controls.Add(Me.TxtNombreCargo)
        Me.TabPage1.Controls.Add(Me.Label1)
        Me.TabPage1.Controls.Add(Me.MenuCargos)
        Me.TabPage1.Location = New System.Drawing.Point(4, 22)
        Me.TabPage1.Name = "TabPage1"
        Me.TabPage1.Padding = New System.Windows.Forms.Padding(3)
        Me.TabPage1.Size = New System.Drawing.Size(620, 408)
        Me.TabPage1.TabIndex = 0
        Me.TabPage1.Text = "CARGOS"
        Me.TabPage1.UseVisualStyleBackColor = True
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Font = New System.Drawing.Font("Times New Roman", 12.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label2.Location = New System.Drawing.Point(334, 41)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(195, 19)
        Me.Label2.TabIndex = 5
        Me.Label2.Text = "CARGOS REGISTRADOS"
        '
        'DgvCargos
        '
        Me.DgvCargos.AllowDrop = True
        Me.DgvCargos.AllowUserToOrderColumns = True
        Me.DgvCargos.BackgroundColor = System.Drawing.SystemColors.Control
        Me.DgvCargos.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.DgvCargos.Columns.AddRange(New System.Windows.Forms.DataGridViewColumn() {Me.Id, Me.Nombre})
        Me.DgvCargos.Location = New System.Drawing.Point(221, 73)
        Me.DgvCargos.Name = "DgvCargos"
        Me.DgvCargos.Size = New System.Drawing.Size(393, 150)
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
        Me.Nombre.Width = 350
        '
        'TxtIdCargo
        '
        Me.TxtIdCargo.Enabled = False
        Me.TxtIdCargo.Location = New System.Drawing.Point(18, 115)
        Me.TxtIdCargo.Name = "TxtIdCargo"
        Me.TxtIdCargo.Size = New System.Drawing.Size(141, 20)
        Me.TxtIdCargo.TabIndex = 3
        Me.TxtIdCargo.Visible = False
        '
        'TxtNombreCargo
        '
        Me.TxtNombreCargo.Location = New System.Drawing.Point(18, 73)
        Me.TxtNombreCargo.Name = "TxtNombreCargo"
        Me.TxtNombreCargo.Size = New System.Drawing.Size(141, 20)
        Me.TxtNombreCargo.TabIndex = 2
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(15, 57)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(78, 13)
        Me.Label1.TabIndex = 1
        Me.Label1.Text = "Nombre_Cargo"
        '
        'MenuCargos
        '
        Me.MenuCargos.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.BtnNuevoCargo, Me.ToolStripSeparator1, Me.BtnGuardarCargo, Me.ToolStripSeparator2, Me.BtnEditarCargo, Me.ToolStripSeparator3, Me.BtnEliminarCargo})
        Me.MenuCargos.Location = New System.Drawing.Point(3, 3)
        Me.MenuCargos.Name = "MenuCargos"
        Me.MenuCargos.Size = New System.Drawing.Size(614, 25)
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
        'TabPage2
        '
        Me.TabPage2.Controls.Add(Me.Label4)
        Me.TabPage2.Controls.Add(Me.DGVPartidos)
        Me.TabPage2.Controls.Add(Me.TxtIdPartido)
        Me.TabPage2.Controls.Add(Me.TxtNombrePartido)
        Me.TabPage2.Controls.Add(Me.Label3)
        Me.TabPage2.Controls.Add(Me.MenuPartidos)
        Me.TabPage2.Location = New System.Drawing.Point(4, 22)
        Me.TabPage2.Name = "TabPage2"
        Me.TabPage2.Padding = New System.Windows.Forms.Padding(3)
        Me.TabPage2.Size = New System.Drawing.Size(620, 408)
        Me.TabPage2.TabIndex = 1
        Me.TabPage2.Text = "PARTIDOS"
        Me.TabPage2.UseVisualStyleBackColor = True
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Font = New System.Drawing.Font("Times New Roman", 12.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label4.Location = New System.Drawing.Point(302, 54)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(207, 19)
        Me.Label4.TabIndex = 8
        Me.Label4.Text = "PARTIDOS REGISTRADOS"
        '
        'DGVPartidos
        '
        Me.DGVPartidos.AllowDrop = True
        Me.DGVPartidos.AllowUserToOrderColumns = True
        Me.DGVPartidos.BackgroundColor = System.Drawing.SystemColors.Control
        Me.DGVPartidos.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.DGVPartidos.Columns.AddRange(New System.Windows.Forms.DataGridViewColumn() {Me.IdPartido, Me.NombrePartido})
        Me.DGVPartidos.Location = New System.Drawing.Point(207, 87)
        Me.DGVPartidos.Name = "DGVPartidos"
        Me.DGVPartidos.Size = New System.Drawing.Size(393, 150)
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
        Me.NombrePartido.Width = 500
        '
        'TxtIdPartido
        '
        Me.TxtIdPartido.Enabled = False
        Me.TxtIdPartido.Location = New System.Drawing.Point(19, 123)
        Me.TxtIdPartido.Name = "TxtIdPartido"
        Me.TxtIdPartido.Size = New System.Drawing.Size(141, 20)
        Me.TxtIdPartido.TabIndex = 6
        Me.TxtIdPartido.Visible = False
        '
        'TxtNombrePartido
        '
        Me.TxtNombrePartido.Location = New System.Drawing.Point(19, 87)
        Me.TxtNombrePartido.Name = "TxtNombrePartido"
        Me.TxtNombrePartido.Size = New System.Drawing.Size(141, 20)
        Me.TxtNombrePartido.TabIndex = 5
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(16, 60)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(62, 13)
        Me.Label3.TabIndex = 2
        Me.Label3.Text = "PARTIDOS"
        '
        'MenuPartidos
        '
        Me.MenuPartidos.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.BtnNuevoPartido, Me.ToolStripSeparator4, Me.BtnGuardarPartido, Me.ToolStripSeparator5, Me.BtnEditarPartido, Me.ToolStripSeparator6, Me.BtnEliminarPartido})
        Me.MenuPartidos.Location = New System.Drawing.Point(3, 3)
        Me.MenuPartidos.Name = "MenuPartidos"
        Me.MenuPartidos.Size = New System.Drawing.Size(614, 25)
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
        'TabPage3
        '
        Me.TabPage3.Controls.Add(Me.BtnCargar)
        Me.TabPage3.Controls.Add(Me.ImgCandidatos)
        Me.TabPage3.Controls.Add(Me.Label10)
        Me.TabPage3.Controls.Add(Me.CmbMuni)
        Me.TabPage3.Controls.Add(Me.Label9)
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
        Me.TabPage3.Size = New System.Drawing.Size(620, 408)
        Me.TabPage3.TabIndex = 2
        Me.TabPage3.Text = "CANDIDATOS"
        Me.TabPage3.UseVisualStyleBackColor = True
        '
        'Label10
        '
        Me.Label10.AutoSize = True
        Me.Label10.Location = New System.Drawing.Point(20, 272)
        Me.Label10.Name = "Label10"
        Me.Label10.Size = New System.Drawing.Size(70, 13)
        Me.Label10.TabIndex = 21
        Me.Label10.Text = "MUNICIPIOS"
        '
        'CmbMuni
        '
        Me.CmbMuni.FormattingEnabled = True
        Me.CmbMuni.Location = New System.Drawing.Point(21, 288)
        Me.CmbMuni.Name = "CmbMuni"
        Me.CmbMuni.Size = New System.Drawing.Size(141, 21)
        Me.CmbMuni.TabIndex = 20
        '
        'Label9
        '
        Me.Label9.AutoSize = True
        Me.Label9.Location = New System.Drawing.Point(21, 216)
        Me.Label9.Name = "Label9"
        Me.Label9.Size = New System.Drawing.Size(104, 13)
        Me.Label9.TabIndex = 19
        Me.Label9.Text = "DEPARTAMENTOS"
        '
        'CmbDpt
        '
        Me.CmbDpt.FormattingEnabled = True
        Me.CmbDpt.Location = New System.Drawing.Point(23, 232)
        Me.CmbDpt.Name = "CmbDpt"
        Me.CmbDpt.Size = New System.Drawing.Size(141, 21)
        Me.CmbDpt.TabIndex = 18
        '
        'Label8
        '
        Me.Label8.AutoSize = True
        Me.Label8.Location = New System.Drawing.Point(20, 160)
        Me.Label8.Name = "Label8"
        Me.Label8.Size = New System.Drawing.Size(62, 13)
        Me.Label8.TabIndex = 17
        Me.Label8.Text = "PARTIDOS"
        '
        'CmbPartidos
        '
        Me.CmbPartidos.FormattingEnabled = True
        Me.CmbPartidos.Location = New System.Drawing.Point(22, 176)
        Me.CmbPartidos.Name = "CmbPartidos"
        Me.CmbPartidos.Size = New System.Drawing.Size(141, 21)
        Me.CmbPartidos.TabIndex = 16
        '
        'Label7
        '
        Me.Label7.AutoSize = True
        Me.Label7.Location = New System.Drawing.Point(19, 104)
        Me.Label7.Name = "Label7"
        Me.Label7.Size = New System.Drawing.Size(52, 13)
        Me.Label7.TabIndex = 15
        Me.Label7.Text = "CARGOS"
        '
        'CmbCargos
        '
        Me.CmbCargos.FormattingEnabled = True
        Me.CmbCargos.Location = New System.Drawing.Point(21, 120)
        Me.CmbCargos.Name = "CmbCargos"
        Me.CmbCargos.Size = New System.Drawing.Size(141, 21)
        Me.CmbCargos.TabIndex = 14
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.Font = New System.Drawing.Font("Times New Roman", 12.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label5.Location = New System.Drawing.Point(288, 42)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(233, 19)
        Me.Label5.TabIndex = 13
        Me.Label5.Text = "CANDIDATOS REGISTRADOS"
        '
        'DGVCandidatos
        '
        Me.DGVCandidatos.AllowDrop = True
        Me.DGVCandidatos.AllowUserToOrderColumns = True
        Me.DGVCandidatos.BackgroundColor = System.Drawing.SystemColors.Control
        Me.DGVCandidatos.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.DGVCandidatos.Columns.AddRange(New System.Windows.Forms.DataGridViewColumn() {Me.DataGridViewTextBoxColumn1, Me.DataGridViewTextBoxColumn2})
        Me.DGVCandidatos.Location = New System.Drawing.Point(198, 79)
        Me.DGVCandidatos.Name = "DGVCandidatos"
        Me.DGVCandidatos.Size = New System.Drawing.Size(402, 174)
        Me.DGVCandidatos.TabIndex = 12
        '
        'DataGridViewTextBoxColumn1
        '
        Me.DataGridViewTextBoxColumn1.HeaderText = "Id"
        Me.DataGridViewTextBoxColumn1.Name = "DataGridViewTextBoxColumn1"
        Me.DataGridViewTextBoxColumn1.Visible = False
        '
        'DataGridViewTextBoxColumn2
        '
        Me.DataGridViewTextBoxColumn2.HeaderText = "Nombre"
        Me.DataGridViewTextBoxColumn2.Name = "DataGridViewTextBoxColumn2"
        Me.DataGridViewTextBoxColumn2.Width = 500
        '
        'TxtIdCandidato
        '
        Me.TxtIdCandidato.Enabled = False
        Me.TxtIdCandidato.Location = New System.Drawing.Point(101, 41)
        Me.TxtIdCandidato.Name = "TxtIdCandidato"
        Me.TxtIdCandidato.Size = New System.Drawing.Size(39, 20)
        Me.TxtIdCandidato.TabIndex = 11
        Me.TxtIdCandidato.Visible = False
        '
        'TxtNombreCandidato
        '
        Me.TxtNombreCandidato.Location = New System.Drawing.Point(21, 67)
        Me.TxtNombreCandidato.Name = "TxtNombreCandidato"
        Me.TxtNombreCandidato.Size = New System.Drawing.Size(141, 20)
        Me.TxtNombreCandidato.TabIndex = 10
        '
        'Label6
        '
        Me.Label6.AutoSize = True
        Me.Label6.Location = New System.Drawing.Point(18, 40)
        Me.Label6.Name = "Label6"
        Me.Label6.Size = New System.Drawing.Size(77, 13)
        Me.Label6.TabIndex = 9
        Me.Label6.Text = "CANDIDATOS"
        '
        'MenuCandidatos
        '
        Me.MenuCandidatos.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.BtnNuevoCandidato, Me.ToolStripSeparator7, Me.BtnGuardarCandidato, Me.ToolStripSeparator8, Me.BtnEditarCandidato, Me.ToolStripSeparator9, Me.BtnEliminarCandidato})
        Me.MenuCandidatos.Location = New System.Drawing.Point(3, 3)
        Me.MenuCandidatos.Name = "MenuCandidatos"
        Me.MenuCandidatos.Size = New System.Drawing.Size(614, 25)
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
        'ImgCandidatos
        '
        Me.ImgCandidatos.Location = New System.Drawing.Point(280, 264)
        Me.ImgCandidatos.Name = "ImgCandidatos"
        Me.ImgCandidatos.Size = New System.Drawing.Size(185, 109)
        Me.ImgCandidatos.TabIndex = 24
        Me.ImgCandidatos.TabStop = False
        '
        'BtnCargar
        '
        Me.BtnCargar.Location = New System.Drawing.Point(306, 379)
        Me.BtnCargar.Name = "BtnCargar"
        Me.BtnCargar.Size = New System.Drawing.Size(132, 23)
        Me.BtnCargar.TabIndex = 25
        Me.BtnCargar.Text = "Cargar Imagen"
        Me.BtnCargar.UseVisualStyleBackColor = True
        '
        'MenuAdmin
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(654, 458)
        Me.Controls.Add(Me.TabControl1)
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
        CType(Me.DGVCandidatos, System.ComponentModel.ISupportInitialize).EndInit()
        Me.MenuCandidatos.ResumeLayout(False)
        Me.MenuCandidatos.PerformLayout()
        CType(Me.ImgCandidatos, System.ComponentModel.ISupportInitialize).EndInit()
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
    Friend WithEvents Id As DataGridViewTextBoxColumn
    Friend WithEvents Nombre As DataGridViewTextBoxColumn
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
    Friend WithEvents IdPartido As DataGridViewTextBoxColumn
    Friend WithEvents NombrePartido As DataGridViewTextBoxColumn
    Friend WithEvents TabPage3 As TabPage
    Friend WithEvents Label5 As Label
    Friend WithEvents DGVCandidatos As DataGridView
    Friend WithEvents DataGridViewTextBoxColumn1 As DataGridViewTextBoxColumn
    Friend WithEvents DataGridViewTextBoxColumn2 As DataGridViewTextBoxColumn
    Friend WithEvents TxtIdCandidato As TextBox
    Friend WithEvents TxtNombreCandidato As TextBox
    Friend WithEvents Label6 As Label
    Friend WithEvents MenuCandidatos As ToolStrip
    Friend WithEvents BtnNuevoCandidato As ToolStripButton
    Friend WithEvents ToolStripSeparator7 As ToolStripSeparator
    Friend WithEvents BtnGuardarCandidato As ToolStripButton
    Friend WithEvents ToolStripSeparator8 As ToolStripSeparator
    Friend WithEvents BtnEditarCandidato As ToolStripButton
    Friend WithEvents ToolStripSeparator9 As ToolStripSeparator
    Friend WithEvents BtnEliminarCandidato As ToolStripButton
    Friend WithEvents Label10 As Label
    Friend WithEvents CmbMuni As ComboBox
    Friend WithEvents Label9 As Label
    Friend WithEvents CmbDpt As ComboBox
    Friend WithEvents Label8 As Label
    Friend WithEvents CmbPartidos As ComboBox
    Friend WithEvents Label7 As Label
    Friend WithEvents CmbCargos As ComboBox
    Friend WithEvents BtnCargar As Button
    Friend WithEvents ImgCandidatos As PictureBox
End Class
