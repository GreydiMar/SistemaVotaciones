Public Class Login
    Private Sub Login_Load(sender As Object, e As EventArgs) Handles MyBase.Load

    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If Trim(TxtDni.Text).Length = 0 Then
            MessageBox.Show("Debe el DNI para continuar.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error)
            TxtDni.Focus()
            Exit Sub
        End If

        Dim con As New SqlClient.SqlConnection(My.Settings.Votaciones)   'conexion a sql

        con.Open()
        Dim reader As SqlClient.SqlDataReader 'lector de datos'

        '!--Consulta con SELECT WHERE
        Dim cmd As New SqlClient.SqlCommand("SELECT * FROM Votantes WHERE NumeroIdentificacion = '" & TxtDni.Text & "'", con)


        reader = cmd.ExecuteReader
        If reader.Read Then
            Elecciones.Show()
            Me.Dispose()
        Else
            MessageBox.Show("Numero de DNI incorrecto", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error)
        End If
    End Sub

    Private Sub BtnAdmin_Click(sender As Object, e As EventArgs) Handles BtnAdmin.Click
        LoginAdmin.Show()
        Me.Dispose()
    End Sub
End Class