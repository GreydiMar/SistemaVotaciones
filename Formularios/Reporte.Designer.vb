<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()>
Partial Class Reporte
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()>
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()>
    Private Sub InitializeComponent()
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(Reporte))
        Me.DGVCandidatos = New System.Windows.Forms.DataGridView()
        Me.CandidatoId = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.CandidatoNombre = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.CandidatoCargo = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.CandidatoPartido = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.DptCandidato = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.MuniCandidato = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.Votos = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.TxtBuscar = New System.Windows.Forms.TextBox()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.Label4 = New System.Windows.Forms.Label()
        Me.Label5 = New System.Windows.Forms.Label()
        Me.CmbPartidoB = New System.Windows.Forms.ComboBox()
        Me.Label6 = New System.Windows.Forms.Label()
        Me.CmbDepartamentoB = New System.Windows.Forms.ComboBox()
        Me.CmbMunicipioB = New System.Windows.Forms.ComboBox()
        Me.Label7 = New System.Windows.Forms.Label()
        Me.BtnBuscar = New System.Windows.Forms.Button()
        Me.BtnBorrar = New System.Windows.Forms.Button()
        Me.Label8 = New System.Windows.Forms.Label()
        Me.Label9 = New System.Windows.Forms.Label()
        Me.Label10 = New System.Windows.Forms.Label()
        Me.LblVotosCargos = New System.Windows.Forms.Label()
        Me.LblNulosCargos = New System.Windows.Forms.Label()
        Me.Label13 = New System.Windows.Forms.Label()
        Me.LblTotalCargos = New System.Windows.Forms.Label()
        Me.Label15 = New System.Windows.Forms.Label()
        Me.CmbCargoB = New System.Windows.Forms.ComboBox()
        Me.CmbCargo = New System.Windows.Forms.ComboBox()
        Me.Label11 = New System.Windows.Forms.Label()
        Me.DgvGanadores = New System.Windows.Forms.DataGridView()
        Me.Nombre = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.Partido = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.Cargo = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.Voto = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.BtnActualizar = New System.Windows.Forms.Button()
        Me.LblResumen = New System.Windows.Forms.Label()
        Me.LblTotalVotos = New System.Windows.Forms.Label()
        Me.BntActulizarCargo = New System.Windows.Forms.Button()
        Me.MenuCandidatos = New System.Windows.Forms.ToolStrip()
        Me.BtnAdmin = New System.Windows.Forms.ToolStripButton()
        Me.ToolStripSeparator7 = New System.Windows.Forms.ToolStripSeparator()
        Me.BtnCerrarSsionC = New System.Windows.Forms.ToolStripButton()
        CType(Me.DGVCandidatos, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.DgvGanadores, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.MenuCandidatos.SuspendLayout()
        Me.SuspendLayout()
        '
        'DGVCandidatos
        '
        Me.DGVCandidatos.AllowDrop = True
        Me.DGVCandidatos.AllowUserToOrderColumns = True
        Me.DGVCandidatos.BackgroundColor = System.Drawing.Color.FromArgb(CType(CType(181, Byte), Integer), CType(CType(242, Byte), Integer), CType(CType(254, Byte), Integer))
        Me.DGVCandidatos.BorderStyle = System.Windows.Forms.BorderStyle.None
        Me.DGVCandidatos.CellBorderStyle = System.Windows.Forms.DataGridViewCellBorderStyle.None
        Me.DGVCandidatos.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.DGVCandidatos.Columns.AddRange(New System.Windows.Forms.DataGridViewColumn() {Me.CandidatoId, Me.CandidatoNombre, Me.CandidatoCargo, Me.CandidatoPartido, Me.DptCandidato, Me.MuniCandidato, Me.Votos})
        Me.DGVCandidatos.Location = New System.Drawing.Point(16, 317)
        Me.DGVCandidatos.Margin = New System.Windows.Forms.Padding(4, 5, 4, 5)
        Me.DGVCandidatos.Name = "DGVCandidatos"
        Me.DGVCandidatos.RowHeadersVisible = False
        Me.DGVCandidatos.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
        Me.DGVCandidatos.Size = New System.Drawing.Size(1105, 189)
        Me.DGVCandidatos.TabIndex = 13
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
        Me.CandidatoNombre.Width = 225
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
        'Votos
        '
        Me.Votos.HeaderText = "No. Votos"
        Me.Votos.Name = "Votos"
        Me.Votos.Width = 150
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Font = New System.Drawing.Font("Century Gothic", 12.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label1.Location = New System.Drawing.Point(12, 227)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(190, 19)
        Me.Label1.TabIndex = 14
        Me.Label1.Text = "Reporte por candidatos"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(76, 260)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(94, 20)
        Me.Label2.TabIndex = 15
        Me.Label2.Text = "Por nombre"
        '
        'TxtBuscar
        '
        Me.TxtBuscar.Location = New System.Drawing.Point(80, 283)
        Me.TxtBuscar.Name = "TxtBuscar"
        Me.TxtBuscar.Size = New System.Drawing.Size(277, 25)
        Me.TxtBuscar.TabIndex = 16
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(12, 286)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(62, 20)
        Me.Label3.TabIndex = 21
        Me.Label3.Text = "Buscar:"
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Location = New System.Drawing.Point(359, 255)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(84, 20)
        Me.Label4.TabIndex = 23
        Me.Label4.Text = "Por Cargo"
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.Location = New System.Drawing.Point(500, 255)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(89, 20)
        Me.Label5.TabIndex = 25
        Me.Label5.Text = "Por Partido"
        '
        'CmbPartidoB
        '
        Me.CmbPartidoB.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.CmbPartidoB.FormattingEnabled = True
        Me.CmbPartidoB.Location = New System.Drawing.Point(504, 283)
        Me.CmbPartidoB.Name = "CmbPartidoB"
        Me.CmbPartidoB.Size = New System.Drawing.Size(123, 28)
        Me.CmbPartidoB.TabIndex = 24
        '
        'Label6
        '
        Me.Label6.AutoSize = True
        Me.Label6.Location = New System.Drawing.Point(796, 261)
        Me.Label6.Name = "Label6"
        Me.Label6.Size = New System.Drawing.Size(109, 20)
        Me.Label6.TabIndex = 27
        Me.Label6.Text = "Por Municipio"
        '
        'CmbDepartamentoB
        '
        Me.CmbDepartamentoB.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.CmbDepartamentoB.FormattingEnabled = True
        Me.CmbDepartamentoB.Location = New System.Drawing.Point(633, 284)
        Me.CmbDepartamentoB.Name = "CmbDepartamentoB"
        Me.CmbDepartamentoB.Size = New System.Drawing.Size(159, 28)
        Me.CmbDepartamentoB.TabIndex = 26
        '
        'CmbMunicipioB
        '
        Me.CmbMunicipioB.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.CmbMunicipioB.FormattingEnabled = True
        Me.CmbMunicipioB.Location = New System.Drawing.Point(798, 284)
        Me.CmbMunicipioB.Name = "CmbMunicipioB"
        Me.CmbMunicipioB.Size = New System.Drawing.Size(162, 28)
        Me.CmbMunicipioB.TabIndex = 28
        '
        'Label7
        '
        Me.Label7.AutoSize = True
        Me.Label7.Location = New System.Drawing.Point(629, 261)
        Me.Label7.Name = "Label7"
        Me.Label7.Size = New System.Drawing.Size(145, 20)
        Me.Label7.TabIndex = 29
        Me.Label7.Text = "Por Departamento"
        '
        'BtnBuscar
        '
        Me.BtnBuscar.FlatAppearance.BorderSize = 0
        Me.BtnBuscar.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.BtnBuscar.Location = New System.Drawing.Point(966, 283)
        Me.BtnBuscar.Name = "BtnBuscar"
        Me.BtnBuscar.Size = New System.Drawing.Size(75, 28)
        Me.BtnBuscar.TabIndex = 30
        Me.BtnBuscar.Text = "Buscar"
        Me.BtnBuscar.UseVisualStyleBackColor = True
        '
        'BtnBorrar
        '
        Me.BtnBorrar.FlatAppearance.BorderSize = 0
        Me.BtnBorrar.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.BtnBorrar.Location = New System.Drawing.Point(1047, 284)
        Me.BtnBorrar.Name = "BtnBorrar"
        Me.BtnBorrar.Size = New System.Drawing.Size(75, 28)
        Me.BtnBorrar.TabIndex = 31
        Me.BtnBorrar.Text = "Borrar"
        Me.BtnBorrar.UseVisualStyleBackColor = True
        '
        'Label8
        '
        Me.Label8.AutoSize = True
        Me.Label8.Font = New System.Drawing.Font("Century Gothic", 12.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label8.Location = New System.Drawing.Point(12, 35)
        Me.Label8.Name = "Label8"
        Me.Label8.Size = New System.Drawing.Size(74, 19)
        Me.Label8.TabIndex = 32
        Me.Label8.Text = "Reportes"
        '
        'Label9
        '
        Me.Label9.AutoSize = True
        Me.Label9.Font = New System.Drawing.Font("Century Gothic", 12.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label9.Location = New System.Drawing.Point(12, 58)
        Me.Label9.Name = "Label9"
        Me.Label9.Size = New System.Drawing.Size(149, 19)
        Me.Label9.TabIndex = 33
        Me.Label9.Text = "Reporte por cargo"
        '
        'Label10
        '
        Me.Label10.AutoSize = True
        Me.Label10.Location = New System.Drawing.Point(12, 111)
        Me.Label10.Name = "Label10"
        Me.Label10.Size = New System.Drawing.Size(55, 20)
        Me.Label10.TabIndex = 35
        Me.Label10.Text = "Votos:"
        '
        'LblVotosCargos
        '
        Me.LblVotosCargos.AutoSize = True
        Me.LblVotosCargos.Location = New System.Drawing.Point(198, 111)
        Me.LblVotosCargos.Name = "LblVotosCargos"
        Me.LblVotosCargos.Size = New System.Drawing.Size(24, 20)
        Me.LblVotosCargos.TabIndex = 36
        Me.LblVotosCargos.Text = "---"
        '
        'LblNulosCargos
        '
        Me.LblNulosCargos.AutoSize = True
        Me.LblNulosCargos.Location = New System.Drawing.Point(198, 139)
        Me.LblNulosCargos.Name = "LblNulosCargos"
        Me.LblNulosCargos.Size = New System.Drawing.Size(24, 20)
        Me.LblNulosCargos.TabIndex = 38
        Me.LblNulosCargos.Text = "---"
        '
        'Label13
        '
        Me.Label13.AutoSize = True
        Me.Label13.Location = New System.Drawing.Point(12, 139)
        Me.Label13.Name = "Label13"
        Me.Label13.Size = New System.Drawing.Size(48, 20)
        Me.Label13.TabIndex = 37
        Me.Label13.Text = "Nulos"
        '
        'LblTotalCargos
        '
        Me.LblTotalCargos.AutoSize = True
        Me.LblTotalCargos.Location = New System.Drawing.Point(198, 168)
        Me.LblTotalCargos.Name = "LblTotalCargos"
        Me.LblTotalCargos.Size = New System.Drawing.Size(24, 20)
        Me.LblTotalCargos.TabIndex = 40
        Me.LblTotalCargos.Text = "---"
        '
        'Label15
        '
        Me.Label15.AutoSize = True
        Me.Label15.Location = New System.Drawing.Point(12, 168)
        Me.Label15.Name = "Label15"
        Me.Label15.Size = New System.Drawing.Size(92, 20)
        Me.Label15.TabIndex = 39
        Me.Label15.Text = "Total Votos:"
        '
        'CmbCargoB
        '
        Me.CmbCargoB.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.CmbCargoB.FormattingEnabled = True
        Me.CmbCargoB.Location = New System.Drawing.Point(362, 281)
        Me.CmbCargoB.Name = "CmbCargoB"
        Me.CmbCargoB.Size = New System.Drawing.Size(123, 28)
        Me.CmbCargoB.TabIndex = 41
        '
        'CmbCargo
        '
        Me.CmbCargo.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.CmbCargo.FormattingEnabled = True
        Me.CmbCargo.Location = New System.Drawing.Point(16, 80)
        Me.CmbCargo.Name = "CmbCargo"
        Me.CmbCargo.Size = New System.Drawing.Size(124, 28)
        Me.CmbCargo.TabIndex = 42
        '
        'Label11
        '
        Me.Label11.Font = New System.Drawing.Font("Century Gothic", 12.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label11.Location = New System.Drawing.Point(441, 104)
        Me.Label11.Name = "Label11"
        Me.Label11.Size = New System.Drawing.Size(100, 28)
        Me.Label11.TabIndex = 43
        Me.Label11.Text = "Ganadores"
        '
        'DgvGanadores
        '
        Me.DgvGanadores.AllowUserToAddRows = False
        Me.DgvGanadores.AllowUserToDeleteRows = False
        Me.DgvGanadores.AllowUserToResizeColumns = False
        Me.DgvGanadores.AllowUserToResizeRows = False
        Me.DgvGanadores.BackgroundColor = System.Drawing.Color.FromArgb(CType(CType(181, Byte), Integer), CType(CType(242, Byte), Integer), CType(CType(254, Byte), Integer))
        Me.DgvGanadores.BorderStyle = System.Windows.Forms.BorderStyle.None
        Me.DgvGanadores.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.DgvGanadores.Columns.AddRange(New System.Windows.Forms.DataGridViewColumn() {Me.Nombre, Me.Partido, Me.Cargo, Me.Voto})
        Me.DgvGanadores.GridColor = System.Drawing.Color.AliceBlue
        Me.DgvGanadores.Location = New System.Drawing.Point(445, 136)
        Me.DgvGanadores.MultiSelect = False
        Me.DgvGanadores.Name = "DgvGanadores"
        Me.DgvGanadores.ReadOnly = True
        Me.DgvGanadores.RowHeadersVisible = False
        Me.DgvGanadores.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
        Me.DgvGanadores.Size = New System.Drawing.Size(677, 118)
        Me.DgvGanadores.TabIndex = 45
        '
        'Nombre
        '
        Me.Nombre.HeaderText = "Nombre"
        Me.Nombre.Name = "Nombre"
        Me.Nombre.ReadOnly = True
        Me.Nombre.Width = 250
        '
        'Partido
        '
        Me.Partido.HeaderText = "Partido"
        Me.Partido.Name = "Partido"
        Me.Partido.ReadOnly = True
        Me.Partido.Width = 200
        '
        'Cargo
        '
        Me.Cargo.HeaderText = "Cargo"
        Me.Cargo.Name = "Cargo"
        Me.Cargo.ReadOnly = True
        Me.Cargo.Width = 150
        '
        'Voto
        '
        Me.Voto.HeaderText = "Votos"
        Me.Voto.Name = "Voto"
        Me.Voto.ReadOnly = True
        Me.Voto.Width = 75
        '
        'BtnActualizar
        '
        Me.BtnActualizar.FlatAppearance.BorderSize = 0
        Me.BtnActualizar.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.BtnActualizar.Location = New System.Drawing.Point(1021, 104)
        Me.BtnActualizar.Name = "BtnActualizar"
        Me.BtnActualizar.Size = New System.Drawing.Size(100, 28)
        Me.BtnActualizar.TabIndex = 46
        Me.BtnActualizar.Text = "Actualizar"
        Me.BtnActualizar.UseVisualStyleBackColor = True
        '
        'LblResumen
        '
        Me.LblResumen.AutoSize = True
        Me.LblResumen.Location = New System.Drawing.Point(12, 511)
        Me.LblResumen.Name = "LblResumen"
        Me.LblResumen.Size = New System.Drawing.Size(24, 20)
        Me.LblResumen.TabIndex = 47
        Me.LblResumen.Text = "---"
        '
        'LblTotalVotos
        '
        Me.LblTotalVotos.AutoSize = True
        Me.LblTotalVotos.Location = New System.Drawing.Point(1017, 511)
        Me.LblTotalVotos.Name = "LblTotalVotos"
        Me.LblTotalVotos.Size = New System.Drawing.Size(24, 20)
        Me.LblTotalVotos.TabIndex = 48
        Me.LblTotalVotos.Text = "---"
        '
        'BntActulizarCargo
        '
        Me.BntActulizarCargo.FlatAppearance.BorderSize = 0
        Me.BntActulizarCargo.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.BntActulizarCargo.Location = New System.Drawing.Point(150, 79)
        Me.BntActulizarCargo.Name = "BntActulizarCargo"
        Me.BntActulizarCargo.Size = New System.Drawing.Size(100, 28)
        Me.BntActulizarCargo.TabIndex = 49
        Me.BntActulizarCargo.Text = "Actualizar"
        Me.BntActulizarCargo.UseVisualStyleBackColor = True
        '
        'MenuCandidatos
        '
        Me.MenuCandidatos.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.BtnAdmin, Me.ToolStripSeparator7, Me.BtnCerrarSsionC})
        Me.MenuCandidatos.Location = New System.Drawing.Point(0, 0)
        Me.MenuCandidatos.Name = "MenuCandidatos"
        Me.MenuCandidatos.Size = New System.Drawing.Size(1136, 25)
        Me.MenuCandidatos.TabIndex = 50
        Me.MenuCandidatos.Text = "ToolStrip2"
        '
        'BtnAdmin
        '
        Me.BtnAdmin.Image = CType(resources.GetObject("BtnAdmin.Image"), System.Drawing.Image)
        Me.BtnAdmin.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.BtnAdmin.Name = "BtnAdmin"
        Me.BtnAdmin.Size = New System.Drawing.Size(108, 22)
        Me.BtnAdmin.Text = "Administración"
        '
        'ToolStripSeparator7
        '
        Me.ToolStripSeparator7.Name = "ToolStripSeparator7"
        Me.ToolStripSeparator7.Size = New System.Drawing.Size(6, 25)
        '
        'BtnCerrarSsionC
        '
        Me.BtnCerrarSsionC.Alignment = System.Windows.Forms.ToolStripItemAlignment.Right
        Me.BtnCerrarSsionC.Image = CType(resources.GetObject("BtnCerrarSsionC.Image"), System.Drawing.Image)
        Me.BtnCerrarSsionC.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.BtnCerrarSsionC.Name = "BtnCerrarSsionC"
        Me.BtnCerrarSsionC.Size = New System.Drawing.Size(96, 22)
        Me.BtnCerrarSsionC.Text = "Cerrar Sesión"
        '
        'Reporte
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(9.0!, 20.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.FromArgb(CType(CType(181, Byte), Integer), CType(CType(242, Byte), Integer), CType(CType(254, Byte), Integer))
        Me.BackgroundImage = CType(resources.GetObject("$this.BackgroundImage"), System.Drawing.Image)
        Me.ClientSize = New System.Drawing.Size(1136, 547)
        Me.Controls.Add(Me.MenuCandidatos)
        Me.Controls.Add(Me.BntActulizarCargo)
        Me.Controls.Add(Me.LblTotalVotos)
        Me.Controls.Add(Me.LblResumen)
        Me.Controls.Add(Me.BtnActualizar)
        Me.Controls.Add(Me.DgvGanadores)
        Me.Controls.Add(Me.Label11)
        Me.Controls.Add(Me.CmbCargo)
        Me.Controls.Add(Me.CmbCargoB)
        Me.Controls.Add(Me.LblTotalCargos)
        Me.Controls.Add(Me.Label15)
        Me.Controls.Add(Me.LblNulosCargos)
        Me.Controls.Add(Me.Label13)
        Me.Controls.Add(Me.LblVotosCargos)
        Me.Controls.Add(Me.Label10)
        Me.Controls.Add(Me.Label9)
        Me.Controls.Add(Me.Label8)
        Me.Controls.Add(Me.BtnBorrar)
        Me.Controls.Add(Me.BtnBuscar)
        Me.Controls.Add(Me.Label7)
        Me.Controls.Add(Me.CmbMunicipioB)
        Me.Controls.Add(Me.Label6)
        Me.Controls.Add(Me.CmbDepartamentoB)
        Me.Controls.Add(Me.Label5)
        Me.Controls.Add(Me.CmbPartidoB)
        Me.Controls.Add(Me.Label4)
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.TxtBuscar)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.DGVCandidatos)
        Me.Font = New System.Drawing.Font("Century Gothic", 11.0!)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None
        Me.Margin = New System.Windows.Forms.Padding(4, 5, 4, 5)
        Me.Name = "Reporte"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Reporte"
        CType(Me.DGVCandidatos, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.DgvGanadores, System.ComponentModel.ISupportInitialize).EndInit()
        Me.MenuCandidatos.ResumeLayout(False)
        Me.MenuCandidatos.PerformLayout()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents DGVCandidatos As DataGridView
    Friend WithEvents CandidatoId As DataGridViewTextBoxColumn
    Friend WithEvents CandidatoNombre As DataGridViewTextBoxColumn
    Friend WithEvents CandidatoCargo As DataGridViewTextBoxColumn
    Friend WithEvents CandidatoPartido As DataGridViewTextBoxColumn
    Friend WithEvents DptCandidato As DataGridViewTextBoxColumn
    Friend WithEvents MuniCandidato As DataGridViewTextBoxColumn
    Friend WithEvents Votos As DataGridViewTextBoxColumn
    Friend WithEvents Label1 As Label
    Friend WithEvents Label2 As Label
    Friend WithEvents TxtBuscar As TextBox
    Friend WithEvents Label3 As Label
    Friend WithEvents CmbCargos As ComboBox
    Friend WithEvents Label4 As Label
    Friend WithEvents Label5 As Label
    Friend WithEvents CmbPartidoB As ComboBox
    Friend WithEvents Label6 As Label
    Friend WithEvents CmbDepartamentoB As ComboBox
    Friend WithEvents CmbMunicipioB As ComboBox
    Friend WithEvents Label7 As Label
    Friend WithEvents BtnBuscar As Button
    Friend WithEvents BtnBorrar As Button
    Friend WithEvents Label8 As Label
    Friend WithEvents Label9 As Label
    Friend WithEvents Label10 As Label
    Friend WithEvents LblVotosCargos As Label
    Friend WithEvents LblNulosCargos As Label
    Friend WithEvents Label13 As Label
    Friend WithEvents LblTotalCargos As Label
    Friend WithEvents Label15 As Label
    Friend WithEvents CmbCargoB As ComboBox
    Friend WithEvents CmbCargo As ComboBox
    Friend WithEvents Label11 As Label
    Friend WithEvents DgvGanadores As DataGridView
    Friend WithEvents BtnActualizar As Button
    Friend WithEvents Nombre As DataGridViewTextBoxColumn
    Friend WithEvents Partido As DataGridViewTextBoxColumn
    Friend WithEvents Cargo As DataGridViewTextBoxColumn
    Friend WithEvents Voto As DataGridViewTextBoxColumn
    Friend WithEvents LblResumen As Label
    Friend WithEvents LblTotalVotos As Label
    Friend WithEvents BntActulizarCargo As Button
    Friend WithEvents MenuCandidatos As ToolStrip
    Friend WithEvents BtnAdmin As ToolStripButton
    Friend WithEvents ToolStripSeparator7 As ToolStripSeparator
    Friend WithEvents BtnCerrarSsionC As ToolStripButton
End Class
