Imports System.IO
Imports System.Windows.Forms.VisualStyles.VisualStyleElement.Status

Public Class Elecciones

    Private _idUsuario As String
    Private _lstCand As List(Of Candidato)
    Private _nombre As String
    Private _Ald As Integer
    Private _Muni As Integer
    Private _Dpt As Integer
    Private _index As Integer = 0
    Dim listaCargos As New List(Of Cargo)
    Dim listaCandSeleccionados As New List(Of Candidato)

    Public Sub New(ByVal id As String, listaCand As List(Of Candidato))

        ' This call is required by the designer.
        InitializeComponent()

        ' Add any initialization after the InitializeComponent() call.
        _idUsuario = id
        _lstCand = listaCand
    End Sub

    Private Sub Elecciones_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        listaCandSeleccionados = _lstCand
        Call ObtenerUsuario()
        Call ObtenerCargos()
        Call ObtenerCandidatos(_index)
        Me.LblVotante.Text = "INICIO SESION COMO " + _nombre
        Me.BtnAtras.Enabled = False
    End Sub

    Sub ObtenerUsuario()
        Dim con As New SqlClient.SqlConnection(My.Settings.Votaciones)
        con.Open()
        Dim reader As SqlClient.SqlDataReader

        Dim cmd As New SqlClient.SqlCommand("SELECT v.Id, v.Nombre, a.Id as Ald, m.Id as Muni, d.Id as Dpt FROM Votantes AS v INNER JOIN Aldea AS a ON v.AldeaId = a.Id INNER JOIN Municipio AS m ON a.MunicipioId = m.Id INNER JOIN Departamento AS d ON m.DepartamentoId = d.Id WHERE v.Id = ' " & _idUsuario & "' ", con)

        reader = cmd.ExecuteReader

        While reader.Read()
            Dim id As Integer = reader.GetInt32(reader.GetOrdinal("Id"))
            _nombre = reader.GetString(reader.GetOrdinal("Nombre"))
            _Ald = reader.GetInt32(reader.GetOrdinal("Ald"))
            _Muni = reader.GetInt32(reader.GetOrdinal("Muni"))
            _Dpt = reader.GetInt32(reader.GetOrdinal("Dpt"))
        End While
        con.Close()
    End Sub

    Sub ObtenerCargos()
        Dim con As New SqlClient.SqlConnection(My.Settings.Votaciones)
        con.Open()
        Dim reader As SqlClient.SqlDataReader
        Dim cmd As New SqlClient.SqlCommand("SELECT * FROM Cargos", con)
        reader = cmd.ExecuteReader
        While reader.Read()
            Dim id As Integer = reader.GetInt32(reader.GetOrdinal("Id"))
            Dim nombre As String = reader.GetString(reader.GetOrdinal("Nombre"))
            Dim cargo As New Cargo
            cargo.Id = id
            cargo.Nombre = nombre
            listaCargos.Add(cargo)
        End While
        con.Close()
        listaCargos.Sort(Function(x, y) x.Nombre.CompareTo(y.Nombre))
    End Sub

    Sub ObtenerCandidatos(indice As Integer)
        Dim contar As Integer = 1
        Dim cargo As Cargo
        cargo = listaCargos(indice)
        '  For Each cargo As Cargo In listaCargos
        Dim query As String = "SELECT c.Id, c.Nombre, p.Nombre AS Partido, c.Imagen, c.DepartamentoId as Dpt, c.MunicipioId as Muni FROM Candidatos AS c INNER JOIN Partidos AS p ON p.Id = c.PartidoId WHERE CargoId = " & cargo.Id.ToString()
        Dim con As New SqlClient.SqlConnection(My.Settings.Votaciones)
        con.Open()
        Dim reader As SqlClient.SqlDataReader
        Dim cmd As New SqlClient.SqlCommand(query, con)
        reader = cmd.ExecuteReader
        Dim listaCandidatos As New List(Of Candidato)
        While reader.Read()
            Dim id As Integer = reader.GetInt32(reader.GetOrdinal("Id"))
            Dim nombre As String = reader.GetString(reader.GetOrdinal("Nombre"))
            Dim partido As String = reader.GetString(reader.GetOrdinal("Partido"))
            Dim imagen As Byte() = CType(reader.GetValue(reader.GetOrdinal("Imagen")), Byte())
            Dim dpt As Integer = If(reader.IsDBNull(reader.GetOrdinal("Dpt")), 0, reader.GetInt32(reader.GetOrdinal("Dpt")))
            Dim muni As Integer = If(reader.IsDBNull(reader.GetOrdinal("Muni")), 0, reader.GetInt32(reader.GetOrdinal("Muni")))
            Dim candidato As New Candidato
            candidato.Id = id
            candidato.Nombre = nombre
            candidato.Partido = partido
            candidato.Imagen = imagen
            candidato.Dpt = dpt
            candidato.Muni = muni
            candidato.CargoId = cargo.Id
            candidato.CargoNombre = cargo.Nombre
            listaCandidatos.Add(candidato)
        End While

        con.Close()
        Call CrearPapeleta(listaCandidatos, cargo.Nombre)
        If listaCargos.Count > (indice + 1) Then
            cargo = listaCargos(indice + 1)
            Me.BtnSiguiente.Text = cargo.Nombre
        End If

        If 0 <= indice - 1 Then
            cargo = listaCargos(indice - 1)
            Me.BtnAtras.Text = cargo.Nombre
        End If
        Me.BtnAtras.Visible = indice > 0
        Me.BtnSiguiente.Visible = listaCargos.Count > (indice + 1)
        Me.BtnTerminar.Visible = listaCargos.Count = (indice + 1)
        Me.imgAtras.Visible = Me.BtnAtras.Visible
    End Sub

    Sub CrearPapeleta(lista As List(Of Candidato), titulo As String) '

        While PnlPapeleta.Controls.Count > 0
            Dim control As Control = PnlPapeleta.Controls(0)
            PnlPapeleta.Controls.Remove(control)
            control.Dispose()
        End While


        Dim x As Integer = 0
        Dim y As Integer = 0
        Dim margin As Integer = 50

        Dim lblTitulo As New Label()
        lblTitulo.Text = "Candidatos para: " & titulo
        lblTitulo.AutoSize = True
        lblTitulo.Location = New Point(x, y)
        Me.PnlPapeleta.Controls.Add(lblTitulo)

        For Each candidato As Candidato In lista
            If candidato.Muni = _Muni Or (candidato.Muni = 0 And candidato.Dpt = _Dpt) Or (candidato.Muni = 0 And candidato.Dpt = 0) Then
                Dim ImgCandidato As New PictureBox()
                Using ms As New MemoryStream(candidato.Imagen)
                    ImgCandidato.Image = Image.FromStream(ms)
                End Using
                ImgCandidato.Location = New Point(x, lblTitulo.Bottom + 1)
                ImgCandidato.Size = New Size(200, 200)
                ImgCandidato.SizeMode = PictureBoxSizeMode.Zoom
                Me.PnlPapeleta.Controls.Add(ImgCandidato)

                Dim LblNombre As New Label()
                LblNombre.Text = candidato.Nombre
                LblNombre.Location = New Point(x, ImgCandidato.Bottom + 1)
                LblNombre.AutoSize = False
                LblNombre.Size = New Size(ImgCandidato.Width, LblNombre.Height)
                LblNombre.TextAlign = ContentAlignment.MiddleCenter
                Me.PnlPapeleta.Controls.Add(LblNombre)

                Dim LblPartido As New Label()
                LblPartido.Text = candidato.Partido
                LblPartido.Location = New Point(x, LblNombre.Bottom + 1)
                LblPartido.AutoSize = False
                LblPartido.Size = New Size(ImgCandidato.Width, LblNombre.Height)
                LblPartido.TextAlign = ContentAlignment.MiddleCenter
                Me.PnlPapeleta.Controls.Add(LblPartido)

                Dim BtnVotar As New Button()
                BtnVotar.Text = "Votar"
                For Each c In listaCandSeleccionados
                    If c.Id = candidato.Id Then
                        BtnVotar.Text = "Quitar voto"
                    End If
                Next

                BtnVotar.Location = New Point(x, LblPartido.Bottom + 1)
                BtnVotar.AutoSize = False
                BtnVotar.Size = New Size(ImgCandidato.Width, 45)
                BtnVotar.TextAlign = ContentAlignment.MiddleCenter
                AddHandler BtnVotar.Click, Sub() Votar(candidato)
                Me.PnlPapeleta.Controls.Add(BtnVotar)

                x += ImgCandidato.Width + margin
            End If
        Next
    End Sub

    Sub Votar(candidato As Candidato)
        Dim existe As Boolean = False
        For i As Integer = listaCandSeleccionados.Count - 1 To 0 Step -1
            Dim c As Candidato = listaCandSeleccionados(i)
            If Not existe Then
                existe = c.Id = candidato.Id
                If existe Or c.CargoId = candidato.CargoId Then
                    listaCandSeleccionados.RemoveAt(i)
                End If
            End If
        Next
        If Not existe Then
            listaCandSeleccionados.Add(candidato)
            Dim ultCargo As Cargo = listaCargos.Last()
            If candidato.CargoId = ultCargo.Id Then
                Me.BtnTerminar.PerformClick()
            Else
                Me.BtnSiguiente.PerformClick()
            End If
        Else
            For Each control As Control In Me.PnlPapeleta.Controls
                If TypeOf control Is Button Then
                    Dim button As Button = CType(control, Button)
                    button.Text = "Votar"
                End If
            Next
        End If

    End Sub

    Private Sub BtnAtras_Click(sender As Object, e As EventArgs) Handles BtnAtras.Click
        _index = _index - 1
        Me.BtnAtras.Enabled = _index > 0
        Call ObtenerCandidatos(_index)
    End Sub

    Private Sub BtnSiguiente_Click(sender As Object, e As EventArgs) Handles BtnSiguiente.Click
        _index = _index + 1
        Call ObtenerCandidatos(_index)
        Me.BtnAtras.Enabled = _index > 0

    End Sub

    Private Sub BtnTerminar_Click(sender As Object, e As EventArgs) Handles BtnTerminar.Click
        Dim Resumen As New ResumenVotacion(listaCandSeleccionados, _idUsuario, listaCargos)
        Resumen.Show()
        Me.Dispose()
    End Sub

    Private Sub imgAtras_Click(sender As Object, e As EventArgs) Handles imgAtras.Click
        Me.BtnAtras.PerformClick
    End Sub
End Class