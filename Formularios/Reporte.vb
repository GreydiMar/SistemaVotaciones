Public Class Reporte

    Private _NombreUsuario As String

    Public Sub New(ByVal NombreUsuario As String)

        ' Esta llamada es exigida por el diseñador.
        InitializeComponent()

        ' Agregue cualquier inicialización después de la llamada a InitializeComponent().
        _NombreUsuario = NombreUsuario
    End Sub

    Private Sub Reporte_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Call ObtenerCandidatos()
        Call ObtenerCargos()
        Call ObtenerPartidos()
        Call ObtenerDepartamentos()
        Call Ganadores()
        Call TotalVotos()
    End Sub

    Private Sub TotalVotos()
        Dim query As String = "SELECT SUM(CASE WHEN CandidatoId IS NULL THEN 1 ELSE 0 END) AS 'NULL', SUM(CASE WHEN CandidatoId IS NOT NULL THEN 1 ELSE 0 END) AS 'NOT NULL', COUNT(*) AS 'TOTAL' FROM Votos"
        Call Reportes(query, Me.LblVotosCargos, Me.LblNulosCargos, Me.LblTotalCargos)
    End Sub
    Sub ObtenerCandidatos(Optional ByVal condicion As String = "")
        Dim numero As Integer = 0
        Dim con As New SqlClient.SqlConnection(My.Settings.Votaciones)
        con.Open()
        Dim reader As SqlClient.SqlDataReader
        Dim cmd As New SqlClient.SqlCommand("SELECT cand.Id, cand.Nombre, car.Nombre as Cargo, p.Nombre as Partido, ISNULL(Dpt.Nombre, '') as Dpt, ISNULL(Muni.Nombre, '') as Muni, COUNT(v.Id) as Votos FROM Candidatos AS cand INNER JOIN Cargos AS car ON cand.CargoId = car.Id INNER JOIN Partidos AS p ON cand.PartidoId = p.Id LEFT JOIN Departamento AS Dpt ON cand.DepartamentoId = Dpt.Id LEFT JOIN Municipio AS Muni ON cand.MunicipioId = Muni.Id	LEFT JOIN Votos AS v ON cand.Id = v.CandidatoId " & If(condicion <> "", "" & condicion, "") & " GROUP BY cand.Id, cand.Nombre, car.Nombre, p.Nombre, Dpt.Nombre, Muni.Nombre ORDER BY COUNT(v.Id) DESC", con)

        reader = cmd.ExecuteReader
        DGVCandidatos.Rows.Clear()
        Dim totalVotos As Long = 0
        While reader.Read()
            Dim id As Integer = reader.GetInt32(reader.GetOrdinal("Id"))
            Dim nombre As String = reader.GetString(reader.GetOrdinal("Nombre"))
            Dim cargo As String = reader.GetString(reader.GetOrdinal("Cargo"))
            Dim partido As String = reader.GetString(reader.GetOrdinal("Partido"))
            Dim dpt As String = reader.GetString(reader.GetOrdinal("Dpt"))
            Dim muni As String = reader.GetString(reader.GetOrdinal("Muni"))
            Dim votos As Integer = reader.GetInt32(reader.GetOrdinal("Votos"))

            DGVCandidatos.Rows.Add(id, nombre, cargo, partido, dpt, muni, votos)
            totalVotos = totalVotos + votos
            numero = numero + 1
        End While
        con.Close()
        Me.LblResumen.Text = numero & " registros encontrados"
        Me.LblTotalVotos.Text = totalVotos & " votos."

    End Sub


    Sub ObtenerCargos()

        Dim con As New SqlClient.SqlConnection(My.Settings.Votaciones)
        con.Open()
        Dim reader As SqlClient.SqlDataReader

        Dim cmd As New SqlClient.SqlCommand("SELECT * FROM Cargos", con)
        reader = cmd.ExecuteReader
        CmbCargoB.Items.Clear()
        CmbCargo.Items.Clear()
        While reader.Read()

            Dim id As Integer = reader.GetInt32(reader.GetOrdinal("Id"))
            Dim nombre As String = reader.GetString(reader.GetOrdinal("Nombre"))
            CmbCargoB.Items.Add(New With {Key .Value = id, Key .Text = nombre})
            CmbCargo.Items.Add(New With {Key .Value = id, Key .Text = nombre})

        End While
        CmbCargoB.ValueMember = "Value"
        CmbCargoB.DisplayMember = "Text"

        CmbCargo.ValueMember = "Value"
        CmbCargo.DisplayMember = "Text"
        con.Close()
    End Sub
    Sub ObtenerPartidos()

        Dim con As New SqlClient.SqlConnection(My.Settings.Votaciones)
        con.Open()
        Dim reader As SqlClient.SqlDataReader
        Dim cmd As New SqlClient.SqlCommand("SELECT * FROM Partidos", con)

        reader = cmd.ExecuteReader
        CmbPartidoB.Items.Clear()

        While reader.Read()
            Dim id As Integer = reader.GetInt32(reader.GetOrdinal("Id"))
            Dim nombre As String = reader.GetString(reader.GetOrdinal("Nombre"))
            CmbPartidoB.Items.Add(New With {Key .Value = id, Key .Text = nombre})
        End While

        CmbPartidoB.ValueMember = "Value"
        CmbPartidoB.DisplayMember = "Text"
        con.Close()
    End Sub
    Sub ObtenerDepartamentos()
        Dim con As New SqlClient.SqlConnection(My.Settings.Votaciones)
        con.Open()
        Dim reader As SqlClient.SqlDataReader

        Dim cmd As New SqlClient.SqlCommand("SELECT * FROM Departamento", con)
        reader = cmd.ExecuteReader

        CmbDepartamentoB.Items.Clear()
        While reader.Read()

            Dim id As Integer = reader.GetInt32(reader.GetOrdinal("Id"))
            Dim nombre As String = reader.GetString(reader.GetOrdinal("Nombre"))
            CmbDepartamentoB.Items.Add(New With {Key .Value = id, Key .Text = nombre})
        End While
        CmbDepartamentoB.ValueMember = "Value"
        CmbDepartamentoB.DisplayMember = "Text"
        con.Close()
    End Sub

    Private Sub CmbDepartamentoB_SelectedIndexChanged(sender As Object, e As EventArgs) Handles CmbDepartamentoB.SelectedIndexChanged
        If CmbDepartamentoB.SelectedIndex >= 0 Then
            Dim selectedItem As Object = CmbDepartamentoB.SelectedItem
            Dim selectedValue As Integer = selectedItem.Value
            CmbMunicipioB.SelectedIndex = -1
            Call ObtenerMunicipios(selectedValue, Me.CmbMunicipioB)
        End If
    End Sub

    Sub ObtenerMunicipios(IdDepartamento As String, comboBox As ComboBox)
        Dim con As New SqlClient.SqlConnection(My.Settings.Votaciones)
        con.Open()
        Dim reader As SqlClient.SqlDataReader

        Dim cmd As New SqlClient.SqlCommand("SELECT * FROM Municipio Where DepartamentoId = ' " & IdDepartamento & "' ", con)
        reader = cmd.ExecuteReader
        comboBox.Items.Clear()
        While reader.Read()

            Dim id As Integer = reader.GetInt32(reader.GetOrdinal("Id"))
            Dim nombre As String = reader.GetString(reader.GetOrdinal("Nombre"))
            comboBox.Items.Add(New With {Key .Value = id, Key .Text = nombre})
        End While
        comboBox.ValueMember = "Value"
        comboBox.DisplayMember = "Text"
        con.Close()
    End Sub

    Private Sub BtnBuscar_Click(sender As Object, e As EventArgs) Handles BtnBuscar.Click
        Dim condicion As String = ""

        If Trim(Me.TxtBuscar.Text).Length > 0 Then
            'WHERE cand.Nombre LIKE '%Grey%'
            condicion = condicion & "WHERE cand.Nombre LIKE '%" & Me.TxtBuscar.Text & "%'"
        End If
        If Me.CmbCargoB.SelectedIndex > -1 Then
            Dim selectedItem As Object = CmbCargoB.SelectedItem
            Dim cargo As Integer = selectedItem.Value
            If condicion <> "" Then
                condicion = condicion & " AND car.Id = '" & cargo & "'"
            Else
                condicion = condicion & "WHERE car.Id = '" & cargo & "'"
            End If
        End If

        If Me.CmbPartidoB.SelectedIndex > -1 Then
            Dim selectedItem As Object = CmbPartidoB.SelectedItem
            Dim partido As Integer = selectedItem.Value
            If condicion <> "" Then
                condicion = condicion & " AND p.Id = '" & partido & "'"
            Else
                condicion = condicion & "WHERE p.Id = '" & partido & "'"
            End If
        End If

        If Me.CmbDepartamentoB.SelectedIndex > -1 Then
            Dim selectedItem As Object = CmbDepartamentoB.SelectedItem
            Dim dpt As Integer = selectedItem.Value
            If condicion <> "" Then
                condicion = condicion & " AND Dpt.Id = '" & dpt & "'"
            Else
                condicion = condicion & "WHERE Dpt.Id = '" & dpt & "'"
            End If
        End If

        If Me.CmbMunicipioB.SelectedIndex > -1 Then
            Dim selectedItem As Object = CmbMunicipioB.SelectedItem
            Dim muni As Integer = selectedItem.Value
            If condicion <> "" Then
                condicion = condicion & " AND Muni.Id = '" & muni & "'"
            Else
                condicion = condicion & "WHERE Muni.Id = '" & muni & "'"
            End If
        End If
        If condicion <> "" Then
            Call ObtenerCandidatos(condicion)
        End If

    End Sub

    Private Sub BtnBorrar_Click(sender As Object, e As EventArgs) Handles BtnBorrar.Click
        Me.TxtBuscar.Clear()
        Me.CmbCargoB.SelectedIndex = -1
        Me.CmbPartidoB.SelectedIndex = -1
        Me.CmbDepartamentoB.SelectedIndex = -1
        Me.CmbMunicipioB.SelectedIndex = -1
        Call ObtenerCandidatos()
    End Sub

    Private Sub CmbCargo_SelectedIndexChanged(sender As Object, e As EventArgs) Handles CmbCargo.SelectedIndexChanged
        If CmbCargo.SelectedIndex >= 0 Then
            Dim selectedItem As Object = CmbCargo.SelectedItem
            Dim selectedValue As Integer = selectedItem.Value
            Dim query As String = "SELECT SUM(CASE WHEN CandidatoId IS NULL THEN 1 ELSE 0 END) AS 'NULL', SUM(CASE WHEN CandidatoId IS NOT NULL THEN 1 ELSE 0 END) AS 'NOT NULL', COUNT(*) AS 'TOTAL' FROM Votos WHERE CargoId = " & selectedValue
            Call Reportes(query, Me.LblVotosCargos, Me.LblNulosCargos, Me.LblTotalCargos)
        End If
    End Sub

    Private Sub Reportes(query As String, lblVotosCargos As Label, lblNulosCargos As Label, lblTotalCargos As Label)

        Dim con As New SqlClient.SqlConnection(My.Settings.Votaciones)
        con.Open()
        Dim reader As SqlClient.SqlDataReader

        Dim cmd As New SqlClient.SqlCommand(query, con)
        reader = cmd.ExecuteReader


        While reader.Read()
            Dim nulos As Integer = reader.GetInt32(reader.GetOrdinal("NULL"))
            Dim votos As String = reader.GetInt32(reader.GetOrdinal("NOT NULL"))
            Dim total As String = reader.GetInt32(reader.GetOrdinal("TOTAL"))
            lblVotosCargos.Text = votos
            lblNulosCargos.Text = nulos
            lblTotalCargos.Text = total
        End While
        con.Close()

    End Sub

    Sub Ganadores()
        Dim con As New SqlClient.SqlConnection(My.Settings.Votaciones)
        con.Open()
        Dim reader As SqlClient.SqlDataReader
        Dim query As String = "WITH VotosPorCandidato AS (SELECT v.CandidatoId, c.Nombre, ca.Nombre as Cargo, p.Nombre AS Partido, COUNT(*) AS Votos FROM Votos v INNER JOIN Candidatos c ON v.CandidatoId = c.Id INNER JOIN Cargos AS ca ON ca.Id = v.CargoId INNER JOIN Partidos AS p ON c.PartidoId = p.Id GROUP BY v.CandidatoId, c.Nombre, ca.Nombre, p.Nombre) SELECT Cargo, MAX(Votos) as Votos, Nombre, Partido FROM VotosPorCandidato GROUP BY Cargo, Nombre, Partido ORDER BY Cargo"
        Dim cmd As New SqlClient.SqlCommand(query, con)
        reader = cmd.ExecuteReader

        DgvGanadores.Rows.Clear()

        ' Luego, agrega los datos mientras lees el SqlDataReader
        While reader.Read()
            Dim nombre As String = reader.GetString(reader.GetOrdinal("Nombre"))
            Dim partido As String = reader.GetString(reader.GetOrdinal("Partido"))
            Dim cargo As String = reader.GetString(reader.GetOrdinal("Cargo"))
            Dim votos As Integer = reader.GetInt32(reader.GetOrdinal("Votos"))

            ' Agrega una nueva fila al DataGridView con los datos
            DgvGanadores.Rows.Add(nombre, partido, cargo, votos)
        End While



        con.Close()
    End Sub

    Private Sub BtnActualizar_Click(sender As Object, e As EventArgs) Handles BtnActualizar.Click
        Call Ganadores()
    End Sub

    Private Sub BntActulizarCargo_Click(sender As Object, e As EventArgs) Handles BntActulizarCargo.Click
        Me.CmbCargo.SelectedIndex = -1
        Call TotalVotos()
    End Sub

    Private Sub BtnAdmin_Click(sender As Object, e As EventArgs) Handles BtnAdmin.Click
        Dim Administracion As New MenuAdmin(_NombreUsuario)

        Administracion.Show()
        Me.Dispose()
    End Sub

    Private Sub BtnCerrarSesion_Click(sender As Object, e As EventArgs) Handles BtnCerrarSesion.Click
        Login.Show()
        Me.Dispose()
    End Sub
End Class