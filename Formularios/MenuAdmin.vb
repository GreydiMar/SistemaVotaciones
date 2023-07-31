Imports System.Data.SqlClient
Imports System.Drawing.Imaging
Imports System.IO

Public Class MenuAdmin

    Private _NombreUsuario As String

    Public Sub New(ByVal NombreUsuario As String)  'Constructor de la clase MenuAdmin

        ' Esta llamada es exigida por el diseñador.
        InitializeComponent()

        ' Agregue cualquier inicialización después de la llamada a InitializeComponent().
        _NombreUsuario = NombreUsuario
    End Sub

    Private Sub MenuAdmin_Load(sender As Object, e As EventArgs) Handles MyBase.Load 'Se ejecuta la cargar el formulario
        Me.Text = _NombreUsuario
        'Se llaman todos los metodos que uno quiere ejecutar al iniciar el formulario
        Call InicioCargos()
        Call ObtenerCargos()
        Call ObtenerPartidos()
        Call ObtenerDepartamentos()
        Call ObtenerCandidatos()
        Call ObtenerPersonas()

    End Sub

    Sub InicioCargos()
        'Inicializar controles de la pestaña cargos
        Me.BtnNuevoCargo.Enabled = True
        Me.BtnEditarCargo.Enabled = False
        Me.BtnGuardarCargo.Enabled = False
        Me.BtnEliminarCargo.Enabled = False
        Me.TxtNombreCargo.Enabled = False
        Me.TxtIdCargo.Clear()
        Me.TxtNombreCargo.Clear()

        'inicializar controles Partidos
        Me.BtnNuevoPartido.Enabled = True
        Me.BtnEditarPartido.Enabled = False
        Me.BtnGuardarPartido.Enabled = False
        Me.BtnEliminarPartido.Enabled = False
        Me.TxtNombrePartido.Enabled = False
        Me.TxtIdPartido.Clear()
        Me.TxtIdPartido.Clear()

        'inicializar controles Candicatos
        Me.BtnNuevoCandidato.Enabled = True
        Me.BtnGuardarCandidato.Enabled = False
        Me.BtnEditarCandidato.Enabled = False
        Me.BtnEliminarCandidato.Enabled = False
        Me.TxtIdCandidato.Enabled = False
        Me.TxtNombreCandidato.Enabled = False
        Me.CmbCargos.Enabled = False
        Me.CmbPartidos.Enabled = False
        Me.CmbDpt.Enabled = False
        Me.CmbMuni.Enabled = False
        Me.BtnCargarImagen.Enabled = False
        Me.TxtIdCandidato.Clear()
        Me.TxtNombreCandidato.Clear()
        CmbCargos.SelectedIndex = -1
        CmbPartidos.SelectedIndex = -1
        CmbDpt.SelectedIndex = -1
        CmbMuni.SelectedIndex = -1
        ImgCandidatos.Image = Nothing


        'inicializar controles Registro Nacional
        Me.BtnNuevoPersona.Enabled = True
        Me.BtnGuardarPersona.Enabled = False
        Me.BtnEditarPersona.Enabled = False
        Me.BtnEliminarPersona.Enabled = False
        Me.TxtIdPersona.Enabled = False
        Me.TxtNombrePersona.Enabled = False
        Me.TxtDniPersona.Enabled = False
        Me.CmbDptPersona.Enabled = False
        Me.CmbMuniPersona.Enabled = False
        Me.CmbAldPersona.Enabled = False

        Me.TxtIdPersona.Clear()
        Me.TxtNombrePersona.Clear()
        Me.TxtDniPersona.Clear()
        CmbDptPersona.SelectedIndex = -1
        CmbMuniPersona.SelectedIndex = -1
        CmbAldPersona.SelectedIndex = -1

    End Sub

    Private Sub BtnNuevoCargo_Click(sender As Object, e As EventArgs) Handles BtnNuevoCargo.Click
        Me.BtnNuevoCargo.Enabled = False
        Me.BtnGuardarCargo.Enabled = True
        Me.TxtNombreCargo.Enabled = True
        Me.TxtNombreCargo.Focus()
    End Sub

    Sub ObtenerCargos() 'Obtiene los cargos de la base de datos,llena el data gridView y el combobox de la pestaña candidatos

        Dim con As New SqlClient.SqlConnection(My.Settings.Votaciones) 'almacena la cadena de conexion
        con.Open()                              'Abre la conexion
        Dim reader As SqlClient.SqlDataReader         'Se declara la variable para obtener la info alamcenada en la BD

        Dim cmd As New SqlClient.SqlCommand("SELECT * FROM Cargos", con)   'Almacena la query a ejecutar
        reader = cmd.ExecuteReader         'Ejecuta la query, y el resultado se guarda en la variable reader
        DgvCargos.Rows.Clear()          'Limpia los elementos
        CmbCargos.Items.Clear()
        While reader.Read()   'Ciclo while que recorre los elementos obtenidos de la consulta 

            Dim id As Integer = reader.GetInt32(reader.GetOrdinal("Id"))    'Variables
            Dim nombre As String = reader.GetString(reader.GetOrdinal("Nombre"))
            DgvCargos.Rows.Add(id, nombre)        'Agrega una fila al datagridview
            CmbCargos.Items.Add(New With {Key .Value = id, Key .Text = nombre}) 'Agrega datos al combobox
        End While
        CmbCargos.ValueMember = "Value"      'el que se almacena
        CmbCargos.DisplayMember = "Text"     'el que se va a mostrar
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

    Sub ObtenerCandidatos()

        Dim con As New SqlClient.SqlConnection(My.Settings.Votaciones)
        con.Open()
        Dim reader As SqlClient.SqlDataReader
        Dim cmd As New SqlClient.SqlCommand("SELECT cand.Id, cand.Nombre, car.Nombre as Cargo, p.Nombre as Partido, ISNULL(Dpt.Nombre, '') as Dpt, ISNULL(Muni.Nombre, '') as Muni, cand.Imagen FROM Candidatos AS cand INNER JOIN Cargos AS car ON cand.CargoId = car.Id INNER JOIN Partidos AS p ON cand.PartidoId = p.Id LEFT JOIN Departamento AS Dpt ON cand.DepartamentoId = Dpt.Id LEFT JOIN Municipio AS Muni ON cand.MunicipioId = Muni.Id", con)

        reader = cmd.ExecuteReader
        DGVCandidatos.Rows.Clear()

        While reader.Read()
            Dim id As Integer = reader.GetInt32(reader.GetOrdinal("Id"))
            Dim nombre As String = reader.GetString(reader.GetOrdinal("Nombre"))
            Dim cargo As String = reader.GetString(reader.GetOrdinal("Cargo"))
            Dim partido As String = reader.GetString(reader.GetOrdinal("Partido"))
            Dim dpt As String = reader.GetString(reader.GetOrdinal("Dpt"))
            Dim muni As String = reader.GetString(reader.GetOrdinal("Muni"))
            Dim ordinal As Integer = reader.GetOrdinal("Imagen")
            Dim imagen As Byte() = DirectCast(reader.GetValue(ordinal), Byte())

            DGVCandidatos.Rows.Add(id, nombre, cargo, partido, dpt, muni, imagen)
        End While

        con.Close()
    End Sub

    Sub ObtenerDepartamentos()

        Dim con As New SqlClient.SqlConnection(My.Settings.Votaciones)
        con.Open()
        Dim reader As SqlClient.SqlDataReader

        Dim cmd As New SqlClient.SqlCommand("SELECT * FROM Departamento", con)
        reader = cmd.ExecuteReader

        CmbDpt.Items.Clear()
        CmbDptPersona.Items.Clear()
        While reader.Read()

            Dim id As Integer = reader.GetInt32(reader.GetOrdinal("Id"))
            Dim nombre As String = reader.GetString(reader.GetOrdinal("Nombre"))
            CmbDpt.Items.Add(New With {Key .Value = id, Key .Text = nombre})
            CmbDptPersona.Items.Add(New With {Key .Value = id, Key .Text = nombre})
        End While
        CmbDpt.ValueMember = "Value"
        CmbDpt.DisplayMember = "Text"
        CmbDptPersona.ValueMember = "Value"
        CmbDptPersona.DisplayMember = "Text"
        con.Close()
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


    Sub ObtenerAldeas(IdMuni As String)
        Dim con As New SqlClient.SqlConnection(My.Settings.Votaciones)
        con.Open()
        Dim reader As SqlClient.SqlDataReader

        Dim cmd As New SqlClient.SqlCommand("SELECT * FROM Aldea Where municipioId = ' " & IdMuni & "' ", con)
        reader = cmd.ExecuteReader
        Me.CmbAldPersona.Items.Clear()
        While reader.Read()

            Dim id As Integer = reader.GetInt32(reader.GetOrdinal("Id"))
            Dim nombre As String = reader.GetString(reader.GetOrdinal("Nombre"))
            Me.CmbAldPersona.Items.Add(New With {Key .Value = id, Key .Text = nombre})
        End While
        Me.CmbAldPersona.ValueMember = "Value"
        Me.CmbAldPersona.DisplayMember = "Text"
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

    Private Sub CmbDpt_SelectedIndexChanged(sender As Object, e As EventArgs) Handles CmbDpt.SelectedIndexChanged  'CUando cambia la seleccion el combobox del departamento
        If CmbDpt.SelectedIndex >= 0 Then   'Valida si hay un elemento seleccionado
            Dim selectedItem As Object = CmbDpt.SelectedItem
            Dim selectedValue As Integer = selectedItem.Value
            CmbMuni.SelectedIndex = -1   'Se resetean los datos
            Call ObtenerMunicipios(selectedValue, Me.CmbMuni)
        End If
    End Sub


    Private Sub CmbCargos_SelectedIndexChanged(sender As Object, e As EventArgs) Handles CmbCargos.SelectedIndexChanged
        If CmbCargos.SelectedIndex >= 0 Then
            Dim selectedItem As Object = CmbCargos.SelectedItem
            Dim selectedText As String = selectedItem.Text
            Me.CmbDpt.SelectedIndex = -1
            Me.CmbMuni.SelectedIndex = -1
            Me.CmbDpt.Visible = selectedText = "DIPUTADO" Or selectedText = "ALCALDE"
            Me.LblDptCmb.Visible = selectedText = "DIPUTADO" Or selectedText = "ALCALDE"
            Me.CmbMuni.Visible = selectedText = "ALCALDE"
            Me.LblMuniCmb.Visible = selectedText = "ALCALDE"
        End If
    End Sub

    Private Sub BtnNuevoCandidato_Click(sender As Object, e As EventArgs) Handles BtnNuevoCandidato.Click
        Me.BtnNuevoCandidato.Enabled = False
        Me.BtnGuardarCandidato.Enabled = True
        Me.TxtIdCandidato.Enabled = True
        Me.TxtNombreCandidato.Enabled = True
        Me.CmbCargos.Enabled = True
        Me.CmbPartidos.Enabled = True
        Me.CmbDpt.Enabled = True
        Me.CmbMuni.Enabled = True
        Me.BtnCargarImagen.Enabled = True

        Me.TxtNombreCandidato.Clear()
        CmbCargos.SelectedIndex = -1
        CmbPartidos.SelectedIndex = -1
        CmbDpt.SelectedIndex = -1
        CmbMuni.SelectedIndex = -1
        ImgCandidatos.Image = Nothing
    End Sub

    Private Sub BtnCargarImagen_Click(sender As Object, e As EventArgs) Handles BtnCargarImagen.Click
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

    Private Sub BtnGuardarCandidato_Click(sender As Object, e As EventArgs) Handles BtnGuardarCandidato.Click
        If validarCandidato() > 0 Then  'LLama el metodo que valida si hay campos vacios
            Return
        End If

        Dim dpt, muni, cargoId, partidoId As Integer  'Declara las variables 
        Dim nombre As String = Me.TxtNombreCandidato.Text

        If CmbDpt.Visible Then    'Valida si el combobox de departamento es visible, si es visible es que hay campos en el
            Dim selectedItem As Object = CmbDpt.SelectedItem
            dpt = selectedItem.Value
        Else
            dpt = 0
        End If

        If CmbMuni.Visible Then
            Dim selectedItem As Object = CmbMuni.SelectedItem
            muni = selectedItem.Value
        Else
            muni = 0
        End If

        Dim selectedItemCargo As Object = CmbCargos.SelectedItem
        cargoId = selectedItemCargo.Value
        Dim selectedItemPartido As Object = CmbPartidos.SelectedItem
        partidoId = selectedItemPartido.Value

        If GuardarOActualizarCandidatos(nombre, cargoId, partidoId, dpt, muni, Me.ImgCandidatos) Then 'Llama al metodo y valida, y le pasa todo los valores que va a almacenar
            MessageBox.Show("Candidato insertado correctamente.", "Éxito", MessageBoxButtons.OK, MessageBoxIcon.Information)
            Call InicioCargos()
            Call ObtenerCandidatos()
        Else
            MessageBox.Show("No se pudo insertar el candidato.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error)
        End If


    End Sub

    Private Function GuardarOActualizarCandidatos(nombre As String, cargoId As Integer, partidoId As Integer, dpt As Integer, muni As Integer, pictureBox As PictureBox, Optional isUpdating As Boolean = False, Optional id As Integer = 0) As Boolean
        ' Obtener el arreglo de bytes de la imagen
        Dim imageData As Byte() = ArregloImagen(pictureBox)

        ' Crear una conexión a la base de datos SQL Server
        Using connection As New SqlClient.SqlConnection(My.Settings.Votaciones)

            ' Abrir la conexión a la base de datos
            connection.Open()

            ' Crear una consulta SQL para insertar o actualizar el registro en la tabla Candidatos
            Dim query As String
            If isUpdating Then
                query = "UPDATE Candidatos SET Nombre = @Nombre, CargoId = @CargoId, PartidoId = @PartidoId, MunicipioId = @MuniId, DepartamentoId = @DptId, Imagen = @Imagen WHERE Id = @Id"
            Else
                query = "INSERT INTO Candidatos (Nombre, CargoId, PartidoId, MunicipioId, DepartamentoId, Imagen) VALUES (@Nombre, @CargoId, @PartidoId, @MuniId, @DptId, @Imagen)"
            End If

            ' Crear un comando SQL para ejecutar la consulta
            Using command As New SqlCommand(query, connection)
                ' Agregar los parámetros al comando y asignarles los valores correspondientes
                If isUpdating Then
                    command.Parameters.AddWithValue("@Id", id)
                End If
                command.Parameters.AddWithValue("@Nombre", nombre)
                command.Parameters.AddWithValue("@CargoId", cargoId)
                command.Parameters.AddWithValue("@PartidoId", partidoId)

                ' Validar si muni es igual a cero
                If muni = 0 Then
                    ' Si muni es igual a cero, agregar el parámetro como DBNull.Value
                    command.Parameters.AddWithValue("@MuniId", DBNull.Value)
                Else
                    ' Si muni no es igual a cero, agregar el parámetro con su valor correspondiente
                    command.Parameters.AddWithValue("@MuniId", muni)
                End If

                ' Validar si dpt es igual a cero
                If dpt = 0 Then
                    ' Si dpt es igual a cero, agregar el parámetro como DBNull.Value
                    command.Parameters.AddWithValue("@DptId", DBNull.Value)
                Else
                    ' Si dpt no es igual a cero, agregar el parámetro con su valor correspondiente
                    command.Parameters.AddWithValue("@DptId", dpt)
                End If

                command.Parameters.AddWithValue("@Imagen", imageData)

                ' Ejecutar la consulta SQL y obtener el número de filas afectadas
                Dim rowsAffected As Integer = command.ExecuteNonQuery()

                ' Devolver True si se insertó o actualizó al menos un registro, de lo contrario devolver False
                Return rowsAffected > 0
            End Using
        End Using
    End Function


    Private Function ArregloImagen(pictureBox As PictureBox) As Byte() 'Este metodo recibe el control donde se encuentra una imagen y la convierte a un arreglo byte
        ' Obtener la imagen del PictureBox
        Dim image As Image = pictureBox.Image

        ' Crear un MemoryStream para almacenar los datos de la imagen
        Using stream As New MemoryStream()
            ' Guardar la imagen en el MemoryStream en formato JPEG
            image.Save(stream, ImageFormat.Jpeg)

            ' Devolver el contenido del MemoryStream como un arreglo de bytes
            Return stream.ToArray()
        End Using
    End Function

    Private Sub DGVCandidatos_DoubleClick(sender As Object, e As EventArgs) Handles DGVCandidatos.DoubleClick

        ' Obtener la fila seleccionada en el DataGridView
        Dim filaSeleccionada As DataGridViewRow = DGVCandidatos.CurrentRow

        ' Verificar si hay una fila seleccionada
        If filaSeleccionada IsNot Nothing Then
            ' Obtener el valor de la primera columna de la fila seleccionada
            Dim id As Object = filaSeleccionada.Cells(0).Value
            Dim nombre As Object = filaSeleccionada.Cells(1).Value
            Dim cargo As Object = filaSeleccionada.Cells(2).Value
            Dim partido As Object = filaSeleccionada.Cells(3).Value
            Dim dpt As Object = filaSeleccionada.Cells(4).Value
            Dim muni As Object = filaSeleccionada.Cells(5).Value
            Dim img As Object = filaSeleccionada.Cells(6).Value

            Me.TxtIdCandidato.Text = id
            Me.TxtNombreCandidato.Text = nombre
            Me.CmbCargos.Text = cargo
            Me.CmbPartidos.Text = partido
            Me.CmbDpt.Text = dpt
            Me.CmbMuni.Text = muni

            If TypeOf img Is Byte() Then   'Toma el array de byte, y lo convierte en imagen y lo agrega al picturebox
                Dim imageData As Byte() = DirectCast(img, Byte())
                Dim ms As New MemoryStream(imageData)
                ImgCandidatos.Image = Image.FromStream(ms)
                ImgCandidatos.SizeMode = PictureBoxSizeMode.Zoom
            End If

            Me.BtnNuevoCandidato.Enabled = False
            Me.BtnGuardarCandidato.Enabled = False
            Me.BtnEditarCandidato.Enabled = True
            Me.BtnEliminarCandidato.Enabled = True
            Me.TxtNombreCandidato.Enabled = True
            Me.CmbCargos.Enabled = True
            Me.CmbPartidos.Enabled = True
            Me.CmbDpt.Enabled = True
            Me.CmbMuni.Enabled = True
            Me.BtnCargarImagen.Enabled = True
        End If

    End Sub

    Private Sub TabControl1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles TabControl1.SelectedIndexChanged
        Call InicioCargos()
    End Sub

    Private Sub BtnEditarCandidato_Click(sender As Object, e As EventArgs) Handles BtnEditarCandidato.Click
        If validarCandidato() > 0 Then
            Return
        End If

        Dim dpt, muni, cargoId, partidoId, id As Integer
        Dim nombre As String = Me.TxtNombreCandidato.Text

        If CmbDpt.Visible Then
            Dim selectedItem As Object = CmbDpt.SelectedItem
            dpt = selectedItem.Value
        Else
            dpt = 0
        End If

        If CmbMuni.Visible Then
            Dim selectedItem As Object = CmbMuni.SelectedItem
            muni = selectedItem.Value
        Else
            muni = 0
        End If

        Dim selectedItemCargo As Object = CmbCargos.SelectedItem
        cargoId = selectedItemCargo.Value
        Dim selectedItemPartido As Object = CmbPartidos.SelectedItem
        partidoId = selectedItemPartido.Value
        id = Me.TxtIdCandidato.Text

        If GuardarOActualizarCandidatos(nombre, cargoId, partidoId, dpt, muni, Me.ImgCandidatos, True, id) Then
            MessageBox.Show("Candidato editado correctamente.", "Éxito", MessageBoxButtons.OK, MessageBoxIcon.Information)
            Call InicioCargos()
            Call ObtenerCandidatos()
        Else
            MessageBox.Show("No se pudo editar el candidato.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error)
        End If
    End Sub

    Function validarCandidato() As Integer  'Valida que no hayan campos vacios en la pestaña de guaradar o actualizar
        Dim e As Integer = 0   'Declara una varaible en 0 y se encuentra uno vacio suma la variable

        If Trim(Me.TxtNombreCandidato.Text).Length = 0 Then  'Hace las validaciones por cada campo 
            MessageBox.Show("Ingrese el nombre del candidato.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error)
            Me.TxtNombreCandidato.Focus()
            e += 1

        ElseIf Me.CmbCargos.SelectedIndex = -1 Then
            MessageBox.Show("Seleccione el cargo a ocupar.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error)
            Me.CmbCargos.Focus()
            e += 1

        ElseIf Me.CmbPartidos.SelectedIndex = -1 Then
            MessageBox.Show("Seleccione el partido que representa.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error)
            Me.CmbPartidos.Focus()
            e += 1

        ElseIf Me.CmbDpt.SelectedIndex = -1 And Me.CmbDpt.Visible Then
            MessageBox.Show("Seleccione un departamento.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error)
            Me.CmbDpt.Focus()
            e += 1

        ElseIf Me.CmbMuni.SelectedIndex = -1 And Me.CmbMuni.Visible Then
            MessageBox.Show("Seleccione un municipio.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error)
            Me.CmbMuni.Focus()
            e += 1

        ElseIf Me.ImgCandidatos.Image Is Nothing Then
            MessageBox.Show("Cargue la foto del candidato..", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error)
            e += 1

        End If
        validarCandidato = e  'Retorna la variable e
    End Function

    Private Sub BtnEliminarCandidato_Click(sender As Object, e As EventArgs) Handles BtnEliminarCandidato.Click
        Dim result As DialogResult = MessageBox.Show("¿Desea eliminar el candidato seleccionado?", "Confirmación", MessageBoxButtons.YesNo, MessageBoxIcon.Question)

        If result = DialogResult.Yes Then
            Dim query As String = "Delete Candidatos Where Id = '" & Me.TxtIdCandidato.Text & "' "

            If DB(query) > 0 Then
                MessageBox.Show("Registro eliminado correctamente.", "Éxito", MessageBoxButtons.OK, MessageBoxIcon.Information)
                Me.TxtNombrePartido.Clear()
                Me.TxtIdPartido.Clear()
                Call ObtenerCandidatos()
                Call InicioCargos()
            Else    'Valida la insercción, si es 0 es incorrecto
                MessageBox.Show("Hubo un error al eliminar el partido", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error)
            End If
        End If
    End Sub

    Private Sub CmbDptPersona_SelectedIndexChanged(sender As Object, e As EventArgs) Handles CmbDptPersona.SelectedIndexChanged
        If CmbDptPersona.SelectedIndex >= 0 Then
            Dim selectedItem As Object = CmbDptPersona.SelectedItem
            Dim selectedValue As Integer = selectedItem.Value
            CmbMuniPersona.SelectedIndex = -1
            CmbAldPersona.SelectedIndex = -1
            Call ObtenerMunicipios(selectedValue, Me.CmbMuniPersona)
        End If
    End Sub

    Private Sub CmbMuniPersona_SelectedIndexChanged(sender As Object, e As EventArgs) Handles CmbMuniPersona.SelectedIndexChanged
        If CmbMuniPersona.SelectedIndex >= 0 Then
            Dim selectedItem As Object = CmbMuniPersona.SelectedItem
            Dim selectedValue As Integer = selectedItem.Value
            CmbAldPersona.SelectedIndex = -1
            Call ObtenerAldeas(selectedValue)
        End If
    End Sub

    Private Sub BtnNuevoPersona_Click(sender As Object, e As EventArgs) Handles BtnNuevoPersona.Click
        Me.BtnNuevoPersona.Enabled = False
        Me.BtnGuardarPersona.Enabled = True

        Me.TxtNombrePersona.Enabled = True

        Me.CmbDptPersona.Enabled = True
        Me.TxtDniPersona.Enabled = True
        Me.CmbMuniPersona.Enabled = True
        Me.CmbAldPersona.Enabled = True

        Me.TxtDniPersona.Clear()
        Me.TxtNombrePersona.Clear()
        CmbDptPersona.SelectedIndex = -1
        CmbMuniPersona.SelectedIndex = -1
        CmbAldPersona.SelectedIndex = -1

    End Sub

    Function validarPersona() As Integer
        Dim e As Integer = 0

        If Trim(Me.TxtNombrePersona.Text).Length = 0 Then
            MessageBox.Show("Ingrese el nombre de la persona.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error)
            Me.TxtNombrePersona.Focus()
            e += 1

        ElseIf Trim(Me.TxtDniPersona.Text).Length = 0 Then
            MessageBox.Show("Ingrese el numero de identidad de la persona.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error)
            Me.CmbCargos.Focus()
            e += 1

        ElseIf Me.CmbDptPersona.SelectedIndex = -1 Then
            MessageBox.Show("Seleccione el departamento de la persona.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error)
            Me.CmbDpt.Focus()
            e += 1

        ElseIf Me.CmbMuniPersona.SelectedIndex = -1 Then
            MessageBox.Show("Seleccione el municipio de la persona.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error)
            Me.CmbMuni.Focus()
            e += 1

        ElseIf Me.CmbAldPersona.SelectedIndex = -1 Then
            MessageBox.Show("Seleccione la aldea de la persona.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error)
            Me.CmbMuni.Focus()
            e += 1
        End If
        validarPersona = e
    End Function

    Private Sub BtnGuardarPersona_Click(sender As Object, e As EventArgs) Handles BtnGuardarPersona.Click
        If validarPersona() > 0 Then
            Return
        End If

        Dim selectedItem As Object = CmbAldPersona.SelectedItem
        Dim ald As Integer = selectedItem.Value

        Dim query As String = "INSERT INTO Votantes (Nombre, NumeroIdentificacion, AldeaId) Values ('" & Me.TxtNombrePersona.Text & "', '" & Me.TxtDniPersona.Text & "', '" & ald & "')"

        If DB(query) > 0 Then 'Valida la insercción, si es mayor que 1 es correcto
            MessageBox.Show("Persona registrada exitosamente.", "Éxito", MessageBoxButtons.OK, MessageBoxIcon.Information)

            Call ObtenerPersonas()
            Call InicioCargos()
        Else    'Valida la insercción, si es 0 es incorrecto
            MessageBox.Show("No se pudo registrar la persona.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error)
        End If
    End Sub

    Sub ObtenerPersonas()

        Dim con As New SqlClient.SqlConnection(My.Settings.Votaciones)
        con.Open()
        Dim reader As SqlClient.SqlDataReader

        Dim cmd As New SqlClient.SqlCommand("SELECT v.Id, v.Nombre, v.NumeroIdentificacion AS DNI, a.Nombre AS Aldea, m.Nombre as Municipio, d.Nombre as Departamento FROM Votantes AS v INNER JOIN Aldea AS a ON v.AldeaId = a.Id INNER JOIN Municipio AS m ON a.MunicipioId = m.Id INNER JOIN Departamento AS d ON m.DepartamentoId = d.Id", con)
        reader = cmd.ExecuteReader
        DgvPersonas.Rows.Clear()

        While reader.Read()

            Dim id As Integer = reader.GetInt32(reader.GetOrdinal("Id"))
            Dim nombre As String = reader.GetString(reader.GetOrdinal("Nombre"))
            Dim dni As String = reader.GetString(reader.GetOrdinal("DNI"))
            Dim ald As String = reader.GetString(reader.GetOrdinal("Aldea"))
            Dim muni As String = reader.GetString(reader.GetOrdinal("Municipio"))
            Dim dpt As String = reader.GetString(reader.GetOrdinal("Departamento"))
            DgvPersonas.Rows.Add(id, nombre, dni, dpt, muni, ald)

        End While

        con.Close()
    End Sub

    Private Sub DgvPersonas_DoubleClick(sender As Object, e As EventArgs) Handles DgvPersonas.DoubleClick


        Dim selectedRow As DataGridViewRow = DgvPersonas.CurrentRow


        If selectedRow IsNot Nothing Then

            Dim id As Object = selectedRow.Cells(0).Value
            Dim nombre As Object = selectedRow.Cells(1).Value
            Dim dni As Object = selectedRow.Cells(2).Value
            Dim dpt As Object = selectedRow.Cells(3).Value
            Dim muni As Object = selectedRow.Cells(4).Value
            Dim ald As Object = selectedRow.Cells(5).Value

            Me.TxtIdPersona.Text = id
            Me.TxtNombrePersona.Text = nombre
            Me.TxtDniPersona.Text = dni
            Me.CmbDptPersona.Text = dpt
            Me.CmbMuniPersona.Text = muni
            Me.CmbAldPersona.Text = ald

            Me.BtnNuevoPersona.Enabled = False
            Me.BtnGuardarPersona.Enabled = False
            Me.BtnEditarPersona.Enabled = True
            Me.BtnEliminarPersona.Enabled = True
            Me.TxtNombrePersona.Enabled = True
            Me.TxtDniPersona.Enabled = True
            Me.CmbDptPersona.Enabled = True
            Me.CmbMuniPersona.Enabled = True
            Me.CmbAldPersona.Enabled = True

        End If

    End Sub

    Private Sub BtnEditarPersona_Click(sender As Object, e As EventArgs) Handles BtnEditarPersona.Click
        If validarPersona() > 0 Then
            Return
        End If

        Dim selectedItem As Object = CmbAldPersona.SelectedItem
        Dim ald As Integer = selectedItem.Value

        Dim query As String = "Update Votantes set Nombre = '" & Me.TxtNombrePersona.Text & "', NumeroIdentificacion = '" & Me.TxtDniPersona.Text & "', AldeaId = '" & ald & "'  Where Id = '" & Me.TxtIdPersona.Text & "' "
        If DB(query) > 0 Then 'Valida la insercción, si es mayor que 1 es correcto
            MessageBox.Show("Persona actualizada exitosamente.", "Éxito", MessageBoxButtons.OK, MessageBoxIcon.Information)

            Call ObtenerPersonas()
            Call InicioCargos()
        Else    'Valida la insercción, si es 0 es incorrecto
            MessageBox.Show("No se pudo actualizar la persona.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error)
        End If

    End Sub

    Private Sub BtnEliminarPersona_Click(sender As Object, e As EventArgs) Handles BtnEliminarPersona.Click

        Dim result As DialogResult = MessageBox.Show("¿Desea eliminar la persona seleccionada?", "Confirmación", MessageBoxButtons.YesNo, MessageBoxIcon.Question)

        If result = DialogResult.Yes Then
            Dim query As String = "DELETE Votantes WHERE Id = " & Me.TxtIdPersona.Text

            If DB(query) > 0 Then
                MessageBox.Show("Registro eliminado correctamente.", "Éxito", MessageBoxButtons.OK, MessageBoxIcon.Information)

                Call ObtenerPersonas()
                Call InicioCargos()
            Else    'Valida la insercción, si es 0 es incorrecto
                MessageBox.Show("Hubo un error al eliminar el partido", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error)
            End If
        End If

    End Sub

    Private Sub BtnCerrarSesionP_Click(sender As Object, e As EventArgs) Handles BtnCerrarSesionP.Click
        Login.Show()
        Me.Dispose()
    End Sub

    Private Sub BtnCerrarSsionC_Click(sender As Object, e As EventArgs) Handles BtnCerrarSsionC.Click
        Login.Show()
        Me.Dispose()
    End Sub

    Private Sub BtnCerrarSesionPa_Click(sender As Object, e As EventArgs) Handles BtnCerrarSesionPa.Click
        Login.Show()
        Me.Dispose()
    End Sub

    Private Sub BtnCerrarSesionC_Click(sender As Object, e As EventArgs) Handles BtnCerrarSesionC.Click
        Login.Show()
        Me.Dispose()
    End Sub

    Private Sub TabPage1_Click(sender As Object, e As EventArgs) Handles TabPage1.Click

    End Sub
End Class