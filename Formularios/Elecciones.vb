Imports System.IO

Public Class Elecciones

    Private _idUsuario As String
    Private _nombre As String
    Private _Ald As Integer
    Private _Muni As Integer
    Private _Dpt As Integer

    Dim listaCargos As New List(Of Cargo)
    Dim votos As New List(Of Voto)

    Public Sub New(ByVal id As String)

        ' This call is required by the designer.
        InitializeComponent()

        ' Add any initialization after the InitializeComponent() call.
        _idUsuario = id

    End Sub

    Private Sub Elecciones_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Call ObtenerUsuario()

        Me.LblVotante.Text = "INICIO SESION COMO " + _nombre
        Call ObtenerCargos()
        Call CrearPapeletas(listaCargos)
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

        Dim cmd As New SqlClient.SqlCommand("SELECT car.Id AS CargoId, car.Nombre AS Cargo, can.Id, can.Nombre AS CandidatoNombre, can.MunicipioId, can.DepartamentoId, can.Imagen FROM Cargos AS car INNER JOIN Candidatos AS can ON car.Id = can.CargoId WHERE (can.MunicipioId = ' " & _Muni & "'  OR can.MunicipioId IS NULL) AND (can.DepartamentoId = '" & _Dpt & "' OR (can.DepartamentoId IS NULL AND can.MunicipioId IS NULL))", con)

        reader = cmd.ExecuteReader

        ' Crear un diccionario para almacenar los objetos Cargo
        Dim cargos As New Dictionary(Of Integer, Cargo)

        While reader.Read()
            ' Obtener el Id y el nombre del cargo
            Dim cargoId As Integer = reader.GetInt32(reader.GetOrdinal("CargoId"))
            Dim cargoNombre As String = reader.GetString(reader.GetOrdinal("Cargo"))

            ' Verificar si ya existe un objeto Cargo con el mismo Id en el diccionario
            If Not cargos.ContainsKey(cargoId) Then
                ' Si no existe, crear un nuevo objeto Cargo y agregarlo al diccionario
                Dim cargo As New Cargo()
                cargo.Id = cargoId
                cargo.Nombre = cargoNombre
                cargo.Candidatos = New List(Of Candidato)
                cargos.Add(cargoId, cargo)
            End If

            ' Obtener el objeto Cargo del diccionario
            Dim cargoActual As Cargo = cargos(cargoId)

            ' Crear un nuevo objeto Candidato y asignarle los valores del registro actual
            Dim candidato As New Candidato()
            candidato.Id = reader.GetInt32(reader.GetOrdinal("Id"))
            candidato.Nombre = reader.GetString(reader.GetOrdinal("CandidatoNombre"))

            ' Verificar si el campo MunicipioId es NULL
            If reader.IsDBNull(reader.GetOrdinal("MunicipioId")) Then
                candidato.MunicipioId = Nothing
            Else
                candidato.MunicipioId = reader.GetInt32(reader.GetOrdinal("MunicipioId"))
            End If

            ' Verificar si el campo DepartamentoId es NULL
            If reader.IsDBNull(reader.GetOrdinal("DepartamentoId")) Then
                candidato.DepartamentoId = Nothing
            Else
                candidato.DepartamentoId = reader.GetInt32(reader.GetOrdinal("DepartamentoId"))
            End If

            ' Verificar si el campo Imagen es NULL
            If reader.IsDBNull(reader.GetOrdinal("Imagen")) Then
                candidato.Imagen = Nothing
            Else
                candidato.Imagen = DirectCast(reader.GetValue(reader.GetOrdinal("Imagen")), Byte())
            End If

            ' Agregar el objeto Candidato a la lista de candidatos del objeto Cargo
            cargoActual.Candidatos.Add(candidato)
        End While
        listaCargos = cargos.Values.ToList()
        con.Close()

        ' La lista cargos.Values ahora contiene los objetos Cargo con sus respectivos objetos Candidato e Imagenes.
    End Sub

    Sub CrearPapeletas(cargos As List(Of Cargo))
        Dim papeletaPanel As New FlowLayoutPanel()
        papeletaPanel.FlowDirection = FlowDirection.TopDown
        papeletaPanel.WrapContents = False
        papeletaPanel.AutoScroll = True
        papeletaPanel.Dock = DockStyle.Fill

        For Each cargo In cargos

            Dim cargoLabel As New Label()
            cargoLabel.Width = 200
            cargoLabel.Height = 30
            cargoLabel.Text = cargo.Nombre
            cargoLabel.Font = New Font("Segoe UI", 12, FontStyle.Bold)
            cargoLabel.TextAlign = ContentAlignment.MiddleCenter


            Dim filaPanel As New FlowLayoutPanel()
            filaPanel.FlowDirection = FlowDirection.LeftToRight
            filaPanel.WrapContents = False


            For Each candidato In cargo.Candidatos

                Dim card As New Panel()
                card.Width = 200
                card.Height = 250
                card.BackColor = Color.White


                AddHandler card.Click, Sub(sender As Object, e As EventArgs)

                                           Dim votoExistente As Voto = votos.Find(Function(v) v.CargoId = cargo.Id)
                                           If votoExistente IsNot Nothing Then

                                               votos.Remove(votoExistente)
                                           End If


                                           Dim voto As New Voto()
                                           voto.CargoId = cargo.Id
                                           voto.CandidatoId = candidato.Id
                                           votos.Add(voto)


                                           card.BackColor = Color.LightGreen
                                       End Sub

                Dim pictureBox As New PictureBox()
                pictureBox.Width = 180
                pictureBox.Height = 120
                pictureBox.Location = New Point(10, 10)
                If candidato.Imagen IsNot Nothing Then
                    Using stream As New MemoryStream(candidato.Imagen)
                        pictureBox.Image = Image.FromStream(stream)
                    End Using
                End If
                pictureBox.SizeMode = PictureBoxSizeMode.Zoom


                Dim nameLabel As New Label()
                nameLabel.Width = 180
                nameLabel.Height = 30
                nameLabel.Location = New Point(10, 140)
                nameLabel.Text = candidato.Nombre
                nameLabel.Font = New Font("Segoe UI", 12, FontStyle.Bold)
                nameLabel.TextAlign = ContentAlignment.MiddleCenter


                card.Controls.Add(pictureBox)
                card.Controls.Add(nameLabel)


                filaPanel.Controls.Add(card)

            Next


            papeletaPanel.Controls.Add(cargoLabel)
            papeletaPanel.Controls.Add(filaPanel)
        Next

        PnlPapeletas.Controls.Add(papeletaPanel)

    End Sub



End Class