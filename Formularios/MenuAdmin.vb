Public Class MenuAdmin

    Private _NombreUsuario As String
    Public Sub New(ByVal NombreUsuario As String)

        ' Esta llamada es exigida por el diseñador.
        InitializeComponent()

        ' Agregue cualquier inicialización después de la llamada a InitializeComponent().
        _NombreUsuario = NombreUsuario
    End Sub

    Private Sub MenuAdmin_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Me.Text = _NombreUsuario

        Call InicioCargos()
        Call ObtenerCargos()
        Call ObtenerPartidos()
        Call ObtenerDepartamentos()


    End Sub
    Sub InicioCargos()
        Me.BtnNuevoCargo.Enabled = True
        Me.BtnEditarCargo.Enabled = False
        Me.BtnGuardarCargo.Enabled = False
        Me.BtnEliminarCargo.Enabled = False
        Me.TxtNombreCargo.Enabled = False


        Me.BtnNuevoPartido.Enabled = True
        Me.BtnEditarPartido.Enabled = False
        Me.BtnGuardarPartido.Enabled = False
        Me.BtnEliminarPartido.Enabled = False
        Me.TxtNombrePartido.Enabled = False

    End Sub

    Private Sub BtnNuevoCargo_Click(sender As Object, e As EventArgs) Handles BtnNuevoCargo.Click
        Me.BtnNuevoCargo.Enabled = False
        Me.BtnGuardarCargo.Enabled = True
        Me.TxtNombreCargo.Enabled = True
        Me.TxtNombreCargo.Focus()
    End Sub

    Sub ObtenerCargos()

        Dim con As New SqlClient.SqlConnection(My.Settings.Votaciones)
        con.Open()
        Dim reader As SqlClient.SqlDataReader

        Dim cmd As New SqlClient.SqlCommand("SELECT * FROM Cargos", con)
        reader = cmd.ExecuteReader
        DgvCargos.Rows.Clear()
        CmbCargos.Items.Clear()
        While reader.Read()

            Dim id As Integer = reader.GetInt32(reader.GetOrdinal("Id"))
            Dim nombre As String = reader.GetString(reader.GetOrdinal("Nombre"))
            DgvCargos.Rows.Add(id, nombre)
            CmbCargos.Items.Add(New With {Key .Value = id, Key .Text = nombre})
        End While
        CmbCargos.ValueMember = "Value"
        CmbCargos.DisplayMember = "Text"
        con.Close()
    End Sub


    Sub ObtenerPartidos()

        Dim con As New SqlClient.SqlConnection(My.Settings.Votaciones)
        con.Open()
        Dim reader As SqlClient.SqlDataReader
        Dim cmd As New SqlClient.SqlCommand("SELECT * FROM Partidos", con)

        reader = cmd.ExecuteReader
        DGVPartidos.Rows.Clear()

        CmbPartidos.Items.Clear()

        While reader.Read()
            Dim id As Integer = reader.GetInt32(reader.GetOrdinal("Id"))
            Dim nombre As String = reader.GetString(reader.GetOrdinal("Nombre"))
            DGVPartidos.Rows.Add(id, nombre)
            CmbPartidos.Items.Add(New With {Key .Value = id, Key .Text = nombre})
        End While

        CmbPartidos.ValueMember = "Value"
        CmbPartidos.DisplayMember = "Text"
        con.Close()
    End Sub

    Sub ObtenerDepartamentos()

        Dim con As New SqlClient.SqlConnection(My.Settings.Votaciones)
        con.Open()
        Dim reader As SqlClient.SqlDataReader

        Dim cmd As New SqlClient.SqlCommand("SELECT * FROM Departamento", con)
        reader = cmd.ExecuteReader
        CmbDpt.Items.Clear()
        While reader.Read()

            Dim id As Integer = reader.GetInt32(reader.GetOrdinal("Id"))
            Dim nombre As String = reader.GetString(reader.GetOrdinal("Nombre"))
            CmbDpt.Items.Add(New With {Key .Value = id, Key .Text = nombre})
        End While
        CmbDpt.ValueMember = "Value"
        CmbDpt.DisplayMember = "Text"
        con.Close()
    End Sub

    Sub ObtenerMunicipios(IdDepartamento As String)

        Dim con As New SqlClient.SqlConnection(My.Settings.Votaciones)
        con.Open()
        Dim reader As SqlClient.SqlDataReader

        Dim cmd As New SqlClient.SqlCommand("SELECT * FROM Municipio Where DepartamentoId = ' " & IdDepartamento & "' ", con)
        reader = cmd.ExecuteReader
        CmbMuni.Items.Clear()
        While reader.Read()

            Dim id As Integer = reader.GetInt32(reader.GetOrdinal("Id"))
            Dim nombre As String = reader.GetString(reader.GetOrdinal("Nombre"))
            CmbMuni.Items.Add(New With {Key .Value = id, Key .Text = nombre})
        End While
        CmbMuni.ValueMember = "Value"
        CmbMuni.DisplayMember = "Text"
        con.Close()
    End Sub

    Private Sub BtnGuardarCargo_Click(sender As Object, e As EventArgs) Handles BtnGuardarCargo.Click

        If Trim(TxtNombreCargo.Text).Length = 0 Then  'Validar que el campo Txt no este vacio
            MessageBox.Show("Ingrese el nombre del cargo.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error)
            TxtNombreCargo.Focus()
            Exit Sub
        End If

        Dim query As String = "INSERT INTO Cargos (Nombre) Values ('" & TxtNombreCargo.Text & "')"

        If DB(query) > 0 Then 'Valida la insercción, si es mayor que 1 es correcto
            MessageBox.Show("Cargo insertado correctamente.", "Éxito", MessageBoxButtons.OK, MessageBoxIcon.Information)
            Me.TxtNombreCargo.Clear()
            Call ObtenerCargos()
            Call InicioCargos()
        Else    'Valida la insercción, si es 0 es incorrecto
            MessageBox.Show("No se pudo insertar el cargo.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error)
        End If
    End Sub
    Private Sub DgvCargos_CellDoubleClick(sender As Object, e As DataGridViewCellEventArgs) Handles DgvCargos.CellDoubleClick
        If e.RowIndex >= 0 Then
            Dim id As String = DgvCargos.Rows(e.RowIndex).Cells("Id").Value.ToString()
            Dim nombre As String = DgvCargos.Rows(e.RowIndex).Cells("Nombre").Value.ToString()
            ' Aquí puedes utilizar las variables id y nombre para acceder a los datos de la fila seleccionada

            Me.TxtNombreCargo.Text = nombre
            Me.TxtIdCargo.Text = id

            Me.BtnNuevoCargo.Enabled = False
            Me.BtnGuardarCargo.Enabled = False
            Me.BtnEditarCargo.Enabled = True
            Me.BtnEliminarCargo.Enabled = True

            TxtNombreCargo.Enabled = True

        End If
    End Sub

    Private Sub BtnEditarCargo_Click(sender As Object, e As EventArgs) Handles BtnEditarCargo.Click

        If Trim(TxtNombreCargo.Text).Length = 0 Then  'Validar que el campo Txt no este vacio
            MessageBox.Show("Ingrese el nombre del cargo.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error)
            TxtNombreCargo.Focus()
            Exit Sub
        End If

        Dim query As String = "Update Cargos set Nombre = '" & TxtNombreCargo.Text & "' Where Id = '" & TxtIdCargo.Text & "' "

        If DB(query) > 0 Then 'Valida la insercción, si es mayor que 1 es correcto
            MessageBox.Show("Cargo editado correctamente.", "Éxito", MessageBoxButtons.OK, MessageBoxIcon.Information)
            Me.TxtNombreCargo.Clear()
            Me.TxtIdCargo.Clear()
            Call ObtenerCargos()
            Call InicioCargos()
        Else    'Valida la insercción, si es 0 es incorrecto
            MessageBox.Show("No se pudo editar el cargo.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error)
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

    Private Sub BtnEliminarCargo_Click(sender As Object, e As EventArgs) Handles BtnEliminarCargo.Click
        Dim result As DialogResult = MessageBox.Show("¿Desea eliminar el registro?", "Confirmación", MessageBoxButtons.YesNo, MessageBoxIcon.Question)

        If result = DialogResult.Yes Then
            Dim query As String = "Delete Cargos Where Id = '" & TxtIdCargo.Text & "' "

            If DB(query) > 0 Then
                MessageBox.Show("Registro eliminado correctamente.", "Éxito", MessageBoxButtons.OK, MessageBoxIcon.Information)
                Me.TxtNombreCargo.Clear()
                Me.TxtIdCargo.Clear()
                Call ObtenerCargos()
                Call InicioCargos()
            Else    'Valida la insercción, si es 0 es incorrecto
                MessageBox.Show("Hubo un error al eliminar el registro", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error)
            End If
        End If

    End Sub
    Private Sub BtnNuevoPartido_Click(sender As Object, e As EventArgs) Handles BtnNuevoPartido.Click
        Me.BtnNuevoPartido.Enabled = False
        Me.BtnGuardarPartido.Enabled = True
        Me.TxtNombrePartido.Enabled = True
        Me.TxtNombrePartido.Focus()
    End Sub

    Private Sub BtnGuardarPartido_Click(sender As Object, e As EventArgs) Handles BtnGuardarPartido.Click
        If Trim(TxtNombrePartido.Text).Length = 0 Then  'Validar que el campo Txt no este vacio
            MessageBox.Show("Ingrese el nombre del partido.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error)
            TxtNombrePartido.Focus()
            Exit Sub
        End If

        Dim query As String = "INSERT INTO Partidos (Nombre) Values ('" & TxtNombrePartido.Text & "')"

        If DB(query) > 0 Then 'Valida la insercción, si es mayor que 1 es correcto
            MessageBox.Show("Partido insertado correctamente.", "Éxito", MessageBoxButtons.OK, MessageBoxIcon.Information)
            Me.TxtNombrePartido.Clear()
            Call ObtenerPartidos()
            Call InicioCargos()

        Else    'Valida la insercción, si es 0 es incorrecto
            MessageBox.Show("No se pudo insertar el partido.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error)
        End If
    End Sub

    Private Sub BtnEditarPartido_Click(sender As Object, e As EventArgs) Handles BtnEditarPartido.Click
        If Trim(TxtNombrePartido.Text).Length = 0 Then  'Validar que el campo Txt no este vacio
            MessageBox.Show("Ingrese el nombre del partido.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error)
            TxtNombrePartido.Focus()
            Exit Sub
        End If

        Dim query As String = "Update Partidos set Nombre = '" & TxtNombrePartido.Text & "' Where Id = '" & TxtIdPartido.Text & "' "

        If DB(query) > 0 Then 'Valida la insercción, si es mayor que 1 es correcto
            MessageBox.Show("Partido editado correctamente.", "Éxito", MessageBoxButtons.OK, MessageBoxIcon.Information)
            Me.TxtNombrePartido.Clear()
            Me.TxtIdPartido.Clear()
            Call ObtenerPartidos()
            Call InicioCargos()
        Else    'Valida la insercción, si es 0 es incorrecto
            MessageBox.Show("No se pudo editar el partido.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error)
        End If
    End Sub

    Private Sub BtnEliminarPartido_Click(sender As Object, e As EventArgs) Handles BtnEliminarPartido.Click
        Dim result As DialogResult = MessageBox.Show("¿Desea eliminar el partido?", "Confirmación", MessageBoxButtons.YesNo, MessageBoxIcon.Question)

        If result = DialogResult.Yes Then
            Dim query As String = "Delete Partidos Where Id = '" & TxtIdPartido.Text & "' "

            If DB(query) > 0 Then
                MessageBox.Show("Registro eliminado correctamente.", "Éxito", MessageBoxButtons.OK, MessageBoxIcon.Information)
                Me.TxtNombrePartido.Clear()
                Me.TxtIdPartido.Clear()
                Call ObtenerPartidos()
                Call InicioCargos()
            Else    'Valida la insercción, si es 0 es incorrecto
                MessageBox.Show("Hubo un error al eliminar el partido", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error)
            End If
        End If
    End Sub

    Private Sub DGVPartidos_CellDoubleClick(sender As Object, e As DataGridViewCellEventArgs) Handles DGVPartidos.CellDoubleClick
        If e.RowIndex >= 0 Then
            Dim id As String = DGVPartidos.Rows(e.RowIndex).Cells("IdPartido").Value.ToString()
            Dim nombre As String = DGVPartidos.Rows(e.RowIndex).Cells("NombrePartido").Value.ToString()
            ' Aquí puedes utilizar las variables id y nombre para acceder a los datos de la fila seleccionada

            Me.TxtNombrePartido.Text = nombre
            Me.TxtIdPartido.Text = id

            Me.BtnNuevoPartido.Enabled = False
            Me.BtnGuardarPartido.Enabled = False
            Me.BtnEditarPartido.Enabled = True
            Me.BtnEliminarPartido.Enabled = True

            TxtNombrePartido.Enabled = True

        End If
    End Sub

    Private Sub CmbDpt_SelectedIndexChanged(sender As Object, e As EventArgs) Handles CmbDpt.SelectedIndexChanged
        If CmbDpt.SelectedIndex >= 0 Then
            Dim selectedItem As Object = CmbDpt.SelectedItem
            Dim selectedValue As Integer = selectedItem.Value
            CmbMuni.SelectedIndex = -1
            Call ObtenerMunicipios(selectedValue)
        End If
    End Sub

    Private Sub BtnCargar_Click(sender As Object, e As EventArgs) Handles BtnCargar.Click
        ' Declaración de variables
        Dim filename As String
        Dim openfiler As New OpenFileDialog

        ' Configuración del cuadro de diálogo para abrir archivos de imagen
        With openfiler
            .InitialDirectory = My.Computer.FileSystem.SpecialDirectories.MyPictures
            .Filter = "Archivos de imagen|*.jpg;*.png;*.bmp;*.gif|Todos los archivos|*.*"
            .FilterIndex = 1
            .RestoreDirectory = False
        End With

        ' Mostrar el cuadro de diálogo para seleccionar un archivo
        If openfiler.ShowDialog = Windows.Forms.DialogResult.OK Then
            ' Obtener la ruta del archivo seleccionado
            filename = openfiler.FileName

            ' Verificar si el archivo existe
            If Not System.IO.File.Exists(filename) Then
                ' Mostrar mensaje de error si el archivo no existe
                MessageBox.Show("El archivo seleccionado no existe.")
            Else
                Try
                    ' Cargar la imagen en el PictureBox y ajustar su tamaño para que se ajuste al control
                    Me.ImgCandidatos.Image = Image.FromFile(filename)
                    Me.ImgCandidatos.SizeMode = PictureBoxSizeMode.StretchImage
                Catch ex As Exception
                    ' Mostrar mensaje de error si ocurre algún problema al cargar la imagen
                    MessageBox.Show("Ocurrió un error al cargar la imagen: " & ex.Message)
                End Try
            End If
        End If
    End Sub

End Class