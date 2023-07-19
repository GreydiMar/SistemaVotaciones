Public Class LoginAdmin
    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If Trim(TxtDni.Text).Length = 0 Or Trim(TxtContrasena.Text).Length = 0 Then
            MessageBox.Show("Debe Ingresar el DNI o Contraseña, para continuar.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error)
            TxtDni.Focus()
            Exit Sub
        End If

        Dim con As New SqlClient.SqlConnection(My.Settings.Votaciones)   'conexion a sql

        con.Open()
        Dim reader As SqlClient.SqlDataReader 'lector de datos'

        '!--Consulta con SELECT WHERE
        Dim cmd As New SqlClient.SqlCommand("SELECT * FROM Usuarios WHERE DNI = '" & TxtDni.Text & "' AND Contrasena = '" & TxtContrasena.Text & "'", con)


        reader = cmd.ExecuteReader
        If reader.Read Then
            Dim NombreUsuario As String
            NombreUsuario = reader("Nombre").ToString()
            Dim FrmLoginAdmin As New MenuAdmin(NombreUsuario)
            FrmLoginAdmin.Show()
            Me.Dispose()
        Else
            MessageBox.Show("Numero de DNI o contraseña incorrecto", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error)
        End If
    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Login.Show()
        Me.Dispose()
    End Sub
End Class