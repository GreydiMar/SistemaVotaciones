<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Elecciones
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
        Me.LblVotante = New System.Windows.Forms.Label()
        Me.PnlPapeletas = New System.Windows.Forms.Panel()
        Me.SuspendLayout()
        '
        'LblVotante
        '
        Me.LblVotante.AutoSize = True
        Me.LblVotante.Font = New System.Drawing.Font("Century Gothic", 15.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.LblVotante.Location = New System.Drawing.Point(12, 21)
        Me.LblVotante.Name = "LblVotante"
        Me.LblVotante.Size = New System.Drawing.Size(39, 25)
        Me.LblVotante.TabIndex = 0
        Me.LblVotante.Text = "---"
        '
        'PnlPapeletas
        '
        Me.PnlPapeletas.Location = New System.Drawing.Point(12, 70)
        Me.PnlPapeletas.Name = "PnlPapeletas"
        Me.PnlPapeletas.Size = New System.Drawing.Size(1201, 422)
        Me.PnlPapeletas.TabIndex = 1
        '
        'Elecciones
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(1225, 494)
        Me.Controls.Add(Me.PnlPapeletas)
        Me.Controls.Add(Me.LblVotante)
        Me.Name = "Elecciones"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Elecciones"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents LblVotante As Label
    Friend WithEvents PnlPapeletas As Panel
End Class
