<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Login
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(Login))
        Me.Button1 = New System.Windows.Forms.Button()
        Me.TxtDni = New System.Windows.Forms.TextBox()
        Me.btnSalir = New System.Windows.Forms.Button()
        Me.BtnAdmin = New System.Windows.Forms.Button()
        Me.btnLimpiar = New System.Windows.Forms.Button()
        Me.SuspendLayout()
        '
        'Button1
        '
        Me.Button1.Location = New System.Drawing.Point(64, 288)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(100, 23)
        Me.Button1.TabIndex = 2
        Me.Button1.Text = "INGRESAR"
        Me.Button1.UseVisualStyleBackColor = True
        '
        'TxtDni
        '
        Me.TxtDni.BackColor = System.Drawing.Color.FromArgb(CType(CType(119, Byte), Integer), CType(CType(224, Byte), Integer), CType(CType(245, Byte), Integer))
        Me.TxtDni.BorderStyle = System.Windows.Forms.BorderStyle.None
        Me.TxtDni.Location = New System.Drawing.Point(177, 247)
        Me.TxtDni.Name = "TxtDni"
        Me.TxtDni.Size = New System.Drawing.Size(163, 13)
        Me.TxtDni.TabIndex = 1
        '
        'btnSalir
        '
        Me.btnSalir.Location = New System.Drawing.Point(232, 289)
        Me.btnSalir.Name = "btnSalir"
        Me.btnSalir.Size = New System.Drawing.Size(100, 23)
        Me.btnSalir.TabIndex = 3
        Me.btnSalir.Text = "SALIR"
        Me.btnSalir.UseVisualStyleBackColor = True
        '
        'BtnAdmin
        '
        Me.BtnAdmin.Location = New System.Drawing.Point(139, 330)
        Me.BtnAdmin.Name = "BtnAdmin"
        Me.BtnAdmin.Size = New System.Drawing.Size(117, 23)
        Me.BtnAdmin.TabIndex = 4
        Me.BtnAdmin.Text = "ADMINISTRACIÓN"
        Me.BtnAdmin.UseVisualStyleBackColor = True
        '
        'btnLimpiar
        '
        Me.btnLimpiar.BackColor = System.Drawing.Color.FromArgb(CType(CType(119, Byte), Integer), CType(CType(224, Byte), Integer), CType(CType(245, Byte), Integer))
        Me.btnLimpiar.FlatAppearance.BorderSize = 0
        Me.btnLimpiar.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.btnLimpiar.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnLimpiar.Location = New System.Drawing.Point(319, 241)
        Me.btnLimpiar.Name = "btnLimpiar"
        Me.btnLimpiar.Size = New System.Drawing.Size(21, 27)
        Me.btnLimpiar.TabIndex = 5
        Me.btnLimpiar.Text = "X"
        Me.btnLimpiar.UseVisualStyleBackColor = False
        Me.btnLimpiar.Visible = False
        '
        'Login
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackgroundImage = CType(resources.GetObject("$this.BackgroundImage"), System.Drawing.Image)
        Me.ClientSize = New System.Drawing.Size(379, 406)
        Me.Controls.Add(Me.btnLimpiar)
        Me.Controls.Add(Me.BtnAdmin)
        Me.Controls.Add(Me.btnSalir)
        Me.Controls.Add(Me.TxtDni)
        Me.Controls.Add(Me.Button1)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None
        Me.Name = "Login"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Login"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents Button1 As Button
    Friend WithEvents TxtDni As TextBox
    Friend WithEvents btnSalir As Button
    Friend WithEvents BtnAdmin As Button
    Friend WithEvents btnLimpiar As Button
End Class
