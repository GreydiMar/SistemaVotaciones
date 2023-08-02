<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class LoginAdmin
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(LoginAdmin))
        Me.Button1 = New System.Windows.Forms.Button()
        Me.Button2 = New System.Windows.Forms.Button()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.TxtDni = New System.Windows.Forms.TextBox()
        Me.TxtContrasena = New System.Windows.Forms.TextBox()
        Me.BtnMostrar = New System.Windows.Forms.Button()
        Me.btnLimpiar = New System.Windows.Forms.Button()
        Me.SuspendLayout()
        '
        'Button1
        '
        Me.Button1.Location = New System.Drawing.Point(55, 326)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(100, 23)
        Me.Button1.TabIndex = 0
        Me.Button1.Text = "INGRESAR"
        Me.Button1.UseVisualStyleBackColor = True
        '
        'Button2
        '
        Me.Button2.Location = New System.Drawing.Point(227, 324)
        Me.Button2.Name = "Button2"
        Me.Button2.Size = New System.Drawing.Size(100, 23)
        Me.Button2.TabIndex = 1
        Me.Button2.Text = "REGRESAR"
        Me.Button2.UseVisualStyleBackColor = True
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(74, 38)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(0, 13)
        Me.Label1.TabIndex = 2
        '
        'TxtDni
        '
        Me.TxtDni.BackColor = System.Drawing.Color.FromArgb(CType(CType(119, Byte), Integer), CType(CType(224, Byte), Integer), CType(CType(245, Byte), Integer))
        Me.TxtDni.BorderStyle = System.Windows.Forms.BorderStyle.None
        Me.TxtDni.Location = New System.Drawing.Point(169, 249)
        Me.TxtDni.Name = "TxtDni"
        Me.TxtDni.Size = New System.Drawing.Size(132, 13)
        Me.TxtDni.TabIndex = 0
        '
        'TxtContrasena
        '
        Me.TxtContrasena.BackColor = System.Drawing.Color.FromArgb(CType(CType(119, Byte), Integer), CType(CType(224, Byte), Integer), CType(CType(245, Byte), Integer))
        Me.TxtContrasena.BorderStyle = System.Windows.Forms.BorderStyle.None
        Me.TxtContrasena.Location = New System.Drawing.Point(169, 284)
        Me.TxtContrasena.Name = "TxtContrasena"
        Me.TxtContrasena.Size = New System.Drawing.Size(129, 13)
        Me.TxtContrasena.TabIndex = 1
        Me.TxtContrasena.UseSystemPasswordChar = True
        '
        'BtnMostrar
        '
        Me.BtnMostrar.BackColor = System.Drawing.Color.FromArgb(CType(CType(119, Byte), Integer), CType(CType(224, Byte), Integer), CType(CType(245, Byte), Integer))
        Me.BtnMostrar.BackgroundImage = CType(resources.GetObject("BtnMostrar.BackgroundImage"), System.Drawing.Image)
        Me.BtnMostrar.FlatAppearance.BorderSize = 0
        Me.BtnMostrar.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.BtnMostrar.Location = New System.Drawing.Point(304, 279)
        Me.BtnMostrar.Name = "BtnMostrar"
        Me.BtnMostrar.Size = New System.Drawing.Size(26, 23)
        Me.BtnMostrar.TabIndex = 6
        Me.BtnMostrar.UseVisualStyleBackColor = False
        Me.BtnMostrar.Visible = False
        '
        'btnLimpiar
        '
        Me.btnLimpiar.BackColor = System.Drawing.Color.FromArgb(CType(CType(119, Byte), Integer), CType(CType(224, Byte), Integer), CType(CType(245, Byte), Integer))
        Me.btnLimpiar.FlatAppearance.BorderSize = 0
        Me.btnLimpiar.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.btnLimpiar.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnLimpiar.Location = New System.Drawing.Point(307, 241)
        Me.btnLimpiar.Name = "btnLimpiar"
        Me.btnLimpiar.Size = New System.Drawing.Size(21, 27)
        Me.btnLimpiar.TabIndex = 7
        Me.btnLimpiar.Text = "X"
        Me.btnLimpiar.UseVisualStyleBackColor = False
        Me.btnLimpiar.Visible = False
        '
        'LoginAdmin
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackgroundImage = CType(resources.GetObject("$this.BackgroundImage"), System.Drawing.Image)
        Me.ClientSize = New System.Drawing.Size(375, 399)
        Me.Controls.Add(Me.BtnMostrar)
        Me.Controls.Add(Me.btnLimpiar)
        Me.Controls.Add(Me.TxtContrasena)
        Me.Controls.Add(Me.TxtDni)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.Button2)
        Me.Controls.Add(Me.Button1)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None
        Me.Name = "LoginAdmin"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "LoginAdmin"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents Button1 As Button
    Friend WithEvents Button2 As Button
    Friend WithEvents Label1 As Label
    Friend WithEvents TxtDni As TextBox
    Friend WithEvents TxtContrasena As TextBox
    Friend WithEvents BtnMostrar As Button
    Friend WithEvents btnLimpiar As Button
End Class
