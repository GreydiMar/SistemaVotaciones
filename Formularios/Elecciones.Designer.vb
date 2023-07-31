<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()>
Partial Class Elecciones
    Inherits System.Windows.Forms.Form

    'Form reemplaza a Dispose para limpiar la lista de componentes.
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

    'Requerido por el Diseñador de Windows Forms
    Private components As System.ComponentModel.IContainer

    'NOTA: el Diseñador de Windows Forms necesita el siguiente procedimiento
    'Se puede modificar usando el Diseñador de Windows Forms.  
    'No lo modifique con el editor de código.
    <System.Diagnostics.DebuggerStepThrough()>
    Private Sub InitializeComponent()
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(Elecciones))
        Me.LblVotante = New System.Windows.Forms.Label()
        Me.PnlPapeleta = New System.Windows.Forms.Panel()
        Me.BtnSiguiente = New System.Windows.Forms.Button()
        Me.BtnAtras = New System.Windows.Forms.Button()
        Me.BtnTerminar = New System.Windows.Forms.Button()
        Me.imgAtras = New System.Windows.Forms.PictureBox()
        CType(Me.imgAtras, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'LblVotante
        '
        Me.LblVotante.AutoSize = True
        Me.LblVotante.BackColor = System.Drawing.Color.Transparent
        Me.LblVotante.Font = New System.Drawing.Font("Century Gothic", 15.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.LblVotante.Location = New System.Drawing.Point(4, 13)
        Me.LblVotante.Margin = New System.Windows.Forms.Padding(4, 0, 4, 0)
        Me.LblVotante.Name = "LblVotante"
        Me.LblVotante.Size = New System.Drawing.Size(39, 25)
        Me.LblVotante.TabIndex = 0
        Me.LblVotante.Text = "---"
        '
        'PnlPapeleta
        '
        Me.PnlPapeleta.BackColor = System.Drawing.Color.Transparent
        Me.PnlPapeleta.Location = New System.Drawing.Point(12, 133)
        Me.PnlPapeleta.Name = "PnlPapeleta"
        Me.PnlPapeleta.Size = New System.Drawing.Size(1240, 320)
        Me.PnlPapeleta.TabIndex = 1
        '
        'BtnSiguiente
        '
        Me.BtnSiguiente.Location = New System.Drawing.Point(1114, 459)
        Me.BtnSiguiente.Name = "BtnSiguiente"
        Me.BtnSiguiente.Size = New System.Drawing.Size(109, 28)
        Me.BtnSiguiente.TabIndex = 2
        Me.BtnSiguiente.Text = "Siguiente"
        Me.BtnSiguiente.UseVisualStyleBackColor = True
        '
        'BtnAtras
        '
        Me.BtnAtras.BackColor = System.Drawing.Color.FromArgb(CType(CType(181, Byte), Integer), CType(CType(242, Byte), Integer), CType(CType(254, Byte), Integer))
        Me.BtnAtras.FlatAppearance.BorderSize = 0
        Me.BtnAtras.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.BtnAtras.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft
        Me.BtnAtras.Location = New System.Drawing.Point(56, 468)
        Me.BtnAtras.Name = "BtnAtras"
        Me.BtnAtras.Size = New System.Drawing.Size(99, 28)
        Me.BtnAtras.TabIndex = 3
        Me.BtnAtras.Text = "Atras"
        Me.BtnAtras.UseVisualStyleBackColor = False
        '
        'BtnTerminar
        '
        Me.BtnTerminar.Location = New System.Drawing.Point(563, 459)
        Me.BtnTerminar.Name = "BtnTerminar"
        Me.BtnTerminar.Size = New System.Drawing.Size(154, 35)
        Me.BtnTerminar.TabIndex = 4
        Me.BtnTerminar.Text = "Terminar"
        Me.BtnTerminar.UseVisualStyleBackColor = True
        Me.BtnTerminar.Visible = False
        '
        'imgAtras
        '
        Me.imgAtras.BackColor = System.Drawing.Color.FromArgb(CType(CType(181, Byte), Integer), CType(CType(242, Byte), Integer), CType(CType(254, Byte), Integer))
        Me.imgAtras.Image = CType(resources.GetObject("imgAtras.Image"), System.Drawing.Image)
        Me.imgAtras.Location = New System.Drawing.Point(11, 460)
        Me.imgAtras.Name = "imgAtras"
        Me.imgAtras.Size = New System.Drawing.Size(71, 45)
        Me.imgAtras.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom
        Me.imgAtras.TabIndex = 0
        Me.imgAtras.TabStop = False
        '
        'Elecciones
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(9.0!, 19.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.AutoScroll = True
        Me.BackgroundImage = CType(resources.GetObject("$this.BackgroundImage"), System.Drawing.Image)
        Me.ClientSize = New System.Drawing.Size(1258, 523)
        Me.Controls.Add(Me.BtnTerminar)
        Me.Controls.Add(Me.BtnAtras)
        Me.Controls.Add(Me.BtnSiguiente)
        Me.Controls.Add(Me.PnlPapeleta)
        Me.Controls.Add(Me.LblVotante)
        Me.Controls.Add(Me.imgAtras)
        Me.Font = New System.Drawing.Font("Century Gothic", 12.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle
        Me.Margin = New System.Windows.Forms.Padding(4)
        Me.Name = "Elecciones"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Elecciones"
        CType(Me.imgAtras, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents LblVotante As Label
    Friend WithEvents PnlPapeleta As Panel
    Friend WithEvents BtnSiguiente As Button
    Friend WithEvents BtnAtras As Button
    Friend WithEvents BtnTerminar As Button
    Friend WithEvents imgAtras As PictureBox
End Class
