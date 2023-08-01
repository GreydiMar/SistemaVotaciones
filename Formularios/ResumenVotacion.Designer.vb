<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class ResumenVotacion
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
    <System.Diagnostics.DebuggerStepThrough()>
    Private Sub InitializeComponent()
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(ResumenVotacion))
        Me.Label1 = New System.Windows.Forms.Label()
        Me.ImgPresidente = New System.Windows.Forms.PictureBox()
        Me.LblNombrePresidente = New System.Windows.Forms.Label()
        Me.LblPartidoPresidente = New System.Windows.Forms.Label()
        Me.Label4 = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.LblPartidoDiputado = New System.Windows.Forms.Label()
        Me.LblNombreDiputado = New System.Windows.Forms.Label()
        Me.imgDiputado = New System.Windows.Forms.PictureBox()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.LblPartidoAlcalde = New System.Windows.Forms.Label()
        Me.LblNombreAlcalde = New System.Windows.Forms.Label()
        Me.ImgAlcalde = New System.Windows.Forms.PictureBox()
        Me.BtnRegresar = New System.Windows.Forms.Button()
        Me.BtnConfirmar = New System.Windows.Forms.Button()
        CType(Me.ImgPresidente, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.imgDiputado, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.ImgAlcalde, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Font = New System.Drawing.Font("Century Gothic", 15.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label1.Location = New System.Drawing.Point(20, 14)
        Me.Label1.Margin = New System.Windows.Forms.Padding(6, 0, 6, 0)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(436, 25)
        Me.Label1.TabIndex = 1
        Me.Label1.Text = "Usted ah eligido los siguientes candidatos"
        '
        'ImgPresidente
        '
        Me.ImgPresidente.Image = CType(resources.GetObject("ImgPresidente.Image"), System.Drawing.Image)
        Me.ImgPresidente.Location = New System.Drawing.Point(25, 89)
        Me.ImgPresidente.Name = "ImgPresidente"
        Me.ImgPresidente.Size = New System.Drawing.Size(205, 180)
        Me.ImgPresidente.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom
        Me.ImgPresidente.TabIndex = 2
        Me.ImgPresidente.TabStop = False
        '
        'LblNombrePresidente
        '
        Me.LblNombrePresidente.Location = New System.Drawing.Point(21, 272)
        Me.LblNombrePresidente.Name = "LblNombrePresidente"
        Me.LblNombrePresidente.Size = New System.Drawing.Size(209, 20)
        Me.LblNombrePresidente.TabIndex = 3
        Me.LblNombrePresidente.Text = "No elijio candidato"
        Me.LblNombrePresidente.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        '
        'LblPartidoPresidente
        '
        Me.LblPartidoPresidente.Location = New System.Drawing.Point(21, 322)
        Me.LblPartidoPresidente.Name = "LblPartidoPresidente"
        Me.LblPartidoPresidente.Size = New System.Drawing.Size(209, 62)
        Me.LblPartidoPresidente.TabIndex = 4
        Me.LblPartidoPresidente.Text = "---"
        Me.LblPartidoPresidente.TextAlign = System.Drawing.ContentAlignment.TopCenter
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Location = New System.Drawing.Point(21, 57)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(124, 20)
        Me.Label4.TabIndex = 5
        Me.Label4.Text = "Para Presidente"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(260, 57)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(115, 20)
        Me.Label2.TabIndex = 9
        Me.Label2.Text = "Para Diputado"
        '
        'LblPartidoDiputado
        '
        Me.LblPartidoDiputado.Location = New System.Drawing.Point(260, 322)
        Me.LblPartidoDiputado.Name = "LblPartidoDiputado"
        Me.LblPartidoDiputado.Size = New System.Drawing.Size(209, 62)
        Me.LblPartidoDiputado.TabIndex = 8
        Me.LblPartidoDiputado.Text = "---"
        Me.LblPartidoDiputado.TextAlign = System.Drawing.ContentAlignment.TopCenter
        '
        'LblNombreDiputado
        '
        Me.LblNombreDiputado.Location = New System.Drawing.Point(260, 272)
        Me.LblNombreDiputado.Name = "LblNombreDiputado"
        Me.LblNombreDiputado.Size = New System.Drawing.Size(209, 20)
        Me.LblNombreDiputado.TabIndex = 7
        Me.LblNombreDiputado.Text = "No elijio candidato"
        Me.LblNombreDiputado.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        '
        'imgDiputado
        '
        Me.imgDiputado.Image = CType(resources.GetObject("imgDiputado.Image"), System.Drawing.Image)
        Me.imgDiputado.Location = New System.Drawing.Point(264, 89)
        Me.imgDiputado.Name = "imgDiputado"
        Me.imgDiputado.Size = New System.Drawing.Size(205, 180)
        Me.imgDiputado.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom
        Me.imgDiputado.TabIndex = 6
        Me.imgDiputado.TabStop = False
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(504, 57)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(104, 20)
        Me.Label3.TabIndex = 13
        Me.Label3.Text = "Para Alcalde"
        '
        'LblPartidoAlcalde
        '
        Me.LblPartidoAlcalde.Location = New System.Drawing.Point(504, 322)
        Me.LblPartidoAlcalde.Name = "LblPartidoAlcalde"
        Me.LblPartidoAlcalde.Size = New System.Drawing.Size(209, 62)
        Me.LblPartidoAlcalde.TabIndex = 12
        Me.LblPartidoAlcalde.Text = "---"
        Me.LblPartidoAlcalde.TextAlign = System.Drawing.ContentAlignment.TopCenter
        '
        'LblNombreAlcalde
        '
        Me.LblNombreAlcalde.Location = New System.Drawing.Point(504, 272)
        Me.LblNombreAlcalde.Name = "LblNombreAlcalde"
        Me.LblNombreAlcalde.Size = New System.Drawing.Size(209, 20)
        Me.LblNombreAlcalde.TabIndex = 11
        Me.LblNombreAlcalde.Text = "No elijio candidato"
        Me.LblNombreAlcalde.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        '
        'ImgAlcalde
        '
        Me.ImgAlcalde.Image = CType(resources.GetObject("ImgAlcalde.Image"), System.Drawing.Image)
        Me.ImgAlcalde.Location = New System.Drawing.Point(508, 89)
        Me.ImgAlcalde.Name = "ImgAlcalde"
        Me.ImgAlcalde.Size = New System.Drawing.Size(205, 180)
        Me.ImgAlcalde.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom
        Me.ImgAlcalde.TabIndex = 10
        Me.ImgAlcalde.TabStop = False
        '
        'BtnRegresar
        '
        Me.BtnRegresar.Location = New System.Drawing.Point(25, 387)
        Me.BtnRegresar.Name = "BtnRegresar"
        Me.BtnRegresar.Size = New System.Drawing.Size(170, 32)
        Me.BtnRegresar.TabIndex = 14
        Me.BtnRegresar.Text = "Cambiar Elección"
        Me.BtnRegresar.UseVisualStyleBackColor = True
        '
        'BtnConfirmar
        '
        Me.BtnConfirmar.Location = New System.Drawing.Point(543, 387)
        Me.BtnConfirmar.Name = "BtnConfirmar"
        Me.BtnConfirmar.Size = New System.Drawing.Size(170, 32)
        Me.BtnConfirmar.TabIndex = 15
        Me.BtnConfirmar.Text = "Confirmar Elección"
        Me.BtnConfirmar.UseVisualStyleBackColor = True
        '
        'ResumenVotacion
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(9.0!, 20.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.FromArgb(CType(CType(181, Byte), Integer), CType(CType(242, Byte), Integer), CType(CType(254, Byte), Integer))
        Me.ClientSize = New System.Drawing.Size(761, 431)
        Me.Controls.Add(Me.BtnConfirmar)
        Me.Controls.Add(Me.BtnRegresar)
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.LblPartidoAlcalde)
        Me.Controls.Add(Me.LblNombreAlcalde)
        Me.Controls.Add(Me.ImgAlcalde)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.LblPartidoDiputado)
        Me.Controls.Add(Me.LblNombreDiputado)
        Me.Controls.Add(Me.imgDiputado)
        Me.Controls.Add(Me.Label4)
        Me.Controls.Add(Me.LblPartidoPresidente)
        Me.Controls.Add(Me.LblNombrePresidente)
        Me.Controls.Add(Me.ImgPresidente)
        Me.Controls.Add(Me.Label1)
        Me.Font = New System.Drawing.Font("Century Gothic", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None
        Me.Margin = New System.Windows.Forms.Padding(4, 5, 4, 5)
        Me.Name = "ResumenVotacion"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "ResumenVotacion"
        CType(Me.ImgPresidente, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.imgDiputado, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.ImgAlcalde, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents Label1 As Label
    Friend WithEvents ImgPresidente As PictureBox
    Friend WithEvents LblNombrePresidente As Label
    Friend WithEvents LblPartidoPresidente As Label
    Friend WithEvents Label4 As Label
    Friend WithEvents Label2 As Label
    Friend WithEvents LblPartidoDiputado As Label
    Friend WithEvents LblNombreDiputado As Label
    Friend WithEvents imgDiputado As PictureBox
    Friend WithEvents Label3 As Label
    Friend WithEvents LblPartidoAlcalde As Label
    Friend WithEvents LblNombreAlcalde As Label
    Friend WithEvents ImgAlcalde As PictureBox
    Friend WithEvents BtnRegresar As Button
    Friend WithEvents BtnConfirmar As Button
End Class
