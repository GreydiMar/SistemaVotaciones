Public Class Login

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
            Dim Id As String
            Id = reader("Id").ToString()
            Call Verificar(Id)
        Else
            MessageBox.Show("Numero de DNI incorrecto", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error)
        End If
    End Sub

    Private Sub BtnAdmin_Click(sender As Object, e As EventArgs) Handles BtnAdmin.Click
        LoginAdmin.Show()
        Me.Dispose()
    End Sub

    Sub Verificar(id As String)
        Dim con As New SqlClient.SqlConnection(My.Settings.Votaciones)   'conexion a sql
        con.Open()
        Dim reader As SqlClient.SqlDataReader 'lector de datos'
        '!--Consulta con SELECT WHERE
        Dim cmd As New SqlClient.SqlCommand("SELECT * FROM Votos WHERE VotanteID = '" & id & "'", con)
        reader = cmd.ExecuteReader
        If reader.Read Then
            MessageBox.Show("Usted ya ejecercio su voto, solo se puede votar una vez", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error)
        Else
            Dim lstcandidatos As New List(Of Candidato)
            Dim Eleciones As New Elecciones(id, lstcandidatos)
            Eleciones.Show()
            Me.Dispose()
        End If
    End Sub

    Private Sub btnSalir_Click(sender As Object, e As EventArgs) Handles btnSalir.Click
        Application.Exit()
    End Sub

    Private Sub TxtDni_TextChanged(sender As Object, e As EventArgs) Handles TxtDni.TextChanged
        Me.btnLimpiar.Visible = Me.TxtDni.Text <> ""
    End Sub

    Private Sub btnLimpiar_Click(sender As Object, e As EventArgs) Handles btnLimpiar.Click
        Me.TxtDni.Clear()
    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Process.Start("C:\Users\greyd\source\repos\SistemaVotaciones\Manual\Manual.pdf")
    End Sub
End Class