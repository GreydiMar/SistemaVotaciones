Imports System.IO

Public Class ResumenVotacion

    Dim _listaCandidatos As New List(Of Candidato)
    Dim _listaCargos As New List(Of Cargo)
    Private _idUsuario As String
    Public Sub New(candidatos As List(Of Candidato), ByVal id As String, cargos As List(Of Cargo))
        ' This call is required by the designer.
        InitializeComponent()

        ' Add any initialization after the InitializeComponent() call.
        _listaCandidatos = candidatos
        _idUsuario = id
        _listaCargos = cargos
    End Sub

    Private Sub ResumenVotacion_Load(sender As Object, e As EventArgs) Handles MyBase.Load

        For Each candidato In _listaCandidatos
            Dim lblNombre As String = "LblNombre" + (candidato.CargoNombre.ToUpper).ToLower()
            Dim lblPartido As String = "LblPartido" + (candidato.CargoNombre.ToUpper).ToLower()
            Dim Img As String = "Img" + (candidato.CargoNombre.ToUpper).ToLower()
            Dim controlImg As Control = Me.Controls.Find(Img, True).FirstOrDefault()
            Dim controlPartido As Control = Me.Controls.Find(lblPartido, True).FirstOrDefault()
            Dim controlNombre As Control = Me.Controls.Find(lblNombre, True).FirstOrDefault()

            If controlImg IsNot Nothing AndAlso TypeOf controlImg Is PictureBox Then
                Dim pictureBox As PictureBox = CType(controlImg, PictureBox)
                Using ms As New MemoryStream(candidato.Imagen)
                    pictureBox.Image = Image.FromStream(ms)
                    pictureBox.SizeMode = PictureBoxSizeMode.Zoom
                End Using
            End If

            controlNombre.Text = candidato.Nombre
            controlPartido.Text = candidato.Partido
        Next
    End Sub

    Private Sub BtnRegresar_Click(sender As Object, e As EventArgs) Handles BtnRegresar.Click
        Dim Eleciones As New Elecciones(_idUsuario, _listaCandidatos)
        Eleciones.Show()
        Me.Dispose()
    End Sub

    Private Sub BtnConfirmar_Click(sender As Object, e As EventArgs) Handles BtnConfirmar.Click
        Dim mensaje As String = "¿Esta seguro de su elección?" & vbNewLine & vbNewLine & "Una vez guardada no se puede cambiar su elección."
        Dim confirmacion As DialogResult = MessageBox.Show(mensaje, "Confirmación", MessageBoxButtons.YesNo)

        If confirmacion = DialogResult.Yes Then
            Dim msg As String = ""
            For Each cargo In _listaCargos
                Dim candidato As Candidato = _listaCandidatos.FirstOrDefault(Function(c) c.CargoId = cargo.Id)
                Dim m As String = ""
                Dim query As String = ""
                If candidato IsNot Nothing Then
                    query = "INSERT INTO Votos (VotanteId, CargoId, CandidatoId) Values ('" & _idUsuario & "', '" & cargo.Id & "', '" & candidato.Id & "')"
                    m = candidato.Nombre
                Else
                    query = "INSERT INTO Votos (VotanteId, CargoId) Values ('" & _idUsuario & "', '" & cargo.Id & "')"
                    m = "No se eligio candidato"
                End If
                If DB(query) > 0 Then 'Valida la insercción, si es mayor que 1 es correcto
                    msg = cargo.Nombre & ": " & m & " agregado exitosamente." & vbNewLine & msg
                Else    'Valida la insercción, si es 0 es incorrecto
                    msg = cargo.Nombre & ": " + m & " ocurrio un problema al guardar el dato." & vbNewLine & msg
                End If

            Next
            MessageBox.Show(msg, "Éxito", MessageBoxButtons.OK, MessageBoxIcon.Information)
            Login.Show()
            Me.Dispose()
        End If

    End Sub

    Function DB(query As String) As Integer 'Metodo encargado de realizar las acciones guardar, editar, eliminar

        Dim con As New SqlClient.SqlConnection(My.Settings.Votaciones)
        con.Open()

        Dim cmd As New SqlClient.SqlCommand(query, con)

        Dim rowsAffected As Integer = cmd.ExecuteNonQuery()

        con.Close()
        DB = rowsAffected
    End Function

End Class