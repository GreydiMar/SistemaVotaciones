USE [Master]
GO
CREATE DATABASE Votaciones
USE [Votaciones]
GO
/****** Object:  Table [dbo].[Aldea]    Script Date: 25/07/2023 21:22:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aldea](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[MunicipioId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Candidatos]    Script Date: 25/07/2023 21:22:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Candidatos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[CargoId] [int] NOT NULL,
	[PartidoId] [int] NOT NULL,
	[MunicipioId] [int] NULL,
	[DepartamentoId] [int] NULL,
	[Imagen] [varbinary](max) NOT NULL,
 CONSTRAINT [PK__Candidat__3214EC073C9D2479] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cargos]    Script Date: 25/07/2023 21:22:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cargos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departamento]    Script Date: 25/07/2023 21:22:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departamento](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Municipio]    Script Date: 25/07/2023 21:22:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Municipio](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[DepartamentoId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partidos]    Script Date: 25/07/2023 21:22:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partidos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 25/07/2023 21:22:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Dni] [varchar](13) NOT NULL,
	[Contrasena] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Votantes]    Script Date: 25/07/2023 21:22:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Votantes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[NumeroIdentificacion] [varchar](50) NOT NULL,
	[AldeaId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Votos]    Script Date: 25/07/2023 21:22:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Votos](
	[ID] [int] NOT NULL,
	[VotanteID] [int] NOT NULL,
	[CandidatoId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Aldea] ON 
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1, N'La Ceiba', 1)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2, N'Armenia Bonito', 1)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3, N'Bonitillo', 1)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (4, N'Corozal', 1)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (5, N'Dantillo', 1)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (6, N'El Bufalo', 1)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (7, N'El Paraiso O Bataca', 1)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (8, N'El Peru', 1)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (9, N'El Pital', 1)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (10, N'La Ausencia', 1)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (11, N'La Presa', 1)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (12, N'Las Mangas', 1)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (13, N'Los Limpios', 1)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (14, N'Piedra Pintada O La Colorada', 1)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (15, N'Rio Maria', 1)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (16, N'Rio Viejo', 1)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (17, N'Sambo Creek', 1)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (18, N'Satuye', 1)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (19, N'Toncontin', 1)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (20, N'Urraco', 1)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (21, N'Yaruca', 1)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (22, N'El Porvenir', 2)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (23, N'Burs', 2)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (24, N'Caceres', 2)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (25, N'Campo Salado Barra', 2)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (26, N'Caracas', 2)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (27, N'Ceiba Mocha', 2)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (28, N'El Gancho', 2)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (29, N'El Pino', 2)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (30, N'La Ruidosa', 2)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (31, N'La Union', 2)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (32, N'Lopez Bonito', 2)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (33, N'Orotina', 2)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (34, N'San Jose De Montevideo', 2)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (35, N'Esparta', 3)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (36, N'Agua Caliente', 3)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (37, N'Barranquilla Norte', 3)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (38, N'Buenos Aires', 3)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (39, N'Campo Nuevo', 3)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (40, N'Cayo Del Venado', 3)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (41, N'Ceibita Way', 3)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (42, N'Col. Brisas De America', 3)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (43, N'Colorado Barra', 3)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (44, N'El Jazmin', 3)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (45, N'El Suspiro', 3)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (46, N'Flores De Italia', 3)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (47, N'La Guadalupe', 3)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (48, N'La Libertad', 3)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (49, N'La Tarralosa', 3)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (50, N'Las Americas No. 1', 3)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (51, N'Las Delicias', 3)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (52, N'Las Delicias Del Norte', 3)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (53, N'Las Flores De Lean', 3)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (54, N'Lombardia O La Curva', 3)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (55, N'Los Cerritos', 3)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (56, N'Mata De Guineo', 3)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (57, N'Nueva Esperanza', 3)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (58, N'Nueva ', 3)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (59, N'Paris De Lean', 3)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (60, N'Piedras De Afilar', 3)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (61, N'Rio Chiquito Norte', 3)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (62, N'Rosita', 3)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (63, N'San Jose', 3)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (64, N'Siempre Viva', 3)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (65, N'Sombra Verde', 3)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (66, N'Jutiapa', 4)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (67, N'Berlin No. 1', 4)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (68, N'Cantor', 4)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (69, N'Cefalu', 4)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (70, N'Ceiba Grande', 4)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (71, N'Corralitos', 4)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (72, N'Descombros', 4)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (73, N'El Aguacate Linea', 4)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (74, N'El Cacao', 4)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (75, N'El Diamante', 4)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (76, N'El Naranjo', 4)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (77, N'El Urraco', 4)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (78, N'El Zapotal', 4)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (79, N'El Zapote', 4)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (80, N'Entelina', 4)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (81, N'Ilamapa', 4)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (82, N'Jalan', 4)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (83, N'La Bomba', 4)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (84, N'Las Marias', 4)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (85, N'Los Olanchitos', 4)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (86, N'Nueva Armenia', 4)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (87, N'Papaloteca', 4)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (88, N'Piedras Amarillas', 4)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (89, N'Quebrada Grande', 4)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (90, N'Roma', 4)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (91, N'Salitran', 4)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (92, N'Saltos', 4)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (93, N'San Ramon', 4)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (94, N'Sonaguerita', 4)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (95, N'Subirana', 4)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (96, N'Tomala', 4)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (97, N'La Masica', 5)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (98, N'Agua Caliente', 5)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (99, N'Agua Fria', 5)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (100, N'Boca Cerrada', 5)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (101, N'Colinas', 5)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (102, N'El Desvio', 5)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (103, N'El Naranjal', 5)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (104, N'El Oro', 5)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (105, N'El Recreo', 5)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (106, N'La Cumbre', 5)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (107, N'Montenegro', 5)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (108, N'San Antonio', 5)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (109, N'San Juan Benque', 5)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (110, N'San Juan Pueblo', 5)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (111, N'San Marcos', 5)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (112, N'Santa Fe', 5)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (113, N'Soledad', 5)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (114, N'Tierra Firme O Punta De Rieles', 5)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (115, N'Tripoli', 5)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (116, N'San Francisco', 6)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (117, N'Frisco No. 1', 6)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (118, N'La Frutera', 6)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (119, N'La Llave', 6)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (120, N'Las Camelias', 6)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (121, N'Micely', 6)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (122, N'Paguales', 6)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (123, N'Rio Cuero', 6)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (124, N'Saladito', 6)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (125, N'Santa Ana', 6)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (126, N'Santia', 6)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (127, N'Santia Arriba', 6)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (128, N'Tela', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (129, N'Agua Blanca', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (130, N'Agua Chiquita', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (131, N'Barra Ulua', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (132, N'Brisas De Lean', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (133, N'Buena Vista', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (134, N'Buenos Aires No. 1', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (135, N'Buenos Aires No. 2', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (136, N'Campo Elvir', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (137, N'Cangelica O El Corozal', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (138, N'Cangeliquita Abajo', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (139, N'Cangeliquita Arriba', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (140, N'Col. Los Laureles', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (141, N'Concepcion La Florida Vieja', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (142, N'Creek Martinez', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (143, N'Champerio O El Triunfo De Esquipulas', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (144, N'El Barro O Buena Vista', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (145, N'El Cedro', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (146, N'El Desvio Del Zapote Mojiman', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (147, N'El Dorado', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (148, N'El Encanto', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (149, N'El Guano', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (150, N'El Guayabal', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (151, N'El Junco', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (152, N'El Jute', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (153, N'El Rodeo', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (154, N'El Tigre', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (155, N'El Triunfo De La Cruz', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (156, N'El Zapote No. 1', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (157, N'El Zapote No. 2', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (158, N'Kilometro Trece', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (159, N'Lancetilla', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (160, N'La Esperanza', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (161, N'La Esperanza De Santia', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (162, N'La Fortuna', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (163, N'La Ica', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (164, N'La Paz', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (165, N'La Union', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (166, N'La Yusa', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (167, N'Las Delicias', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (168, N'Las Mercedes', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (169, N'Las Metalias', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (170, N'Las Minas', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (171, N'Las Palmas', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (172, N'Las Quebradas', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (173, N'Los Cerritos', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (174, N'Melcher 17', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (175, N'Meroa Ocho', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (176, N'Meroa Rio', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (177, N'Mezapa O Santa Rosa Del Norte', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (178, N'Monte Sion', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (179, N'Morazan', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (180, N'Nombre De Dios', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (181, N'Nueva Esperanza', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (182, N'Nueva Suyapa', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (183, N'Nuevo Berlin O Las Jicoteas', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (184, N'Pajuiles', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (185, N'Peman O Uluita Adentro', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (186, N'Piedras rdas', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (187, N'Planes', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (188, N'Procon', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (189, N'Puerto Arturo', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (190, N'Rio Tinto', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (191, N'San Alejo', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (192, N'San Antonio', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (193, N'San Antonio De Villafranca', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (194, N'San Jose', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (195, N'San Juan', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (196, N'San Juan Lempira', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (197, N'Santia', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (198, N'Tarralosa', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (199, N'Toloa Adentro', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (200, N'Toloa Creek', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (201, N'Tornabe', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (202, N'Villafranca', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (203, N'Zoilabe', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (204, N'Miramar', 7)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (205, N'Arizona', 8)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (206, N'Agua Caliente O El Astillero', 8)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (207, N'Atenas De San Cristobal O Km. Diez', 8)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (208, N'Barranquilla Sur', 8)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (209, N'Col. Rio Platano', 8)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (210, N'Coloradito', 8)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (211, N'El Coco', 8)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (212, N'El Empalme', 8)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (213, N'El Retiro', 8)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (214, N'Hicaque', 8)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (215, N'Hisopo', 8)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (216, N'Jilamito Nuevo', 8)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (217, N'Jilamito Viejo', 8)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (218, N'Jilamo Nuevo', 8)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (219, N'Jilamo Viejo', 8)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (220, N'La Leona O Kilometro Doce', 8)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (221, N'Las Lomas O Uluasito', 8)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (222, N'Mezapa', 8)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (223, N'Mezapita', 8)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (224, N'Planes De Hicaque', 8)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (225, N'Rio Chiquito Sur', 8)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (226, N'San Francisco De Saco', 8)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (227, N'San Jose De Texiguat', 8)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (228, N'San Jose De Tiburon', 8)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (229, N'Santa Maria', 8)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (230, N'Sizama', 8)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (231, N'Suyapa De Lean O Mataras', 8)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (232, N'Trujillo', 9)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (233, N'Col. Aguan', 9)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (234, N'Chapagua', 9)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (235, N'El Coco No. 1', 9)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (236, N'Ilanga', 9)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (237, N'Jerico', 9)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (238, N'La Brea', 9)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (239, N'Puerto Castilla', 9)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (240, N'Tarros', 9)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (241, N'Col. Nueva Sinai', 9)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (242, N'Bo. Rio Negro', 9)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (243, N'Balfate', 10)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (244, N'Arenalosa', 10)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (245, N'Bambu', 10)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (246, N'Cuyamel', 10)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (247, N'El Cenizo', 10)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (248, N'El Porvenir', 10)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (249, N'El Satal', 10)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (250, N'El Satalito', 10)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (251, N'Las Crucitas', 10)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (252, N'Las Flores', 10)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (253, N'Las Mangas', 10)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (254, N'Limera', 10)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (255, N'Lis Lis', 10)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (256, N'Lucinda', 10)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (257, N'Planes De Bambu', 10)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (258, N'Rio Coco', 10)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (259, N'Rio Esteban', 10)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (260, N'San Luis', 10)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (261, N'Iriona Puerto', 11)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (262, N'Ciriboya', 11)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (263, N'Cusuna', 11)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (264, N'Iriona Viejo', 11)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (265, N'Las Champas U Ocotales', 11)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (266, N'Paya', 11)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (267, N'Punta De Piedra', 11)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (268, N'San Jose De La Punta', 11)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (269, N'Sangrelaya', 11)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (270, N'Sico', 11)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (271, N'Limon', 12)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (272, N'Francia', 12)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (273, N'Vallecito', 12)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (274, N'Saba', 13)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (275, N'Barranco Chele', 13)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (276, N'Campo Bohemio O Alianza', 13)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (277, N'Campo Copete', 13)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (278, N'Campo Nerones', 13)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (279, N'Campo Vally', 13)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (280, N'Ceibita', 13)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (281, N'Coop. El Esfuerzo', 13)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (282, N'El Achiote', 13)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (283, N'El Jaguillo Muerto', 13)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (284, N'Elixir', 13)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (285, N'Finca El Carmen', 13)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (286, N'Las londrinas', 13)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (287, N'Orica', 13)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (288, N'Paguales', 13)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (289, N'Palos De Agua Abajo', 13)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (290, N'Sonambula', 13)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (291, N'Tiburones', 13)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (292, N'Santa Fe', 14)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (293, N'Guadalupe', 14)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (294, N'Plan Grande', 14)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (295, N'San Antonio', 14)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (296, N'Santa Rosa De Aguan', 15)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (297, N'Vuelta Grande', 15)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (298, N'Sonaguera', 16)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (299, N'Agua Caliente', 16)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (300, N'Alto Seco', 16)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (301, N'Finca Cobana', 16)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (302, N'Col. Carlos Alberto Morazan Ocampo', 16)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (303, N'Col. El Castaðo', 16)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (304, N'Col. Wilfredo Ortiz', 16)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (305, N'Coop. Veintiuno De Noviembre', 16)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (306, N'Churrusquera', 16)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (307, N'El Cafe', 16)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (308, N'El Guayabal', 16)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (309, N'El Limon', 16)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (310, N'El Porvenir De Aida O El Berrinche', 16)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (311, N'El Sastre', 16)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (312, N'Faust', 16)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (313, N'Flores Del Este', 16)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (314, N'Flores Del Terrero', 16)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (315, N'Gioconda', 16)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (316, N'Isleta Central (Sector De Isletas)', 16)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (317, N'Juan Lazaro Abajo', 16)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (318, N'La Cubana', 16)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (319, N'La Curva De Isletas', 16)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (320, N'La Hoya Arriba', 16)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (321, N'La Presa O Juan Lazaro Arriba', 16)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (322, N'Lanza (Aida Puente Alto)', 16)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (323, N'El Escano', 16)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (324, N'Lorelay', 16)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (325, N'Lorencito', 16)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (326, N'Lucia', 16)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (327, N'Los Carrioles', 16)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (328, N'Los Planes', 16)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (329, N'Miramar', 16)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (330, N'Monte De Oro', 16)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (331, N'Parmas', 16)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (332, N'Puente Alto', 16)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (333, N'Quebrada De Arena', 16)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (334, N'Rio De Piedra', 16)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (335, N'Sabana De La Pita', 16)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (336, N'Sabana De Utila', 16)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (337, N'Tosca', 16)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (338, N'Tres Luces', 16)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (339, N'Trovador', 16)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (340, N'Utila', 16)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (341, N'Tocoa', 17)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (342, N'Cayo Sierra', 17)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (343, N'Cuaca Nueva O Jaral', 17)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (344, N'Cuaca Vieja O Cuaca Zona', 17)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (345, N'Chiripa', 17)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (346, N'El Guapinol', 17)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (347, N'Juan Antonio', 17)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (348, N'Abisinia', 17)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (349, N'La Ceibita', 17)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (350, N'La Concepcion', 17)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (351, N'Las Mangas', 17)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (352, N'Lerida', 17)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (353, N'Prieta', 17)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (354, N'Quebrada De Agua', 17)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (355, N'Quebrada De Arena', 17)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (356, N'Salama', 17)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (357, N'Taujica', 17)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (358, N'Zamora', 17)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (359, N'Nueva Vida', 17)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (360, N'Bo. Buenos Aires', 17)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (361, N'Bonito Oriental', 18)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (362, N'Corocito', 18)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (363, N'El Achiote', 18)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (364, N'El Antigual', 18)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (365, N'Feo', 18)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (366, N'La Esperanza', 18)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (367, N'Playa De Ganado', 18)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (368, N'Chapin', 18)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (369, N'San Jose Del Cinco', 18)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (370, N'Vista Hermosa', 18)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (371, N'Comayagua', 19)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (372, N'Agua Salada', 19)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (373, N'Cacahuapa', 19)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (374, N'Cantoral', 19)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (375, N'El Ciruelo', 19)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (376, N'El Guachipilin', 19)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (377, N'Concepcion Del Horno', 19)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (378, N'El Paraiso', 19)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (379, N'Plan De La Rosa', 19)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (380, N'El Portillo De La Mora', 19)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (381, N'El Resumidero', 19)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (382, N'El Sauce', 19)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (383, N'El Sitio', 19)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (384, N'El Taladro', 19)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (385, N'El Volcan', 19)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (386, N'Guacamaya', 19)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (387, N'La Cooperativa', 19)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (388, N'La Escalera', 19)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (389, N'La Flor', 19)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (390, N'La Jaguita', 19)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (391, N'La Laguna', 19)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (392, N'La Palma', 19)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (393, N'La Sampedrana', 19)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (394, N'Las Anonas', 19)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (395, N'Las Liconas', 19)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (396, N'Las Mesas', 19)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (397, N'Lomas Del Cordero', 19)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (398, N'Los Planes', 19)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (399, N'Motagua Del Roblito', 19)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (400, N'Nueva Valladolid De Capiro', 19)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (401, N'Palo Pintado', 19)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (402, N'Piedras Azules', 19)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (403, N'Planes De Churune', 19)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (404, N'Rio Blanco O San Jose', 19)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (405, N'San Antonio De Caðas', 19)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (406, N'San Antonio De La Libertad', 19)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (407, N'San Jose De Pane', 19)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (408, N'San Miguel De Selguapa', 19)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (409, N'Valle De Angeles', 19)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (410, N'Veracruz', 19)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (411, N'Lagunitas', 19)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (412, N'San Jose De La Mora', 19)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (413, N'Bo. La Cabaða', 19)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (414, N'Ajuterique', 20)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (415, N'El Misterio', 20)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (416, N'Playitas', 20)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (417, N'San Antonio Del Playon', 20)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (418, N'El Rosario', 21)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (419, N'Agua Dulcita', 21)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (420, N'Cerro Blanco', 21)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (421, N'Concepcion De Guasistagua', 21)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (422, N'El Buen Pastor', 21)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (423, N'La Laguna', 21)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (424, N'Las Huertas', 21)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (425, N'Lomas Verdes', 21)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (426, N'Los Llanitos O Leoncitos', 21)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (427, N'San Francisco De La Campa', 21)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (428, N'San Francisco De Loma Larga', 21)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (429, N'San Isidro', 21)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (430, N'San Jacinto O Carboneras', 21)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (431, N'Esquias', 22)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (432, N'El Oro Abajo', 22)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (433, N'El Playon', 22)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (434, N'Netapa', 22)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (435, N'Peladeritos', 22)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (436, N'Rancho Grande', 22)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (437, N'Rio Chiquito', 22)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (438, N'Humuya', 23)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (439, N'El Junquillo', 23)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (440, N'Travesia', 23)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (441, N'La Libertad', 24)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (442, N'Cabeceras', 24)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (443, N'Canton San Antonio', 24)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (444, N'Cuesta Del Neo', 24)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (445, N'El Higueron', 24)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (446, N'El Olvido', 24)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (447, N'El Encanto', 24)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (448, N'teras', 24)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (449, N'La Pita', 24)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (450, N'Loma Alta', 24)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (451, N'Los Alfaros', 24)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (452, N'Montaðuelas', 24)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (453, N'Plan De Alejandro', 24)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (454, N'San Andres', 24)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (455, N'San Antonio De Saque', 24)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (456, N'San Jose', 24)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (457, N'Santa Fe', 24)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (458, N'Terreritos', 24)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (459, N'Valle Bonito', 24)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (460, N'Valle De Angeles', 24)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (461, N'Vallecitos', 24)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (462, N'Zacatalitos', 24)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (463, N'Lamani', 25)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (464, N'Guachipilin', 25)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (465, N'Lagunetas', 25)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (466, N'Las Mesetas', 25)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (467, N'Mulacagua', 25)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (468, N'Ojo De Agua', 25)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (469, N'Tablazon', 25)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (470, N'Valladolid', 25)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (471, N'La Trinidad', 26)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (472, N'El Cordoncillo', 26)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (473, N'El Peðon', 26)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (474, N'Guacamaya', 26)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (475, N'Las Tierras', 26)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (476, N'Los Anises', 26)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (477, N'Tierra Blanca', 26)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (478, N'Lejamani', 27)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (479, N'Meambar', 28)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (480, N'Agua Caliente', 28)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (481, N'Chichipate', 28)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (482, N'El Aguaje', 28)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (483, N'El Buen Pastor', 28)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (484, N'El Cienegal No. 1', 28)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (485, N'El Palmital', 28)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (486, N'El Zapote', 28)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (487, N'Jicarito', 28)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (488, N'La Concepcion', 28)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (489, N'La Joya', 28)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (490, N'La Mesa', 28)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (491, N'La Pimienta', 28)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (492, N'Las Lajas', 28)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (493, N'Los Globos', 28)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (494, N'Los Planes', 28)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (495, N'Buena Vista', 28)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (496, N'Monte De Dios', 28)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (497, N'Ojo De Agua', 28)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (498, N'Potrerillos', 28)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (499, N'Pueblo Nuevo', 28)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (500, N'San Antonio De Buenos Aires', 28)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (501, N'San Isidro', 28)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (502, N'Santa Ana', 28)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (503, N'Santa Elena', 28)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (504, N'Minas De Oro', 29)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (505, N'Agua Blanca', 29)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (506, N'El Socorro', 29)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (507, N'El Zompopero', 29)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (508, N'La Hoya De La Puerta', 29)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (509, N'Las Huertas', 29)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (510, N'Minas De San Antonio', 29)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (511, N'Montecitos', 29)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (512, N'Pimientilla', 29)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (513, N'San Isidro Del Mal Paso', 29)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (514, N'Santa Cruz', 29)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (515, N'Ojos De Agua', 30)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (516, N'Agua Blanca', 30)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (517, N'Campamento De La Sierra Ojos De', 30)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (518, N'Campo Dos', 30)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (519, N'Corralitos', 30)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (520, N'El Hielo', 30)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (521, N'El Pacayal', 30)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (522, N'El Pinabetoso', 30)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (523, N'El Robledal', 30)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (524, N'La Balastrera O Buenos Aires No. 1', 30)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (525, N'La Candelaria', 30)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (526, N'La Caðada', 30)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (527, N'La Providencia', 30)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (528, N'Los Anises', 30)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (529, N'Los Dos Rios', 30)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (530, N'Los Guineos', 30)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (531, N'Portillo Grande', 30)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (532, N'San Rafael', 30)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (533, N'Nueva Esperanza', 30)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (534, N'San Francisco', 30)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (535, N'El Naranjo', 30)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (536, N'El Naranjal', 30)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (537, N'San Jeronimo', 31)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (538, N'Buena Vista', 31)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (539, N'El Chupadero O Jardines', 31)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (540, N'Jacintillos', 31)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (541, N'Jamalteca', 31)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (542, N'La Ceibita', 31)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (543, N'La Union', 31)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (544, N'Las Arenas', 31)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (545, N'Las Crucitas', 31)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (546, N'Los Manzanos', 31)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (547, N'Los Talnetes', 31)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (548, N'Ocotes Caidos', 31)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (549, N'Plan De Leones', 31)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (550, N'Potrero Sucio', 31)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (551, N'San Antonio De La Cuesta', 31)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (552, N'Talanguita', 31)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (553, N'Terrero Del Cedro', 31)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (554, N'Vallecillos', 31)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (555, N'Las Delicias', 31)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (556, N'San Jose De Comayagua', 32)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (557, N'El Calichito', 32)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (558, N'El Chaparral', 32)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (559, N'El Porvenir', 32)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (560, N'El Zarzal', 32)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (561, N'Higuerones', 32)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (562, N'Laguna Seca', 32)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (563, N'La Pimienta', 32)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (564, N'La Pita', 32)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (565, N'Las Delicias', 32)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (566, N'Los Anises', 32)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (567, N'Los Llanos De San Jose O Zunza', 32)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (568, N'Puerta Del Potrero', 32)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (569, N'Buena Vista', 32)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (570, N'San Jose Del Potrero', 33)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (571, N'El Chorro', 33)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (572, N'Minas De Plata', 33)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (573, N'Ojo De Agua', 33)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (574, N'Potreritos', 33)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (575, N'Quezalapa', 33)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (576, N'Terreritos De Las Trancas', 33)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (577, N'Terrerito De Los Coellos', 33)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (578, N'San Luis', 34)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (579, N'El Tablon', 34)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (580, N'El Tule', 34)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (581, N'Las Minitas', 34)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (582, N'Las Quebradas', 34)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (583, N'Loma Pelada', 34)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (584, N'Los Anizales', 34)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (585, N'Los Puentes', 34)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (586, N'Los Tres Palos', 34)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (587, N'Los Zacatales', 34)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (588, N'El Plan Grande', 34)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (589, N'Quebrada Amarilla', 34)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (590, N'Trojes', 34)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (591, N'San Sebastian', 35)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (592, N'El Ojo De Agua', 35)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (593, N'La Peðita', 35)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (594, N'Siguatepeque', 36)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (595, N'Agua Dulce', 36)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (596, N'Aguas Del Padre', 36)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (597, N'Buena Vista De Rio Bonito', 36)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (598, N'Chorreritas', 36)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (599, N'El Achiote', 36)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (600, N'El Caobanal', 36)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (601, N'El Pacayal', 36)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (602, N'El Pito', 36)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (603, N'El Porvenir', 36)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (604, N'El Potreron', 36)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (605, N'El Rincon', 36)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (606, N'El Sauce', 36)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (607, N'El Socorro', 36)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (608, N'El Zapote', 36)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (609, N'Guarajao Nuevo', 36)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (610, N'Guarajao Viejo No. 1', 36)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (611, N'La Crucita', 36)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (612, N'La Union Del Sute', 36)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (613, N'Ojo De Agua', 36)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (614, N'Potrerillos', 36)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (615, N'Rio Bonito', 36)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (616, N'San Antonio De La Cuchilla', 36)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (617, N'San Ignacio', 36)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (618, N'San Jose De La Cuesta', 36)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (619, N'San Jose De Los Chaguites', 36)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (620, N'Santa Cruz Del Dulce', 36)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (621, N'Santa Rosita', 36)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (622, N'Taupaz', 36)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (623, N'Villa De San Antonio', 37)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (624, N'Flores', 37)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (625, N'Las Botijas', 37)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (626, N'Los Cimientos', 37)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (627, N'Potrero Grande O Qda. Honda', 37)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (628, N'Proteccion', 37)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (629, N'Las Lajas', 38)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (630, N'Buen Pastor', 38)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (631, N'Dulce Nombre', 38)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (632, N'La Dalia', 38)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (633, N'Las Piðas', 38)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (634, N'Los Portones', 38)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (635, N'Nueva Concepcion', 38)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (636, N'San Manuel De La Parra', 38)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (637, N'Santa Rosa', 38)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (638, N'Valle Sucio', 38)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (639, N'El Pericon', 38)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (640, N'Taulabe', 39)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (641, N'Buena Vista De Varsovia', 39)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (642, N'Buenos Aires', 39)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (643, N'Camalotales', 39)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (644, N'Cerro Azul', 39)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (645, N'Choloma', 39)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (646, N'El Carrizal', 39)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (647, N'El Cerron', 39)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (648, N'El Palmichal O La Fatima', 39)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (649, N'Jaitique', 39)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (650, N'Jardines', 39)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (651, N'La Anstura', 39)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (652, N'La Mision', 39)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (653, N'La Union De San Antonio', 39)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (654, N'Las Alejandras', 39)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (655, N'Las Conchas', 39)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (656, N'Las Lajas', 39)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (657, N'Montaðuelas', 39)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (658, N'Ocoman', 39)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (659, N'Quebraditas', 39)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (660, N'San Antonio De Yure', 39)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (661, N'Terrero Blanco', 39)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (662, N'Vacadilla', 39)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (663, N'Varsovia', 39)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (664, N'Santa Rosa De Copan', 40)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (665, N'Calzontes', 40)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (666, N'Conal Trincheras', 40)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (667, N'El Callejon', 40)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (668, N'El Carrizal', 40)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (669, N'El Conal', 40)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (670, N'El Corralito', 40)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (671, N'El Derrumbo', 40)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (672, N'El Periconal', 40)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (673, N'El Salitre', 40)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (674, N'El Rodeo', 40)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (675, N'El Rosario', 40)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (676, N'El Salitrillo', 40)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (677, N'El Zapote', 40)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (678, N'Inshuma', 40)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (679, N'Las Delicias', 40)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (680, N'Las Sandias', 40)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (681, N'Oromilaca', 40)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (682, N'Potrerillos', 40)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (683, N'Quezailica', 40)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (684, N'Yarushin', 40)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (685, N'Cabaðas', 41)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (686, N'Barbasqueadero', 41)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (687, N'Descombros', 41)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (688, N'El Guayabo', 41)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (689, N'El Llano', 41)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (690, N'Guarumal', 41)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (691, N'Ingenios', 41)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (692, N'La Cumbre De San Juan', 41)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (693, N'La Union De San Juan', 41)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (694, N'Las Juntas No. 1', 41)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (695, N'Las Peðas No. 1', 41)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (696, N'Las Lomas De La Esperanza', 41)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (697, N'San Antonio De Miramar', 41)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (698, N'Mirasolito De La Esperanza', 41)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (699, N'Mirasolito De Rio Negro', 41)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (700, N'Motagua', 41)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (701, N'Pinalito', 41)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (702, N'Platanares', 41)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (703, N'Pueblo Viejo', 41)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (704, N'Rio Negro', 41)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (705, N'San Jose De Miramar', 41)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (706, N'Concepcion', 42)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (707, N'Aldea Nueva', 42)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (708, N'Baðaderos', 42)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (709, N'Barbascales', 42)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (710, N'Candelaria', 42)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (711, N'Las Delicias', 42)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (712, N'Las Pavas', 42)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (713, N'Piedras Coloradas', 42)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (714, N'Plan Grande', 42)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (715, N'San Jose De Las Quebraditas', 42)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (716, N'San Juan', 42)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (717, N'Vertientes', 42)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (718, N'Copan Ruinas', 43)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (719, N'Agua Buena Arriba', 43)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (720, N'Agua Caliente', 43)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (721, N'Barbasqueadero', 43)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (722, N'Boca Del Monte', 43)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (723, N'Buena Vista', 43)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (724, N'Buenos Aires', 43)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (725, N'Carrizalon', 43)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (726, N'Ceiba Primera', 43)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (727, N'Ceiba Segunda', 43)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (728, N'Colon Jubuco', 43)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (729, N'Corralito', 43)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (730, N'El Cisne', 43)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (731, N'El Cordoncillo', 43)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (732, N'El Chical', 43)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (733, N'El Chilar O Agua Zarca', 43)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (734, N'El Chispal', 43)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (735, N'El Encino', 43)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (736, N'El Horno', 43)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (737, N'El Ocote', 43)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (738, N'El Porvenir Primero', 43)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (739, N'El Porvenir Segundo', 43)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (740, N'El Quebracho', 43)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (741, N'El Salitron', 43)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (742, N'El Tesorito', 43)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (743, N'El Triunfo', 43)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (744, N'Hacda. Grande', 43)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (745, N'Jubucon', 43)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (746, N'La Esperanza', 43)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (747, N'La Estanzuela', 43)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (748, N'La Laguna', 43)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (749, N'Las Delicias', 43)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (750, N'Las Flores', 43)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (751, N'Los Arcos', 43)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (752, N'Llanetios', 43)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (753, N'Monte De Los Negros', 43)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (754, N'Montecristo', 43)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (755, N'Nueva Armenia', 43)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (756, N'Ostuman', 43)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (757, N'San Antonio Tapesco', 43)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (758, N'San Cristobal', 43)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (759, N'San Francisco', 43)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (760, N'San Isidro', 43)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (761, N'San Rafael', 43)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (762, N'Santa Cruz De Virginia', 43)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (763, N'Santa Rosita', 43)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (764, N'Sesesmil I', 43)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (765, N'Sesesmil Ii', 43)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (766, N'Union Cedral', 43)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (767, N'Virginia No. 1', 43)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (768, N'Corquin', 44)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (769, N'Agua Caliente', 44)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (770, N'Boca Del Monte', 44)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (771, N'Capucas', 44)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (772, N'El Carrizal', 44)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (773, N'Gualme', 44)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (774, N'Jimilile', 44)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (775, N'Las Casitas', 44)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (776, N'Potrerillos', 44)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (777, N'Cucuyagua', 45)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (778, N'Cartagua', 45)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (779, N'El Nispero', 45)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (780, N'El Portillo', 45)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (781, N'El Transito', 45)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (782, N'Gualtaya', 45)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (783, N'Ojos De Agua', 45)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (784, N'San Jose De Las Palmas', 45)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (785, N'Dolores', 46)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (786, N'Agua Buena', 46)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (787, N'El Balsamo O La Canteada', 46)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (788, N'El Camalote', 46)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (789, N'Joyas Galanas', 46)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (790, N'Pasquingual', 46)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (791, N'Plan Del Naranjo', 46)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (792, N'San Antonio', 46)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (793, N'Vega Redonda O San Antonio De Flores', 46)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (794, N'Yaruconte', 46)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (795, N'Dulce Nombre', 47)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (796, N'Agua Buena', 47)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (797, N'El Limon', 47)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (798, N'El Prado De La Cruz', 47)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (799, N'El Zapote', 47)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (800, N'Las Caleras O El Horno', 47)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (801, N'San Jeronimo', 47)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (802, N'El Paraiso', 48)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (803, N'Agua Buena', 48)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (804, N'Buena Vista', 48)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (805, N'El Charcon', 48)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (806, N'El Infiernillo O Nuevo Triunfo', 48)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (807, N'El Limon', 48)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (808, N'El Manacal', 48)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (809, N'El Manguito', 48)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (810, N'El Tesoro', 48)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (811, N'La Cumbre', 48)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (812, N'La Laguna', 48)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (813, N'La Peða', 48)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (814, N'La Pimienta', 48)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (815, N'La Playona', 48)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (816, N'Las Delicias Del Chispal', 48)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (817, N'Las Flores', 48)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (818, N'Las Juntas', 48)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (819, N'Las Orquideas O El Astillero', 48)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (820, N'Libertad Nueva', 48)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (821, N'Libertad Vieja', 48)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (822, N'Naranjito', 48)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (823, N'Rio Lindo', 48)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (824, N'San Antonio De Las Crucitas', 48)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (825, N'San Cristobal', 48)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (826, N'San Marcos', 48)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (827, N'Santa Cruz', 48)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (828, N'Santa Lucia', 48)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (829, N'Florida', 49)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (830, N'Arranca Barbara', 49)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (831, N'Barranca Grita', 49)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (832, N'Buena Vista', 49)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (833, N'Buenos Aires', 49)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (834, N'Concepcion De La Barranca', 49)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (835, N'El Dormitorio No. 2', 49)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (836, N'El Espiritu Santo', 49)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (837, N'El Jardin', 49)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (838, N'El Nuevo Porvenir', 49)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (839, N'El Porvenir O San Marcos', 49)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (840, N'El Rosario O Zompopero', 49)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (841, N'Gritaderos', 49)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (842, N'La Cumbre De Las Flores', 49)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (843, N'La Elencia', 49)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (844, N'La Elencita', 49)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (845, N'La Laguna De San Jose', 49)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (846, N'La Ruidosa', 49)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (847, N'La Sierra', 49)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (848, N'La Union', 49)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (849, N'Las Caðas', 49)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (850, N'Las Flores De Techin', 49)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (851, N'Las Palmeras De La Planada', 49)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (852, N'Los Dubones', 49)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (853, N'Los Lesquines', 49)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (854, N'Pastoreadero', 49)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (855, N'Plancitos O Berlin', 49)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (856, N'Potrerillos', 49)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (857, N'Pueblo Nuevo', 49)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (858, N'Rastrojitos', 49)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (859, N'San Antonio', 49)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (860, N'San Jose De La Frontera', 49)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (861, N'San Lorenzo De Techin', 49)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (862, N'San Rafael', 49)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (863, N'Siete Cuchillas', 49)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (864, N'La Jigua', 50)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (865, N'Aldea Nueva', 50)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (866, N'Chepelares', 50)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (867, N'El Campanario', 50)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (868, N'El Puente ascoran', 50)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (869, N'El Rincon O San Francisco', 50)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (870, N'La Colmena', 50)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (871, N'La Cuchilla De Platanares', 50)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (872, N'La Nueva Union', 50)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (873, N'Piedra Pintada', 50)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (874, N'Valle De Magdalena O La Laguna', 50)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (875, N'Concepcion Barrancas', 50)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (876, N'La Union', 51)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (877, N'Azacualpa', 51)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (878, N'El Corpus', 51)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (879, N'El Junco', 51)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (880, N'El Tri', 51)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (881, N'La Arena', 51)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (882, N'San Andres Minas', 51)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (883, N'San Miguel', 51)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (884, N'Santa Cruz', 51)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (885, N'La Entrada', 52)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (886, N'Agua Buena', 52)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (887, N'Chalmeca', 52)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (888, N'El Chupadero', 52)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (889, N'La Cuchilla', 52)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (890, N'La Union', 52)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (891, N'Los Pozos', 52)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (892, N'Los Tans', 52)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (893, N'Nueva Arcadia', 52)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (894, N'Quebrada Seca', 52)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (895, N'San Isidro', 52)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (896, N'San Pablo Del Roble', 52)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (897, N'Bo. El Progreso', 52)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (898, N'San Agustin', 53)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (899, N'Cerro Negro', 53)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (900, N'El Descombro', 53)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (901, N'Granadillal', 53)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (902, N'San Antonio', 54)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (903, N'Concepcion', 54)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (904, N'El Ocoton O Villa Nueva', 54)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (905, N'La Reina', 54)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (906, N'La Zumbadora', 54)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (907, N'Loma Ancha', 54)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (908, N'Peða Blanca', 54)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (909, N'Pueblo Nuevo', 54)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (910, N'Quebrada Grande', 54)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (911, N'Quebrada Honda', 54)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (912, N'San Joaquin', 54)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (913, N'San Luis', 54)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (914, N'San Raimundo', 54)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (915, N'Tierra Colorada', 54)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (916, N'San Jeronimo', 55)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (917, N'Agua Zarca', 55)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (918, N'El Rosario', 55)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (919, N'El Transito', 55)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (920, N'El Volcan', 55)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (921, N'La Esperanza', 55)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (922, N'Santa Elena', 55)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (923, N'Tierra Blanca', 55)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (924, N'San Jose', 56)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (925, N'Buena Vista', 56)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (926, N'El Porvenir', 56)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (927, N'Las Delicias', 56)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (928, N'Plan De San Jeronimo', 56)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (929, N'Vivistorio', 56)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (930, N'San Juan De Opoa', 57)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (931, N'La Colatina', 57)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (932, N'El Contamal', 57)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (933, N'El Coyolar', 57)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (934, N'El Limon', 57)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (935, N'El Pinal', 57)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (936, N'El Portillo', 57)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (937, N'La Cebratana', 57)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (938, N'La Laguna Negra', 57)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (939, N'La Majada', 57)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (940, N'Las Sandias', 57)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (941, N'Los Linderos', 57)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (942, N'Los Pozos', 57)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (943, N'Santa Elena', 57)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (944, N'Torihuaque', 57)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (945, N'San Nicolas', 58)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (946, N'Buena Vista O El Tablon', 58)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (947, N'El Achiotal', 58)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (948, N'El Modelo', 58)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (949, N'El Porvenir', 58)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (950, N'La Puerta', 58)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (951, N'Nueva Concepcion Del Carmen', 58)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (952, N'San Pedro', 59)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (953, N'Cartagua', 59)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (954, N'El Zapote', 59)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (955, N'Las Capucas', 59)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (956, N'San Francisco O El Ejido', 59)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (957, N'Yaunera', 59)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (958, N'Santa Rita', 60)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (959, N'Agua Caliente', 60)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (960, N'Buena Vista', 60)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (961, N'Campamento', 60)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (962, N'El biado', 60)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (963, N'El Jaral', 60)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (964, N'El Mirador', 60)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (965, N'El Planon', 60)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (966, N'El Raizal', 60)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (967, N'El Rosario', 60)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (968, N'El Tamarindo', 60)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (969, N'tas De Sangre No. 1', 60)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (970, N'La Canteada', 60)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (971, N'La Casita', 60)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (972, N'La Libertad', 60)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (973, N'La Reforma', 60)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (974, N'La Union Otuta', 60)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (975, N'Las Medias', 60)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (976, N'Las Mesas', 60)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (977, N'Los Achiotes', 60)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (978, N'Los Planes De La Brea', 60)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (979, N'Los Ranchos', 60)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (980, N'Minas De Piedras', 60)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (981, N'Mirasol', 60)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (982, N'Plan Grande', 60)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (983, N'Rastrojitos', 60)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (984, N'Rio Amarillo', 60)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (985, N'Rio Blanco', 60)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (986, N'San Jeronimo', 60)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (987, N'Tierra Fria No. 1', 60)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (988, N'Tierra Fria No. 2', 60)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (989, N'Vara De Cohete', 60)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (990, N'Trinidad', 61)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (991, N'Cerro Azul', 61)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (992, N'La Cumbre', 61)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (993, N'Lepaerita', 61)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (994, N'Quebraditas', 61)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (995, N'San Juan De Planes', 61)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (996, N'Veracruz', 62)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (997, N'Agua Caliente', 62)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (998, N'El Triunfo', 62)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (999, N'San Antonio', 62)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1000, N'San Pedro Sula', 63)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1001, N'Artemisales', 63)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1002, N'Baðaderos O Guadalupe', 63)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1003, N'Berlin', 63)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1004, N'Buena Vista', 63)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1005, N'Buenos Aires De Bañaderos', 63)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1006, N'Campo La Mesa', 63)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1007, N'Cofradia', 63)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1008, N'Copen', 63)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1009, N'Corrientes', 63)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1010, N'Chotepe', 63)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1011, N'Hacda. El Corbano', 63)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1012, N'El Gallito - Lag. De Tembladeros', 63)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1013, N'El Palmar', 63)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1014, N'El Zapotal Sur', 63)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1015, N'Flor Del Valle', 63)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1016, N'La Ceibita', 63)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1017, N'La Cuchilla De La Nueva Concepcion', 63)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1018, N'La Cumbre', 63)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1019, N'La Fortuna', 63)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1020, N'La Libertad', 63)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1021, N'La Neblina De Miramar', 63)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1022, N'La Pita', 63)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1023, N'La Union De Rio Frio', 63)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1024, N'La Virtud', 63)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1025, N'Laguna De Baðaderos', 63)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1026, N'Las Brisas Del Merendon', 63)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1027, N'Las Delicias', 63)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1028, N'Las Flores De Rio Frio', 63)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1029, N'Las Juntas De Baðaderos', 63)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1030, N'Mayen', 63)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1031, N'Miramelinda', 63)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1032, N'Naco', 63)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1033, N'Nuevo Eden', 63)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1034, N'Peðitas Abajo', 63)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1035, N'Peðitas Arriba', 63)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1036, N'Peru', 63)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1037, N'Sabana De Jucutuma', 63)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1038, N'San Antonio De Las Palmas', 63)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1039, N'San Antonio Del Peru O El Carmen', 63)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1040, N'San Cristobal', 63)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1041, N'San Jose De Cortes', 63)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1042, N'San Jose Del Boqueron', 63)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1043, N'San Jose De Machaguala', 63)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1044, N'San Lorenzo', 63)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1045, N'San Martin', 63)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1046, N'Santa Ana', 63)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1047, N'Santa Elena', 63)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1048, N'Santa Lucia', 63)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1049, N'Santa Margarita O Guanales', 63)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1050, N'Santa Marta', 63)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1051, N'Santa Teresa De Baðaderos', 63)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1052, N'Tomala O La Sierra', 63)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1053, N'Zapotal Del Norte', 63)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1054, N'Tramo Juan Ramon Molina', 63)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1055, N'Bo. El Centro', 63)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1056, N'Bo. Concepcion', 63)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1057, N'Col. Satelite Etapa Iii', 63)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1058, N'Reparto El Carmen', 63)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1059, N'Cacao', 63)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1060, N'San Jorge', 63)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1061, N'Choloma', 64)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1062, N'Banderas', 64)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1063, N'Buenos Aires De California', 64)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1064, N'El Barreal No. 1', 64)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1065, N'El Chorreron', 64)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1066, N'El Guanacaste', 64)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1067, N'El Higuero', 64)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1068, N'El Ocotillo Occidental', 64)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1069, N'El Planchon De Lupo Viejo', 64)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1070, N'El Portillo No. 1', 64)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1071, N'El Rancho', 64)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1072, N'El Tamarindo', 64)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1073, N'Finca Tibombo', 64)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1074, N'La Bueso', 64)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1075, N'La Ceibita', 64)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1076, N'La Danta No. 1', 64)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1077, N'La Davis', 64)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1078, N'La Funes', 64)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1079, N'La Galvez', 64)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1080, N'La Hicaca O San Isidro', 64)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1081, N'La Jutosa', 64)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1082, N'La Lechuga No. 1', 64)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1083, N'La Proteccion', 64)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1084, N'Las Delicias', 64)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1085, N'Las Flores', 64)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1086, N'Los Caraos', 64)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1087, N'Los Planes', 64)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1088, N'Montaðuela', 64)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1089, N'Monterrey', 64)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1090, N'Nueva Florida', 64)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1091, N'Poza Del Riel', 64)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1092, N'Quebrada Seca', 64)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1093, N'Rio Arriba', 64)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1094, N'Rio Bijao', 64)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1095, N'Rio Blanquito', 64)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1096, N'San Jose De Los Laureles', 64)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1097, N'San Marcos De Majaime', 64)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1098, N'Santa Martha', 64)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1099, N'Ticamaya', 64)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1100, N'Victoria De Cristales', 64)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1101, N'Waler Adentro', 64)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1102, N'Waler Bordo', 64)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1103, N'Paredes', 64)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1104, N'Omoa', 65)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1105, N'Barbas Cheles', 65)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1106, N'Barra De Cuyamel', 65)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1107, N'Barra Del Motagua', 65)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1108, N'Corinto', 65)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1109, N'Cortesito', 65)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1110, N'Cuyamel', 65)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1111, N'Cuyamelito', 65)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1112, N'Chachaguala O Col. Tegucigalpita', 65)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1113, N'Chivana', 65)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1114, N'El Paraiso', 65)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1115, N'La Camisa', 65)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1116, N'Los Laureles', 65)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1117, N'Masca', 65)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1118, N'Milla Cuatro', 65)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1119, N'Milla Tres', 65)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1120, N'Muchilena', 65)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1121, N'Nuevo Tulian', 65)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1122, N'Potrerillos', 65)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1123, N'Pueblo Nuevo', 65)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1124, N'Rio Coto', 65)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1125, N'Rio Chiquito', 65)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1126, N'San Carlos', 65)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1127, N'San Jose De Jalisco', 65)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1128, N'Suyapa O Garcia', 65)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1129, N'Tulian Campo', 65)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1130, N'Tegucigalpita', 65)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1131, N'Veracruz', 65)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1132, N'Pimienta', 66)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1133, N'Santia', 66)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1134, N'Coop. Capil', 66)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1135, N'Potrerillos', 67)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1136, N'Bejuco', 67)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1137, N'Blanco Caserio', 67)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1138, N'El Caracol', 67)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1139, N'El Manacal', 67)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1140, N'Higuerito Central', 67)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1141, N'La Garroba', 67)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1142, N'San Miguel', 67)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1143, N'Buena Vista', 67)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1144, N'Col. Morelos', 67)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1145, N'Puerto Cortes', 68)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1146, N'Agua Caliente', 68)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1147, N'Bajamar', 68)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1148, N'Baracoa', 68)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1149, N'Barra De Chamelecon', 68)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1150, N'Bulichampa', 68)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1151, N'Calan', 68)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1152, N'Cedros', 68)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1153, N'Col. Gracias A Dios', 68)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1154, N'Concordia', 68)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1155, N'Chameleconcito', 68)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1156, N'El Balsamo', 68)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1157, N'El Boom', 68)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1158, N'El Chile', 68)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1159, N'El Nispero', 68)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1160, N'Kilometro Seis', 68)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1161, N'Guanacastales', 68)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1162, N'Kele Kele', 68)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1163, N'La Campana', 68)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1164, N'La Caoba', 68)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1165, N'La Junta', 68)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1166, N'La Pita', 68)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1167, N'La Sabana', 68)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1168, N'Las Delicias', 68)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1169, N'Manacalito', 68)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1170, N'Medina Abajo', 68)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1171, N'Nisperales', 68)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1172, N'Nola', 68)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1173, N'Paleto', 68)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1174, N'Puente Alto', 68)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1175, N'Puente Baracoa', 68)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1176, N'Rio Arriba', 68)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1177, N'Robles', 68)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1178, N'Santa Ines', 68)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1179, N'Saraguayna', 68)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1180, N'Sauce', 68)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1181, N'Ticamaya', 68)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1182, N'Travesia', 68)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1183, N'San Antonio De Cortes', 69)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1184, N'Buenos Aires', 69)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1185, N'El Aguacate', 69)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1186, N'El Encanto', 69)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1187, N'El Picacho', 69)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1188, N'El Sitio', 69)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1189, N'La Calera O Buena Vista', 69)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1190, N'La Ceibita', 69)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1191, N'La Chachona O El Paraiso', 69)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1192, N'La Masica', 69)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1193, N'La Providencia', 69)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1194, N'Las Casitas', 69)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1195, N'Las Colmenas', 69)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1196, N'Las Crucitas', 69)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1197, N'Las Margaritas', 69)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1198, N'Las Palomas', 69)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1199, N'Loma Larga', 69)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1200, N'Nueva Granada', 69)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1201, N'Quebrada Seca', 69)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1202, N'San Jose De Cortes O Cordoncil', 69)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1203, N'San Luis', 69)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1204, N'Santa Rita O Jimerito', 69)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1205, N'Vallecito', 69)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1206, N'San Francisco De Yojoa', 70)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1207, N'Caðaveral', 70)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1208, N'La Virtud', 70)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1209, N'Hules', 70)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1210, N'Pedernales', 70)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1211, N'Quebrada De Agua', 70)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1212, N'Rio Lindo', 70)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1213, N'San Buenaventura', 70)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1214, N'Tapiquilares', 70)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1215, N'San Manuel', 71)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1216, N'Campo Casenave', 71)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1217, N'Col. La Democracia', 71)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1218, N'Col. La Guadalupe', 71)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1219, N'Col. Pineda', 71)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1220, N'Coulee', 71)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1221, N'El Plan', 71)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1222, N'El Porvenir', 71)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1223, N'La Libertad O Las Lomas', 71)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1224, N'La Sabana', 71)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1225, N'Omonita', 71)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1226, N'Santa Cruz De Yojoa', 72)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1227, N'Achiotal', 72)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1228, N'Agua Azul Rancho', 72)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1229, N'Agua Azul Sierra', 72)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1230, N'Buena Vista', 72)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1231, N'Campo Llano', 72)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1232, N'Campo Olivo', 72)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1233, N'Casas Viejas', 72)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1234, N'Concepcion', 72)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1235, N'Cordoncillo', 72)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1236, N'El Cacao', 72)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1237, N'El Chaguiton', 72)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1238, N'El Eden', 72)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1239, N'El Jaral', 72)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1240, N'El Llano', 72)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1241, N'El Olivar', 72)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1242, N'El Plan Grande', 72)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1243, N'El Tigre', 72)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1244, N'El Zapote', 72)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1245, N'La Barca', 72)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1246, N'La Ceiba', 72)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1247, N'La Ceibita', 72)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1248, N'La Danta', 72)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1249, N'La Estribana', 72)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1250, N'La Guama', 72)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1251, N'La Jutosa', 72)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1252, N'La Laguna', 72)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1253, N'La Quesera O El Paraiso', 72)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1254, N'Las Caðas', 72)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1255, N'Las Delicias', 72)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1256, N'Las Marias', 72)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1257, N'Los Caminos', 72)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1258, N'Los Mans', 72)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1259, N'Los Naranjos', 72)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1260, N'Montala De La Reina', 72)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1261, N'Monte Verde', 72)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1262, N'Nueva Esperanza', 72)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1263, N'Oropendolas', 72)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1264, N'Peña Blanca', 72)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1265, N'Pinolapa', 72)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1266, N'Pueblo Quemado', 72)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1267, N'San Antonio', 72)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1268, N'San Isidro', 72)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1269, N'San Jose De Balincito', 72)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1270, N'San Luis De Zacatales', 72)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1271, N'Santa Elena', 72)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1272, N'Terreritos De La Libertad', 72)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1273, N'Victoria', 72)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1274, N'Yojoa', 72)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1275, N'Villa Nueva', 73)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1276, N'Buenos Aires', 73)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1277, N'Calan', 73)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1278, N'Campo Dos Caminos', 73)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1279, N'El Cuabano', 73)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1280, N'El Maraðon', 73)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1281, N'El Milagro', 73)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1282, N'El Sauce', 73)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1283, N'Guaruma Dos', 73)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1284, N'La Bolsa', 73)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1285, N'La Cebadilla', 73)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1286, N'La Coroza', 73)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1287, N'La Esperanza O El Venado', 73)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1288, N'Las Caðadas', 73)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1289, N'Nuevo Chamelecon', 73)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1290, N'Palos Blancos', 73)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1291, N'Pueblo Nuevo', 73)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1292, N'San Francisco O El Coyolon', 73)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1293, N'San Isidro', 73)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1294, N'Santa Ana De Chasnigua', 73)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1295, N'San Ramon Ii', 73)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1296, N'Bo. La Victoria', 73)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1297, N'Bo. El Obelisco', 73)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1298, N'La Lima', 74)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1299, N'Cruz De Valencia', 74)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1300, N'El Paraiso', 74)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1301, N'Col. Flor De Oriente', 74)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1302, N'Col. Jerusalen Ii. Etapa 2', 74)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1303, N'Choluteca', 75)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1304, N'Agua Caliente De Linaca', 75)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1305, N'Copal Abajo', 75)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1306, N'Copal Arriba', 75)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1307, N'El Apitanal', 75)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1308, N'El Carrizo', 75)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1309, N'El Palenque', 75)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1310, N'El Pillado', 75)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1311, N'El Terrero Blanco', 75)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1312, N'Buenos Aires', 75)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1313, N'Fray Lazaro', 75)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1314, N'Hato Nuevo', 75)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1315, N'La Castaða O Santa Cruz De Yar', 75)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1316, N'La Picota', 75)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1317, N'Linaca', 75)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1318, N'Madrial', 75)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1319, N'Pavana', 75)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1320, N'San Jose De La Landa', 75)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1321, N'San Martin', 75)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1322, N'San Rafael', 75)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1323, N'San Ramon Abajo', 75)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1324, N'San Ramon Arriba', 75)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1325, N'Altamira', 75)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1326, N'Tapaire', 75)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1327, N'Tapatoca', 75)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1328, N'Lagunitas', 75)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1329, N'Bo. La Bascula', 75)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1330, N'Apacilagua', 76)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1331, N'Caðas Bravas', 76)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1332, N'La Garza', 76)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1333, N'Canta Gallo', 76)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1334, N'Los Mezcales No. 1', 76)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1335, N'Monte Grande', 76)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1336, N'Burro Solo', 76)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1337, N'El Aguacate', 76)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1338, N'Concepcion De Maria', 77)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1339, N'Cerro Colorado', 77)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1340, N'El Aguacatal', 77)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1341, N'El Cacao', 77)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1342, N'El Cerron', 77)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1343, N'El Jicarito', 77)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1344, N'El Pacon', 77)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1345, N'El Palito Centro', 77)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1346, N'El Papalon', 77)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1347, N'El Cordoncillo', 77)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1348, N'El Potrerito', 77)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1349, N'Zonzapote', 77)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1350, N'El Tejar', 77)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1351, N'El Terrero', 77)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1352, N'Guanacaste', 77)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1353, N'La Guaruma', 77)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1354, N'La Joya', 77)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1355, N'La Majada', 77)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1356, N'La Montaða', 77)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1357, N'La Pabellona', 77)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1358, N'La Plomosa No. 2', 77)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1359, N'La Veta', 77)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1360, N'Las Chapernas', 77)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1361, N'Las Mesas', 77)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1362, N'Las Pintadas', 77)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1363, N'Los Espaveles', 77)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1364, N'Los Llanitos', 77)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1365, N'Los Matapalos', 77)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1366, N'Nance Dulce', 77)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1367, N'Palo Solo', 77)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1368, N'Santa Rosa', 77)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1369, N'San Benito Nuevo', 77)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1370, N'San Benito Viejo', 77)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1371, N'Duyure', 78)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1372, N'Arado Grande', 78)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1373, N'El Carrizal Prieto', 78)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1374, N'El Horno', 78)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1375, N'Liraqui', 78)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1376, N'Tierra Colorada', 78)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1377, N'El Corpus', 79)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1378, N'Agua Fria', 79)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1379, N'Calaire', 79)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1380, N'Cayanini', 79)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1381, N'El Baldoquin', 79)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1382, N'El Banquito', 79)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1383, N'El Carrizal', 79)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1384, N'El Naranjal', 79)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1385, N'El Pedregal', 79)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1386, N'El Zapotal', 79)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1387, N'La Albarrada', 79)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1388, N'La Fortuna', 79)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1389, N'La Galera', 79)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1390, N'San Isidro', 79)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1391, N'San Juan Abajo', 79)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1392, N'San Juan Arriba', 79)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1393, N'San Judas', 79)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1394, N'El Triunfo', 80)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1395, N'Azacualpa', 80)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1396, N'El Cacao Colon', 80)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1397, N'El Perico', 80)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1398, N'La Calera', 80)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1399, N'Asent. Campesino Exequiel Cruz', 80)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1400, N'Nance Dulce', 80)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1401, N'Rio Grande No. 2', 80)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1402, N'San Juan', 80)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1403, N'Santa Maria', 80)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1404, N'El Llano', 80)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1405, N'Marcovia', 81)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1406, N'Cedeðo', 81)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1407, N'Col. Buena Vista', 81)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1408, N'El Botadero', 81)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1409, N'El Obraje', 81)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1410, N'El Papalon', 81)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1411, N'Guapinol', 81)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1412, N'La Gervacia', 81)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1413, N'La Joyada', 81)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1414, N'Las Arenas', 81)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1415, N'Armenia', 81)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1416, N'Los Llanitos', 81)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1417, N'Los Mangles', 81)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1418, N'Monjaras', 81)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1419, N'Piedra De Agua', 81)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1420, N'Pueblo Nuevo', 81)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1421, N'Punta Raton', 81)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1422, N'San Jose De Las Conchas', 81)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1423, N'San Juan Bosco No. 2', 81)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1424, N'Santa Cruz', 81)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1425, N'Tambor Abajo', 81)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1426, N'Morolica', 82)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1427, N'Agua Salada', 82)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1428, N'Cerco De Piedra', 82)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1429, N'El Potrero', 82)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1430, N'La Enea', 82)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1431, N'San Marcos Viejo', 82)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1432, N'Namasigue', 83)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1433, N'San Bernardo', 83)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1434, N'San Francisco', 83)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1435, N'San Isidro', 83)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1436, N'San Jeronimo', 83)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1437, N'San Rafael', 83)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1438, N'Santa Irene', 83)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1439, N'Tierra Blanca', 83)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1440, N'Yorolan', 83)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1441, N'Orocuina', 84)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1442, N'Concepcion', 84)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1443, N'El Barreal', 84)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1444, N'Mal Paso', 84)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1445, N'Agua Podrida', 84)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1446, N'Caldera De San Jose', 84)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1447, N'Santa Ana', 84)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1448, N'Cerro Grande', 84)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1449, N'Buena Vista', 84)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1450, N'Pespire', 85)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1451, N'Cacautare', 85)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1452, N'Concepcion El Brasilar', 85)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1453, N'El Espinal', 85)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1454, N'El Guayabo', 85)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1455, N'Esquimay Arriba O La Ermita', 85)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1456, N'Marilica', 85)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1457, N'San Antonio De Padua', 85)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1458, N'San Juan Bautista', 85)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1459, N'San Juan Bosco', 85)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1460, N'Los Quiroz', 85)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1461, N'San Antonio De Flores', 86)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1462, N'El Jicaro', 86)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1463, N'El Obrajuelo', 86)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1464, N'Moramulca', 86)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1465, N'Col. Nuevo Amanecer', 86)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1466, N'El Sinai O Los Ortiz', 86)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1467, N'La Hacienda', 86)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1468, N'San Isidro', 87)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1469, N'El Caulote', 87)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1470, N'El Obrajito', 87)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1471, N'Sonit', 87)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1472, N'San Jose', 88)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1473, N'Coraycito', 88)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1474, N'El Cacao', 88)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1475, N'El Macuelizo', 88)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1476, N'La Crucita', 88)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1477, N'Las Marias', 88)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1478, N'San Marcos De Colon', 89)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1479, N'Cacamuya', 89)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1480, N'Caire', 89)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1481, N'Comali', 89)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1482, N'El Inventario', 89)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1483, N'Ojo De Agua', 89)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1484, N'Jayacayan', 89)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1485, N'Portillo Oscuro', 89)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1486, N'Hacda. Los Araditos', 89)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1487, N'Las Mesas De Colon', 89)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1488, N'Corral Falso', 89)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1489, N'Cerro Del Zarzal', 89)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1490, N'Oyoto', 89)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1491, N'San Die', 89)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1492, N'San Francisco', 89)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1493, N'San Juan De Duyusupo', 89)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1494, N'Santa Rita', 89)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1495, N'El Mote', 89)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1496, N'Santa Ana De Yusguare', 90)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1497, N'Cerco De Piedra', 90)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1498, N'El Cerro', 90)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1499, N'La Tajeada', 90)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1500, N'El Puente', 90)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1501, N'Tablones Abajo', 90)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1502, N'Tablones Arriba', 90)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1503, N'Yuscaran', 91)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1504, N'El Barro', 91)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1505, N'El Cordoncillo', 91)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1506, N'El Chaguite De Oriente', 91)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1507, N'El Chaguite Sur', 91)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1508, N'El Ocotal', 91)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1509, N'El Pericon', 91)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1510, N'El Rancho Del Obispo', 91)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1511, N'El Robledal', 91)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1512, N'El Rodeo', 91)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1513, N'El Teñidero', 91)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1514, N'El Zarzal', 91)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1515, N'La Cienega', 91)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1516, N'La Insula', 91)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1517, N'Las Crucitas', 91)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1518, N'Los Lainez', 91)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1519, N'Ojo De Agua', 91)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1520, N'Sabana Redonda', 91)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1521, N'Alauca', 92)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1522, N'Buena Vista', 92)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1523, N'Chaguite Grande', 92)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1524, N'Chinampa O Chilampa', 92)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1525, N'El Jicaro', 92)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1526, N'El Matapalo', 92)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1527, N'El Pedregalito', 92)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1528, N'La Chichigua O Rio Arriba', 92)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1529, N'La Jagua', 92)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1530, N'La Manzanilla', 92)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1531, N'Las Limas', 92)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1532, N'Las Manos', 92)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1533, N'Los Matasano De Rio Arriba', 92)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1534, N'San Antonio', 92)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1535, N'Danli', 93)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1536, N'Agua Fria Mineral', 93)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1537, N'Apali', 93)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1538, N'Arauli', 93)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1539, N'Baðaderos', 93)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1540, N'Buena Esperanza De Azabache', 93)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1541, N'Chirinos', 93)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1542, N'El Arenal', 93)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1543, N'El Barro', 93)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1544, N'El Chichicaste', 93)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1545, N'El Maguelar', 93)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1546, N'El Matasano', 93)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1547, N'El Obraje', 93)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1548, N'El Olin O El Porvenir', 93)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1549, N'El Pataste', 93)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1550, N'El Pescadero', 93)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1551, N'El Porvenir', 93)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1552, N'El Pozo Bendito', 93)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1553, N'El Tablon', 93)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1554, N'El Zamorano', 93)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1555, N'El Zapotillo', 93)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1556, N'El Zarzal', 93)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1557, N'Gualiqueme', 93)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1558, N'Jutiapa', 93)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1559, N'La Lima', 93)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1560, N'La Lodosa', 93)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1561, N'La Trinidad O Sartenejas', 93)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1562, N'Las Animas', 93)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1563, N'Linaca', 93)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1564, N'Palmillas', 93)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1565, N'Quebrada Arriba U Oculi', 93)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1566, N'Quebrada Larga', 93)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1567, N'San Die', 93)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1568, N'San Julian', 93)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1569, N'San Marcos Abajo', 93)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1570, N'Santa Maria', 93)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1571, N'Villa Santa', 93)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1572, N'Col. Villeda Morales', 93)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1573, N'Bo. La Reforma', 93)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1574, N'Col. Veinticuatro De Diciembre', 94)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1575, N'Cuyali', 94)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1576, N'Dificultades', 94)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1577, N'Granadillos', 94)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1578, N'La Union', 94)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1579, N'Las Caðas', 94)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1580, N'Las Flores', 94)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1581, N'Las Manos (El Paraiso)', 94)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1582, N'Las Selvas', 94)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1583, N'Los Terrones', 94)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1584, N'Los Volcanes', 94)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1585, N'San Antonio De Conchagua', 94)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1586, N'Santa Cruz', 94)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1587, N'Col. Montecristo', 94)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1588, N'Guinope', 95)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1589, N'Arrayanes', 95)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1590, N'Casitas', 95)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1591, N'Galeras', 95)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1592, N'Las Liquidambas', 95)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1593, N'Lavanderos', 95)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1594, N'Mansaragua', 95)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1595, N'Pacayas', 95)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1596, N'Santa Rosa', 95)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1597, N'Silisgualagua', 95)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1598, N'Jacaleapa', 96)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1599, N'La Chorrera', 96)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1600, N'Lomas Limpias', 96)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1601, N'Liure', 97)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1602, N'Asuncion', 97)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1603, N'Bocuire', 97)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1604, N'Monte Grande', 97)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1605, N'San Ramon', 97)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1606, N'Santa Cruz', 97)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1607, N'Moroceli', 98)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1608, N'Buena Vista', 98)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1609, N'El Chile O Quebrada Grande', 98)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1610, N'El Chilito', 98)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1611, N'El Llano', 98)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1612, N'El Plan', 98)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1613, N'El Retiro', 98)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1614, N'El Suyate', 98)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1615, N'Guadalajara', 98)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1616, N'Hoya Grande', 98)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1617, N'Los Limones', 98)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1618, N'Los Liquidambos', 98)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1619, N'Los Pozos', 98)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1620, N'Mata De Platano', 98)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1621, N'Valle Arriba', 98)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1622, N'Oropoli', 99)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1623, N'Chaguite Grande', 99)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1624, N'El Barro', 99)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1625, N'El Corralito', 99)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1626, N'El Deshecho', 99)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1627, N'El Jicaro', 99)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1628, N'La Mesa', 99)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1629, N'Las Casitas', 99)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1630, N'Las Crucitas', 99)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1631, N'Oreali', 99)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1632, N'Samayare', 99)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1633, N'Potrerillos', 100)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1634, N'El Junquillo', 100)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1635, N'El Limoncillo', 100)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1636, N'Las Crucitas', 100)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1637, N'Las Delicias', 100)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1638, N'Loma De Enmedio', 100)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1639, N'Lomanillos', 100)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1640, N'Sabana Redonda', 100)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1641, N'San Antonio De Flores', 101)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1642, N'Apalipi', 101)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1643, N'Comunidad', 101)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1644, N'El Chaguite', 101)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1645, N'El Espinal', 101)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1646, N'Mandasta', 101)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1647, N'Orlica', 101)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1648, N'Quebrada Grande', 101)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1649, N'Tolobrito', 101)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1650, N'San Lucas', 102)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1651, N'Apalipi', 102)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1652, N'Candelaria', 102)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1653, N'Junacatal', 102)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1654, N'La Montaðita', 102)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1655, N'Los Quebrachos', 102)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1656, N'Mactuca', 102)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1657, N'Navijupe', 102)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1658, N'Surule', 102)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1659, N'Tapahuasca', 102)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1660, N'San Matias', 103)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1661, N'Corral Falso', 103)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1662, N'El Espinito', 103)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1663, N'El Guayacan', 103)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1664, N'El Robledal', 103)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1665, N'La Concepcion', 103)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1666, N'Las Tunas', 103)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1667, N'San Jeronimo', 103)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1668, N'Santa Rosa', 103)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1669, N'Soledad', 104)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1670, N'La Paz O Rodeito', 104)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1671, N'La Victoria', 104)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1672, N'Las Marias', 104)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1673, N'Los Alpes', 104)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1674, N'San Die', 104)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1675, N'San Marcos', 104)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1676, N'Santo Domin', 104)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1677, N'Teupasenti', 105)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1678, N'Agua Fria', 105)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1679, N'Bañaderos', 105)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1680, N'El Canton', 105)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1681, N'El Corralito', 105)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1682, N'El Chelon No. 1', 105)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1683, N'El Chilito', 105)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1684, N'El Encino', 105)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1685, N'El Jute', 105)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1686, N'El Ocotal', 105)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1687, N'El Riito No. 1', 105)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1688, N'El Riito No. 2', 105)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1689, N'El Riito Del Esquillal', 105)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1690, N'El Rodeo', 105)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1691, N'El Suyatal', 105)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1692, N'Escobas Amarillas', 105)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1693, N'La Aguja', 105)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1694, N'La Cebadilla', 105)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1695, N'La Comunidad', 105)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1696, N'La Granja', 105)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1697, N'La Laguna No. 1', 105)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1698, N'La Laguna No. 2', 105)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1699, N'La Zacatera', 105)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1700, N'Las Cortinas', 105)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1701, N'Las Delicias', 105)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1702, N'Las Flores', 105)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1703, N'Las Uvas', 105)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1704, N'Los Plancitos', 105)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1705, N'Paso Hondo', 105)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1706, N'Pedrios', 105)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1707, N'Peða Blanca', 105)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1708, N'Potrerillos', 105)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1709, N'Quebrada Del Zapotillo', 105)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1710, N'Saladino', 105)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1711, N'San Isidro', 105)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1712, N'San Jose Del Potrero', 105)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1713, N'Santa Cruz', 105)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1714, N'Santa Rosa No. 1', 105)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1715, N'Santa Rosa No. 2', 105)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1716, N'Texiguat', 106)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1717, N'Asuncion', 106)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1718, N'El Zapotal', 106)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1719, N'Cagalagua', 106)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1720, N'Jamayupe', 106)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1721, N'Rio Arriba', 106)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1722, N'San Lorenzo', 106)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1723, N'San Sebastian', 106)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1724, N'Vado Ancho', 107)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1725, N'Apausupo', 107)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1726, N'Las Uvillas', 107)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1727, N'San Jeronimo De Vado Ancho', 107)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1728, N'Tolobre', 107)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1729, N'Yauyupe', 108)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1730, N'El Chaguitillo', 108)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1731, N'El Hornito', 108)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1732, N'Trojes', 109)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1733, N'Arenales', 109)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1734, N'Capire', 109)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1735, N'Cifuentes', 109)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1736, N'El Guineo', 109)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1737, N'Tapalchi', 109)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1738, N'Yamales', 109)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1739, N'Las Quebradas', 109)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1740, N'El Codo', 109)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1741, N'Distrito Central', 110)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1742, N'Amarateca', 110)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1743, N'Bo. La Guadalupe', 110)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1744, N'Carpintero', 110)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1745, N'Aldea Cerro Grande', 110)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1746, N'Coa Abajo', 110)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1747, N'Coa Arriba', 110)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1748, N'Cofradia', 110)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1749, N'Concepcion De Rio Grande O Nuevo Concep.', 110)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1750, N'El Naranjal', 110)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1751, N'El Piliguin', 110)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1752, N'El Tizatillo', 110)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1753, N'Germania', 110)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1754, N'Guanlolo', 110)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1755, N'Guasculile', 110)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1756, N'Jacaleapa', 110)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1757, N'Jutiapa', 110)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1758, N'La Calera', 110)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1759, N'La Cuesta No. 2', 110)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1760, N'La Montañita', 110)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1761, N'La Sabana', 110)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1762, N'La Venta', 110)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1763, N'Las Casitas', 110)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1764, N'Las Flores', 110)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1765, N'Las Tapias', 110)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1766, N'Los Jutes', 110)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1767, N'Mateo', 110)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1768, N'Monte Redondo', 110)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1769, N'Nueva Aldea', 110)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1770, N'Rio Abajo', 110)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1771, N'Rio Hondo', 110)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1772, N'San Francisco De Soroguara', 110)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1773, N'San Juancito', 110)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1774, N'San Juan Del Rancho', 110)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1775, N'San Juan Del Rio Grande', 110)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1776, N'San Matias No. 2', 110)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1777, N'Santa Cruz Abajo', 110)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1778, N'Santa Cruz Arriba', 110)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1779, N'Santa Rosa', 110)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1780, N'San Jose De Soroguara', 110)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1781, N'Tamara', 110)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1782, N'Villanueva', 110)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1783, N'Yaguacire', 110)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1784, N'Zambrano', 110)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1785, N'Alubaren', 111)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1786, N'La Concepcion', 111)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1787, N'Los Tablones', 111)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1788, N'Rio Arriba', 111)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1789, N'Cedros', 112)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1790, N'Agalteca', 112)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1791, N'Cedros Abajo', 112)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1792, N'El Guante', 112)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1793, N'El Suyatal', 112)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1794, N'El Tablon Del Guante', 112)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1795, N'La Guadalupe', 112)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1796, N'Las Animas', 112)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1797, N'Mata De Platano', 112)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1798, N'Pueblo Nuevo', 112)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1799, N'Siria', 112)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1800, N'Tamarindo', 112)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1801, N'Curaren', 113)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1802, N'Cartagua', 113)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1803, N'Cunimisca', 113)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1804, N'El Portillo De San Juan Bosco', 113)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1805, N'El Porvenir', 113)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1806, N'Emituca', 113)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1807, N'Hato Viejo', 113)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1808, N'La Costita', 113)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1809, N'La Manzanilla', 113)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1810, N'La Victorina', 113)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1811, N'Lodo Negro', 113)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1812, N'Macancicre', 113)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1813, N'Mandasta', 113)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1814, N'San Jose Del Potrero', 113)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1815, N'San Marcos', 113)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1816, N'Toncontin', 113)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1817, N'El Porvenir', 114)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1818, N'El Agua Caliente', 114)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1819, N'El Escanito', 114)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1820, N'El Guantillo', 114)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1821, N'El Pedernal', 114)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1822, N'El Terrero', 114)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1823, N'Guayabillas', 114)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1824, N'Pueblo Nuevo', 114)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1825, N'Guaimaca', 115)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1826, N'Casas Viejas', 115)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1827, N'Cerro Bonito', 115)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1828, N'El Guanacaste', 115)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1829, N'El Tomate', 115)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1830, N'nes', 115)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1831, N'La Aserradera', 115)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1832, N'La Laguna No. 1', 115)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1833, N'Rio Abajo', 115)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1834, N'Sabanagrande O Puente Jalan', 115)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1835, N'San Jose', 115)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1836, N'San Marcos', 115)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1837, N'Sanquin', 115)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1838, N'El Chelon No. 1', 115)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1839, N'Guatemalilla', 115)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1840, N'La Libertad', 116)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1841, N'El Pedrero', 116)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1842, N'Quebrachal', 116)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1843, N'El Zapote', 116)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1844, N'La Venta', 117)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1845, N'El Porvenir', 117)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1846, N'Ojos De Agua', 117)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1847, N'Opimuca', 117)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1848, N'San Jorge', 117)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1849, N'Lepaterique', 118)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1850, N'Culguaque', 118)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1851, N'El Carrizal U Oropule', 118)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1852, N'El Espino', 118)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1853, N'Hierbabuena', 118)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1854, N'La Brea', 118)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1855, N'Malhuaca', 118)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1856, N'Maraita', 119)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1857, N'Coato', 119)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1858, N'El Chaguite', 119)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1859, N'El Retiro', 119)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1860, N'La Union', 119)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1861, N'Lizapa', 119)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1862, N'Reducto', 119)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1863, N'San Pedro', 119)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1864, N'Terrero Blanco', 119)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1865, N'Terrero Prieto', 119)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1866, N'Marale', 120)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1867, N'El Carrizal', 120)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1868, N'El Panal', 120)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1869, N'El Paraiso', 120)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1870, N'La Esperanza O El Cacao', 120)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1871, N'La Travesia', 120)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1872, N'Las Casitas', 120)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1873, N'Las Lagunas', 120)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1874, N'Los Naranjos', 120)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1875, N'Los Planes', 120)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1876, N'Rio Abajo', 120)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1877, N'Nueva Armenia', 121)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1878, N'Adurasta', 121)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1879, N'Barajana', 121)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1880, N'Cuesta Chiquita', 121)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1881, N'El Platanar O Platanal', 121)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1882, N'Las Piðuelas', 121)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1883, N'Salalica', 121)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1884, N'Ojojona', 122)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1885, N'Aragua', 122)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1886, N'El Aguacatal', 122)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1887, N'El Circulo', 122)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1888, N'El Jicaro', 122)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1889, N'Guasucaran', 122)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1890, N'Guerisne', 122)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1891, N'Santa Cruz', 122)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1892, N'Saracaran', 122)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1893, N'Surcos De Caða', 122)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1894, N'Orica', 123)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1895, N'El Encino', 123)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1896, N'El Nance', 123)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1897, N'Guatemalita', 123)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1898, N'La Joya Del Quebracho', 123)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1899, N'San Francisco De Orica', 123)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1900, N'San Marquitos', 123)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1901, N'Reitoca', 124)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1902, N'Azacualpa', 124)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1903, N'Cerro Del Seðor', 124)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1904, N'El Rodeo', 124)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1905, N'La Guadalupe', 124)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1906, N'Sabanetas', 124)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1907, N'San Carlos', 124)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1908, N'San Jose Del Naranjo', 124)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1909, N'Santa Cruz', 124)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1910, N'Saracaran', 124)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1911, N'Tierra Colorada', 124)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1912, N'Sabanagrande', 125)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1913, N'Apasinigua', 125)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1914, N'Dulce Nombre', 125)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1915, N'El Calvario No. 1', 125)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1916, N'El Calvario No. 2', 125)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1917, N'El Carrizal', 125)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1918, N'El Divisadero', 125)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1919, N'El Vino', 125)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1920, N'La Ceiba', 125)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1921, N'La Trinidad', 125)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1922, N'Los Manzanales', 125)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1923, N'Sacahuato', 125)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1924, N'San Antonio', 125)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1925, N'San Nicolas O El Zapote', 125)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1926, N'San Antonio De Oriente', 126)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1927, N'El Jicarito', 126)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1928, N'El Limon', 126)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1929, N'Hoya Grande', 126)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1930, N'La Cienega', 126)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1931, N'Las Mesas', 126)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1932, N'Las Playas', 126)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1933, N'Los Ranchos De Flor Azul', 126)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1934, N'San Antonio De Occidente', 126)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1935, N'San Francisco', 126)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1936, N'Santa Ines', 126)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1937, N'S.O.S. (Aldeas)', 126)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1938, N'Tabla Grande', 126)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1939, N'San Buenaventura', 127)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1940, N'El Calvario', 127)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1941, N'El Ciruelo', 127)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1942, N'El Horno', 127)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1943, N'San Ignacio', 128)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1944, N'El Escano De Tepale', 128)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1945, N'El Naranjal', 128)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1946, N'El Portillo De Siale', 128)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1947, N'San Miguel De Barrosa', 128)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1948, N'Urrutia', 128)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1949, N'Yoculateca', 128)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1950, N'San Juan De Flores', 129)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1951, N'Cerro Bonito', 129)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1952, N'Cofradia', 129)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1953, N'Chandala', 129)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1954, N'El Carbon', 129)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1955, N'El Jicarito', 129)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1956, N'El Ocote', 129)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1957, N'El Zarzal', 129)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1958, N'El Zurzular', 129)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1959, N'Joyas De Carballo', 129)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1960, N'La Cruz O Suyapa', 129)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1961, N'Las Delicias', 129)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1962, N'San Marcos', 129)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1963, N'Miravalle', 129)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1964, N'Pacayas', 129)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1965, N'Pajarillos', 129)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1966, N'San Jose De Ramos', 129)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1967, N'San Luis', 129)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1968, N'Sicaguara', 129)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1969, N'Yamaguare', 129)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1970, N'San Miguelito', 130)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1971, N'El Hato', 130)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1972, N'Santa Martha', 130)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1973, N'Terrero Blanco', 130)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1974, N'Santa Ana', 131)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1975, N'Sicatacare', 131)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1976, N'El Limon', 131)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1977, N'La Bodega', 131)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1978, N'Nueva Arcadia', 131)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1979, N'San Isidro De Hisopo', 131)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1980, N'Santa Lucia', 132)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1981, N'El Chimbo', 132)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1982, N'El Eden', 132)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1983, N'El Piliguin', 132)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1984, N'Montaða Grande O De Los Las', 132)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1985, N'Zarabanda', 132)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1986, N'Talanga', 133)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1987, N'Agua Blanca', 133)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1988, N'Corralitos', 133)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1989, N'El Ocotal', 133)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1990, N'El Rosario O Laja Picada', 133)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1991, N'Jalaca', 133)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1992, N'La Ermita', 133)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1993, N'La Esperanza', 133)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1994, N'La Labranza', 133)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1995, N'La Majada Verde', 133)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1996, N'Las Quebradas', 133)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1997, N'Los Charcos', 133)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1998, N'Palmira', 133)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (1999, N'Rio Dulce', 133)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2000, N'San Antonio De Pastos', 133)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2001, N'Valle Arriba', 133)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2002, N'Bo. La Victoria', 133)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2003, N'Tatumbla', 134)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2004, N'Cofradia', 134)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2005, N'Cuesta Grande', 134)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2006, N'La Lima', 134)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2007, N'La Union', 134)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2008, N'Linaca', 134)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2009, N'Valle De Angeles', 135)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2010, N'Cerro Grande', 135)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2011, N'El Guanacaste', 135)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2012, N'El Liquidambar', 135)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2013, N'La Sabaneta', 135)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2014, N'Las Caðadas', 135)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2015, N'Rio Abajo O Playas', 135)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2016, N'Villa De San Francisco', 136)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2017, N'El Coyolito', 136)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2018, N'El Hato', 136)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2019, N'El Pedregal', 136)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2020, N'Guarumas', 136)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2021, N'Vallecillo', 137)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2022, N'Trinidad De Quebradas', 137)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2023, N'Puerto Lempira', 138)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2024, N'Ahuasbila', 138)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2025, N'Auka', 138)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2026, N'Aurata', 138)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2027, N'Baikanka', 138)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2028, N'Barra De Caratasca', 138)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2029, N'Kanko', 138)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2030, N'Cocodakra', 138)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2031, N'Islas Del Cisne', 138)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2032, N'Krata', 138)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2033, N'Kuri', 138)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2034, N'Laka Tabila', 138)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2035, N'Leimus', 138)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2036, N'Mistruck', 138)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2037, N'Mocoron', 138)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2038, N'Palkaka', 138)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2039, N'Prunnitara', 138)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2040, N'Ratlaya', 138)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2041, N'Rus - Rus', 138)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2042, N'Siakualaya', 138)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2043, N'Sirsitara', 138)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2044, N'Suji', 138)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2045, N'Tansin (Tasbarraya)', 138)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2046, N'Tikiraya', 138)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2047, N'Tipilalma', 138)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2048, N'Tuburus', 138)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2049, N'Tuimawala', 138)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2050, N'Tuntuntara', 138)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2051, N'Uji', 138)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2052, N'Walpata', 138)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2053, N'Wauplaya', 138)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2054, N'Yahurabila', 138)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2055, N'Yamanta', 138)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2056, N'Brus Laguna', 139)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2057, N'Barra Patuca', 139)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2058, N'Belen', 139)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2059, N'Cocobila', 139)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2060, N'Las Marias', 139)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2061, N'Nueva Jerusalen', 139)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2062, N'Rio Platano', 139)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2063, N'Ahuas', 140)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2064, N'Krupunta', 140)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2065, N'Paptalaya', 140)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2066, N'Warunta', 140)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2067, N'Wasma', 140)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2068, N'Wawina', 140)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2069, N'Batalla', 141)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2070, N'Banaka', 141)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2071, N'Cementerios', 141)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2072, N'Fuente De Jacob', 141)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2073, N'Guapote', 141)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2074, N'Ibans', 141)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2075, N'Naranjal', 141)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2076, N'Palacios', 141)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2077, N'Plaplaya', 141)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2078, N'San Pedro', 141)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2079, N'Tocamacho', 141)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2080, N'Raya', 142)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2081, N'Benck', 142)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2082, N'Clupki', 142)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2083, N'Cruta O Walpatara', 142)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2084, N'Iralaya', 142)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2085, N'Kalpo', 142)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2086, N'Karasunta O Karasuatla', 142)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2087, N'Mantara', 142)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2088, N'Nueva Guinea', 142)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2089, N'Pakui', 142)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2090, N'Tusidaksa', 142)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2091, N'Usibila', 142)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2092, N'Wankiawala O San Bernardo', 142)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2093, N'Wampusirpi', 143)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2094, N'Kurhpa', 143)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2095, N'Krausirpi', 143)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2096, N'Pimienta', 143)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2097, N'Tukrun', 143)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2098, N'La Esperanza', 144)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2099, N'Chola', 144)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2100, N'El Pelon', 144)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2101, N'La Pimienta', 144)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2102, N'Nueva Esperanza', 144)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2103, N'Camasca', 145)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2104, N'Agua Zarca', 145)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2105, N'El Carmen', 145)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2106, N'El Rosario', 145)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2107, N'Hacda. Santa Lucia', 145)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2108, N'San Antonio Del Monte', 145)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2109, N'San Ignacio', 145)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2110, N'San Isidro', 145)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2111, N'San Juan De Dios', 145)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2112, N'San Lucas', 145)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2113, N'Santa Catarina', 145)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2114, N'Santa Cruz', 145)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2115, N'Colomoncagua', 146)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2116, N'El Picacho', 146)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2117, N'Las Lomas', 146)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2118, N'Los Amates', 146)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2119, N'Llano Grande', 146)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2120, N'Mal Paso', 146)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2121, N'San Marcos', 146)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2122, N'Santa Ana', 146)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2123, N'Santo Domin', 146)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2124, N'Vados De San Antonio', 146)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2125, N'Concepcion', 147)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2126, N'Calucica', 147)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2127, N'Colomarigua O El Tablon', 147)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2128, N'Guachipilincito', 147)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2129, N'Guajiniquil', 147)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2130, N'El Rodeo', 147)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2131, N'Jiquinlaca', 147)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2132, N'San Nicolas', 147)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2133, N'Santia', 147)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2134, N'Dolores', 148)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2135, N'Azacualpa O Llano De San Antonio', 148)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2136, N'San Jose', 148)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2137, N'Toco', 148)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2138, N'Intibuca', 149)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2139, N'Azacualpa', 149)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2140, N'El Naranjo', 149)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2141, N'El Pelon De Olosi', 149)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2142, N'La Laguna De Chiligatoro', 149)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2143, N'La Sorto', 149)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2144, N'Malguara', 149)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2145, N'Manazapa', 149)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2146, N'Mixcure', 149)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2147, N'Monquecagua', 149)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2148, N'Pueblo Viejo', 149)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2149, N'Quebrada Honda', 149)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2150, N'Rio Blanco', 149)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2151, N'Rio Colorado', 149)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2152, N'Rio Grande O El Nance', 149)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2153, N'San Jose', 149)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2154, N'San Nicolas', 149)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2155, N'San Pedro', 149)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2156, N'Santa Catarina', 149)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2157, N'Topala', 149)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2158, N'Jesus De Otoro', 150)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2159, N'Coclan', 150)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2160, N'El Junquillo', 150)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2161, N'San Antonio', 150)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2162, N'San Jeronimo', 150)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2163, N'San Rafael', 150)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2164, N'Magdalena', 151)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2165, N'San Juan', 151)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2166, N'Masaguara', 152)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2167, N'Guasore', 152)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2168, N'Lagunetas', 152)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2169, N'Potrerito O El Rosario', 152)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2170, N'Quiraguira', 152)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2171, N'Santa Cruz De Horcones', 152)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2172, N'San Antonio', 153)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2173, N'Baðaderos', 153)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2174, N'El Cacahuatal', 153)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2175, N'San Francisco', 153)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2176, N'San Jacinto', 153)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2177, N'San Jose', 153)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2178, N'San Sebastian', 153)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2179, N'Santa Teresa', 153)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2180, N'San Isidro', 154)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2181, N'Macuelizo O Hato Viejo', 154)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2182, N'Suyapa', 154)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2183, N'San Juan', 155)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2184, N'Llano Redondo', 155)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2185, N'Peloncitos', 155)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2186, N'San Jose De Cataulaca', 155)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2187, N'San Marcos De Sierra', 156)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2188, N'Las Delicias', 156)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2189, N'San Jose', 156)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2190, N'San Luis', 156)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2191, N'San Miguelito', 157)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2192, N'Cofradia', 157)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2193, N'Chupucay O Resina', 157)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2194, N'San Antonio', 157)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2195, N'Segua', 157)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2196, N'Santa Lucia', 158)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2197, N'Baðaderos', 158)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2198, N'El Jicaral', 158)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2199, N'Palacios', 158)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2200, N'San Marcos', 158)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2201, N'Santa Rita', 158)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2202, N'Yamaranguila', 159)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2203, N'Agua Sucia', 159)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2204, N'Azacualpa', 159)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2205, N'Cofradia', 159)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2206, N'El Carrizal', 159)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2207, N'El Cerron', 159)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2208, N'El Membrillo No. 1', 159)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2209, N'El Naranjo O Santa Lucia', 159)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2210, N'El Pelon', 159)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2211, N'El Picacho', 159)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2212, N'El Zacatal O Suyapa', 159)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2213, N'La Ceibita', 159)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2214, N'La Chorrera Aspera', 159)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2215, N'Las Lajas', 159)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2216, N'Monte Verde', 159)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2217, N'Ojos De Agua', 159)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2218, N'Oloas', 159)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2219, N'Plan De Barrios', 159)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2220, N'Planes', 159)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2221, N'Semane', 159)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2222, N'Sequire', 159)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2223, N'Zacate Blanco', 159)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2224, N'Agua Sucia', 160)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2225, N'El Naranjo O Santa Lucia', 160)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2226, N'El Zacatal Suyapa', 160)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2227, N'La Ceibita', 160)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2228, N'Chorrera Aspera', 160)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2229, N'Monte Verde', 160)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2230, N'Ojo De Agua', 160)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2231, N'Plan De Barrios', 160)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2232, N'Santa Fe', 160)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2233, N'Roatan', 161)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2234, N'Cayos Cochinos', 161)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2235, N'Corozal', 161)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2236, N'Crawfish Rock', 161)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2237, N'Flowers Bay', 161)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2238, N'French Harbor', 161)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2239, N'Sandy Bay', 161)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2240, N'Thatch Point', 161)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2241, N'West End', 161)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2242, N'Guanaja', 162)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2243, N'East End', 162)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2244, N'Mangrove Bight', 162)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2245, N'Savannah Bight', 162)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2246, N'Jose Santos Guardiola', 163)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2247, N'Calabash Bight', 163)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2248, N'Isla De Barbareta', 163)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2249, N'Jonesville Point', 163)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2250, N'Long The Shore', 163)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2251, N'Pollytilly Bight', 163)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2252, N'Punta rda', 163)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2253, N'Santa Elena O Banda Sur', 163)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2254, N'Six Huts', 163)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2255, N'Utila', 164)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2256, N'Col. Matilde Cordova', 165)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2257, N'Concepcion De Soluteca', 165)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2258, N'Matasano', 165)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2259, N'Bo. San Antonio', 165)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2260, N'San Jose Del Playon', 165)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2261, N'San Rafael', 165)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2262, N'Tepanguare', 165)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2263, N'Tierra Prieta', 165)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2264, N'Yarumela', 165)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2265, N'Bo. La Sabana O La Granja', 165)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2266, N'Aguantequerique', 166)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2267, N'Barrancaray', 166)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2268, N'Cabaðas', 167)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2269, N'Azacualpa', 167)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2270, N'El Bailadero', 167)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2271, N'El Palmar', 167)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2272, N'Las Lajitas', 167)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2273, N'Cane', 168)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2274, N'Las Calabazas', 168)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2275, N'Chinacla', 169)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2276, N'El Trapiche', 169)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2277, N'La Piedrona', 169)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2278, N'Las Pilas', 169)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2279, N'Planes De Muyen', 169)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2280, N'Portillo Del Norte', 169)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2281, N'San Marcos De Linderos', 169)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2282, N'Tierra Colorada', 169)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2283, N'Guajiquiro', 170)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2284, N'Dolores', 170)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2285, N'El Guapinol', 170)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2286, N'Guajiquirito', 170)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2287, N'Ingrula', 170)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2288, N'La Crucita', 170)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2289, N'Las Delicias', 170)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2290, N'Las Vegas Del Paraiso', 170)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2291, N'San Antonio', 170)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2292, N'San Jose', 170)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2293, N'San Marcos', 170)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2294, N'San Matias O Las Joyas', 170)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2295, N'San Pedro', 170)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2296, N'Santa Rosita', 170)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2297, N'Nueva Suyapa', 170)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2298, N'San Miguel', 170)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2299, N'San Juan', 170)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2300, N'Lauterique', 171)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2301, N'El Amate', 171)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2302, N'Las Minitas', 171)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2303, N'Ojo De Agua', 171)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2304, N'Bo. San Juan', 172)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2305, N'Sabanetas', 172)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2306, N'Santa Cruz', 172)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2307, N'Bo. El Cipres', 172)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2308, N'Bo. San Rafael', 172)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2309, N'Bo. Campo Colon', 172)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2310, N'Col. Osorio', 172)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2311, N'Col. Melgar Castro', 172)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2312, N'Bo. San Andres', 172)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2313, N'Bo. Concepcion', 172)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2314, N'Bo. San Miguel', 172)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2315, N'Mercedes De Oriente', 173)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2316, N'La londrina', 173)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2317, N'Las Lomas', 173)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2318, N'Opatoro', 174)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2319, N'El Cedro', 174)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2320, N'El Paraiso', 174)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2321, N'La Florida', 174)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2322, N'San Isidro', 174)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2323, N'Santa Cruz', 174)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2324, N'Valle De Angeles', 174)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2325, N'San Antonio Del Norte', 175)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2326, N'Hato Del Viejo', 175)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2327, N'Barreal', 175)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2328, N'Matapalo', 175)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2329, N'Pitahayas', 175)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2330, N'San Jose', 176)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2331, N'El Aguacatal', 176)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2332, N'El Pedernal', 176)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2333, N'La Florida', 176)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2334, N'San Juan', 177)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2335, N'El Quebrachal', 177)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2336, N'Horcones', 177)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2337, N'Las Trancas', 177)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2338, N'Ocotillos', 177)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2339, N'San Pedro De Tutule', 178)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2340, N'El Guayabal', 178)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2341, N'Laguna Seca', 178)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2342, N'Las Huertas', 178)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2343, N'San Miguel', 178)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2344, N'Nuevo San Francisco', 178)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2345, N'Santa Ana', 179)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2346, N'Estancia', 179)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2347, N'Juniguara', 179)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2348, N'Los Hornos', 179)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2349, N'San Antonio', 179)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2350, N'San Isidro', 179)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2351, N'San Miguel', 179)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2352, N'Santia', 179)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2353, N'Santa Elena', 180)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2354, N'Aguanqueterique', 180)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2355, N'El Carrizal No. 2', 180)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2356, N'Los Patios', 180)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2357, N'Llano Alegre', 180)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2358, N'Monte Copado', 180)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2359, N'Soloara', 180)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2360, N'Nahuaterique', 180)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2361, N'Santa Maria', 181)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2362, N'El Naranjo', 181)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2363, N'Agua Blanca', 181)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2364, N'Las Crucitas O Bo. Nuevo', 181)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2365, N'Las Pavas', 181)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2366, N'Linderos', 181)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2367, N'Los Planes', 181)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2368, N'Miratoro', 181)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2369, N'Loma De Enmedio', 181)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2370, N'Santia De Puringla', 182)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2371, N'Cedritos', 182)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2372, N'El Higuito', 182)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2373, N'El Ocotal', 182)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2374, N'El Rancho De Jesus', 182)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2375, N'Gualazara', 182)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2376, N'Hornitos', 182)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2377, N'Huertas', 182)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2378, N'Las Delicias', 182)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2379, N'San Antonio', 182)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2380, N'Yarula', 183)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2381, N'Las Huertas', 183)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2382, N'Las Lajas', 183)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2383, N'Tierra Colorada', 183)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2384, N'El Zancudo', 183)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2385, N'Gracias', 184)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2386, N'Las Vigas', 184)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2387, N'Las Pilas', 184)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2388, N'Campuca O Camalote', 184)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2389, N'Catulaca', 184)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2390, N'El Planon', 184)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2391, N'La Crucita', 184)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2392, N'Cotongual', 184)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2393, N'El Molino', 184)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2394, N'El Refugio', 184)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2395, N'La Cuchilla', 184)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2396, N'Las londrinas', 184)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2397, N'La Rinconada', 184)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2398, N'El Tablon', 184)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2399, N'La Loma Del Guayabo', 184)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2400, N'Jacan O San Isidro', 184)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2401, N'Desvio De La Asomada O Quebrada', 184)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2402, N'El Cerro', 184)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2403, N'Catancil', 184)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2404, N'Quebrada Honda', 184)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2405, N'Agua Caliente', 184)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2406, N'Villami', 184)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2407, N'Montaða Verde', 184)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2408, N'Belen', 185)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2409, N'El Carrizal', 185)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2410, N'El Naranjo O La Penca', 185)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2411, N'Las Caðadas', 185)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2412, N'Los Planes De Ojuera', 185)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2413, N'Candelaria', 186)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2414, N'La Arada', 186)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2415, N'San Francisco', 186)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2416, N'San Jose', 186)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2417, N'San Lorenzo', 186)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2418, N'Cololaca', 187)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2419, N'Casitas', 187)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2420, N'Las Flores', 187)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2421, N'Malsincales', 187)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2422, N'San Isidro Canguacota', 187)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2423, N'Erandique', 188)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2424, N'Azacualpa Grande', 188)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2425, N'Azacualpa Montaða', 188)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2426, N'Concepcion O Barrio Nuevo', 188)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2427, N'El Carrizal', 188)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2428, N'El Conal', 188)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2429, N'El Chimisal', 188)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2430, N'El Rodeo', 188)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2431, N'Gualguire', 188)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2432, N'Guatincara', 188)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2433, N'La Laguna', 188)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2434, N'San Antonio Montaða', 188)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2435, N'Azacualpita', 188)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2436, N'Valle De La Cruz', 188)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2437, N'Yolomon', 188)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2438, N'Gualcince', 189)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2439, N'Conlon', 189)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2440, N'Guacual', 189)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2441, N'Gualcea', 189)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2442, N'Guatemalita', 189)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2443, N'Quesungual', 189)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2444, N'Santa Cruz', 189)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2445, N'Santo Tomas', 189)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2446, N'San Marcos Cerique', 189)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2447, N'San Marcos Mora', 189)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2448, N'Tenan', 189)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2449, N'Tixila', 189)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2450, N'Guarita', 190)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2451, N'Chapulin Santa Lucia', 190)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2452, N'San Antonio', 190)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2453, N'San Jose Olosin', 190)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2454, N'San Juan Junigual', 190)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2455, N'San Pablo', 190)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2456, N'Santa Cruz Repastadero', 190)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2457, N'Santa Cruz Queruco', 190)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2458, N'Santo Tomas Chinquin', 190)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2459, N'Terlaca', 190)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2460, N'La Campa', 191)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2461, N'El Mezcalillo', 191)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2462, N'Las Caðadas', 191)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2463, N'Nueva Esperanza', 191)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2464, N'Santa Catarina O El Tontolo', 191)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2465, N'La Iguala', 192)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2466, N'Chusquin', 192)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2467, N'El Juncal', 192)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2468, N'El Man', 192)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2469, N'El Matasano', 192)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2470, N'El Rodeito', 192)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2471, N'El Zapote', 192)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2472, N'Guadalupe', 192)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2473, N'Lagunas', 192)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2474, N'Las Pilas', 192)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2475, N'Las Playas', 192)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2476, N'Las Olominas', 192)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2477, N'Las Vegas', 192)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2478, N'Los Llanos', 192)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2479, N'Tablones', 192)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2480, N'Llano Lar', 192)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2481, N'Monte Lar', 192)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2482, N'Nueva Paz', 192)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2483, N'Ojaca', 192)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2484, N'Potrerillos', 192)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2485, N'Quioco', 192)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2486, N'Rio Blanco', 192)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2487, N'San Isidro De Jacan', 192)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2488, N'San Jose De Curunate', 192)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2489, N'San Miguel', 192)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2490, N'Taragual', 192)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2491, N'Las Flores', 193)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2492, N'Coalaca', 193)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2493, N'El Socorro O Loma De La Cueva', 193)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2494, N'Guanas', 193)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2495, N'Mercedes', 193)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2496, N'Mariposas', 193)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2497, N'El Mongual', 193)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2498, N'Monte De La Virgen', 193)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2499, N'Nueva Esperanza', 193)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2500, N'Tepusuna', 193)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2501, N'La Union', 194)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2502, N'Agua Zarca', 194)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2503, N'El Sitio', 194)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2504, N'Gualciras', 194)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2505, N'Las Peðas', 194)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2506, N'San Bartolo', 194)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2507, N'La Virtud', 195)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2508, N'Catulaca', 195)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2509, N'El Amatillo', 195)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2510, N'El Cacahuatal O La Majada', 195)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2511, N'El Limon', 195)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2512, N'Guajiniquil', 195)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2513, N'Gualcimaca', 195)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2514, N'La Cuesta', 195)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2515, N'La Haciendita', 195)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2516, N'La Trinidad', 195)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2517, N'Los Hernandez', 195)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2518, N'San Francisco', 195)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2519, N'San Jose', 195)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2520, N'Lepaera', 196)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2521, N'Alegrias', 196)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2522, N'Arenales', 196)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2523, N'Brisas Del Ocotillo', 196)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2524, N'Buenos Aires', 196)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2525, N'Cementera', 196)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2526, N'Consolacion', 196)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2527, N'El Aguacatal', 196)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2528, N'El Barrio', 196)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2529, N'El Carmen', 196)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2530, N'El Chaguite', 196)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2531, N'El Matasanito', 196)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2532, N'El Rosario', 196)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2533, N'La Estancia', 196)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2534, N'Gualan', 196)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2535, N'Jagua', 196)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2536, N'La Laguna Del Pedernal', 196)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2537, N'La Libertad', 196)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2538, N'La Lima', 196)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2539, N'La Rinconada', 196)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2540, N'Laguna De Pajapas', 196)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2541, N'Las Crucitas', 196)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2542, N'Las Dantas', 196)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2543, N'Las Pilas De Canmaya', 196)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2544, N'Las Tejeras', 196)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2545, N'Loma Alta', 196)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2546, N'Cerritos No. 1', 196)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2547, N'Cerritos No. 2', 196)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2548, N'Mercedes Ocotillo', 196)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2549, N'Misiora', 196)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2550, N'Nueva Eden O El Eden', 196)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2551, N'Ocote Chacho', 196)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2552, N'Ocotillo Tierra Colorada', 196)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2553, N'Pajapas', 196)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2554, N'Plan De La Pua', 196)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2555, N'Plan Del Jarro O Santa Eduviges', 196)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2556, N'Plan Del Ocotal', 196)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2557, N'Plan Del Socorro O El Cerron', 196)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2558, N'Plan Grande', 196)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2559, N'Playitas', 196)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2560, N'San Isidro El Belloto', 196)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2561, N'Santa Rita', 196)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2562, N'Tierra Colorada', 196)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2563, N'Yuena', 196)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2564, N'Yuenita', 196)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2565, N'Mapulaca', 197)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2566, N'El Sitio', 197)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2567, N'Los Planes', 197)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2568, N'El Llano De La Hamaca', 197)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2569, N'San Antonio', 197)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2570, N'Piraera', 198)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2571, N'Las Moras', 198)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2572, N'Quisimaca', 198)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2573, N'San Felipe', 198)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2574, N'San Jeronimo', 198)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2575, N'San Jose', 198)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2576, N'San Pedrito', 198)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2577, N'San Sebastian', 198)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2578, N'Santa Lucia Guasquin', 198)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2579, N'Suyapita O Pichigual', 198)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2580, N'San Andres', 199)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2581, N'Caona', 199)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2582, N'Cenalaca', 199)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2583, N'Esquimpara', 199)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2584, N'San Simon', 199)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2585, N'Santia', 199)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2586, N'Sosoal', 199)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2587, N'Sunsulaca', 199)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2588, N'San Francisco', 200)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2589, N'Concordia', 200)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2590, N'Jelpoa', 200)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2591, N'Magdalena', 200)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2592, N'Maiquira', 200)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2593, N'Rorruca', 200)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2594, N'San Lucas', 200)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2595, N'San Juan Guarita', 201)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2596, N'El Rodeo', 201)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2597, N'Los Horcones', 201)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2598, N'Portillo Del Frayle O Del Agua', 201)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2599, N'Pueblo Viejo', 201)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2600, N'Sazalapa', 201)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2601, N'San Manuel Colohete', 202)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2602, N'Corante', 202)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2603, N'Guacutao', 202)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2604, N'Piedra Larga', 202)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2605, N'Pulaje', 202)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2606, N'San Antonio', 202)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2607, N'San Antonio Del Aguacatillo', 202)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2608, N'San Pedro', 202)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2609, N'Santa Teresa', 202)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2610, N'Tierra Colorada', 202)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2611, N'San Rafael', 203)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2612, N'Concepcion', 203)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2613, N'El Campanario', 203)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2614, N'El Eden', 203)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2615, N'Queruco', 203)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2616, N'San Antonio', 203)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2617, N'San Jose De La Montaða', 203)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2618, N'San Pedrito', 203)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2619, N'Suyapa', 203)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2620, N'San Sebastian', 204)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2621, N'Cuesta Canacol', 204)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2622, N'El Cutal', 204)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2623, N'El Sucte', 204)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2624, N'El Volcancito', 204)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2625, N'San Antonio', 204)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2626, N'San Isidro', 204)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2627, N'Santa Cruz', 205)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2628, N'Candelaria', 205)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2629, N'Loma Limpia', 205)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2630, N'Pajapas', 205)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2631, N'San Pedro', 205)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2632, N'Santa Rosa', 205)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2633, N'Talgua', 206)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2634, N'Cansincamon', 206)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2635, N'El Aguacate', 206)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2636, N'El Camalote', 206)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2637, N'El Ciruelito', 206)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2638, N'El Higuito O Ciliantuque', 206)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2639, N'El Matasano', 206)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2640, N'El Pinabetal', 206)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2641, N'La Cafetalera', 206)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2642, N'La Peða', 206)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2643, N'La Rinconada', 206)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2644, N'La Tejera', 206)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2645, N'Las Lajitas', 206)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2646, N'San Ramon', 206)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2647, N'Tambla', 207)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2648, N'El Zarzal', 207)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2649, N'San Francisco Del Aceituno', 207)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2650, N'Santa Guadalupe O Chorrera', 207)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2651, N'Tomala', 208)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2652, N'Azacualpa', 208)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2653, N'El Copante', 208)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2654, N'Soledad Del Morro', 208)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2655, N'Los Horconcillos', 208)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2656, N'Los Zuncuyos', 208)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2657, N'San Cristobal', 208)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2658, N'San Juan', 208)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2659, N'San Lorenzo', 208)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2660, N'San Marquitos', 208)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2661, N'San Pablo De Consolacion', 208)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2662, N'Santo Domin', 208)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2663, N'Valladolid', 209)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2664, N'Agua Zarca', 209)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2665, N'Chancoyote', 209)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2666, N'El Cordoncillo', 209)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2667, N'El Socorro', 209)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2668, N'El Yupural', 209)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2669, N'Gualcixe', 209)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2670, N'Los Patios', 209)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2671, N'Los Reales', 209)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2672, N'San Lorenzo O La Hacienda', 209)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2673, N'Santa Barbara', 209)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2674, N'Tierra Blanca', 209)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2675, N'Virginia', 210)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2676, N'Agua Zarca', 210)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2677, N'Celilac', 210)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2678, N'El Rodeo', 210)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2679, N'Guaquincora', 210)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2680, N'Caiquin', 211)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2681, N'Coalaca', 211)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2682, N'Guanajulque', 211)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2683, N'Laguna Seca', 211)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2684, N'Col. Las Americas', 212)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2685, N'Antigua Ocotepeque', 212)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2686, N'El Espinal', 212)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2687, N'El Volcan', 212)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2688, N'La Comunidad', 212)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2689, N'Pie Del Cerro', 212)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2690, N'San Jose De La Reunion', 212)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2691, N'San Miguel', 212)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2692, N'San Rafael', 212)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2693, N'Belen Gualcho', 213)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2694, N'Cerro Grande', 213)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2695, N'Cerro Verde', 213)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2696, N'El Cipres', 213)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2697, N'El Magueyal', 213)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2698, N'El Paraiso', 213)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2699, N'Jualaca', 213)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2700, N'La cia', 213)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2701, N'La Moaga', 213)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2702, N'La Tejera', 213)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2703, N'Palos Blancos', 213)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2704, N'Suyande', 213)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2705, N'Yaruchel', 213)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2706, N'Concepcion', 214)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2707, N'San Jose', 214)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2708, N'Santa Anita', 214)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2709, N'Tulas', 214)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2710, N'Dolores Merendon', 215)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2711, N'San Jeronimo', 215)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2712, N'Fraternidad', 216)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2713, N'Las Cruces', 216)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2714, N'Los Vados', 216)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2715, N'San Francisco', 216)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2716, N'La Encarnacion', 217)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2717, N'Cuajo Seco O Las Delicias', 217)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2718, N'El Limoncito', 217)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2719, N'El Naranjo', 217)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2720, N'San Antonio De Limoncito', 217)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2721, N'Sesesmiles', 217)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2722, N'La Labor', 218)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2723, N'El Ingenio', 218)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2724, N'El Rosario', 218)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2725, N'Llano Lar', 218)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2726, N'Montepeque', 218)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2727, N'Pashapa', 218)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2728, N'Santa Efigenia', 218)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2729, N'Santa Lucia', 218)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2730, N'Lucerna', 219)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2731, N'La Concordia', 219)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2732, N'Rio Hondo', 219)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2733, N'Santa Rosita', 219)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2734, N'Mercedes', 220)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2735, N'Concepcion', 220)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2736, N'El Coral', 220)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2737, N'El Limoncito', 220)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2738, N'Laguna Seca', 220)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2739, N'Las Vegas Del Rio Chiquito', 220)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2740, N'Plan Del Rosario', 220)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2741, N'San Antonio', 220)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2742, N'San Jose De Jocotan', 220)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2743, N'Yuscaran', 220)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2744, N'La Cruz Alta', 220)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2745, N'Banderillas', 220)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2746, N'El Tular', 220)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2747, N'Las Minas El Tular', 220)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2748, N'Miraflores', 220)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2749, N'Yaruconte', 220)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2750, N'San Juan', 220)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2751, N'San Jose Chaguites', 220)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2752, N'Las Barrancas', 220)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2753, N'San Jose Las Lomas', 220)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2754, N'Plan del Limo', 220)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2755, N'San Fernando', 221)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2756, N'El Manzano', 221)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2757, N'El Rosario', 221)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2758, N'Nuevo Espiritu', 221)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2759, N'Queseras', 221)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2760, N'San Antonio De Curaren', 221)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2761, N'San Jose De Curaren', 221)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2762, N'Santa Ines', 221)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2763, N'Sulay', 221)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2764, N'San Francisco Del Valle', 222)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2765, N'Coloal', 222)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2766, N'El Sile', 222)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2767, N'El Tablon', 222)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2768, N'La Laguna', 222)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2769, N'Santa Teresa', 222)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2770, N'Sinacar', 222)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2771, N'San Jorge', 223)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2772, N'El Rastrojon O Nueva Esperanza', 223)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2773, N'El Socorro', 223)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2774, N'Las Lagunas', 223)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2775, N'Los Planes', 223)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2776, N'Rio Blanco', 223)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2777, N'Santa Elena', 223)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2778, N'San Marcos', 224)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2779, N'Callejones', 224)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2780, N'Cunce', 224)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2781, N'El Carrizal', 224)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2782, N'El Granzal', 224)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2783, N'El Jaralon O Nueva Aldea', 224)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2784, N'El Refugio', 224)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2785, N'El Transito', 224)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2786, N'La Ascension', 224)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2787, N'Potrerillos', 224)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2788, N'Sabana Larga', 224)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2789, N'San Juan', 224)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2790, N'San Luis', 224)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2791, N'Santa Martha', 224)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2792, N'La Lima', 224)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2793, N'El Pinal', 224)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2794, N'El Prado', 224)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2795, N'El Playon', 224)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2796, N'La Culebrilla, El Playon', 224)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2797, N'Planes, El Playon', 224)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2798, N'El Cerro Colopeca', 224)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2799, N'Santa Fe', 225)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2800, N'Agua Caliente', 225)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2801, N'El Mojanal', 225)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2802, N'La Quesera', 225)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2803, N'Los Encinos', 225)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2804, N'Piedras Bonitas', 225)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2805, N'Piðuelas', 225)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2806, N'Sunnete', 225)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2807, N'Sensenti', 226)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2808, N'Azacualpa', 226)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2809, N'Col. Santa Cruz', 226)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2810, N'El Matasano', 226)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2811, N'Gualtaya', 226)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2812, N'La Loma O San Felipe', 226)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2813, N'Las Mesitas', 226)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2814, N'Los Planes', 226)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2815, N'San Antonio', 226)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2816, N'San Francisco De Los Cones', 226)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2817, N'Sinuapa', 227)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2818, N'Cacalguapa', 227)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2819, N'El Carrizal', 227)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2820, N'El Moral', 227)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2821, N'El Ocotillo', 227)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2822, N'El Peðasco', 227)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2823, N'Tepezcuinte', 227)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2824, N'La Laborcita', 227)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2825, N'Plan Del Rancho', 227)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2826, N'Valle De Mercedes', 227)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2827, N'Veracruz', 227)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2828, N'Juticalpa', 228)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2829, N'Calpules No. 2', 228)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2830, N'Arimis', 228)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2831, N'Azacualpa Vieja', 228)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2832, N'Bijagual', 228)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2833, N'Calpules No. 1', 228)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2834, N'Hacda. Las Tres Carabelas', 228)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2835, N'Casas Viejas', 228)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2836, N'Cayo Blanco', 228)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2837, N'El Bijao', 228)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2838, N'El Carbonal', 228)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2839, N'El Chaparro', 228)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2840, N'El Encinal No. 1', 228)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2841, N'El Encinal No. 2', 228)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2842, N'El Espinal', 228)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2843, N'El Higuerito', 228)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2844, N'El Plan De Los Ciruelos', 228)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2845, N'El Plomo', 228)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2846, N'Santa Cruz Del Potrero', 228)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2847, N'El Rincon De Mamisaca', 228)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2848, N'El Rusio', 228)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2849, N'El Tigre', 228)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2850, N'El Zarzal', 228)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2851, N'Guacamaya', 228)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2852, N'Jutiquile', 228)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2853, N'La Concepcion', 228)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2854, N'La Empalizada', 228)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2855, N'Plan De Benito', 228)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2856, N'La Puerta', 228)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2857, N'La Sierra Lepaguare', 228)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2858, N'La Venta', 228)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2859, N'Las Flores', 228)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2860, N'Las Lomas', 228)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2861, N'Las Llaves', 228)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2862, N'Las Minas', 228)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2863, N'Limones', 228)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2864, N'El Cacao', 228)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2865, N'Panuaya', 228)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2866, N'Potrerillos O Campo', 228)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2867, N'Pueblo Nuevo', 228)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2868, N'Punuare', 228)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2869, N'Pusunca O San Agustin', 228)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2870, N'Esquilinchuche', 228)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2871, N'Rancho Quemado', 228)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2872, N'San Antonio De Sara', 228)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2873, N'La Majadita', 228)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2874, N'San Juan', 228)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2875, N'San Marcos', 228)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2876, N'San Nicolas', 228)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2877, N'San Pedro De La Joya', 228)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2878, N'Santa Ines O Las Parras', 228)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2879, N'Sincuyapa', 228)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2880, N'Tapiquile', 228)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2881, N'Telica', 228)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2882, N'Barranquillas', 228)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2883, N'Trojas Arriba', 228)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2884, N'Zopilotepe', 228)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2885, N'Campamento', 229)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2886, N'El Nance', 229)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2887, N'Chifirin', 229)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2888, N'La Lima', 229)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2889, N'La Manaca', 229)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2890, N'Los Cortes', 229)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2891, N'Moran', 229)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2892, N'Quebrada Grande', 229)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2893, N'Catacamas', 230)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2894, N'Bacadia', 230)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2895, N'Concepcion De Rio Tinto', 230)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2896, N'El Cerro', 230)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2897, N'El Pataste', 230)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2898, N'La Bodega', 230)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2899, N'La Colonia Agricola', 230)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2900, N'La Colonia De Poncaya', 230)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2901, N'La Cruz', 230)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2902, N'La Gloria Del Pataste', 230)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2903, N'La Sosa', 230)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2904, N'Las Mesetas', 230)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2905, N'San Jose De Rio Tinto', 230)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2906, N'Bijaguita', 230)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2907, N'Siguate', 230)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2908, N'La Pintada', 230)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2909, N'Concordia', 231)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2910, N'Amaranguiles', 231)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2911, N'El Portillo', 231)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2912, N'Juan Francisco', 231)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2913, N'La Laguna', 231)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2914, N'Las Animas', 231)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2915, N'Lavaderos', 231)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2916, N'Pedernales', 231)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2917, N'Terreros Blancos', 231)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2918, N'Villa De Fatima O El Tablon', 231)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2919, N'Villa Vieja', 231)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2920, N'Dulce Nombre De Culmi', 232)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2921, N'Agua Blanca', 232)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2922, N'Agua Buena', 232)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2923, N'Aguaquire', 232)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2924, N'El Cerro', 232)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2925, N'El Zapote', 232)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2926, N'La Campana', 232)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2927, N'La Colonia', 232)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2928, N'La Esperanza O Plan De Los Blancos', 232)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2929, N'La Llorona', 232)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2930, N'La Pimienta', 232)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2931, N'La Union O El Guano', 232)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2932, N'Las Casitas', 232)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2933, N'Las Flores', 232)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2934, N'Las Marias', 232)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2935, N'Las Minas', 232)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2936, N'Los Angeles', 232)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2937, N'Nueva Esperanza', 232)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2938, N'Paulaya', 232)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2939, N'Pueblo Viejo', 232)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2940, N'Rio Negro', 232)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2941, N'San Jose De La Montaða', 232)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2942, N'San Pedro De Pisijire', 232)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2943, N'Subirana', 232)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2944, N'Suyapita', 232)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2945, N'Tropical Plywood', 232)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2946, N'Vallecito', 232)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2947, N'El Rosario', 233)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2948, N'El Ocotal', 233)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2949, N'El Salitre', 233)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2950, N'La Ceiba', 233)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2951, N'Las Lajas', 233)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2952, N'Los Zapotes', 233)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2953, N'Rio Tabaco', 233)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2954, N'Yupite', 233)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2955, N'Esquipulas Del Norte', 234)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2956, N'El Carrizal', 234)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2957, N'El Encino', 234)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2958, N'El Rio', 234)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2959, N'La Zuncuya', 234)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2960, N'Los Encuentros', 234)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2961, N'Miramar', 234)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2962, N'Palmira', 234)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2963, N'Gualaco', 235)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2964, N'Chindona', 235)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2965, N'Jicalapa', 235)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2966, N'La Boca', 235)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2967, N'La Venta', 235)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2968, N'Las Lomas', 235)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2969, N'Saguay', 235)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2970, N'San Antonio', 235)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2971, N'San Antonio De Pacura', 235)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2972, N'San Buenaventura', 235)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2973, N'San Pedro', 235)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2974, N'Vargas', 235)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2975, N'Las Aguilas', 235)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2976, N'Guarizama', 236)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2977, N'El Zapotal', 236)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2978, N'La Carta', 236)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2979, N'Los Cajones', 236)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2980, N'Trinidad', 236)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2981, N'Guata', 237)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2982, N'Cerro Galan', 237)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2983, N'Corralitos', 237)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2984, N'La Ensenada', 237)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2985, N'La Estancia', 237)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2986, N'Pueblo Viejo', 237)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2987, N'Guayape', 238)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2988, N'Coyoles', 238)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2989, N'El Coyol', 238)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2990, N'El Coyolar', 238)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2991, N'El Paraiso', 238)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2992, N'El Paso De La Hoya', 238)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2993, N'El Rodeo', 238)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2994, N'Jucurunca', 238)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2995, N'La Concepcion', 238)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2996, N'Monte Grande', 238)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2997, N'San Jose', 238)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2998, N'Santa Cruz De Guayape', 238)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (2999, N'Suyapita', 238)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3000, N'Tabloncitos', 238)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3001, N'Vallecito', 238)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3002, N'Jano', 239)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3003, N'Comayaguela', 239)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3004, N'El Zapotillo', 239)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3005, N'La Pita', 239)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3006, N'La Victoria', 239)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3007, N'Las Labranzas', 239)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3008, N'Pacaya', 239)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3009, N'Pintora', 239)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3010, N'La Union', 240)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3011, N'El Dictamo', 240)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3012, N'La Pita', 240)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3013, N'Los Encuentros', 240)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3014, N'Palala', 240)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3015, N'Mangulile', 241)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3016, N'Camalotillo', 241)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3017, N'El Aguila', 241)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3018, N'El Cerro', 241)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3019, N'El Potrero', 241)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3020, N'El Terrero', 241)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3021, N'Guata', 241)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3022, N'Julian', 241)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3023, N'La Chinga', 241)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3024, N'La Peða O Portillo De La Peða', 241)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3025, N'Lomitas', 241)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3026, N'Los Blancos', 241)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3027, N'Mangulilito', 241)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3028, N'Quebrada Grande', 241)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3029, N'San Antonio', 241)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3030, N'Silaca', 241)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3031, N'Manto', 242)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3032, N'Amacuapa', 242)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3033, N'Boca Del Monte', 242)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3034, N'El Bebedero', 242)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3035, N'El Cerro', 242)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3036, N'Jimasque', 242)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3037, N'Sabana Larga', 242)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3038, N'San Antonio', 242)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3039, N'Uluapa', 242)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3040, N'Salama', 243)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3041, N'Cofradia', 243)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3042, N'Jutiapa', 243)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3043, N'La Jagua', 243)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3044, N'Mendez', 243)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3045, N'Pozo Zarco', 243)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3046, N'Sabana Grande', 243)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3047, N'Bo. Abajo', 243)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3048, N'San Esteban', 244)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3049, N'Agua Blanca', 244)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3050, N'Carnizuelar', 244)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3051, N'Conquire', 244)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3052, N'Coronado', 244)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3053, N'Corral Viejo', 244)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3054, N'El Aguacate', 244)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3055, N'El Ciruelo', 244)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3056, N'El Limonal', 244)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3057, N'El Ocote', 244)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3058, N'El Quebrachal', 244)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3059, N'El Tunal', 244)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3060, N'La Concepcion', 244)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3061, N'Las Manzanas', 244)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3062, N'Las Trojes', 244)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3063, N'Moreno', 244)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3064, N'Corocito', 244)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3065, N'San Agustin Abajo', 244)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3066, N'San Martin', 244)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3067, N'Santa Maria', 244)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3068, N'Santa Maria Del Carbon', 244)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3069, N'Toro Muerto', 244)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3070, N'San Francisco De Becerra', 245)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3071, N'Bella Vista', 245)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3072, N'El Guineo', 245)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3073, N'Laguna Seca', 245)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3074, N'Las Tres Ceibas', 245)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3075, N'San Luis', 245)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3076, N'Santa Marta', 245)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3077, N'San Francisco De La Paz', 246)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3078, N'El Carrizal', 246)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3079, N'El Guapinol', 246)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3080, N'El Nance', 246)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3081, N'El Ocotal', 246)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3082, N'El Ocote', 246)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3083, N'El Pedregal', 246)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3084, N'Guacoca', 246)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3085, N'Aguacatales', 246)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3086, N'Regadio', 246)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3087, N'San Agustin', 246)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3088, N'Santa Ana', 246)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3089, N'Tilapa', 246)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3090, N'Santa Maria Del Real', 247)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3091, N'El Guayabito', 247)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3092, N'San Carlos De Las Flores', 247)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3093, N'Silca', 248)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3094, N'El Carbonal', 248)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3095, N'La Cruz', 248)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3096, N'Panuaya', 248)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3097, N'Parumble Nuevo', 248)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3098, N'Santa Elena', 248)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3099, N'Yocon', 249)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3100, N'Caðada Galana', 249)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3101, N'El Cuabano', 249)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3102, N'El Garrafon', 249)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3103, N'La Empalizada', 249)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3104, N'El Ocotal Del Naipe', 249)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3105, N'San Antonio', 249)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3106, N'San Pedro', 249)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3107, N'Santa Rita O Plan Del Conejo', 249)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3108, N'Arenas Blancas Abajo', 250)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3109, N'El Ocotillal', 250)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3110, N'Guineo Abajo', 250)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3111, N'Guineo Arriba', 250)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3112, N'La Laguna', 250)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3113, N'La Libertad No. 1', 250)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3114, N'Las Planchas', 250)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3115, N'Nueva Choluteca', 250)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3116, N'Froylan Turcios', 250)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3117, N'Onofio', 250)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3118, N'San Fernando', 250)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3119, N'El Coyolito', 250)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3120, N'Terrero Blanco', 250)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3121, N'Santa Barbara', 251)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3122, N'Agua Blanquita', 251)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3123, N'Cerro Grande', 251)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3124, N'El Diez Y Ocho O Miraflores', 251)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3125, N'El Moguete', 251)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3126, N'Gualjoco', 251)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3127, N'La Ceibita', 251)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3128, N'La Cuesta', 251)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3129, N'La Estancia', 251)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3130, N'La Union Del Dorado', 251)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3131, N'Las Crucitas', 251)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3132, N'Las Quebradas', 251)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3133, N'Los Anises', 251)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3134, N'Los Bancos', 251)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3135, N'Los Laureles', 251)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3136, N'Macholoa', 251)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3137, N'Rio Seco', 251)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3138, N'San Gaspar De Tablones', 251)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3139, N'San Luis De Planes', 251)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3140, N'Santa Rita De Oriente', 251)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3141, N'San Jeronimo Del Pinal', 251)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3142, N'Arada', 252)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3143, N'Buena Vista', 252)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3144, N'Candelaria', 252)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3145, N'Caulotales', 252)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3146, N'El Ocotal', 252)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3147, N'El Ocotillo', 252)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3148, N'El Palmo', 252)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3149, N'El Tular', 252)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3150, N'Las Brisas De Oro', 252)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3151, N'Los Planes', 252)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3152, N'Sorca', 252)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3153, N'Atima', 253)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3154, N'Berlin', 253)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3155, N'Lempa', 253)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3156, N'Nueva Victoria', 253)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3157, N'San Jose De Buena Vista', 253)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3158, N'San Pedrito', 253)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3159, N'San Rafael', 253)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3160, N'Talanga', 253)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3161, N'Azacualpa', 254)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3162, N'Agualote', 254)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3163, N'Buenos Aires', 254)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3164, N'El Naranjo', 254)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3165, N'El Pinabete', 254)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3166, N'Joconal', 254)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3167, N'Laguna Verde', 254)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3168, N'La Puerta', 254)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3169, N'Loma Alta', 254)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3170, N'San Antonio', 254)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3171, N'Ceguaca', 255)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3172, N'El Eden', 255)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3173, N'La Libertad', 255)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3174, N'San Juan', 255)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3175, N'Santa Ana O Las Lomas', 255)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3176, N'San Jose De Colinas', 256)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3177, N'Agua Helada', 256)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3178, N'Cacahulapa', 256)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3179, N'El Ceibon', 256)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3180, N'El Encanto', 256)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3181, N'El Jicaral', 256)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3182, N'El Pacayalito', 256)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3183, N'El Pastorero', 256)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3184, N'El Pinabete', 256)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3185, N'El Porvenir', 256)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3186, N'El Triunfo', 256)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3187, N'Hundiciones', 256)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3188, N'La Alianza', 256)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3189, N'La Comunidad', 256)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3190, N'La Isla', 256)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3191, N'La Libertad', 256)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3192, N'La Nueva Florida', 256)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3193, N'La Union', 256)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3194, N'Laguna Colorada', 256)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3195, N'Laguna Inea', 256)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3196, N'Las Joyas', 256)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3197, N'Loma Larga', 256)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3198, N'Nueva Esperanza', 256)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3199, N'Peña Blanca', 256)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3200, N'Piedra Grande', 256)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3201, N'San Francisco Del Carrizal', 256)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3202, N'San Jose De Colon', 256)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3203, N'San Luis De Pacayal', 256)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3204, N'San Luis Planes', 256)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3205, N'San Miguel De Lajas', 256)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3206, N'Santa Cruz Cuchilla', 256)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3207, N'Victoria', 256)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3208, N'Concepcion Del Norte', 257)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3209, N'Agua Dulce', 257)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3210, N'Buena Vista', 257)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3211, N'Concordia', 257)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3212, N'Cuchilla Alta', 257)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3213, N'El Cerron', 257)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3214, N'Macuelizo', 257)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3215, N'El Robledal', 257)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3216, N'El Volcan', 257)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3217, N'La Laguna De Proteccion', 257)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3218, N'Las Flores', 257)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3219, N'Santa Ana', 257)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3220, N'Suyapa', 257)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3221, N'El Camalotal', 257)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3222, N'Concepcion Del Sur', 258)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3223, N'El Aguaje', 258)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3224, N'El Playon', 258)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3225, N'La Vueltosa', 258)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3226, N'Nueva Esperanza', 258)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3227, N'Chinda', 259)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3228, N'Bo. Nuevo O Chiquiguite', 259)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3229, N'El Limon', 259)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3230, N'El Retiro', 259)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3231, N'El Tule', 259)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3232, N'La Brea', 259)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3233, N'La Cuchilla', 259)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3234, N'Platanares', 259)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3235, N'Rio Caðas', 259)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3236, N'San Rafael', 259)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3237, N'El Nispero', 260)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3238, N'El Paraiso', 260)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3239, N'El Tontolo', 260)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3240, N'Nejapa', 260)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3241, N'Nueva York', 260)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3242, N'San Jeronimo', 260)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3243, N'Santa Cruz', 260)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3244, N'Gualala', 261)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3245, N'Arenales', 261)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3246, N'El Carrizal', 261)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3247, N'Guacamaya', 261)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3248, N'Gualjoquito', 261)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3249, N'Platanares', 261)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3250, N'Quebrada Arriba', 261)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3251, N'Santa Rosita', 261)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3252, N'Ilama', 262)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3253, N'Agua Zarca', 262)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3254, N'Cececapa', 262)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3255, N'La Caðada', 262)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3256, N'La Cuchilla', 262)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3257, N'La Estancia', 262)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3258, N'La Fe', 262)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3259, N'La Mica', 262)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3260, N'La Montaðita', 262)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3261, N'San Jose De Oriente', 262)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3262, N'San Juan De La Cruz', 262)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3263, N'San Vicente De Las Nieves', 262)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3264, N'Uncana', 262)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3265, N'Macuelizo', 263)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3266, N'Agua Helada', 263)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3267, N'Aldea Nueva', 263)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3268, N'Buena Vista', 263)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3269, N'Callejones O La Libertad', 263)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3270, N'Casa Quemada', 263)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3271, N'Chiquila', 263)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3272, N'El Ciruelo', 263)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3273, N'El Manguito', 263)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3274, N'El Pital', 263)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3275, N'El Rosario', 263)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3276, N'La Cumbre De Palmichal', 263)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3277, N'Cunta', 263)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3278, N'La Flecha', 263)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3279, N'La Vena', 263)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3280, N'La Virtud', 263)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3281, N'Laguna Seca', 263)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3282, N'Las Delicias', 263)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3283, N'Las Flores', 263)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3284, N'Las Minas', 263)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3285, N'Las Varas', 263)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3286, N'Mata De Platano', 263)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3287, N'Ojos De Agua', 263)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3288, N'Piðuelas', 263)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3289, N'Rio Blanco', 263)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3290, N'Sabanetas', 263)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3291, N'San Antonio De La Cumbre', 263)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3292, N'San Antonio De Macuelizo', 263)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3293, N'Sula', 263)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3294, N'Zapotalito', 263)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3295, N'Naranjito', 264)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3296, N'Camacal', 264)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3297, N'El Nisperal', 264)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3298, N'El Portillo', 264)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3299, N'Jimilile', 264)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3300, N'Las Crucitas', 264)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3301, N'Los Corrales', 264)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3302, N'Quebrada Del Rancho', 264)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3303, N'San Isidro', 264)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3304, N'San Juan', 264)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3305, N'Santa Ana', 264)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3306, N'Santia De Posta', 264)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3307, N'Ulapa', 264)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3308, N'Nuevo Celilac', 265)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3309, N'La Aradita', 265)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3310, N'Las Crucitas', 265)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3311, N'Nueva Jalapa O Tierra Blanca', 265)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3312, N'San Jeronimo Del Pìnal', 265)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3313, N'San Nicolasito', 265)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3314, N'Valle De La Cruz', 265)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3315, N'Agua Salada', 265)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3316, N'Petoa', 266)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3317, N'Barandillales', 266)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3318, N'Camalotales', 266)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3319, N'El Paraiso', 266)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3320, N'El Plan De Olola', 266)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3321, N'Las Flores', 266)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3322, N'Mezcalito', 266)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3323, N'Pueblo Nuevo', 266)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3324, N'Quebraditas', 266)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3325, N'San Antonio De La Majada', 266)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3326, N'Sn Joaquin', 266)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3327, N'San Jose De La Majada', 266)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3328, N'Santa Clara', 266)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3329, N'Santo Domin', 266)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3330, N'Proteccion', 267)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3331, N'Buenos Aires', 267)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3332, N'El Chile', 267)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3333, N'El Encanto', 267)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3334, N'El Ocote', 267)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3335, N'El Triunfo O El Juncal', 267)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3336, N'La Jaguilla O Loma Encerrada', 267)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3337, N'La Laguna', 267)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3338, N'La Reina', 267)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3339, N'La Ruidosa', 267)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3340, N'Las Delicias O Las Loras', 267)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3341, N'Las Vueltas', 267)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3342, N'Pueblo Nuevo', 267)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3343, N'Zambrano', 267)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3344, N'Quimistan', 268)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3345, N'Agua Sucia', 268)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3346, N'Aldea Nueva O La Divisoria', 268)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3347, N'Buenos Aires', 268)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3348, N'Camalote', 268)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3349, N'Correderos', 268)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3350, N'El Aguacate', 268)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3351, N'El Chaguite', 268)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3352, N'El Higuerito', 268)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3353, N'El Tablon', 268)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3354, N'La Acequia', 268)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3355, N'La Ceibita', 268)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3356, N'La Guasma', 268)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3357, N'La Mina', 268)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3358, N'La Montaðita', 268)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3359, N'Nueva Esperanza', 268)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3360, N'Laguna Del Carmen', 268)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3361, N'Las Crucitas', 268)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3362, N'Las Flores Del Rio Chiquito', 268)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3363, N'Milpa Arada', 268)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3364, N'Naco', 268)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3365, N'Nueva Esperanza De Rio Chiquito', 268)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3366, N'Ocotal Tupido', 268)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3367, N'Pichinel', 268)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3368, N'Pinalejo', 268)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3369, N'Rio Blanco', 268)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3370, N'San Isidro', 268)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3371, N'San Jose Del Cacao', 268)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3372, N'San Juan Del Sitio', 268)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3373, N'San Miguel Del Paso Viejo', 268)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3374, N'Santa Cruz Minas', 268)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3375, N'Tierra Amarilla', 268)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3376, N'San Francisco De Ojuera', 269)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3377, N'El Diviso', 269)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3378, N'El Gavilan', 269)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3379, N'El Pilon', 269)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3380, N'La Chorrera', 269)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3381, N'La Palca', 269)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3382, N'La Vega', 269)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3383, N'Plan De Los Cedros', 269)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3384, N'Pueblo Nuevo', 269)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3385, N'San Isidro', 269)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3386, N'San Ramon', 269)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3387, N'Santa Ana', 269)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3388, N'Santa Fe', 269)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3389, N'San Luis', 270)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3390, N'Calpules', 270)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3391, N'El Sauce', 270)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3392, N'El Regadio', 270)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3393, N'Las Flores', 270)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3394, N'Las Rosas', 270)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3395, N'La Union O El Playon', 270)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3396, N'Nisperales', 270)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3397, N'Palma Real', 270)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3398, N'San Francisco', 270)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3399, N'San Isidro', 270)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3400, N'San Juan', 270)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3401, N'San Miguel Cuabanales', 270)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3402, N'Santa Elena', 270)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3403, N'Tejutales', 270)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3404, N'Tatoca O El Barro', 270)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3405, N'Villa Luz', 270)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3406, N'San Marcos', 271)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3407, N'Agua Tapada', 271)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3408, N'Bella Vista', 271)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3409, N'Campo Alegre', 271)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3410, N'Corralito', 271)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3411, N'Chumbagua', 271)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3412, N'El Chorro', 271)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3413, N'El Llano De Los Panales', 271)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3414, N'El Robledal', 271)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3415, N'La Presa', 271)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3416, N'La Puerta', 271)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3417, N'Las Minitas', 271)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3418, N'Piletas', 271)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3419, N'Plan De Olola', 271)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3420, N'Potrerillos', 271)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3421, N'Regadio', 271)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3422, N'San Francisco De Los Valles', 271)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3423, N'Sitio Viejo', 271)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3424, N'Zapote No. 1', 271)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3425, N'Zapote No. 2', 271)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3426, N'San Nicolas', 272)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3427, N'Cruz Grande', 272)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3428, N'Choloma O Hacienda Las Minitas', 272)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3429, N'El Descansadero', 272)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3430, N'Pinalejo', 272)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3431, N'El Porvenir', 272)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3432, N'El Resumidero', 272)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3433, N'La Cuchilla', 272)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3434, N'San Manuel Del Triunfo', 272)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3435, N'Santa Cruz', 272)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3436, N'San Pedro Zacapa', 273)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3437, N'Agua Caliente', 273)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3438, N'Azacualpa', 273)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3439, N'Canculuncos', 273)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3440, N'El Mote', 273)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3441, N'El Ocote', 273)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3442, N'Horconcitos', 273)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3443, N'La Boquita', 273)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3444, N'Mojarras', 273)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3445, N'San Antonio De Chuchepeque', 273)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3446, N'Santa Rita', 274)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3447, N'El Aguaje', 274)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3448, N'El Jengibral', 274)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3449, N'El Teuxinte', 274)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3450, N'San Fernando', 274)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3451, N'San Vicente Centenario', 275)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3452, N'Trinidad', 276)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3453, N'Cebadilla', 276)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3454, N'Chimizales', 276)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3455, N'El Carmen', 276)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3456, N'El Corozal', 276)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3457, N'El Diviso', 276)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3458, N'El Guineal', 276)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3459, N'El Higuito', 276)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3460, N'El Rodeo', 276)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3461, N'El Tigre', 276)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3462, N'El Tumbo', 276)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3463, N'La Alegria', 276)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3464, N'La Anstura', 276)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3465, N'La Huerta', 276)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3466, N'La Union', 276)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3467, N'Las Delicias', 276)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3468, N'Las Trojes', 276)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3469, N'Matasanales', 276)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3470, N'Pinabete O Loma Limpia', 276)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3471, N'San Francisco', 276)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3472, N'Santa Rosita', 276)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3473, N'Tascalapa', 276)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3474, N'Las Vegas', 277)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3475, N'El Carreto', 277)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3476, N'El Mochito O Mocho Arriba', 277)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3477, N'El Sauce', 277)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3478, N'Flores Del Bijao', 277)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3479, N'La Union Suyapa', 277)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3480, N'San Jose De Los Andes', 277)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3481, N'Bo. El Pedregal', 277)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3482, N'Trascerros', 278)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3483, N'El Ermitaðo', 278)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3484, N'La Cumbre De Las Flores', 278)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3485, N'La Reina', 278)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3486, N'Piedras Negras', 278)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3487, N'Piladeros', 278)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3488, N'San Jose De Tarros', 278)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3489, N'San Miguelito', 278)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3490, N'Terreritos', 278)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3491, N'Bo. Santa Maria', 279)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3492, N'Agua Caliente', 279)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3493, N'El Rosario', 279)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3494, N'El Chaparral', 279)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3495, N'El Tular', 279)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3496, N'Agua Tibia', 279)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3497, N'Baðaderos', 279)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3498, N'Caguano', 279)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3499, N'San Nicolas Arriba', 279)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3500, N'San Rafael', 279)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3501, N'Bo. San Jose', 279)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3502, N'Alianza', 280)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3503, N'Alto De Jesus', 280)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3504, N'Los Amates', 280)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3505, N'San Jeronimo', 280)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3506, N'San Pedro Calero', 280)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3507, N'Sonora', 280)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3508, N'Amapala', 281)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3509, N'Coyolito', 281)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3510, N'El Zope', 281)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3511, N'Gualorita', 281)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3512, N'La Flor', 281)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3513, N'La Pintadillera', 281)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3514, N'Los Langues', 281)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3515, N'Playa Grande', 281)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3516, N'Playa Negra', 281)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3517, N'Playa O Punta Novillo', 281)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3518, N'Puerto Grande', 281)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3519, N'San Carlos O El Garrobo', 281)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3520, N'San Pablo', 281)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3521, N'Aramecina', 282)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3522, N'El Cantil', 282)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3523, N'El Pedregal', 282)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3524, N'El Tablon', 282)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3525, N'La Peða', 282)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3526, N'Las Pozas', 282)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3527, N'Los Terreros', 282)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3528, N'Macuelizo', 282)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3529, N'Sampito', 282)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3530, N'Santa Lucia', 282)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3531, N'Salubre', 282)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3532, N'Tierra Blanca', 282)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3533, N'Caridad', 283)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3534, N'Hondable No. 1', 283)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3535, N'El Aguadero', 283)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3536, N'Las Delicias', 283)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3537, N'Cutile', 283)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3538, N'ascoran', 284)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3539, N'El Picacho', 284)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3540, N'La Arada', 284)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3541, N'Llano De Jesus', 284)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3542, N'Piedras Blancas', 284)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3543, N'San Andres', 284)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3544, N'Agua Blanca', 284)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3545, N'Santa Rita', 284)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3546, N'Langue', 285)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3547, N'Bajos De La Flor', 285)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3548, N'Concepcion De Maria O Potrero', 285)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3549, N'Los Llanos', 285)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3550, N'San Francisco No. 2', 285)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3551, N'San Marcos O Tamayo', 285)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3552, N'San Francisco De Coray', 286)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3553, N'Caleas No. 2', 286)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3554, N'Cerro Grande', 286)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3555, N'El Espino', 286)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3556, N'El Guayabo', 286)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3557, N'El Rodeo', 286)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3558, N'El Salitre', 286)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3559, N'La Caðada O Calea No. 1', 286)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3560, N'La Laguna No. 1', 286)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3561, N'La Laguna No. 2', 286)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3562, N'Las Delicias', 286)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3563, N'Las Mesas', 286)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3564, N'Los Amates', 286)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3565, N'Montecristo', 286)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3566, N'Panasacaran', 286)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3567, N'Talpetates', 286)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3568, N'Bo. Alto Verde', 287)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3569, N'El Caimito', 287)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3570, N'El Comercio', 287)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3571, N'El Matiaral', 287)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3572, N'Guanacastales', 287)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3573, N'La Criba', 287)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3574, N'La Cuesta', 287)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3575, N'Laure Abajo', 287)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3576, N'Laure Arriba', 287)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3577, N'San Jeronimo', 287)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3578, N'Los Chorros', 287)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3579, N'Yoro', 288)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3580, N'Ayapa', 288)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3581, N'Chalmeca', 288)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3582, N'Guare', 288)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3583, N'La Capa', 288)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3584, N'La Guata', 288)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3585, N'La Laguna Del Naranjo', 288)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3586, N'La Laguna De La Capa', 288)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3587, N'La Rosa', 288)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3588, N'La Trinidad', 288)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3589, N'Las Quebradas', 288)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3590, N'Locomapa No. 1', 288)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3591, N'Locomapa No. 2', 288)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3592, N'Mejia', 288)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3593, N'Nueva Florida', 288)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3594, N'San Die', 288)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3595, N'San Jose De Texiguat', 288)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3596, N'Subirana', 288)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3597, N'Tulanguare', 288)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3598, N'Arenal', 289)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3599, N'Campo El Cayo', 289)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3600, N'Champerio El Cayo', 289)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3601, N'El Retiro', 289)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3602, N'Santa Cruz', 289)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3603, N'Teguajal', 289)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3604, N'Tierra Blanca', 289)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3605, N'El Negrito', 290)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3606, N'Battan', 290)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3607, N'Campo Paujil', 290)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3608, N'Campo Perdiz', 290)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3609, N'Cerro Prieto No. 1', 290)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3610, N'Cerro Prieto No. 2', 290)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3611, N'El Jocomico', 290)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3612, N'El Junco', 290)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3613, N'El Naranjo', 290)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3614, N'El Pate', 290)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3615, N'El Robledal', 290)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3616, N'El Rodeo', 290)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3617, N'Estero Indio', 290)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3618, N'Finca Treinta Y Cinco', 290)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3619, N'Finca Treinta Y Seis', 290)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3620, N'Guaymon No. 1', 290)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3621, N'La Laguna', 290)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3622, N'La Majada', 290)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3623, N'La Veinte Y Nueve', 290)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3624, N'La Veinte Y Ocho', 290)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3625, N'Las Delicias', 290)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3626, N'Nueva San Antonio', 290)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3627, N'Samar', 290)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3628, N'San Jeronimo', 290)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3629, N'San Jose Del Negrito', 290)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3630, N'Toyos', 290)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3631, N'Villa Del Carmen O Finca Treinta Y Seis', 290)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3632, N'El Progreso', 291)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3633, N'Agua Blanca Del Norte', 291)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3634, N'Agua Blanca Sur', 291)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3635, N'Arenas Blancas', 291)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3636, N'Buenos Aires Del Norte', 291)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3637, N'Buenos Aires O Paujiles', 291)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3638, N'Campo Amapa', 291)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3639, N'Campo Birichiche O Las Palomas', 291)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3640, N'Campo Buena Vista', 291)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3641, N'Campo Coob', 291)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3642, N'Campo Diez Y Seis O Buenos Amis', 291)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3643, N'Campo Diez Alboroto', 291)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3644, N'Campo Diez Asunohsa', 291)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3645, N'Campo Doce', 291)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3646, N'Campo La Fragua', 291)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3647, N'Campo Las Flores', 291)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3648, N'Campo Mocula', 291)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3649, N'Campo Monterrey', 291)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3650, N'Campo Naranjo Chino', 291)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3651, N'Campo Nueve', 291)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3652, N'Campo Once', 291)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3653, N'Campo Palos Blancos O Breck', 291)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3654, N'Col. Brisas De La Libertad', 291)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3655, N'Col. Cohbasa', 291)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3656, N'Col. Guanchias', 291)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3657, N'Col. San Jose O La Treinta Y Nueve', 291)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3658, N'Cuatro De Marzo', 291)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3659, N'El Balsamo', 291)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3660, N'El Porvenir Del Norte O El Camalote', 291)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3661, N'Finca Quince', 291)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3662, N'Guanchia Cerro', 291)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3663, N'Guaymitas', 291)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3664, N'Guaymitas Viejo O El Castaðo', 291)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3665, N'La Colorada', 291)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3666, N'La Cuarenta', 291)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3667, N'La Curva O Kilometro Cuarenta Y Cinco', 291)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3668, N'La Guacamaya', 291)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3669, N'La Mina', 291)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3670, N'La Ocho O El Socorro', 291)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3671, N'La Sarrosa', 291)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3672, N'Las Brisas Del Norte', 291)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3673, N'Las Chumbas', 291)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3674, N'Las Delicias Del Jute', 291)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3675, N'El Paraiso', 291)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3676, N'Mealer', 291)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3677, N'Mico Quemado', 291)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3678, N'Ojo De Agua', 291)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3679, N'Quebrada De Yoro', 291)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3680, N'San Antonio', 291)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3681, N'San Luis Seis', 291)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3682, N'Santa Elena', 291)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3683, N'Santa Ines', 291)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3684, N'Suyapa O Kilometro Setenta', 291)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3685, N'Urraco Pueblo', 291)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3686, N'Urraco Sur', 291)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3687, N'Veracruz Paloma', 291)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3688, N'Lotificadora Las Palmas', 291)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3689, N'Jocon', 292)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3690, N'Agua Fria', 292)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3691, N'Alta Cruz', 292)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3692, N'La Dalia', 292)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3693, N'La Loma', 292)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3694, N'La Rosa', 292)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3695, N'Lama', 292)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3696, N'Macora', 292)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3697, N'Puente Grande', 292)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3698, N'Tapiquil', 292)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3699, N'Morazan', 293)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3700, N'Agua Blanca', 293)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3701, N'Buena Vista', 293)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3702, N'Candelaria', 293)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3703, N'Caridad', 293)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3704, N'Cuyamapa', 293)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3705, N'Chililenga', 293)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3706, N'El Filon Del Porvenir', 293)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3707, N'La Bolsita', 293)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3708, N'La Cruz', 293)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3709, N'La Estancia', 293)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3710, N'Lempira', 293)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3711, N'Los Prietos O San Martin', 293)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3712, N'Man Seco', 293)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3713, N'Mojiman', 293)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3714, N'Nombre De Dios', 293)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3715, N'Nueva Esperanza', 293)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3716, N'Nueva Florida', 293)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3717, N'Ocote Paulino', 293)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3718, N'Paya', 293)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3719, N'Portillo nzalez', 293)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3720, N'Rompidos O Los Lirios De Guaymas', 293)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3721, N'San Antonio O Palmar', 293)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3722, N'San Juan De Camalote', 293)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3723, N'San Rafael De Aguacatales', 293)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3724, N'Col. Cinco De Enero', 293)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3725, N'Olanchito', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3726, N'Agalteca', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3727, N'Agua Caliente', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3728, N'Armenia', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3729, N'Balsamo Oriental', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3730, N'Barranco', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3731, N'Boca De Mame', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3732, N'Briones', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3733, N'Calpules', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3734, N'Campo Agua Buena', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3735, N'Campo Balsamo', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3736, N'Campo Calpules', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3737, N'Campo El Chorro', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3738, N'Campo Limones No. 4', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3739, N'Campo Limones No. 6', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3740, N'Campo Nerones', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3741, N'Campo Nuevo', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3742, N'Campo Palo Verde No. 2', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3743, N'Campo Rosario', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3744, N'Campo Trojas No. 2', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3745, N'Campo Trojas No. 3', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3746, N'Carbajales', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3747, N'Clifton', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3748, N'Coop. Brisas De Cuyamapa', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3749, N'Coop. Doce De Diciembre', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3750, N'Coyoles', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3751, N'Coyoles Central', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3752, N'Chorrera', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3753, N'El Carril', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3754, N'El Cerro', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3755, N'El Coyolar', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3756, N'El Chaparral', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3757, N'El Juncal', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3758, N'El Nance', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3759, N'El Ocote', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3760, N'El Terrero', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3761, N'El Urraco', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3762, N'La America', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3763, N'La Florida', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3764, N'La Hicaca', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3765, N'La Libertad', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3766, N'La Reforma', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3767, N'La Sabana De San Carlos', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3768, N'La Veguita', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3769, N'Las Flores', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3770, N'Las Hicoteas', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3771, N'Las Jaguas', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3772, N'Las Minas', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3773, N'Maloa', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3774, N'Medina', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3775, N'Nuevo Mendez', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3776, N'Nombre De Jesus', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3777, N'Potrerillos', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3778, N'Puerto Escondido', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3779, N'Sabanetas', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3780, N'San Carlos', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3781, N'San Dimas', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3782, N'San Francisco', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3783, N'San Jeronimo', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3784, N'San Jose', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3785, N'San Juan', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3786, N'San Lorenzo Abajo', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3787, N'San Lorenzo Arriba', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3788, N'San Marcos', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3789, N'Santa Barbara', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3790, N'Tacualtuste', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3791, N'Teguajinal', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3792, N'Las Tejeras', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3793, N'Tepusteca', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3794, N'Trojas', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3795, N'Bo. Abajo', 294)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3796, N'Santa Rita', 295)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3797, N'Cangrejales', 295)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3798, N'Casiano', 295)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3799, N'El Caliche', 295)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3800, N'El Capulin', 295)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3801, N'El Remolino', 295)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3802, N'El Santuario De Placido', 295)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3803, N'El Vertiente', 295)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3804, N'Finca Diez Y Nueve', 295)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3805, N'Guanchias Crique', 295)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3806, N'Placido', 295)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3807, N'Plan Grande', 295)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3808, N'Tapiquilares', 295)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3809, N'Terrero Negro', 295)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3810, N'Bo. Buena Vista', 295)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3811, N'Sulaco', 296)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3812, N'El Desmonte', 296)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3813, N'El Jaral', 296)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3814, N'La Albardilla', 296)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3815, N'Las Caðas', 296)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3816, N'San Antonio', 296)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3817, N'San Juan', 296)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3818, N'Victoria', 297)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3819, N'Bajo Grande', 297)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3820, N'Buenos Aires', 297)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3821, N'Coyolito', 297)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3822, N'El Jicaro', 297)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3823, N'El Man', 297)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3824, N'El Pataste', 297)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3825, N'Guarabuqui', 297)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3826, N'Jacagua', 297)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3827, N'La Zarza', 297)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3828, N'Las Flores', 297)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3829, N'Las Lomas', 297)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3830, N'Las Vegas', 297)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3831, N'Lomas Del Jicaro', 297)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3832, N'Los Cacaos', 297)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3833, N'Mendez', 297)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3834, N'San Isidro', 297)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3835, N'Santa Lucia', 297)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3836, N'Tierra Amarilla', 297)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3837, N'Yorito', 298)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3838, N'El Destino', 298)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3839, N'El Portillo', 298)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3840, N'Jalapa', 298)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3841, N'La Esperanza', 298)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3842, N'Luquigue', 298)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3843, N'Pueblo Viejo', 298)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3844, N'Santa Martha', 298)
GO
INSERT [dbo].[Aldea] ([Id], [Nombre], [MunicipioId]) VALUES (3845, N'Vallecillos', 298)
GO
SET IDENTITY_INSERT [dbo].[Aldea] OFF
GO
SET IDENTITY_INSERT [dbo].[Candidatos] ON 
GO
INSERT [dbo].[Candidatos] ([Id], [Nombre], [CargoId], [PartidoId], [MunicipioId], [DepartamentoId], [Imagen]) VALUES (1, N'DAVID MARTINEZ', 5, 2, NULL, NULL, 0xFFD8FFE000104A46494600010101000000000000FFDB0043000906071312121513121315161517181A191817181718161817171517171618181A1D181D2820181A251D171521312125292B2E2E2E171F3338332D37282D2E2BFFDB0043010A0A0A0E0D0E1B10101B2D2620252D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2DFFC000110800B7011303012200021101031101FFC4001C0000010501010100000000000000000000050002030406010708FFC4004810000201020403050407050507030500000102110003041221310541510622617181133291A1072342526272B1148292C1D11533B2E1F024435393A2C2F1B3D2E31617347383FFC4001B01000105010100000000000000000000000401020305060007FFC400371100010302040306040504030100000000010002030411122131410551611322718191A132B1C1F0061442D1E1152352F1243462C2FFDA000C03010002110311003F00022D6F1CBE34D0B5B1C1F617137867216D6624C302328D4EDBEF0229D8CEC65CB6155545EB84C9CA7280A3789239D6ABF370DED885FEF7D164CD2CD6C45A6DF7B6A86766FB2D771A19919142C025A7527C056DB817614E1C97F6C73C7D9020750677E5F0A21D98C0361B07B05B8C4B3680199883D76A8EF7692EA13993BA3ED0DAAB64A89E6739B11186F6DBEAACE2A6822635D2837F3FA2D2E0ED85103D6A958ED0586DD8A6A477D590482548CC465DC1E75170CED1D9BAA0960A4F2244E9E13406FDE16B1772DCF72EC5C4E80BCE61EACAFF001159CE2B3CD47119432F63983719743E36D8ABAA50D9F261DAFF007E4B686F88904107623506B3DDA4BB9DACA8241CCCC0830415B6F047C7CAAA2D8CBADB66B67F0E80F9A9EE9F389F1AA3752FB622D33805143CB29D25800254995E7D478D54BB8E5354524B8496481A6C0F3B6C47F07A29044F123797F085E2FB4F8BC3BBDBB9958FD9688807623A83F28239565B137DEEB66B8C59BA9D4E95BDE3DC2FDBA6919D7553D41DD7D7F502A9F08ECDAA77AEC337DDDD479FDE3F2F0E756F43F8BE8E3A1ED666FF0078645AD162E23F50D803BF23958AA7A9E173C93616BBB9AE7B74EBD3A205C1F805CBD0DEEA7DE237FCA39F9EDE7B557E25875171C5B92A0C4932495015BFEA0DB695B7E318CF63659F981DD1D4F2AC9E0785DF3056DB9E52C327AF7A099F09AEE07C7A4AC9E4ABAC91B1C6D185ADB80DB9CCEB9B88035DAF6B0525670E1140D8E161739C7336CEC3AED99C909168CED4FF006446E228EE3B869B233BBA027455EF3927D32C0899DF6AAB8CC4670028800F3E75AEA3E234F5A0BA9DD89A0D89B102FD2E05D52CD48F82DDA644E606FECA961ED296018E55E6627E55B5ECF708B06E028F9C11B69DD8E67A7F9D63B254D84BCF6983DB395873FF00CE9534F1B9ED385D62BA191AC702E6DC5FEFC57B0DAC32A881A53719785B42C4C0039D602DF6C3100898200822224F5AA3C478EE22F02AEE729339440F4D2AA1BC3662EEF91EAAD9FC4A10D384145F11DB36CD08A72F5D27FCEBAFDA20E464560BCDA35F956502D6AF859528A0AA682075F1A3A5A78A30086A0E29E590905CACE1F8BA971958902370D315A8E1F8C5BAB2011E62281DA4B6930BBFC3E555ADDF7CC4672BCB43155F2C4D93E116F1FE11F1C8E67C46F7E4B601C4C73AA3C43880B640237E7CBCA84AE28DAD2493D6ABE2DBDBE866A265377AEED14AF9F2B0D515FED253CA0EFA9DE9CBC690403BF9D09C3F0D3320910237D239D0BE2362D23486275D4893AEF52B69E271C372A374F235B72B60F8F04483143AE71D0B3041AC80C610C6369D8D47ED09A21940D1AA89D584E8B7238EA0505B9F413406E63CB34ED41D6E1A956E54B1D2318490B8D4B8AD7F07E239FBADC8513768D6743CAB036EF906418F2A28FC70E5006FE342CB4671DDAA66550B7795EE218E198E9AD0DBD8D3553198DCE41F0AA6D768A8A9C068BA1A5A824AB9EDE950FCD4A88C010F8DCBD171684CC7A6B54CE16EC824C0F0D34A30001D2BA5B95679B2102C02BB318766B337ED6627212FAED26B3D8F56B4FECB126E419646192196798CBBAEC7D0F315B3E2188369735BB7239E5899F2F3ACF711B4D8BB59AE23DB65D4318C81808924ECBBCD255C335441FDA71691A10EB1BF2CB9F87551C0618E5B4A2E0EA2DB731E1C953E15C36D21CF69B31E45823C7C81534EE29C3EF5E757372DCA82042321D4A9DF31DB2F4E66A9709E18ED0F98A6FB684C18D396531A1E620D6840AF3BABE2F5D731BE62ED88758E879DB6235055D761053BC3A0B65C87D82B966728CD19A358DA79D23704E59D4EC3AF975AEBB0024ED43B8DDFB22DFD6DDB76F9AB33AAEBC8893AFA553B1B89D6B7A2E6804F7B20894D76BCF876E6D5B226EE7CBA68AC6474CD1AD6C783716B58AB42ED96953A19D0A91BAB0E47FA8A26A282781B8DED3879D8A74B188CD8381F057A2B970900C0931A0989A7D368251AC7F14B574DC2D715B4800C12BA8930768D86FF007BAD52400EC411E1FE55A4E27C62E5A31ECC093009920F8CE800A0F88B8D71B3DC20B0DA16144F4E7EA7E55EB1F84EBAAA581B1085A236EAFC5A93D2C6E4F88CBDE8F8E53B43FB57BFBCED1A331619656D07BF45572D3F52449A972577256D1675462D12606B34E6B057460479D48A2351CA895A2D758499F33A7C2A37BCB73D948C65CF543BF6278CD94C0E674D7A6BCE9A848A3FC4706F0AA200037D7E154F8761958C1466E5A1D8F5A85B3DDB88FB294C043B085370EE2A7DD6F2A3F84E1E841772637A8F0BD97B660E627F4A298BC3DB4B2CACF00E93FD2AB67A88DC6D15F3D725670C32347F73C9016E23698808A419E7B47C6ADFED1646A5C790DF5F2A037AF59B24E764458DD9C298EBAC50CC7768B8728318852DF843B0F11DC041A7C82216B923CD46C32BB302FEAB4FC438DC836ECA8E8493F181CEB3F88B4C357113AC69FA0DAA95AED770E3B3907912B7540F1922B43C3B0567156C3D9BC1F9332B060BCE0F4A7C53431FC27EA7E69B24333CF787D020C452145EE7036D72BA951CFA9988A1772DE531A7A19A3592B1FF000943398E66A1705769B5DCD4F4CC49C1E967A6529A5B24C653CB5358D3335318D759217A7E6A551CD76BAC9312F41BBC630E499BA00F38AE7F6BD91245D581E3275ACEF18C025B4820E623788804EC093F2ACBE3B0FEC9A254EA002088333024E9F3AAA8E961737117103ADAD61A95632554AD7E10D04F4BDEEBD2719C4EDA953EDD40DCAE8C5A76000D649E543F1375AF7BE32DB0656DFE86E468C7C361E260803C3530F67BCCCA5FC2582CC485D35F13CFC069575B8DDA1B663E9FD6BCF38D7187CE4C3477ECFF00CAD62EF0E43DCEF6D16869A867B627B0DCEC2F61EA88B13CB5F58A17C438D0B339D5400249CE3403AE9A55DC1E316E825674DF4AC07D2A71725ADE0EDEA4C35C035249316D3E3DE8FCB541C3E8CCF502170F1DAC3EF2F3445C467FB8DBFB215DA4FA40BF7895C3CD9B7F781FAC6F19FB03CB5F1E5433837647138A60616D8623BF789599E700163E6401E35A6ECFF65D70C82EDD01EFE9941D56D962140F13244B72E5D49CC0DF933BE7D09996042E6008881A4E836263599AF44A6A38A999822161F3F13A9421712B36DF47191992E620C824776DC6DE6C685F09E237384E3191A5AD980E07DB43AABA8E4C24FCC78D7A1F17E2D6AD80F7AE2A180353AB65D01037262069D2BCBBB558C18CC4CE196E3C28072DB66247E50246BCCC5493431C91963C5C1D575CAF6A4C7DB6B42F2306B6573661B65E67D3A7850AC7F6896C622DA5D0059BC3EAEF0D838D0A3F499041F1D769AF3FECC5DC561D5ECDFC3DFF00D9AE8657CD69E133820B6DDD1075E9BF5ACFE278BDE6B1FB2DC2182383AEA54A82A403D0CFFE46D938B805A4735C6EDBEBBE1235074C4D3B686FD4221D6C37DFEFEC1D17BBE2D50AC5C88F131F0F1ACAE2F0EB6DA2D3ABAFDDE9E008DBD34F0A07D97ED18BF87FD9AF37D75B1F54E44E748883F887CC01D0D17C2D85612C5891A105B63FBB123A513C0F85D6C556E643286B9BCEF670E6058DC7306DEC92A24A78E9715435CE6936B002C0F89D3C478296CB86DB71B83B89EBFD76A9B252B76C0D00007402054915EA11978600F209DED90F2588930179C0086ED7CCF995105AB186BF90CC4D730986F68CCB98A8550C4889398B01198102329E46646D1AC1C6AEAE1173DD63ECF60C14933F7582FDAE87407C2284757C1DA985C73F6F5463787547622768CBA6BE3644788712370000401E3AD52BBC5D2C2E7BAC146D24C4FA0D58F80AC3F13EDB39D2C2041F7DFBCDE8BB2FACD65B13897B8D9AE333375633F0E83C050B2D7C2C6E18C5FE5F7E88A8787CCF76390DBE7FC2DE637E93AEAE61870D07ED39D3D146BF31599E23DACC6DF10F88B91F754E51F2D7E268257098DEAAE4A87B8DC9B7864AD594F1B7202FE39FCD39B5327527727527D6B86AD61B86DEB9EE5AB8DE210C7C623E7442D765316DFEEB2FE6741FA1A6B6191DA349F24E74D1B3E2701E6B3EEEFC901FDEAD47D1EF1CF6372E5BBC0A0BB932B06EE874CFEF41D27344F8571BB1B8A1CAD9F0CFFE555EF765716BFEE67F2B21FE7353B239A2707E039742A09258256966319F50BD303913AEFBF8D72B3DD90C65E21ACDF470D6C086652254E81493B91C8F31E55A28AD0C328919880B2CECD13A279694DA6D3CD28A99469B5CA54AB9214A9869D5C34EB245C8A55C8A55CB97A171F2A572B0AC5F10E18E899B2F75B6EF7291CB98AD05AE2A975B332A903DE07591F846D340F8E719FDA0280A102CC47FADB6D22AAA95B2B0E0032DFEEEAC6A9F13C633AEDFED011680F7657CB6F81D3E54EB4C64830639EDAF311E1A6BE27A576EB11A0DCEDFCDBC87EA40E74E458103FD7F9D673F15BA918E11B18DED0E64816206DA6A4F55A2FC2E2AE40647BCF663200E773EE72F75AAE0B6B2D95EA75F8EDF28AF34B57D7FB66F33C1FAC2A279123229F3EEC7EF57A3FEDAB692C83F6820F21024D78EF69AF7B2C7E21A600BAF27C0B033E9A1ACC7E1BBFE65EE3B8FFE8222AB117633B93EC57A8636C97B6E8376460396A5481E5591E2BDA260FEC3060DEBE6573EAE164EA96C1F7A23566D34D66341B8EED6DEC420C3DA0A19F4370365CC23502745D3769DA6B69D8BE1D85C3265B6D9AE9033DC652B9A76542C232F8027A9AD6CB2E1CB751451768E59FB5D8B20A362DCDCBF75A48CD22DA2779D98EEE7DD500692E06A35AF41C261ADD9B612DA84451B08000E64FF00334EC4D8CD1D41F9731F21F0150712E1E2F85473F5532E9FF12232AB7E09924738036904173F16AAC1B1363176EAA88ED5618B05B6D72E92601B36EEDC5998F7D5727CEA6E2DD9EC3625325CB4BA08565015D3F2B0E5E1B78515558100401B01A01E42AB9B0C4EAE6392A00BA789D589F10479525C6A324B84916767F7D4AF28C4F63F1369F35821CDBB8149F75909232BB0E68410644E875144BB49C7DB017916E5B0D99643AB9C8EB30C3DD90419F29F135B5E3365AD8B8E9BB58B887349EFA217B6C7AECC09F05ACFF69F80DAC7E16C27B42A6D3E50E00620143A104890484333AEF4B4CE7BEA4621DE69EE9191B3869C8D8820E59842CEC0D8641FA6C2E35E77F964508B5DBEB2408B4FE8C87FA53311DBD1F62C1FDE78F9283FAD0BFF00ED6B72C52FFCA3FF00BEA44FA33BA36C6003FF00D67F4CF5A42EAEFB01671ADA019FEEB65F47BC61F15FB435CCA0A9B60050400B170F326759A2F8EBC2E07B6EA1ADB02ACA7983E3C8F39E5423B09C00E09AEAB5EF6A6E2A11DCC91ECCB83F68CFF78B445B73545521ED99D8F5FE16BB8508A480611DDD07A90BC8F19C35D2FBD850CECAD02012C5775681D41068BE03B1989B905F2DA1F88E66FE15FE6457A058501DE06E1589EBEF2FE8A3E3562AE68E86396312389CF6D16638955C94F50F858343AEBD474D0ACBE0FB11617FBC67B87CF22FC175F9D1BC270AB16BFBBB48A7A8519BE275AB189C425B52F7182A8DC9D07FE7C2B05DA2ED7BDD9B78626DDBD8BED71BF2FF00C31F3F2A35EEA7A617B0BFBAAE636A6ACDB11B6FB0FA2D071FED861F0AD918B5CB93AA2412BF9A4C03E1BD58C276A3097141F6AA93CAE7708F033A7CEBCAADDA0BB0F5E67CCD19E0BC02F6275419539DC6F77D39B1F2F88A099C4267BECD6DEFB235DC32064777388B6EBD42CDE571991830EAA411F114F2285F02E016B0A0E4CCCCC3BCC4EFFBA341F33E3454D5C465D87BC2C553C8D6E221A6E3A8B26115DAE9AE54A9964D22B8053EB84572E4C8A54EA6C52A44D34D34F34D34E489B4ABB4AB97286BA053E2BA17A53AEA355DAC9267311FC311D04834DBB6880CC1DB404C7D5C69FBB56F29A8EF5B2CAC073047A9063E755B51C32924C4F746D2E37CC8B9BEDAAB0A7E27571E16095C1A2D903616DF453DCB4EF6FDA1D42C5B1E4A3FF1F1AF2BED94FB7BD3CD94EBCC10A6BD66D62B36158440174281A830543CB4F399F48AC076BB870B97AD90332B154B9060039C40246D2091E19475AF35E0E5D14EF8E41622E3C2D6767E4B7D54F13418DB6B07103C34FAA2FD8BE14D62CD97F66AF8CC6345956D16D5A0331B8D1A850A3398D4CAAD1AE19C49AEDC16EDE252F49DAED8B76ED5C904FD5E4737101CAD05D483B482449EB1652E5CC362AD9CA6D1200E46DB8C976D30E5B0F22837120D7B1D93C259BE2F590E48F743658407640C1731039024FAD69237C2584BF5D956CCCAA0F6322F877FA9D0E77DBDD13B1602485272CE83EEF80F0F0E5303480259A65D6207744EBB4C69CE279D51C2B5E2E0B88D3551AA8F106013CA8322F99568D6DEF6D9129A65DB41843091D29D62C35D19C30B76809374C6A3AA03A47E3323A0699A6E2F0C2DBDB28AEB6DC1539D8966B919C3431EEF756E4E82491A682A4EC1C1B890A6AA32F0C0A85FC35AB96EE59B650165221601046C60743416CB644467102EB823968A2E5D2C0740D700F204D6A8A02448060C891307A8E9586E278DB8D69C8553EC85C6B635EF0622EA4FEE8503CA9BF98EC6D27223E6A492132B1D18DC1F4B2D0453AB05C3BE9330E405BB6AEA9EA32B0F09920D1BB7DB5C19FB6E3CD1BF94D6C1B570917BDBC5611D4738FD24F82D2E11A2F21EB997E203FF00D950E2D21DBCFF005D68670EED1E1AEDEB496EE6672FA0C8C3EC3CEA4749A33C4D7BD3D4567B8996BAA2ED37B80B63F8771B60C0F16CCEBEAA92FF0078206E8DFF004B5A8FF11F9D05E37DADB3625508BB73A29EEA9FC4DFC849F2AA1F482ECB6ADE56225CA9824482A4C18DC7776AC1D4F4F5AE8E00C68E79F9A138A50324AC748F3A819792BBC578ADDC4366BAD31B28D157C87F3DEAAD9B2CEC1514B31D000249A29C0FB3B7B15AA0CB6FFE230EEFEEFDF3E5A788AF43E0BC12D61962D8963EF39F79BFA0F014F829649CE2769CCA0EA2B23A76E168CF603ECA01C07B16AB0F8A866E56C1951F988F78F80D3CEB5CAA00000000D001A000721D29E69B5790C0C8859A150CD50F95D7794A952A553288269148D74D722942E5CA54A2BB4A9132953AB915D748986B94F8AE452AE4CA54ECB4A96EB9385B8AEC538D2A6A6AE8AE1414A90A44E515F0729459EF3A99E42030627C632C75F21518C326A32EE029EA42C91AF5924CEF5729AC941C1430C52C9281DE90DDD7E82DE88996AE57C6C8EF60CD2DE3AF8AAB81C69C3BB07CC509D4C6E42A90C3C608561E00E82B4D6E60660018D403201E93CE82E50410573AB7BE87724000329FB2D007C396F56787836F286B85ED9502D31F124E57FC519003CE2373AE62AA8DD4EF2D03BBFA7C390F0FB2B63415CDA98C3AF770003BC6DAF9FCD1434B0B871720DC0590EA9686F747267FBB6FC0C4F3DF29831B63DA5B7B799973A95CCB1986611224113E94EC3BDE16C5B6BBCBBF71465B974FDE63B27928E90546950C258DCDCA7A96CAE01ACF344F178D546EF8172E88CB693DDB73CD89D14FE23AC7BA3791F76E3DC60D70C91395574449DE39B18D331F18024D476D32E8AA02F9F5E7E27C4D4F5D24E5D968124348D8F3399553895EC96988D1A217F337757E64579CF6E78C1C1ADB36C292E32C13A809B1037235209F2AD076DBB536B0A06696863DD52259E0803F2A8993D481B831E21C5F8A5DC4DC376F3666D84080072000E5AD3A3843C77C649F3D508E32D69EF1F61FCADA7673B2984C7E1FDAA1B966E292AEA0875CC003203098208E7D454B89FA3CC458B66E25F46B79B22AB2B06B9749D2DDA55CC59BA9D00F4301FB05DA4184379584FB40A575850C848D7C218EDD079D6C6DF6CDDDB0CCEB6CAE1B3101332FB42FEF16D5B2B6E41EAD56724916068B77B7D7FD66A8A28A7C6E75FBBB69BFBAA1D92E1172CE3F0F9F2182F9B23660ADEC9A509882C244E52409DEBD2B8B0F74F9FF002ACBF6671D659B0F6649369EE7B0CC855C2DD5637039526DB0EEA90743E9A0D5715D97CEAB2723164B41C36E3E2E7F458BEDCADBF608D759D516E024A2866D51C010481A93BD0DEC51E1F79CA8B4C6E8D545E21B301CD40EEC8E91228CF6DAC67C15FF00C2A1FF0081837F235E71D95ECCE2F16E1ECCA013170B1455E4608D49E5A517492B631888191DD0BC5E07C92E169398DBA2F64C7712B5687D65CB76C7E3755FD4D37098AB771735BB88EBB4AB0613D24579C71CFA37C5D8B6D79592FC6AE1330B90372037BFF19F0A03D90ED03E1B100A2B3A3C0B880492BF7801F686E3D473AB48B8935C741659D9F85B9A333DEEA355ED75C34CB57D584A9076F3D7691B8F5A79AB5041CC2A6371AA55CAED28A7244AB95DAE4572EBD92AE453AB95C96EB95C0B34E8A3182E1FED1410796BE14C9240C1729F1465E6C10716FAD482C788F5A971B8128D06A9DD8512580F3205707870C8A5C25B916AB3FB01FBC9FC54AAB2DE4FBCBFC43FAD7292E79FC92D87F89F74F22B946311C2FBC32EC4EBE14AE7081C98FAD37F30C49F977DD07AE8A971387C8C41A8C0A9810464A1208362BA29E298053C5215CD2A36D0D24B8CB204156DD1BDD33BFE527E1E13AD39C5345452C2C99B85E2EA58A79207E38CD8FDEA375361388642430B854EA18C395800653949661A48689D4CF5246CE32DBFB9711BC981A01C433FB2B9ECF47C8D93F365397E715E3FD95ED9DEC17B41956F2389C9709215F5871F1D473ACFD750322230139F35A7E1BC55F303DA01972BFEEBE80BB8845F7980E92753E43727C05627B77DBA5C321B768FD73282B20FBAC624C1EE680FE2FCBBD79EDEEDBE36FE755B89654DB6056CDB540446BAC1604F507CAB1F4232003E246CB5848B33256F88631AF5C6B8F1998EC340390007202AA52A5442049B9B9567063526ADFB6CBACC7C8D418648151DEEF36515C5A2C9E1C5A325ADEC3714B8F8EC2ACF77DA6BB49EEB73E95ECDC54FBA3CEBCBFE8AFB3AF72FAE28F76D59242E9EFB952B03C143493D60758F4CE267BF1D00A0A70D0EB0575C37113777DE487E32C87B6E8448656523A8208AB7C118777280014100680080401D2AB5E72A24098DC738E71E3CFD229BC36EC058D7292046BDD07BBF15CA7D6A3D95A3C5EE37B2D28AA5C2AC222422AAC3306CAA1750C778F43EA2AE5B7040236355EEF75C3727856FCDF61BFEDF195E94DE8AB4EAB9C4B0C5D65633AEAA4FCD4F81DBE0795531812503A3E6900805400644C0E6A7CE68B556B1DD764E47BEBEA7BE3D18CFEF8E953C3553442CC711BA1A7A282676291A09B5AFBA14ADAC6A08DC10411E60EBEBB53E8AE230EAE2186DB11A11E479565B8BDC7B6ED6DC80A00208D33AB48D7A1956054749D8C0BCA7E2CD7B7BE2CEE9A159BAAE08F89D761BB7AEA3F7536271D1DD482799FB23FF0071F0F89E54078B635C084B970BF83E503CE07C854789C713A26836FF005D2A95412D4C8F37BD94B152C718B5AFD4AA572F635B7BD73D2E11FA11505F6C5E937AE992147D739D4EC3DEA275D5B7DECE765DBF3B683E024FA8A871BB99F52A7C0DE43D0257AF5E072A946550002F99D8C000924F5326A3376F1DCDAFF960FEB4FAED36E52D828C3DDFBC83CAD254D87374B01ED373C92D8D39FD9A655BE1D867B9985A52EDEEE9CA77249D174EA79D70CCAE392871371D9C9572167488D869D29568ECF64AE6519BD9CF3EF1FE494AA5EC5FC947DBB7FC96FDAEAD57BB88029F72C80B54196AC58D0555BDC42AD8C6CCD355FD9D5F36E9A6D514D7D85906E692492A9E4AE05AB46CD70DAA7634D2D215475A6E5AB376DD33D9E869C1C9A5B9A85567CEBC4BB7F83B16B1B7061DD594F798290425C24E7411D0898E5315ECBC5F8A5AC25B37AF3428D803DE768D157A9AF9D66AB788480D9BF615A70C8C8C4FF2E854F85C41B6C197911A75008307C34A763EC84B842FBBBAF8AB0CCBF222B41D92EC55FE20AEF6DADA221CB99C9D5A26005076044F98A21C67E8F71F6EDA7D50BA52549B4D9A52657430D20961B74AAAC6DBDAEAE444F2310192C354D87B7264ED523E1195B2DC528C3756055BD41D455AC358676096D5998ECAAA598F901A9A78098131DA01356BB29C19F19885B29BB1EF372441ABB9F21F1240E757AE763B88381970977D401FA9AF4FFA3DECA3E0EC4DD016E5C86B9065A06AB6E468AA37304C93C80D639250D1705111C2E7BEC41B2D670DC0261ED259B421106551E5CCF524C927A9A1F8EFEF1BFD72A2B88BC1449F4F1ACDE2F1650CBBA91D19B2B803A1FB7EB07A9355ED04ABFA705BDEB65A2B155AD204720080FDEFDE1A37C4653E86AB9E2CB0612E6824C80201275D4EDA1DA76A87158C725442ACB00A64B1CC5801AF760EA7911008A9844F3B27495B00206204F4CFA2D270CBDAE5EBB79D5DC526756490091A1E8DF64FA183E94185477EEE552DB90263A91B0F53A5456524B007126E8EE13102E22B8FB4018E92262A3E20D9545CE6841F304E561F03F10284E0D9ADA85079004F5239F854788BCCC42662750CDAF20657E2C07C0D25B3509A736D559B989627527C81AC7718C6FB5BAC6490BDC0779CA4C91FBC587EED1DE337AE0B656D062EDA02A09280EEFA74E5E31E359A180B8A0016AE00069F56FB7C28BA789DF158FA2AFE2D531B6D0348E67E9FBFA288D76A43877024DBB8078A38FD4530A9DC82078822892D23654D88734DA96FE90BD37F33BFF21E94B0DA991A91B002493C80037D7F4A2786ECEDE682F16C1D75EF36BF841D3D4FA53A389EF36684C7CAD60BB8A0C6AEE0F865DBBEEAC2FDE6EEAFA733E82B59C37B3B69173C6623ED3779A4741B2FA0A2166C02275A363A21FACF90FDD032571D231E67F659FC0F66D64679B87A090BF01A9F531E15BCC1709CAAA8AB0A34000CA07A0D2A2C1D9CA040F5E746D318424959A595D82C23002489A5F9CAEBA6AF0D14A85E278BDCCC72A1CBCBE14AA311CDCC2799A106D8550C371D4B84844660AF0E423300A5779022018AA38FE316EC90AE970132755E53A6FE9F1A03C2389B5B57B7EDAE2B0BA015454EF2E92D2C34397F9556ED0E24936D7DAB5C625A730552A341CBAFF2AAF654481D7BAB2753465B62D5B1B58A4604AB02047CF6A915D4AE60465EBCB78FD6B276F0589F624DB503913D0283B4EF236F8694CE1988B802ABC8F66FEE990093DD075DF566F89A9BFA849B5941FD3A3CAE4AD723AB6CCA7706083046E34E629C5680710C5A2A8BA96C25CB459495CA41608C37FB532A76E547B85F1D58B4B7540F69B32AE9FBD27C397CAA68B88621DE19A826E1C41EE1CBDD39B08749D274AC976CBB7563041ACDB517AF8DD47BA87F1B7FDA35F2A3DF4A5C7C607059AD1FAFBCDECEDB4CE5904B38F10069E2457CECC6753A9DC93A924EE4F534F7D4B9C3249151B6F7725C738D5EC5DC372FB12790D9547451C850C144A9450A4126E51C1B6C82F40FA21E3A2D2DCC2B082CFED1274CDDD0AC078C2831E75EA23885B8259B281A92DA003A93B57CDE8E548652410410468411A823C6B538FE397F12882E90000242E819BEF11D7E43950D2D3E275C6EAC61AB64716170371A75FF005EEB7DC77B6982D545A18923AAAE4FE27067D01159AFFEB6B893FB3E1F0D601DF2DBD7E23283F0ACB58C3DEBEE6D61ED9761058E90A0F324E83D68C8EC23819B138AB76C73FB5F362A27CA697044CC8FD53186A66EF3065CF203D4FEEADB76E71A7FDEA8F2B69FCC557E2BDAEC55FB2D66E32E468CC42E562A39483107988D4506C670EB169C0B175EE47BCC542A9E50BCCFA8F8D54C45FD4220CCC74006BA9D22399F0A90319A80867C92025A5D7F0375A9ECCE31991AD97722D82E173B65CA32AB285988D368FB746310C96D4EA0778A1D86971815D074CCA3C89AC8F64F84E25AEBC5B750172B9794124831AEA4E9CA6B5B83ECAB01F59746B1215675000F79BCBEED71918DDD491D2D44C3206DD74F74FBFC56D0706491958181BEAB1BFEF7C6AAE038C07369026CEB2499205B3AB47210019E868E58ECFD858254B91CD8CFC840F95587096CA90A156180CAB03331581006E60FCEA275434DC008E8B863D843DEE02C47CF9E4AEB557BFA945EA731F24D7FC5929B7B17946B6DF5D06C64C131A1246C797235058C4C1D72BB36F91C313D343195479E9CCC9342869574E91BA2BCCE0024E80093E006F54B0D89D3311398CE8CADE0AA066998811D49AB1EC8B7BE74FBA36F53BB7C878565FB7BDA55C3A1B76C8FDA1C448DEDA9DD89E448D87AD39ADC470A8E697B36E376407BA8BB23C69EFF0014C4A9694F664281EE8169D54475F7DF5E735BC8AC2FD1470136ECB629C435DEEA785B0753FBCC3E0A2BD0BF672456A68AEC8402BCD788BFB6A973B7505200EDACD4F6B4DC4D5CB4D6F3480EA7C18510F908423181DBAAA304FAE61963E35358C36704E6D46F3F2AB4D8A111A8F1024FCF7AA570892449279CC7C6A00F7BB5C94E58C69CB3536170FB866D3C39D3FF006400E8C6A2B2C00DF5E953DBBB989811E1484BAE539B848B2216CE5DF41F2A8AEF11EEF775D6A36C5120AC6F3551D0280474DA39D44D8C13DE53BA42077548DC41FF00D0AE545ED3F0D2A970B7921F1FFE97903E29D318D9087FACC91C988006FE73E957B1F6EE9C646262477616328204A804798D689719E04A986C014487BB641731DE678B6D2C7ECB778EB52717CF71915905B619619A20BA36970959DC29126B32F385D6E8B54D18DA4846ECF12BA2172B2C89CB9730C9B0220EBB8E9CA81F1BE2AB709712BA20CA7DECCC330F90F9507C0F177C297CF66E8B818DB56D328CE33F3332034C099A37C3B87A321BED0366CB218428299586C182EBEB51DF01CC27DB168A87F695CBD6E4AC2218D272973AEA4F33034F3AD43DF5542CCA4E5FAC4599852B9CAF86B23A511E1B81B17010ACA6DDF625B2C7DDCA63E107D6B3BDB9E2230EE6D23000AE520904E52239EBAD4F1B4C82E320A19240C363AAC1F6EF1CF75ADB3CEB9CC72125341596668AD076A6F071698190330DE77CA7F9566B11BA8EA6896FC2A2BA9E9572BB4F5CA4C3D8371D6DAFBCECA8BF99C851F322ACF10B9ECAFDE4B649B6972E2A66D7B8AE5564F90156BB20938EC2CFD9BC8FFF002CFB4FFB283219009D49D4F9D22422EAF5AE231AC41EA0C575F88738D7A935422A5C361DAE304452598C003FD6D5D905D849C82B58617710E2DDB1A9E9A00399279015B9E01D9B4C31173366BA3ED40CA27EE83FAE87CAA6ECFF00055C324686E37BEDD7C07E1146021ACF56F122E7618CD9BCF9AD4D070B8E1687CC2EEF97F3D7D14A38B22954BA55198C2C98573D013B3781F42689564BB4DC27F69B0D6FED0EF21FC4274F22091EB588E13DB2C6610FB363ED154C14B924AC6E036E3E628AA4776F1DC1CC6BFBA5AAA914D200F1DD3A1D7C41F9FD17B1D7080441D41E47506BCD9BE941A34C2ACF8DC247F8682F13EDE632F02A1C5A53CAD8CA7F8892DF022891038EA877F14A7032B9F2FDD7A0F1FED0E1B0235EFDD8EEDA563227AEE2D8DBFA5669FE949B96147ADD9FD10579EB3126499277279D32A710B77CD55C9C4A671EE1C2390B7CC85B2C77D22E2DC1082DDA079A82CDF16247CA87F65782DCE238B08C5889CF79C92484075D4FDA3B0F3A0FC3F02F7EEA5AB4B99DD82A8F13FCBC6BE92ECC7632D70DC3A5B539EEB77AF5CFBCDC80E8A3603C49E753C31B4B80D90155532BDB89C6E764470F69022A220555015401A00A2147940A8D743B55F5B66405D7C29E707024AC5598786E4A9BB373B342E37D29BECEAF358A91B06C049115276AD09BD892878B75D16EB3FC67B7784B04ADB26FB8E56E328F373A7C268660FE901D9866C280BF86ECB7CD00FD2A3352C06D75C615B4F654FB1649300EBE3A5676CF6EB086038BD6FA964903F8093F2AD1F0FC659BE26CDC4B83F0B031E606A3D697B70E1914AD8B34FB98464DC8D7A10687F16E2F62CBADBBAC43B2E600027BB396741D68C2DAAF3FED8A85E2699B286FD934CEB9C03EDB782081A661B73A1AA6A1D1C65C2D7088869C3DD86CB49FDAF67FE27FD2DFD295657D9BFDFC37FC9FFE1A5559FD525FFCFA145FF4F1C9DEAAF768B887B45B6167B9DD322065D3C7A814071AC0B0B969FBE9908562352A0CAC6D079799A0A98AC99A09EF69DD0FDDEA4E9C8532FE36D9322E2CF420ACFC40342BB117071F9725A031421A5A091AEE37F20B43C670EB7518AEA4465FCE546423D0E5F4A1D82E2192CDDB171A0F7A01E6C00234DC1DC555B38B2CA7293046E08D08D41F8D0DBB7D6DDC2F8979B9BC41620EDDE8D8EDA729152B21ED5D6C873E8AB6799D08EE82E3B2D0768FB616B08CB638732916F46B8EC5F333497CB044004EFD66B11C6B8B7ED574DEBA5039001C9207779F799893E24D5CC42A62BBC8C08499904125A20091A9D09F43436FE095771443D8D63CB5A7D10CD7B9CD6B9C2C6DA289208601A4E862472D3F426A2C260EE5EBA56DA962AA5A06F0378EBBED5CC1A8CE2763987A1397F426B43F470BFED97277169BFC682A3A890C30B9E33B6688A78C4B2B58772B3EC082410411B83A11E95DAF60C6F0DB37BFBDB6ADE246BF1DC561BB69D9EB187B61ED7B40ECD0173CAC4124EBAF4E7CE85A5E2D1CEE0CC2438F98F5FE11B51C39F0B4BEE081E4550EC87FF996BFFE9FFA37228125C000923614B85C8BF6A67DF51AFE2307F5AA1156575597463865937EEADA4F798EE76000924FA0AF4AE07C0EDE1974EF39F79C8D4F801F6478563BE8DB0B9AFDCB9F7123D5CFF40D5E8C8B3547C52A5D8BB2BE56CD69F83533045DBB867736E807F374FB6BCEA4A54AB38F76237564E762374D71598ED1F65ADE28E70DECEE736890DD330EBE35A9A828AA599F11C4C36297B164D196482E179B5DEC0E247BAF69879B0FD56AAE27B1B8B413903F823027E1A13E95EA74AACDBC5671AD8F9209DC1298E971E7FBDD7875DB4CA72B02A46E08208F4351015ED3C4B036AFC2DD457DCEA350008D0EE3523E068658ECA61ACE7745258A9CB98E6CBA7D99E7E2668F8F89C6477810796BBDB55592F0395A7BAE047A1F4557B0584B185CB72E5CB7ED9D964CCFB24CC091D2637F28AF64C7F697036D7BB73DA93AC2B03F127415E19C1ED0664CD1009CDB8958F13BCE9A75AF4576E1E34EE82274F678811A981A3F2103CC5122A1CC2731EA42A0618E7F873F2197C93EEF6FB136DCB5BB164DBD8096274EAC0EA7D28860FE942C3803116595B9E464759F520D03F636989F6190AC099675D75E57093F775F13D2B3B7783A977D17724091B4F9E9A51714ED945EC01F140CFDAD3FEAB83B61B9F40B7FDA1FA4AC2D94FF0065537EE1DA414B6BE64893E4A3D45799F1FED7E371A0ADFBB16CEF6ED80887C0FDA61E049156CF08E9AFA83501E11DE009813A98F5FD29E46EA135788DB43C906B56E23F5A2DC3AE004E9D2B416785DBB9666173A085234D01E71EF1D4EA75AA187C34199F09FD69B1F7B30BA677646CE296230CADA1154CF0C0354953D5641F4228FD8B3B7FAD6AA71F3FECF7614AF723941EF2FC3A7AD39C2C9B1481EE0014FE11DB3C6E06DDC2DFED281495F68492ADC8E612C547307D08A0D80C4E2788138ABB741B86E1B527B814043732A851A26FA6FAEB3BD45C26ED8B5C3F14D724B3008814CF7DD5802469A03A9F0EB52F61F16B6EC85868F68D727488F65ECC8D7C48A06694B9A7257D046631DD37EA47FB444767AF1DEF7FD4FF00D29564B19DAA62ED09A4E92FFE74AA3EC5C9FF00999397B2D05FE048B304FC17FA507BFC31B60C6397CFFCA952A1A299E375A0ACA78C36E021D76E1B0C321FAD22411A651AAE63C8B6863E2795697B05C052FF00ED62FAE629643093325B3C93F014A955AFE8BF82CD3F279087A60D6C1BB95614DC4035E8B7013BF8D09E37700048DE952A887C7E69CED0792A214280C3949D7F88FE9467E8C4CE26E93BFB23F375A54AA2E27FF59FE1F55370DFFB0CF1FA15E95581FA45BF37ADA725427D5DA3F45A54AA83830FF923C0ABEE267FE39F1084F67102B5CC4B00570C82E053A86BA582585239AFB46563E08473A0AF681D4EA4EA4F324F3A54AB5B659A5BFF00A39C185B171FEF5C23D1147F366AD6A88AED2AC5F1179353203CD6B68BFEB31BB587BE6BB4A952A0110B8F50D2A54445A2221D12A46B94AA5D94AA3B5A92DE303C9647EB9AB98AF71FF237F84D2A552BB27DB914D3A141B0983B767555CA00EF6601B3024F89D085E922B78300EABDEB36B2EB04DBB2640B8403B13AA814A95689BA12BCB787B460BEF7B5D61BB5B88B96EF42E440556722AA9952DCD40FF4050EB1C59D583B45C53BAB48DB4995823952A54AD01D6B850D53DF1CE4B091E6B69C29ADBDA371030752B195986AC469A9DB522A36B02E5D36F21CF9986E06A74209F4AED2A8E36D8D9A48F056CEB39B89E01B662F9D8A9AEDE7B16CD9B414B5C1327ECAEA08DA0B78D0EC08CD7323EEDCC01D0F414A9558B09C00ACED70B4F97303C8EAA2E218E168BA94EF06D24EBA005A4A93D644751D28776C6EB36106811894255493994ECA49E5B1F3514A950CE7BCBB371D55CD353C0C00B582E06B6CD677146DAF0E00FBE6E83194EC0C6F3AE8699C1EFAADA6F699BECE834EEB5CB409D39C52A54D68187CD16E71273596C45E60C449D0C7C34A54A954F60917FFD9)
GO
INSERT [dbo].[Candidatos] ([Id], [Nombre], [CargoId], [PartidoId], [MunicipioId], [DepartamentoId], [Imagen]) VALUES (2, N'JUAN ZULOAGA', 7, 3, 226, 14, 0xFFD8FFE000104A46494600010101000000000000FFDB00430009060712121215120F1010151110171715171715151515181817161716171816151A181D28201820261E151A233121252A2B322E31171F3338332C37282D2E2BFFDB0043010A0A0A0E0D0E1B10101A2D2620262D2F2D2D2D2F2D2D2F322F2D2D2D2D2D2D2E2F2D2D2D2D2D2D2D2D2E2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2E2D2D2D2DFFC000110800C2010303012200021101031101FFC4001C0000020301010101000000000000000000030402050600010708FFC40042100002010302020802070604060301000001020300041112210531061322415161718132A10714235291B1C115334282B2D1627292F016435363A2E144748324FFC4001B01000105010100000000000000000000000300010204050607FFC4003411000104000304090402030003000000000100020311042131051241511361718191A1B1C1F02232D1E106F1142342151633FFDA000C03010002110311003F00D4D8FC03DFF334C52D65F00F7FCE8F9AE84EA5734344A712E43D690A7B88F21EB48D159A21BB55E8AB3AABAB4A4F49ABAAB78A7C43D3F5356355DC4FE21E9FA9A8B754E92A3272A0D193954C28952AF24E46BDAE0A58E850599B900326A334AC89BBF23801CCA9471BA476EB0594AD16D3F789FE75FEA14FBF47EE40C985FD8A31FC036694589A3753223AE960705581D883DE2A8B369E0E404B656F79AF2345593839DA7361F5F4B5A0A9A50AD2DAE26DE38B427DE97233E8A37AB11C1A61FF003213FCAC3E793541DB6F040D6FF91FC2B2367CF5743C52D4849CCFA9FCEAC9B83DD1DB540A3C41763EC0A814CDA746A15DE52D2BF8B72F651FAE6ABCDFC870F1FF00F305DE43CC7B0456ECC91FF71AF3F9E2A8EA135C2A0ED1F6EF35AA3C12DBFE8463D063F2A9DA7098233AA38943789CB1F62C4E3DAAB49FC98967D11D1EB363D022336400EFA9F63B2BCECACD5BBB81A9A09C29EFEAC91F2DEA693B39D3044F2377EC5147A96C56C09A4938A44CDA43EFE6081F89AA076FE2DC08A17CEBE0F256BFF1F003C7B2FE1F3597BB9A48D825C47A0BFC2430653FEFF5AF69FE9C2FD9C47BFACC7E2A7FB557D6F6C2C6CB898DDD267559F6DFE3CD676D2819139A59C6FCABF28379F037A55255DDE7C0DE95495B8A8314A3E63D455D552C7CC7A8AB8A70A327052A857B51A90435D5724D52D5C134297822C5C54B35D51CD750916D56D99EC0F7FCE8D9A5ED0F647BFE746CD583AAAE0E497E20761EB495377DC87AD2944668A0ED5755966AB6AC299C9052CD56F12F887A7EA6AC290E23F10F4FD4D304E93AB7E07621DD1A507A92FD5F3232FA4B0CE3BB381EA68BC0F8175CBD63B154C90001B9C73393C8676E5DD5A85B0411F54A34A8E58E608390C09EF077CD729B5F6B3666F43038D713A5F2AE2471EBCB50B730381319DF9067C072FDFA76A31E170631D4438FF22FF6A8E60B7180123CF72AE09FC066BCE1B785F547200268B1AB1C981F85D7C8E3D8E455171462657D5DC71EDDDF2AE50333A2B5DCEC969E1995C6A4208F2A2567380CA449A4726073EC320FFBF1ABD37281C465D3AC652E132351552016039900B019F3A67368A4D3611ABAB13F4A5C42E2D6082EADE575482E223322E07591961D9E593B80300EE18E7955FF00FC4309CE84BB7C02415B3BB2871BF65C45A4FA835310BDCD0E6827B05E9FDA5BC342ADEBC27E7587FA23B8B992CDDAF6691E7333E524625E25D80460C752EE18807B88EEA8FD2970C9596DEEED6764BBB4947531E58ACCCFFF002950737201E5CD7503B6E25D054DD113C6AE8EBEB9FEF825BD95AD3F49B8A9B4B59AE562EB0C085F46AD19008D5DAC1C6064F2EEA974778A7D6AD61B9D3A7AF8D5F4E75692C375CE0671E38A45781DE5E46CB7F2ADBC332956B6B608EDA1970C92CF229CE7247D9AAE3B98F3A7AD3A2AB04490DA5CDCC2910C28CC720C73D2C244271BF7107CC55E1B2E531E741D7CCE95D408D543A516A09C62DE79A7B38E506E2051D62618690EA0820E30DF10CE0EDDF5432C654956182398A87473861E193CFF005E3AE4E233EB1760623627E081C64981B2CDA41254E400D9C2D6CDE253F12A923C40354E68CC0FDD23977F323AAD2ADE16B3FC6AD9DECD1B72D0E24C7795191F91CFB554A4808047235AC86FE3918C632798DC6C7C40AC6590C065EE47651E82B7BF8E4EE12BE2AC88BEF1FD959DB5230630F1C0D78FC089767B0DE954B573767B0DE954D5D82C5668A51F31EA2ADEAA23E63D455AE6904D2705ED795D9AF2A410D755B135535679A1C834538CEAA79AEA866BA874896ABAD4F647BFE746D54B5B1EC8A366AC119A05A0DE1D852D9A35D9D852D5368C944A9D3F9AADCD3D9A4E095A966A5070A7B863A0AAAA00093E27276039EDE943CD1787F15FABC872094703501CC119C30FED597B59D3330CE30EBC79EEF1AFCF017DA2EE0046E9C093BBB787F5CD686E316D6C7ABFF94B804FDE27193EE7358E8389CC8DAC48E4E7272C483E4477D6DE654B88485605655D8FE47D88E5E558F1C0AE3568EACF3F8B6D3EB9AE15ABA65AC49834B6F20D84C8EBECCA2400FA683F8D317FC31653AB255BC79E7D45066B2222458C8D70E9284F2D4831BF911907D69CB0BB12A6A008392194F3561CD4D024B06C2719E487C3F872C5939D4C7BF18DBC05653E913A362530DDDBC8D17118DD23B774E72331388DC7DDC1624F7287272335B8A5EDE30F7209FF00E3C7903BB54CC5757A81130CF839F1A2609A5F3B45F6F65591DFA24FA0D42E13D1E58D84F72DD7DE63F7AC30B1E79A5BA72897BB6ED3606A2D57F4871BE202DADE6B82A585BC524A40E644685B03D715F9EFA51D2F920BA09320B89574B4D2485C76986AD36E33A6251918C0F9E49EAA38C06D0C80549F26E9000B27DBB57DE78DF008AE70F968AE63FDDCF1F6644F2CF2743DF1B654F872354DD198A596F256BE118B9B2458A344CE82B2659AED01E5D6E9098DCAF52EB9DCE47F473C59A559236779111219A269096711CFAF11B31DDB063241249C3E3BAAE38C111DDD9CA3E299E5B56F3468649C67C70D6CB8F0D6DE26A0F81BD26F386638A947207B6C6851F8CF1F82D8AACACC647C9544567720736217E11FE26C0CED9CD4384F492DEE18C71BB0940D463911A37D3B659430ED8190095C81919AF927D2BDADD3C978B0EB2FD6C2C5573A9ADBA850A100DCAF59D66C3BC49E74A7D1B5B5D47F57EB83897EB71F50B2675842313E01DC0EA7ADD8F813563A31BB7D57D5D9F38E4806721DC35DDAE3DBF069C57DDEFECA39E378664578A552ACA7910798ACEF45A4904725BCCE5E5B295ADCBB7C4EA02BC2EC7BD8C524649FBDAAB4177789181AC92CDF0AA8CB311F747B8C9E433B902B29A6F229AE2E56DE178AE1964312C87AF012248F2A74F56CC4463B1903FC758BB5370C61A48DEBCBD3C15D8EED5C5AF0D48DCBA93BF20790CF3C5632D3E1DF996627D727FB56EACEE5258D258983472AABAB0E4558020FE06B1FC4E2D13CA8396AD63D1BB47E64D37F1D91A31843B52D2076DFE8AABB51A7FC7B6F022FB34F5A4B5D1EC37A553E6ACEE4F60FA556577256047A2921DC7A8AB4CD54A731EA2AD334804CF2A59AF3349BF128436932C618305233C99B92B1E409CF234CE69DA41D0A89691A853CD586AAACCD3D9A67849A51755750B35ED4294AD2301ECD13552F09DA899A39082A17279503344B83CA85520125EE69CCD25435E2D01CE2688853A49072A18EDA4B0D81C91B67BE99C40D4A70D27416AC7348DE9DC7A7EA69ACD2779CC7A7EA69689866B53D0B9B31BA7DD607FD43FBA9AD0D7CE7875FBC2E1D0F911DCC3C0D68FA4B7264B6478F3D5B905BF0D837BFCC0AF3EDA785741897348A0492DE547970CB45D5E12612420836743DBF335A3A56C5409E61F79627FEB527FF000149745B57D5D75E7193A73F77BBE79A72E9BAB759BF840D1279292087FE53F266F0ACE78B042B4159D57C973D55D425B023B956809FFBABF6910F000AF5C327BF48EFA72695554BB101541627C001926A8A5D5778493ECA16C488BA09948460CAFAB1A622080477822A38590C5209380F8514446469E039FF004B5D3C4AEAC8EA195C1560770411820FB57CB78D7D18B49203D55BDC2C6008DE49A489F483D94982A307C7DEDF3BF6472AD8C766C72527B8183D86EBCCA1BCD95B2BCF6C0F955870DE240A309DA34922628FB80A4800EB5CF710C0F9671DD5D16171ED99C5ADC8F234AACF856D5DDD76822FDB86BAEA34B57A2DC03EAAAED232BCD369D454695554CE88D3BCAAEA6393CCB31D810A2BFA55C5112EED0481BA9B52D733C8B8221EB2396DE1694730875CB961F0F5793819219BBE97C4C4C560BF5B9F38FB261D4C67C679BE1403BD46A7F05344E0FC3CC4AC647EB2799B5CD263019B0000A3F851400AABDC06F924923C663843D6EE5F9F6EB518E3CA8689AE29C12DAEF43C8B9651D8911CAB056DF0194F694EC749C8D81C6C2A8EC2DA186561608659C02925D4CCD2471007B51AEE033646F1C78F87B6C08504B61D1B09A819A5EA9CE7EAF1168ADD7FCA818900F7A86D077ECEE698BDE3565681525B8B788001523D4A0E06C15235DCF76C0554976B173772106FD3B86A7E527108DEDE29DB4B5099396791B1AA47C166C72CE00006E70A0003270055274D3A426D6211C0BD65F5D663B6897725C8F8D87722F324EDB731CC2FFB7EEEEC95E1D6DD5C60956B9BB564504633D5C1B48E707F8B40F5AB1E05D1C8EDD9A66779EEE51892E25C191873D0A00C469E08B81B0E78ACAD1DBD26679713DBCBD7875A370C935D1DE1BF56B582DCB6A304491961C89550091E59ACCF1C9035D4847F0055F964FCEB6F588E3D168B993FC7A5C7A1183F306B4B6153B1EC2E3CFBCD155368D8C33ABABD42AFB93D93E9553316D2DA31AF074E796AC6D9F2CD59DC1EC9F4AADAF41705CD46531C1ECF87DF40D6D02CD0F14861D7AE4D4931906DD616074CA85F98E586D80DB1E5ACE6E4DBDBC6C565BBF8F1B3451A8CCCDE28C3050679330F0345E84B06E2BA4E018ACDD97C58C93461BD8041B7F8AB5DC32E964B8796D6C10239D2F767AB88CD8DB31800BCAA31B336907B891BD71736324D9F2CD0464BAEA893F6922EF3EDEAD2FA9742D85B896C72385570E7FA592E3BC463746B2B68E1B7E196EDA6490E17AC78A4CB2459D9543A76A46DD8838FBD5EDADEC7282D14B14807328CAC07AE0D5D71D8387DACA1BF6775F7126A940548DB4E5BB4FF006CE110963FC3B9359FE2B751DCCD0C90F0E7B6963626494F50BAA328EBD51EA9C97CB143BF2D357763E20C6D6322C3BB75DABF99D09ECBC955C7C41E5CE7CA2C68DCB4F1BB29CCD39AA90CD35AABA82162DA2EAAF683AABCA5BA9AD2D11DAA59A121DAA59A2D28A0F1191963668D753AAB155FBCC01217DCED46E15C2ED6F2206C3893FD7550175958B02C00D425B738318CE4663D38F3EF56F2E82B220591E5949091C6A5DDB0327007200732700779A2FF00C397B349132DAB5BB452C6E2795E1CA2AB02DA044EECC4AE5749C03AB73585B65ED0D04627A3736C817F772B1C7C0F62D4D9ED272316F03C797CF1545D24BF3123DB4E8C977B05874BB898EA1858D9462447F876C1C310403B56D3A71C45C2AF0DB789224B981F5B91858E238468E14030CF863E4A083DE2B617D7423C1EAE491B7C2C6BA8F9EE70ABCFBC8AA5E276B0F13864B69A1B889D70E8648CAB46FBE89627195241E615B91C1D8EFCBCDB5062A68A4C4C6086EB475E375D473F996C478510B1CD89D57A5E75F3B56617600786D4B5D9DC7A7F7A05ADC3C5A6DEF484BB4CA10C7025D3B75911206B0C3076E5920E3145BA3BFB57A0472325607B0D839AE5DD1BA3796B866855BDE8C4A1AD946C4A96523F9891F222B01567C1EF8C322B8274EC1C78AFFEB9FB5636DFC2BE6803D82F74927B0EBE191EC5A5B3260C90B4FF00D7AE75EAB59C6F8D0830AABAA42338CE001E27FB57BC138A8B90CAC8032F31CC1073FEF159FE96C25672C793A823D86923E5F3AB3E885932AB4AC3024C05F303273FEFC2B8BA156B795B5BC3D75A7564E35C6D1E7D3280FCAA6974EF0B0545FAC2A30EAA43A57581819DB78C9C76803B1F6A9F0B014347DF1B31FE5725D4FCC8F5534F13551C6891D68C0DB68FCF9ECBE3565D2FBCB2BC962E252CCF0DBBE8D16915BAC60150465190394C382086CED5BBE0DC478571063244D6B3CC4E71222F5AB801701641AC018EEDB99EFACAFD2E706292C77883B128104DE4C326273EB96427FC82BE793DAA3EECA091C8F223D08DEB4C431CED0F6FD27A80EFCBCF508B1C1BECB69CF8DF8EBFDAFD2A881400A00039003007A0A957E711C56F615630710BD5D2A4853333AEC32000F9C57D7384745EF278229C71DBCD13C69200238793A861BE3CE86DD9923B470F3FC20CA0C469CB53796114C34CD0C520F09115C7E0C0D2D1DADA5A2EA58ED6DD477858E1007A80057C53A4575750DECB0CFC4AFDE2B69D15875CD1EA84F56CC488F1BE873B8AFB027D1EF0A8F53BDA46E48ED3CEEF31F5CCCCC05163D96F75873F4E567DC21BC96D1AD45AAABEE94594921FA989EEAE46066C5598F7E9124BB4454649C3B103C2AFBA3FF5AEAB37BA04AC490AB86289B616475015DF9E4AAA8DF0338C94FA05229B08150A91086832B8D2C6DDDA12EB8D886EAF567FC55E714E24E5CAA31555DB6D89239EF59EE6904B2B4E79E89EEB32B43587E995EC6B7197744091AA92CC14659890327C88FC6AF382DF3B3E8725810719E631E75E70DE150CB79746E218A42A23D3D622BE15D486C061DE1403E956F667D18B63B5ACFC330853B7A489CDD2F258E99B2A48DC115516B24B712186C2233C8A70CF9D30C47FEEC9CB3BFC2B927076AB8E91F46ECECAE82DC34EBC36E95DD208B595EBD4AEB8711A97D0CADA82020643F76290E21C62E274EA2D97EA162A30238B489D86FB3327662076D97279E4D75F363F133BBA2C2C66F8B8FDA3F3F3258F1E0E286DD33B2E039FCF85356F776BC3253A9DF887156528522C2A44AC72539E98572002CD963B6D835753F4F99130BC36E8CB8C2AABC3D513DD99356547AA7B564787D9470A84851517239779F127993E66AD3342FF00D7E293EBC43DCE79CC9BAEED3449DB4DCD351B401F3923DFF1C13043C4ED6358D73F6D6D249D65BE7196270199361A88F0DD481911BFB716D2451ADD2DC47728CF137635E95D3BB18FB2EA756CE02F2C60F3A16697B3E1D0C459A28A3467E6554027F0EEF2AB90ECCFF1E66BF0EF2D67FD33507AC5E879D52AF26304B196CADB77029CCD1F34AE68DAAB58059E51335D43D55D4F499054D7B9A1835EEAA22751124914D1DC4063EB625913120251964D390749041051483EBE340BC5BEE205935C93C83B256377B6B480B0CF6CAB65C8183825DB71B2834C1349F57388A4B649F4DA4F234B22AA6253AF778C481B6463B9DB3824671CB1F1F80DE774D046D321A16ECE873AD09192D0C2627746E48F21A33A1C7AAC679F6F6AD7709E9758DBC31DBC97C6692DD163791629E4576400310EA8CADBF81351BCE9FA3766C6DE6998FF001C8AF6F12F99322EB6F4553EA2B37120550A802AA8C00060003B80A366A8C7FC5F0C1DBD23DCEE63203AF417E68EFDAF2114D681E68F75D28964431713E1915CC0D9C9B660C7CBECA6C1CF9ABD5341C32D656D3C2B8A75727759DF871BE36542F8900FF2EBEFAB2CD23C46D924ECCA88EB8E4C037E7561DB09B11DEC248E8CF2BB1E07F686DDA25E37666870F0FD7A207167B8B4466BDB49A3D009D718EBA26F0C3AFC19F070B571C0BA257D730C73C97D6D6DF58FDD422213E4152C017EB172DA5492173800F8102A6C2F2E6DE6B686D6EDE38AE26580A4D9B8886B0DA40573A9724018565E75A2B8B174BCB6B55B5823BA3711DCB3D9CAC21EAA3706596E20DBAB6740C81886C962A1F720D4C46271D1B845351EB6E5AF307DBC15DC3C18670E9183C78572573FB6DA1952DB8B451C72487114CBDAB699BC14B6F13FF81BD89C8AD1535C678543750BC1731AC914830CA7E441E608E608DC56438609F87CA96579234D6F292B6972DF11201616D71FE30A0E96E4C14F23B56162B041837E3D397E16835FCD5CDEC9D5BC520FE2711379AB9D8FB363F13E340E912B1D3CF46FFEAF3F6FD689C5C1D31F809A227C86B1BFE38AB0BBB911A966EEEEF13E1593264E0517509193872DCDA182E9495950A303CF1FC247811B107B8815F09E236125ACEF6B71FBD8B936302443F0CA9E47BFC0823BABEDB1F1D6CF69174F9673F3E741E97F45A0E270056629228261997E24247B654F7AF7F910082E1A6313A9DA1F2EBF0D7C51619770D85F12C55E5874D389C30476F0DD4691C08B1A110216D2834AE4BEA04E07857907456DAD9C5BF158EE22998E127EB9FA898FFDB700043B7C0DB8DBC6ACA2FA3D896606466B8B7231A2577564C648653190B267604301E39EE3B4C7802DAECBD55B3BB3004B6FBF4ED593BD91E769249E4691E7DE466D20B7642724000D940D877533C2D44D7D66B7865B88DE611159E49251875655D998F2383ED57DD2CE8B59431192278ED2651941AC84908FE06427B59E595DFBF7AF7E8FFA2B73717105CCF0BC16F6EC251D60D2F23A83A5514EE141392C79E36F21CB26EB0BB7AAC1509B703375C002065E3E23C3B095F62B5B648916389112341855450AA07800361551C4B84B962D18C86392320104F3E757A0D53F14E2AC8FA100ECE3248CF319DBF1AE7DA4DE4A9BAAB353E11C34C64BBE35118039E3C7352B663FB470BCBEAFDBFF0059D3EFBFCE99E1D70648C330C139E5CB638C8AC074BED526B993ADD4403A74EA7552BA5766552038F239AD2D9503A7C635835CFC8140C44AD8A22F3A7EEBDD33F483C6E2B9B886DEDD96416664966753955731B4491646C5BED1891DDA478ED9DCD1C42889A6355551C8280A07B0A5B35E87061FA066EDDF15CE4D3F4CFDEAAE0A6A77A6F348A9DE9DCD195772F7352CD4335D9A70A054F344CD07352D5536A62899AEA1EAAEA9264226BB5541DAA1AA929523835D9A1A1A9D2497B9AF7351A86AA74917550273BD4B550A53BD314E102EADC48BA58B0DC105495656520AB291C8820107CAB49C3BA6D7F08FB58AD6E86D9704DB4A71B65F0AC8C71E014790ACFE68E876AAD2E1629BEE1DEAC4589922FB4E5C96CA1FA4C8F2164E1DC4439EE8E38E719F01D5C849FC2837FC5A6E2662862B0BBB78239E29A49AED04271048B205863C9662C540D47000CD67F85DE7532AC846421C9F4C107E44D6CEC7A476F2852AE40906A52C30AC3C55B91FC6B93DAFD2616531B47D24644F81CF4C96EE0E5133378EB7985692C61815619560411E46ABAF83B5B82DB98DC827C42164D47D7627D4D32FC4610C10CB1863DDA87FB146E18F956079AC92823F9D88F9107DEB9A93216AF55ACB56AB85C656250DCF73F89247E74A4B359C6F967855C776A1B1F4CE053D1DEC4C32B2C64788753FAD09EEB49ADA41BD88B2B24B0A4D0BEC50286247832BF65C7E1E959F9BA3B68368B86CE07DD064853FD28FA7E5573FB76266290079DD402C221AB4839C16248001C1FC293E29D246B72825B5955A66D11AEA52EED8CE11135336073C0DA8F0B651F53587BB787A11EC8A2460FB80F31E887C3380885B5DBD970F85CFF1104C9EEEBB9FC6AD7A999C625922553CFA90C091E1A9CEDEC2B3BC4BA593248F0987AA9500243E58E961B3AF20C398C8C8CA91CC1A5B87710BE291DD5C3BAD95C02CB2C4A1DA31A8E89278F4ED1BAE1832E74E46A006483370D3C8E34D00FCE64A9B9CE631AFDD001D0F672B27E715B98D400001800600F00390AAEE2715BEA0D34888DE6E1723DF9D55D97D7AE24C43330B41CEE248963693FF00AF1FC457FEE3691B82BA86F5A0892D2CC167962463BB49348A1DBCD998FF00EA8916CB99C7EB35E6AABA46A50718B551813C581DC181FCAB15C72F639A77785B2A7483DDDA0A3BB98DB1CEB5D71D26E144EBEB6DA623BE18FEB273FF00E4AC6BE4FC0AE5646BB74CE87BDB865C82A74B152320E08E7C88DAB6F626CD6C78C0F2EB201EAE15E84AA1B4653FE3915A903DFD95BCC76349669891B634B5762E5CFB54D4D339A4C1A6735148853CD4B342CD4F34E13152CD79AABCCD0B5D482548FAABCA06BAEA74DBABA56DEA3AAA339DCFFBEEA1EAA4A41350B51734B5B9DCD1E9C263AA91342D55334BEAA45245D5507351D55C4D3270BA8C876A0668C876A7091530683D11E94C30DA25ADDDB4EE903491891552418123E3B2183820606C0F2A266B306C525FACC12674F5E5B6383DB0B203F8B1AC5DB6E2C89AFEBA3C7223F4B5364C62591CC3CAC771FDAFA6F0AE31C29BB31CB0067DB44D98DFD02CF83F8558706B446BF9A02D2753F56866551238525A4991B241ED001136F3AF8ACBD1E994620BB7C7DC97B4BFDBFF001ABAE13C322FACC6A624D0F14AAEA000AC418C8CA8D8FF0015736EC443B8016035C87B1FDADB6E0DE1D7BC7BFF002BEE7713D8DA8FB47B3800FBED147F9E2AA2E3A45C23E206094F8C3035C7CE246AF9CF1AE0D208D470C16D6F26ACB37568A0AE0F821DF38AA96E89DFC9FBFE2B28F24D78FC0328F9544635A4701DB67C80F74538520F13D95EE7D97D338E71FB290AC9F54BB69221D89A2096EF18E7F1C922305F15DC1EF06B336FD39B5B795A70609EE241A5AE2E6EE333040768D12DE1288A39954D209DCE4D15AC8343D4392CAD1F54C79120AE927C89AA7B7E845826FF0057D447DE773F2CE3E54118E71FBB2EC17EA7D8A29C201A799FD29716E928E2EEA0F54D05B86C9449633AA5C2E8D6C4165C2924000674E73818AF9BA797D062D755ECAF0AAA623EA514A81D860C9099375033BF3CD59CBC27EAF936908EADCF6A35C2E1B0143A93B01B0D43DC77832B49EDEDB535C5D4026971AC9755185CE9445273A46A3E6724F90471779824F55D1EFDDAEFE6ACBA08840D6E41C09272E7DBD82AFAF449700BFBBBA91BEB76F7690952733DC5CC996D430BA246C0182DC97BAA1C5F805CF5ABFB38DA5BC3A46AFB28C317CB64822327969EF15607A576A768DE4948FF00A514B27CC2E3E749FF00C5E58B082CAE1990E0890C70E0E01190C491B1079509AC9E5929AC24F2A27C9D6504BA18D9F53A873C87984DF47B835C42ECF717B24FAD74E9208553907232C4776390AA3E8A1FB398FDEB899BD7E11FA538DC6EFDC8D115A45FE779243EDA40150E0D646088233066D4CC481804B127615D26C4C0E22199D24ADA04570F40B0F6B62E09620C8DD79DF1F52AC1DB6A0E6A4CD50CD748560052068F9A581A2E69922899A966839A2034E1329134AEBA609AAFD548A7684C6BAF281AABA994B7531707B47DBF2142D55D767B47DBF2141D54E7548689CB43B9F4A6B349589DCFA539446E8A0ED57A695CD30693CD272411335E8A166A686A29D7B474E54BE68EBCAA413152AAAE23C0A2919A5064495B1978DD949C0006472E43C2AD2A3272A8C91B246EEBC023AD3C723986DA68AA036B771FC12C532F84834363C032EC7DC5796BC77AA9A36BA8268B496190BD62B165650AACBCCE48FC2AE3343EB5125864941EAE3662586E118A9556603BBB4DBF7641F3181B4364E1DB0BE4634D804D0E3DD9ADAC16D29DD23637B8513565329D2767FDCF0FBE7F368C46A7D0B1A1DE719E20B1BC9FB3E3458C16C34E1D881B92020F0EECD6852EA365D6B24650EFA832918F1CE71547C63A5B6D1A948D84F2B0204711D793CBB4C321478F7F9571F1D934D65F8FE42E99FF0048B73ABC15543C66FA5457135B461C061A2267D88C8F8DBF4A37D5E771F6B7D7473F70A45FD0B9F9D57F0A84C70C68DF12A807D7C3DB955C44761E95DDE1F65611A01E885D71CFD57213ED0C49247486BAB2F449CBC1A260758791BBBAD924937EED9988A77A11C2ADC5A42FD54465C1D6E514B86D472A4E3208E58F2A966AB38AA98D259A1778A45566CA3690C546DAD7E16F5233E741DABB2FA7880869BBB9D5503E1C7C517676D0E8A43D2DBAF8EB5E2B6E4E077003D80158AB99D25BB926818344D1A2330E4D22161943FC4029C679646D9AB0E9BF473EAF25AA4973733899257749997466330E9C222A8E721E79E42AB837CAB2B606043AB17BD96600D3C55EDAB8EB6980375D4FE135136F4C669185B7A6735D685CF14426A351CD7669CA652144CD07353CD324A79A2834BE68B9A70A25489AACD55624D546AA672930236AAF681AABAA2A749BBC3DB3EDF90A0EAA9DF1ED9F6FC85035539D526E89EE1E773E9FAD3D55FC34F68FA7EB4FD159A213F55E9A4334EB72AAECD2724D44CD4A3341CD1223515228B474E54BD193954C28144A849C8D7B519391A453205464E47D2BDA8CA7B27D2A2A6A5C0B81DB4969C5AE66B789E48118C65973A592DB5647F3106AA2D23444508AAB955CE9006761B9C73ABEE056CCDC2F8ABA8B8C03364A48813B36D19224563B8DFF0084648DAB3F09C2201DC8BF90AC1D9F139B8A9E471BB363AB5F05AB8A3FEA8DA3967E011F553F09EC8F41555AAACE13D91E82B69AB39C8B9AAEE3E7FF00E7906FDA5D3B6E7B442EDF8D3F9AAEE38E442C579A9461FCAEADFA54673513BB0FA27847FB1BDA3D568FE932463776B99D650229F004463D3DA8B9924EA271E58C72DEB37AAB61F4C5195BAB3D4EEF98A7C6420C61A1FBAA2B15AAB3F6635ACC386B050B392BB8E1FEE39DE99A6606ED5359A46DDBB54DE6B49AA8BB54406894053BD1AA4A057B5EE6A35EE6924BDCD18503344069C262A4DCAA8F555D31DAA8355424E0A718D517557B41D55D4345A5657E7ED1BDBFA452D9A3F113F68DEDFD2296CD4CEA541BA04FF0B3DA3E9FAD59555F093DA3E9FAD5A5163D105FF72F1B9555E6AD1B9554E693D3B14B3468297CD1EDF91A8B75523A23D153950A8A9CA8810CA95424E46A7509391A74C81509BE13E86A74A717B8EAE091C0DD5491EBC867DE86E340928AD049002D5FD1E70CEBF87F1389B57DA49228C330DDEDA3C6C0E0F31CEBE7F6726628CF8C687FF11555D1AFA43BFB14963B791313B6B25D03957C05D4A7D140C1C8D86D555C1F8CB464248498B96F9257CC7979573D85C4B592B89D1CB6A789CF8DA01FB56BB356901EC8F415935E90C19C7DA01F78AEDEBB1CFCAB516AC0A29041054104778239D6C43331E4EE9B5992C6E601BC291B359CE9971068D5234E5264B7985C767DF3BFA568B354BD29E1EF3C604614BAB677201C6082013EDF852C635CE85C1BAA5862D1282ED10BA77F49327116B77102C0D6C1C6439935759A350390303B036DFD6BBA39F58E232ADB592275C50BBB484848D5700B1C64E3240E47E2159A4E052E183AB2B823482A4AB73D5DB1D95C6DCF9E696B7BA9ED99BAB92585D94A3686642C8DCD490775381E5B0AC06C92C4D205807E656B60B2390D9A35F382BBE19C6644B8EA6728C3598F52E3E2C950415D88CD6B73581E8ED8196656C1D087513E25770A3E5ED5BCCD6B6CF73DD192E379E5EEB3B1AD6B5E037966A687714CD2B19DC5355A01512BABABAA34E994A882834514E125CDCAB3B9AD0B723599CD0E5E08917145CD750B35D424556FC48FDA37B7F48A5B347E26DF6ADEDFD2295D55371CCA1B4641597073DA6F4FD6AD6AA3833769BD3F5AB6D5478FED4193EE5CDC8D53D5B336C6A9F5533CA78F8A95336DC8D29AA99B56D8FAD45A735276899A2A72A5F34646DA880A110A7519391AF735090EC6A492150AE941460C01041041DC118A26AA1DC3761BD0FE543354A6355F37FD8B22C8A2557EACB00CE835E173BB0037E5E34ADED93467B4AE14E74965D391DD9193838E633B56E35506E003B30041EE2323F03588ED9EDAFA5C7BFF0059AD66E30DE6D545D2DE921BE78C8B6B7B78E1411A4702055E7924F7924F777607993A9E8F40C96F1ABFC58271E009240FC0D56456B1A9CAC680F880323D3C2AF2DDBB2BE828F83C2F44E2E26F241C54FD2340011EA0D5DAAA0CD5A36A90095E207E1F7FD29391158619430F02011F3A678837C3EFFA527AA82F2094668C93567B300361BD3F9AACB46ED0F7FCA9FD55261C945DAA2C47714E521136E3D69DD5456A13948D0EBD2D50D54E9A94A8C281AA8C0D2B488526E46B2D9AD3336C6B281A8531D1161E2899AEA1EAAEA0DA352B6E25FBD6F6FE914B57B5D5376A50DBA04FF07F89BD3F5AB5AEAEA347F6A049F72F1B91AA8AEAEA52278D75336BC8FAD757545BAA99D11A8EBCABCAEA28425ED79272AEAEA74C1028371F037A1FCABABAA074521AAA8A14B5ED75553A2B210EADEDFE15F415E5754A3D5349A22541ABABA8A50D27C43F87DFF4A4EBABA82ED519BA235AFC43DFF2A76BDAEA93345176AA51731EB4E5757511A84E5E9A1D75753A65ED14575752098AF1B95658575750A6E08D0715E575757505197FFFD9)
GO
INSERT [dbo].[Candidatos] ([Id], [Nombre], [CargoId], [PartidoId], [MunicipioId], [DepartamentoId], [Imagen]) VALUES (3, N'MARTA PEREZ', 6, 2, NULL, 14, 0xFFD8FFE000104A46494600010101000000000000FFDB0043000A07080F1514170E120E18181219111A191C1A1A0F19111E1E121A1C181A1A1A1C1A1A202C231E2029211A1C2436242A2D2F3333331923383E38303D2C32332FFFDB0043010B0B0B0F0E0F1D12121D2F232321322F3232322F322F3232323232323232322F2F322F322F32323232322F32322F2F3232322F323232322F322F3232322F2F2FFFC0001108010200C303012200021101031101FFC4001C0001000203010101000000000000000000000506010304070208FFC4004C1000020103020207040409060E030000000102030004110512213106132241516171328191A11442526207152333535472B1C1248292A2D3F01643636473849394B2C2C3D1D2E13444F1FFC4001A010100030101010000000000000000000000010203040506FFC4002B1100030002010303030207000000000000000102031121041231054151136171223223428191A1B1F0FFDA000C03010002110311003F00F66A52940294A500A52940294A500A529407CD29559D7FA40D1B7D1E04DF360124FB280F22E7BC9E61471F4A952DBE0BC4564AED927E7B88D06E77551E2CC00F89AC1B9882190C8BB02E4B6E18C78E7962BCD1AD37B1967732C879B3F103C42A72415C93346B8447DB13B8EB1173B0EDED2920701C460E39F7D5B53F27A0BD3B697EAE7F07A341D24D3DCED5BB4CF9BECCFA6EC67DD52A8EA464104788AF356547033B581E59C30F7775682E6DF12C0E6370461031DAF9206D31F239F10078D4FD34FC1393D3D7F2BFEE7AA6695C897D177C8B9FDAADE932372707D0835469A3C9EE5F26EA563359A82C294A500A52940294A500A52940294A500A52940294A500AC566B0680E4BEBB8E2432C8EAA839B336D02BCD6F2F7AC9E49A089DE29183166023ED8014ECDDC581007302A77A67DBB88A26E28B13C9B7B8BEE55048EFC0CD459AD61295F93D6E8B0A95DFEEFF00D18B3B712A89645EC1C1543CB1DCCE070627C3881524CEAAB9242A81C7EA803F854358DCCC100508C838216DCA760E0A481C0F015AAFFAE204ACE1F61DC630BB54A8E781C4961CC13F0AF0327A7F559FA86EEB53BE39F6FC1E876EDE8C436DB817DF22233B32A2BEC0118F0E43233CFDF5A2E6D446565899C4E5C08FB65C9248C8ED776339AEBFC6306CEB7AD5C7F5B3E1B79E6BBB46B225BE972AE1C8C46A7EA47E7F79BE42BE8F1CB9497B2397ACEA961C6DBFC25F24C8ACD6295A1F1955CECE886F244E4F91E0788A94B6D511B01BB27E5F1EEA83A552B1CD1A466A92DC2955FB2BF29C1B257E63D3CBCAA7639030041C835CF50E4EEC7966D706DA529553514A52805294A014A52805294A014A5280560D66BE49C5014DE995B4BD6473C685C847464180DB18821867C08C7BEAA7A9C775D5B4B2208A3CAA91BB7310CC14E48E0071ABB5CCDBDCBF8F2F41CAB9A48D194A3282878107B408AEB85A4B6317AB5E26A74B49FF005D1045D157890A80732C146072AD08F24F9481781E0652A55573C0EDEF738EE152F1E8766A770B74F7E587C09C54805C0C05C01C80EC81E83BAACA523A337AC4EBF869EFE59C569A641104DB129288143945DC71E27C6BBAB55C4E91A34AC708AA58FA0A8E875739064B768E36C61F7AB819E5BC0E2BDDC788ACEF2C4349BF278ED66CE9DF2F44AD2B358AD0E614A528057769F79B1B693D83F2F3AFAD2ADD1D98B0CEDC601F13DF5BF52B11B4C883047303911E95955A6FB59D18E294F7492D9ACD4669373B97613C57E63BBFBFA549D614B4F477452A94D1F54A52A0B8A52940294A500A52940294A5018AE1D565DB19F13D9F8F3F95775446BADC107DE27E03FF0075685BA46796BB61B222B159AC5759E50A56694046F4847F2797D149F40EA4FCAA3F5104868B2075ACB1265B801825DC9EEE04FC0576EB726E55B51CE56E3E51210CE7E417D4D7CDC246549910322A96C15DF8C0E381DFC2BC8EAE97D45F63DDE821AC2F7EEC944604764823C9837EEAFAAAD8B5B3631E1155E542F1EDDD1164003161B71DCC0F1AE9417317E6E6EB47D8979FA0907107D41ADE3AD9F14B47364F4EAD6E5EC9BA57158EA31C84A6D2920E2636C2B0F31F68798F956BB8D5D0318A389A575E0C170AAA7C198F007C864D75BCD0A7BB7C1C2BA7C8EBB54BD9376171B1F3DC781F4F1F7558F98AA4D8DE0901EC323AB6195B1952464711C0820F3AB6D83EE8D0FDDC7BC70FE159DB549549D1D3F74B715EC44A8EAE7C77671EE6FEFF002A9F150DADA60ABF8823E1C454B40D950DE201F88A8AE526698BF4D39375294AA1B8A52940294A500A52940294A5018A86D7B9A7F3BFE5A99A8AD717B2ADE048F88FFD55F1FEE4659FF6321694A5751E59A2EAE847B46C67773B52355DCCC7BF03B80EF2780AFA167A991BC410AFDC6B87DDEF2A9B735D5D1B843C93DC371759044BF7515559B1EACE49F1C0A92D4B5AB3B7FCFDDC519DBBB0F2AAB15F10BED1F70AF372E7B76D49E962C10A5772DB2916C64EBE5FA4214B8DA0043C844396C6E4C33CC8A90D3EC05CBC9D64852DA1C2BED7EACBC8C81D8338E2A8A8CA4E0824B1E381C66AE6DA2BE856409244F92D1BB47B1D7C1B69E3B587D53824770A82D2EF120927B1BE411C7376998E761628B13F6BB91951486E183B81C1C679E16EF747A0EF78FB678D1F7FE0CE9F3C26E34B9F64811E3478E76910F0198D9642C17240E2304703C718A8FB28EEE4485ED6CA5302801F718D0B204202A995C33306C71E47078D4D595D697A75BB4367223924B841389C976C2867604EC4185CB1C00077D7D7D13568AE6D2180A1B04895663D8C9719DE78F6B8F0236FBEBA2B1CD79329C951E0AC5BDC09875532B47711EF77DA8D1B43863B5598F262B8F26C13CB19DD66F270482DD8C63D9ECF56A73C77BBB8C9CF828F7D4874E485998C7EDBD96D7F56902C59F3C34BEE1E55271A0550839280A3D00C7F0AA63E9D64B6B7C2233F5758E13496D9CBA75A18C33484348E43311955181B42AE78E00F1E7C6ACBA2BF6593C1B3F11FF7A86ADB6F70F1B657E1DC6BD1FA49476A3CA8CCFEA773F7F24B6B78D83F6C7EE35D763F9B4FD81FBAA02E6E5DC82DDDC80E5562B618451E0A3F756573DB2933A715ABB6D1BE94A566748A52940294A500A52940294A5018AE3D463DD1B0EFC647A8E35D746A95C15A5DC9A2A34AEABE836391DC788FEFEB5CB5D69ED6D1E4D4B97A67CE8771D5DCCB09F6260254FDB450922FAE02B7C6B67E1020DDA7CE76E48443E78591091E9806B92FAD8C8A0A9D9223878DFECC8397A83C88F026A563996F6D64848D8EE8F13A1FA92152B8F3192181EF18AF333E3717BF667ABD3E4572BE5792A9D01E9722AA69F74F8C6162958F02392C4EC7930E4A4F3181CF9DF2FB4F8655D92C418673C73907C5587153E86BF3E11C36BAE0F10CA7C4706047AE6AF1D00D5355777B789D248638B795999B0B93B5112400B2E70C464300072154A8EE7C1DB931F6AEE5E0E9D3F47211E2FA54A93C6ED1C80EC914B124AB1475C14752AC39641F2AFB5BAD5AD4243F4B5789996242B00924573ECA2A48D923CF2F80324607095BDBB86690CB2C3756B3C5F937922845D21E01BAB768D64560378237282A4F77115B34CBCD0E36FA47E328A49718124B7285941E61170AA99EFDAA3CEA76E4877353CAE48BBED26EF6894DBC8FB65496467951A493671E0A09EE0300600030054C5ADC24A8B2C6728C320FF03E06BAB4BE94DACF74F691CE927E4D648CAE70D8C874DC78160406E1DCDE46B8EEED0417455384532349B472599080F81DC183038F106AFD35B8BD3F738BAA9EF8DFBA37D294AF4CF28D9026E754F1207FDEAD2A2A1746832C643DDC07A9E7F2FDF5375CD92B6F477F4D1A9DFC9F54A52B33A85294A014A52805294A014A5280F9A56B76006E3C00E27DD5567E986EE30593C89DCE5D620DE6A1B271EB8AA55CCF965A62ABC22C77D6A245C778E20F9D556EEF2188959678E3239879513F79AF8D5BA651ADACC5E192297A87D81977AB395210074C807711CF150A3A00F0471CD6F14733F551F5914AA9B8C8100668E561D924FD46E1E0456B8B2AD70619BA6EE7CF0CED6E9369A3FF00BD17BA50DFBB35C87A536514AB7515D2313849231BBF291F711918DEBCC788C8AABDDF4B4C4E626D3DE375E051DC4647AAECF9F7D683D393FAA0FF006E7FF1A9C94AE74CAE3C3D95B5B2F175A6D9ADC19CC31496F74C1D24312B0599876A32C4700F8DEB9FADBD79E01E8E8ADE5A59C6F1CC86DE5925777630158B24E1152450536AA8500120F3C804D553A3BD2DEB4BDA1B2EB2DE4525A22E1C679B18F2063C71CB3C4104D4F2DEC49F9AD442AFE8AEA090BA8F0EB5082C3CDB71F3AE459143D33D04BBE127BD7FDE495D6B558EDEC4C567309AE240EA8C8CB2BB48F97966210F702CFEBB4778AF2AD36D2695D20810BB9E0147701C09627D851DE4F2F5E15766BFB58D8CAD7B0212304DBD89EB1973CBAC94ED1DDCC1ADABAACB046DF40B000BB65E4926492573DEEC73B58F916C0EE039559D777EDE44B58D3D7F927748D1ACF4F803CEEAD2EE0ED215C9328042AC63DAC00480071E249E75813493486EA4051426C8E338DCA8482CEFE0CD81C3B80F33501A6EB764F20334B22DDFF9CAEC61E519FCD85FD922ACA2B6C3834FBA9F2799D4676F72979F715F71216608A324D66081DCE1467F77BCD4FD8D9AC63C58F33FC0795755E453F939F16274FEC6CB48022841EF3E27BCD6FACD2B95F27A29696919A5294245735E5C471234D23848D14B3313801471249AE9AAB74D64016D43FE61B51844B9E5B72C5377975813E5407D7E35D4E55EB6DB4F8D62E6A6E2E1A2774F111A236CCF76F20F1E20548687AC25CC6CFB0A4B1C8D1C91B302D1CC9ED2123830E4430E04106A5072AA4F44A758AFB51B595B64F25D75C8AC71BEDD940564FB58C60E3950179A5476A5AB5B409D64F32469E2CE067C80E6C7C8035069D2A967FF00E069B2CCBDD2C98B48BD434837B0FD953405AF355DD7BA43D4B75112092E0AEEC16DAA8BDCD237703DC399AE5B8D3F5A95097D42287EE410EE3E60CD2EE20F984AE5D33A25A5CBBA59629269B71593AF9DA560E39865042F863030462B3BDBE13D169F96B6884BDD6B27F956AD87FD1C538887A058FB67DF58B39B11EDB7B2BA95064822D9D57DCD2EDC8F4AB74FA4456BFCA6CEDD10A8EDC688A81E21CC00070703883DFC8E7353B04CAE8B221CAB28607C548C83547D3A7CB6D9A2EA5EF492479ADCE99A85E40D1476488B22E37C978B952181F66356C3023BCF0353D08D6A38F6CF6F14E15F72F5578D1CBB4721978D524603BC95CFAD4CDC8EA664917824AE11C777584761FD4E369F1E1E15355A44A94D22B929D34FE4ADB5B69BAA43992DC3804A10EA5258E45386463ED46C08E233C7CEA8DAEFE09F0DBAD2EC71E51CDCFD048A3F7AFBEAC2BA2C2FAADDF69E3736D048248E5689D5DBAC46E2BC082235243023854E7D17518C861245741738EB53E8F20E5C3AC8D4A31FE62D5CCCF2FD07A337B652B4B75692E0290AF127D217D4F57961F0AB0AEB7664ED3751A9FB323188FC240A455D175A917F3DA7CF1F9AA0BA5F5FC8966FEAD6A9FA47A73A98DEE6343E13234586EECACAA2B0BC136F7B368CF52B5A3C1FA53387B9720AB0DC7055830F68F220E3962A3ED2FE688E6399A33E4FB41F51C8FBC57BF2CDA0951BE5B076EF25ADF89AD53EA5A146A7AA7B3DFDDD5C492FCA2526B589ED5A2975DCF6795E9FD219271D44F646E10FE8A13237AED1919F422A66C74ED560592F60B7921B38A292568AE65DCACA8A5B0918EDA1206398E7CEBD293A40A4016F63732F0EEB56B65FE94DB07C3355CE93CF7EE22D35A28E18EF65788B195EE1D576EE6E002A2E5415C02D8AD36CCDCA65D3496DD0C7218D50BC48CCA390665048F3E752154D96C356B41BED6E8DDC439C33ED59368FB12A01938EE6152DD1FE915BDE23326E4910ED9229176491BF2C329F7F1E555275A27694A500A529402B8753B08A789EDA55DD1BA9561E47C3C083820F7100D775466B5AAC56D135C499C0C05551B99E46E0A88BF5998F002808CE8ECB731CB2E9F3C864EAE38E48E63ED3C321750B2638175284161CC60D766B7D1EB2BB0BF49B7590AFB2DC55973E0CA4103DF5F1A0DA4E37DD5D605C4DB77203B9638973D5C40FD6DBB98B377B31EEC568D5E69E79BF17412346A115E7957B2CB1B121238DBBA47DA496FAAA32389140453F40B426730AA113A80D85BD93AC5F06C17247AE2B64B7375A73A75F70F3E9EEC10C9261A581D8E10C8CA06F8C9E1B88C8CF1AB269BA55B5BAEC860441DE40ED31EF2CC7B4C7CC926B7DFDA472C6F048A191D0A303DEAC30680DE6A1AE1765D4720E52828DFB680B21F5C061F0F0AD1D0A9DDAD12391B73C2F240CC79930BB4618F995553EFAE8D55875B00E58959C93C822A30249EE19751EFAAD782F1E75F664C91511D1E5DB1B47DD1CF2A2FEC091B68F7038A8ED4BA71A6C44C6B3F5D20FF17021B86CF81DBD91EF22A02C7A4BA908C243A724649676927976E5D98B36D8A3CB638E0648E552EE665ED99A8AAA5A45C35D1958E3FACD71105FE6B8727DCAAD4D6B5FB5B44DF3CA013ECA0ED3BB772A20E2C4D517498B50BFBB9A0B9D4A48D2058D80B745801EB54E406396180319249F4ABAE8FD14B0B66EB628332E30657769643FCF7248F762A279E4BD7092F8397A27653969B51B94D93DC3A9119E263B78C6D891BEF60963E6D568AC0159AB15318AD175EC3F6B1D93C7C3873AE8A8E9DB7C8211ECAE19FF00E45F79E27D0501CD66A19A353004289BB88524E405ECE3BBBCE78F2A98AE2BB1878E4FBC50FA38E1FD602A06FEDFAEBD92179A60896B13AAC7752C0B97798312226193D85E754BB513B64A5B7A2D05940C9E03C4D5175DD4E09F53D361866490C73CECFB1C36DC4470091C33E55CD7EFA5C770B6F242B2A0DA64965BC79D632EC511584AEC09247107181C78D7C5CDD5AA6B36A8658E38E2B2728372C6A64958AA85E4325707CEB38CDDD4969F259C6917CBCBD48F19C976E0AAABB998F90FE3C877D56B5DD0EE6675BFB68D21BC8D7B2C64DDBD3BE29140DACA470CE781EFC54F69B1EEDD72DC5E4CE33F56207B2A3C0779F127D2A4EB65B7C957A5C111D1AD652EA1130528EAE5248DBDA8E65E0E8DE8791EF0454D553987D1B565DBC23BDB76DC072FA4C1821B1E251B1E781570152419A5294060D54AD87D2F509646E30D96D48D7B8DDC89BA490F9A29541E196AB69AA7F44E6D979A8D9BF07FA52CEA3C629510023D0AE280B80AE4B7B508F2CBDF23863FCD45403FAA7E35D62B3402A2F5CD5E1B585EEA66C220E5DECFF5517C493C2A3FA4FD268ACD10756D2DC4ADB62893DA76F702428F1C1F2CD44695D1EBCB995750D5B6929C62B55ED471E7EB38E21DFE3DDC7B80159D03A5D749024369645A59E796479A5DC910964669182632640AB819C8CE3957D5F69AF2B09751BB96773C0448A634F121638F8B0EFE3EFAB8F4D9762C137D48EE006FBA8E8C99F21922A32B8F3E5A4F48ECC18E5CF7338B4B92D8298E0458C2F3409D591EAB8CFBEBB6A235A6EADE2B81CF7EC6F3461C8D4C638D72EF7E4E9D2467F07D1E6EB519BFCB451FF41093FF0010ABF5537F0671E6D24B9FD3DE4D28FD8DDB17E49F3AB957A90B528F32DEE9B334A52AC545734B6D1B7164527C76F1F8F3AE9AE1D4CFE4DB981D9048FB05806FEA934068D2EDE3DA1F602773618E58901880467CB1507776E65BCBD8848C9BAC208F7AF352ED73C4798C83FF006AB6A280001C872F4AA52EB36B15EDEB4D384732C48AACAD9291C4A7230A723748DCBC0D61D46FB1E8B4F92B3676456D8C8F72634447DF1C70C712A3A6448AC1958B1046389E3C3C6BA7A09A541249786EA1468E182080AC803AA948F74B9C8C0C37C2A5AE7E87339B88ECA7948C48DD892D61728328F21976A3EDDBCF0C780E0702ABBD01D32E6FA297AD9425949752492AA38EB2695F69EADC83944000C8E05BD0D63D34526EA9BE7C6F8D1AE5B9A4922E1D0C8A47B45C4D22DB75B2F5033876B40E7AADCE7B58DA3863076E38D4EB6931F3592543E22E646F93B153EF1581A68450B0C8F1ED0028DC5D70390DAE4F0F4C56CB2BA2C4C4E36C898DC07220FB2CBF74E0FA60835D89B5C18384D6FC957D784CB79A72C98622F5F6C8005CA189F72B0EE6E00F0E04786315791556BD5EBB54B78C715B6B79667F279711440F9E1643EEAB48AB37B212D19A5295048AA7F4BB45B93247AA58E3E99082A50F6565B7272D1B79E7247AFA55C2B0450155D07A6D6571F9367EA6E0707865611BABF2206EC06E3E1C7C85776AFD22B680052FD64CDC12188892476EE0AA3881F78E00EF35BB54D02C2E7FF91691C87C5A305BFA438FCE9A5747EC6DB3F46B48E327812A8327D58F13F1A023FA3FA248247D46EF6B5E483181DA5862FAB0A1F2FACDF5893566C53159A038B50B349A36864194742A4791EF1E62BCEEE5E6B27EA2E959A3E51CA172193B81FBC3E35E9F8AD3716F1BA94740CA798650C3E06B2C98959A63CAE1FD8F24D6F5082558D237DC7AD527B2570318E391E7531AB5CF550CB37D889DBDE01DBF3C54E748FA2F035B38B6B744955848BB1029665E2573E633C3C7154AD7EF04B64CC39C8F1464783B3A822B93E938B49FB9D8B2AB86D7B1E91D10B3EA6C6DA0EF5B74CFEDB2EE6F9935395AE300000721C3E1C2B657A079E294A500AE3D45808DC73DCA540F166E007C4D7657015DD30079226E03EF312B9F705C7BCD01D718C285F0007CABEC8A0159A02B1F841BEEAB4EB8901ED344635FDA93B1C3DCC6B8A3D13E896D15CC1162E6DEDE3122AF03344AA0C91B63DA6F68A13C4301DC4E7E3A76BD74FA7E9BDD2DDF5AE3FC94237907C89207BAADD733468A5DDD550732C4003271C49F1271EFA03304C9222C887723A0652391561907DE0D43748B5086D765EC9C00DC840F69B72965451CD98BA280078D57345E96C30D8C50C31BDCDC25B96EAE21B8220CB2F5927B2985C703C7CAA5F45D16499E2D4AF665964D81E28D33D544186414078BBE0FE71B8F862A1AD929E8ECE8A584A8925CDC0C5D5C49D6C839EC18DB1C60F82200BEBBAAC35802B35240A52940294A500A52940294A500A529407CB0AF3BFC236870C70B6A31AB2B24F14922AB765C09172CCBE3E63C6BD1AA3B57D3E3B8864B593F3722321F1191C08F307047A54349F92536BC1D91302010720F107C41E20D6DAA2F41B5B642DA25DB81776FD8539E12C4002ACA7ED0523239E38F8E2F20D4906694A501835C33F096223EB0743E806E1F023E75DC6B86D937BB4C7B999147705070C7D491F2140770ACD2B4CF22A2991B82AA9627C140C93F014053EC57AFD6679F9C76B6A90AFF00A597B6DF05C83EA2A7BA4D047259DC44E328D6F20236EE3EC9C607DACE08F3C57986857FAB405B598AD8CF6B7723C8F12E772E1DD548032410B81B80208E0790AB7C5F84BD3186D613AC9FA2369233E7C30A083F1A03AF4D9E586CA45BBB4484C56C4B18DD5D1FB07715DA010D9072A4733C09A9AD06DDE3B58217E0E96F12B0F06545047C4540DB9B9D41D5A5B5782C15D6411C985926753B937A0F6230C036D392C40EECD5C6805294A014A52805294A014A52805294A014A5280560D66B96F2EE2891A696558E351966660A00F32680F3AB2E8D417D75A94B217474BD448E58D8AB23C718C953DFCD723C854A45AC6A763D8BFB76B9B75E573026E609DC648B9FAB0F9D707437A57A7C4970D2DC10F2EA134A316F2BF61982A1CAA11C5541AB241D37D259B67E308D49FB7BA2F9BAAE280EED23A456374336F751C87EC870187AA1ED0F854BE6BCDB51D16C2F756543123C434D6959A3609BA46942A36F4232D8CF1CD4E2743367E6755BE8C7701762403C87588DC280B6935AA28C28DA39658FC4927F7D5747462E7BF5CBC23C8C0A7FA422CD56340D2ACA68A59752BA92431DDCB09EBEFD95311B7672BB95725482680B95FF004A74F84EC7BA4690F28E3CCF21F211C7B9BE555BBFBEBCD465FC562292D2DDE132BB3A8EB9EDC3842A8A0908189E3BB271DDC715D767D25E8FDB294B67894723D4DABB83FCE8D30DF1A8F9FA5560DA8DB5CA5C6D436F2C32349149005DC63923DCD228182CA473A02F765691C51A411A054440AAA3B954607FFB5D3B68AD9AFAA0318ACD2940294A500A52940294A500A52940294A500A52B19A033546FC219EB1ECACCF147B8795D7B99214C807C46F74AB35F6B76509C4F771467C1E6443F02735E7FAEEBD6736A114A9751B451D93A87DE1475AF20CA82D819DAA2A510C93DC7ED1FE91FDC2BE1D0370650C3C19437C8D611C30DCAC1878AB061F11C2BE99B00B1E438D59F05526DE91037F1AD94916A36C8232B3C692AA2EC592191B0C194702413906BD7ABC77A4B7424B39B0A411D5F03FE91306BD85790ACFB95728D6F1D43D52D339751BB58629276F6638DDCFA22963FBABCC746D3E37417B2C48F713132BB3206C3C9DADA808C28030387855E7A76F8D3AF0FF009AC83E2B8FE3550B6BC4458A1FF2718CF70CA8C51D4CF2C463AB7A95BF72401FBD5F13C6244689B8A329520F2C30C1AFBAD573731C6B992548C78B3841F3AD4C897FC1ADCBBD8468E49686492124F3FC93955FEAE055BEBCD7A11D23D3E0FA5452DE4681AFDE442CE14323A212C0F2C6EDC2AF963A9DB4C3741731C83EE48AFF00F09ACCB9DD4AC0359A014A52805294A014A52805294A014A5280C579D74CF5CB996E469167318C2A07B8953DA546E51A9EE24107871E239006BD09DB0093DC335E45D127328B8BE6F6E7BB91B3F701E00790C9F854A5B21BD1216BA3C10A9EA62457FB6E9D631F366C8627DFEEAFA74BAC7B70B79340E83E21DB1F035DD4AB9521EDA485240925B88666C852AC36498E242B2E031EFDAEA0F8577EA07F26FE9FC456BD62D04B0C91723B0B29EF5917B48C0F710C07CEBEEC65EB618E561F9C89188F36504FF1AADAEE968BE2B519153F66995BD417F934DE910F8C895ED8395792F486DD12D5D157DA9611F6892658C0AF5B158E28712933ABABCF39B23A9F0573A7C33A6DD8FF003573F019AF3F9C1047EC467FA8B8AF48E9947BAC2ED077DA4BF2463FC2A97676E92470CACBC7AA8CFB5F754806A32E3773A5F24F47D4CE0A6E970D68EF5E5FDFC2A120292317B5B58DF89066998B062381D848691C0E591B5787035D3AF8262EA55B1D6CB1C448EE47701F1FCCDC3DF52288140450022A85007200700079015BA38E9F3B39552E7BE58BD040EC3E264AE4BFD06193F2D1FE4AE07159A2FC9B071E3B7DA1EBC71DF52F4AB68AECEAE80749269C4965758FA64070C7EDA720FC38673CF1CF20F0C902EC2BC92197A8D62D261C04E8D13E3BCE0819F7F57FD0AF5B06B365CCD294A014A52805294A014A52805294A02275ED46282DE49656C2EDDA30371676ECAAAA8E2CC490302BCAFA353CD05B470358CBBD77138EAF19662DC37383C88AF53D7B494BA8FA92E519645911C2862B2A1CA9DA7830E6083CC13EB5576E8C6A6BECBDAB8F13D6C47E187FDF52887B22FF0019C9FA94BEF6897FEA50EA527EA52FF4E2FF00CEA4BFC1CD57ECDAFF00B797FB3AC3747756FD15A9FF0059947FD2AB6D15D322DB5393047D065EF1C1A16E7C3F495AADB584545416971B15028220471851B79A39F0A963A06B1FA0B63FEB927F655AA0E8E6AA8BB45ADBF1666E37CFED33163FE27C49A6D0D322B52D4639047BA299116EA1924792D9D15511D5D998F1E000AF5A8DC10181041E208E2083C720D79F9D0356FD5EDBDF79211EF1D5711E5572D06C4C16D0DAB3EF31429196F12AA01C780F0F2C5559647C6BF2C4B6F2F5AE110C4CA49FBE0A8181C4925B000E24D79CE95A8EC82289A09BAC58A3561D432F6D5403C588EFABE74AB4B9E789561651224C92A8762AAFB720AB10095F6B20E0E08155AFC41AB7EAF6FF00EFCFFD8D4AD10F646DCDFE42E6D6501644704F54BC55811CE4EFE5EFADA75193F5493FDAC4BFF3D744DD1DD59D761B7B7E60F0BE7C82A4303F99F102B67E20D63F57B6FF007E93FB1A9DA234CE13A94DFA949EE962FED29F8D5FF519BDDD537FD4AEFF00C41AC7EAF6DFEFD27F6359FF0007B583FE2AD47ADCCADFBA314DA1A656351BFCCF6B74D653AC76F70249098D5BF26304E02B1CE36E7D2BD920951D56546CA32865239152320FC2A887A27AA48363DC5BC6878131C524AC01E7B7790B9F322AF1616A91471C099D91C6A8B9E276A285193E381556591D54A52A0914A52805294A014A52805294A014A52805294A014A52805294A03E6B34A540334A52A40A52940294A500A52940294A501FFFD9)
GO
SET IDENTITY_INSERT [dbo].[Candidatos] OFF
GO
SET IDENTITY_INSERT [dbo].[Cargos] ON 
GO
INSERT [dbo].[Cargos] ([Id], [Nombre]) VALUES (5, N'PRESIDENTE')
GO
INSERT [dbo].[Cargos] ([Id], [Nombre]) VALUES (6, N'DIPUTADO')
GO
INSERT [dbo].[Cargos] ([Id], [Nombre]) VALUES (7, N'ALCALDE')
GO
SET IDENTITY_INSERT [dbo].[Cargos] OFF
GO
SET IDENTITY_INSERT [dbo].[Departamento] ON 
GO
INSERT [dbo].[Departamento] ([Id], [Nombre]) VALUES (1, N'ATLANTIDA')
GO
INSERT [dbo].[Departamento] ([Id], [Nombre]) VALUES (2, N'COLON')
GO
INSERT [dbo].[Departamento] ([Id], [Nombre]) VALUES (3, N'COMAYAGUA')
GO
INSERT [dbo].[Departamento] ([Id], [Nombre]) VALUES (4, N'COPAN')
GO
INSERT [dbo].[Departamento] ([Id], [Nombre]) VALUES (5, N'CORTES')
GO
INSERT [dbo].[Departamento] ([Id], [Nombre]) VALUES (6, N'CHOLUTECA')
GO
INSERT [dbo].[Departamento] ([Id], [Nombre]) VALUES (7, N'EL PARAISO')
GO
INSERT [dbo].[Departamento] ([Id], [Nombre]) VALUES (8, N'FRANCISCO MORAZAN')
GO
INSERT [dbo].[Departamento] ([Id], [Nombre]) VALUES (9, N'GRACIAS A DIOS')
GO
INSERT [dbo].[Departamento] ([Id], [Nombre]) VALUES (10, N'INTIBUCA')
GO
INSERT [dbo].[Departamento] ([Id], [Nombre]) VALUES (11, N'ISLAS DE LA BAHIA')
GO
INSERT [dbo].[Departamento] ([Id], [Nombre]) VALUES (12, N'LA PAZ')
GO
INSERT [dbo].[Departamento] ([Id], [Nombre]) VALUES (13, N'LEMPIRA')
GO
INSERT [dbo].[Departamento] ([Id], [Nombre]) VALUES (14, N'OCOTEPEQUE')
GO
INSERT [dbo].[Departamento] ([Id], [Nombre]) VALUES (15, N'OLANCHO')
GO
INSERT [dbo].[Departamento] ([Id], [Nombre]) VALUES (16, N'SANTA BARBARA')
GO
INSERT [dbo].[Departamento] ([Id], [Nombre]) VALUES (17, N'VALLE')
GO
INSERT [dbo].[Departamento] ([Id], [Nombre]) VALUES (18, N'YORO')
GO
SET IDENTITY_INSERT [dbo].[Departamento] OFF
GO
SET IDENTITY_INSERT [dbo].[Municipio] ON 
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (1, N'LA CEIBA', 1)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (2, N'EL PORVENIR', 1)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (3, N'ESPARTA', 1)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (4, N'JUTIAPA', 1)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (5, N'LA MASICA', 1)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (6, N'SAN FRANCISCO', 1)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (7, N'TELA', 1)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (8, N'ARIZONA', 1)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (9, N'TRUJILLO', 2)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (10, N'BALFATE', 2)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (11, N'IRIONA', 2)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (12, N'LIMON', 2)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (13, N'SABA', 2)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (14, N'SANTA FE', 2)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (15, N'SANTA ROSA AGUAN', 2)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (16, N'SONAGUERA', 2)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (17, N'TOCOA', 2)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (18, N'BONITO ORIENTAL', 2)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (19, N'COMAYAGUA', 3)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (20, N'AJUTERIQUE', 3)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (21, N'EL ROSARIO', 3)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (22, N'ESQUIAS', 3)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (23, N'HUMUYA', 3)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (24, N'LA LIBERTAD', 3)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (25, N'LAMANI', 3)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (26, N'LA TRINIDAD', 3)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (27, N'LEJAMANI', 3)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (28, N'MEAMBAR', 3)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (29, N'MINAS DE ORO', 3)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (30, N'OJOS DE AGUA', 3)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (31, N'SAN JERONIMO', 3)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (32, N'SAN JOSE DE COMAYAGUA', 3)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (33, N'SAN JOSE DEL POTRERO', 3)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (34, N'SAN LUIS', 3)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (35, N'SAN SEBASTIAN', 3)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (36, N'SIGUATEPEQUE', 3)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (37, N'VILLA DE SAN ANTONIO', 3)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (38, N'LAS LAJAS', 3)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (39, N'TAULABE', 3)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (40, N'SANTA ROSA DE COPAN', 4)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (41, N'CABAÑAS', 4)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (42, N'CONCEPCION', 4)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (43, N'COPAN RUINAS', 4)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (44, N'CORQUIN', 4)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (45, N'CUCUYAGUA', 4)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (46, N'DOLORES', 4)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (47, N'DULCE NOMBRE', 4)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (48, N'EL PARAISO', 4)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (49, N'FLORIDA', 4)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (50, N'LA JIGUA', 4)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (51, N'LA UNION', 4)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (52, N'NUEVA ARCADIA', 4)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (53, N'SAN AGUSTIN', 4)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (54, N'SAN ANTONIO', 4)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (55, N'SAN JERONIMO', 4)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (56, N'SAN JOSE', 4)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (57, N'SAN JUAN DE OPOA', 4)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (58, N'SAN NICOLAS', 4)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (59, N'SAN PEDRO', 4)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (60, N'SANTA RITA', 4)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (61, N'TRINIDAD', 4)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (62, N'VERACRUZ', 4)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (63, N'SAN PEDRO SULA', 5)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (64, N'CHOLOMA', 5)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (65, N'OMOA', 5)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (66, N'PIMIENTA', 5)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (67, N'POTRERILLOS', 5)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (68, N'PUERTO CORTES', 5)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (69, N'SAN ANTONIO DE CORTES', 5)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (70, N'SAN FRANCISCO DE YOJOA', 5)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (71, N'SAN MANUEL', 5)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (72, N'SANTA CRUZ DE YOJOA', 5)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (73, N'VILLANUEVA', 5)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (74, N'LA LIMA', 5)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (75, N'CHOLUTECA', 6)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (76, N'APACILAGUA', 6)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (77, N'CONCEPCION DE MARIA', 6)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (78, N'DUYURE', 6)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (79, N'EL CORPUS', 6)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (80, N'EL TRIUNFO', 6)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (81, N'MARCOVIA', 6)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (82, N'MOROLICA', 6)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (83, N'NAMASIGUE', 6)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (84, N'OROCUINA', 6)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (85, N'PESPIRE', 6)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (86, N'SAN ANTONIO DE FLORES', 6)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (87, N'SAN ISIDRO', 6)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (88, N'SAN JOSE', 6)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (89, N'SAN MARCOS DE COLON', 6)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (90, N'SANTA ANA DE YUSGUARE', 6)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (91, N'YUSCARAN', 7)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (92, N'ALAUCA', 7)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (93, N'DANLI', 7)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (94, N'EL PARAISO', 7)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (95, N'GUINOPE', 7)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (96, N'JACALEAPA', 7)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (97, N'LIURE', 7)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (98, N'MOROCELI', 7)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (99, N'OROPOLI', 7)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (100, N'POTRERILLOS', 7)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (101, N'SAN ANTONIO DE FLORES', 7)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (102, N'SAN LUCAS', 7)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (103, N'SAN MATIAS', 7)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (104, N'SOLEDAD', 7)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (105, N'TEUPASENTI', 7)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (106, N'TEXIGUAT', 7)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (107, N'VADO ANCHO', 7)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (108, N'YAUYUPE', 7)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (109, N'TROJES', 7)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (110, N'DISTRITO CENTRAL', 8)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (111, N'ALUBAREN', 8)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (112, N'CEDROS', 8)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (113, N'CURAREN', 8)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (114, N'EL PORVENIR', 8)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (115, N'GUAIMACA', 8)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (116, N'LA LIBERTAD', 8)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (117, N'LA VENTA', 8)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (118, N'LEPATERIQUE', 8)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (119, N'MARAITA', 8)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (120, N'MARALE', 8)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (121, N'NUEVA ARMENIA', 8)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (122, N'OJOJONA', 8)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (123, N'ORICA', 8)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (124, N'REITOCA', 8)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (125, N'SABANAGRANDE', 8)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (126, N'SAN ANTONIO DE ORIENTE', 8)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (127, N'SAN BUENAVENTURA', 8)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (128, N'SAN IGNACIO', 8)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (129, N'CANTARRANAS', 8)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (130, N'SAN MIGUELITO', 8)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (131, N'SANTA ANA', 8)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (132, N'SANTA LUCIA', 8)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (133, N'TALANGA', 8)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (134, N'TATUMBLA', 8)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (135, N'VALLE DE ANGELES', 8)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (136, N'VILLA SAN FRANCISCO', 8)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (137, N'VALLECILLOS', 8)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (138, N'PUERTO LEMPIRA', 9)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (139, N'BRUS LAGUNA', 9)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (140, N'AHUAS', 9)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (141, N'JUAN FRANCISCO BULNES', 9)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (142, N'VILLEDA MORALES', 9)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (143, N'WAMPUSIRPI', 9)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (144, N'LA ESPERANZA', 10)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (145, N'CAMASCA', 10)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (146, N'COLOMONCAGUA', 10)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (147, N'CONCEPCION', 10)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (148, N'DOLORES', 10)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (149, N'INTIBUCA', 10)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (150, N'JESUS DE OTORO', 10)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (151, N'MAGDALENA', 10)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (152, N'MASAGUARA', 10)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (153, N'SAN ANTONIO', 10)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (154, N'SAN ISIDRO', 10)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (155, N'SAN JUAN', 10)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (156, N'SAN MARCOS SIERRA', 10)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (157, N'SAN MIGUELITO', 10)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (158, N'SANTA LUCIA', 10)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (159, N'YAMARANGUILA', 10)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (160, N'SAN FRANCISCO DE OPALACA', 10)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (161, N'ROATAN', 11)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (162, N'GUANAJA', 11)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (163, N'JOSE SANTOS GUARDIOLA', 11)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (164, N'UTILA', 11)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (165, N'LA PAZ', 12)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (166, N'AGUANQUETERIQUE', 12)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (167, N'CABAÑAS', 12)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (168, N'CANE', 12)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (169, N'CHINACLA', 12)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (170, N'GUAJIQUIRO', 12)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (171, N'LAUTERIQUE', 12)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (172, N'MARCALA', 12)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (173, N'MERCEDES DE ORIENTE', 12)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (174, N'OPATORO', 12)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (175, N'SAN ANTONIO DEL NORTE', 12)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (176, N'SAN JOSE', 12)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (177, N'SAN JUAN', 12)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (178, N'SAN PEDRO DE TUTULE', 12)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (179, N'SANTA ANA', 12)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (180, N'SANTA ELENA', 12)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (181, N'SANTA MARIA', 12)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (182, N'SANTIAGO DE PURINGLA', 12)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (183, N'YARULA', 12)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (184, N'GRACIAS', 13)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (185, N'BELEN', 13)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (186, N'CANDELARIA', 13)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (187, N'COLOLACA', 13)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (188, N'ERANDIQUE', 13)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (189, N'GUALCINCE', 13)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (190, N'GUARITA', 13)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (191, N'LA CAMPA', 13)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (192, N'LA IGUALA', 13)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (193, N'LAS FLORES', 13)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (194, N'LA UNION', 13)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (195, N'LA VIRTUD', 13)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (196, N'LEPAERA', 13)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (197, N'MAPULACA', 13)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (198, N'PIRAERA', 13)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (199, N'SAN ANDRES', 13)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (200, N'SAN FRANCISCO', 13)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (201, N'SAN JUAN GUARITA', 13)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (202, N'SAN MANUEL COLOHETE', 13)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (203, N'SAN RAFAEL', 13)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (204, N'SAN SEBASTIAN', 13)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (205, N'SANTA CRUZ', 13)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (206, N'TALGUA', 13)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (207, N'TAMBLA', 13)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (208, N'TOMALA', 13)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (209, N'VALLADOLID', 13)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (210, N'VIRGINIA', 13)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (211, N'SAN MARCOS DE CAIQUIN', 13)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (212, N'OCOTEPEQUE', 14)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (213, N'BELEN GUALCHO', 14)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (214, N'CONCEPCION', 14)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (215, N'DOLORES MERENDON', 14)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (216, N'FRATERNIDAD', 14)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (217, N'LA ENCARNACION', 14)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (218, N'LA LABOR', 14)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (219, N'LUCERNA', 14)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (220, N'MERCEDES', 14)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (221, N'SAN FERNANDO', 14)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (222, N'SAN FRANCISCO DEL VALLE', 14)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (223, N'SAN JORGE', 14)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (224, N'SAN MARCOS', 14)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (225, N'SANTA FE', 14)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (226, N'SENSENTI', 14)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (227, N'SINUAPA', 14)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (228, N'JUTICALPA', 15)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (229, N'CAMPAMENTO', 15)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (230, N'CATACAMAS', 15)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (231, N'CONCORDIA', 15)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (232, N'DULCE NOMBRE DE CULMI', 15)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (233, N'EL ROSARIO', 15)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (234, N'ESQUIPULAS DEL NORTE', 15)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (235, N'GUALACO', 15)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (236, N'GUARIZAMA', 15)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (237, N'GUATA', 15)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (238, N'GUAYAPE', 15)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (239, N'JANO', 15)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (240, N'LA UNION', 15)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (241, N'MANGULILE', 15)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (242, N'MANTO', 15)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (243, N'SALAMA', 15)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (244, N'SAN ESTEBAN', 15)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (245, N'SAN FRANCISCO DE BECERRA', 15)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (246, N'SAN FRANCISCO DE LA PAZ', 15)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (247, N'SANTA MARIA DEL REAL', 15)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (248, N'SILCA', 15)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (249, N'YOCON', 15)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (250, N'PATUCA', 15)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (251, N'SANTA BARBARA', 16)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (252, N'ARADA', 16)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (253, N'ATIMA', 16)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (254, N'AZACUALPA', 16)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (255, N'CEGUACA', 16)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (256, N'SAN JOSE DE COLINAS', 16)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (257, N'CONCEPCION DEL NORTE', 16)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (258, N'CONCEPCION DEL SUR', 16)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (259, N'CHINDA', 16)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (260, N'EL NISPERO', 16)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (261, N'GUALALA', 16)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (262, N'ILAMA', 16)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (263, N'MACUELIZO', 16)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (264, N'NARANJITO', 16)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (265, N'NUEVO CELILAC', 16)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (266, N'PETOA', 16)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (267, N'PROTECCION', 16)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (268, N'QUIMISTAN', 16)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (269, N'SAN FRANCISCO DE OJUERA', 16)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (270, N'SAN LUIS', 16)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (271, N'SAN MARCOS', 16)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (272, N'SAN NICOLAS', 16)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (273, N'SAN PEDRO DE ZACAPA', 16)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (274, N'SANTA RITA', 16)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (275, N'SAN VICENTE CENTENARIO', 16)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (276, N'TRINIDAD', 16)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (277, N'LAS VEGAS', 16)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (278, N'NUEVA FRONTERA', 16)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (279, N'NACAOME', 17)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (280, N'ALIANZA', 17)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (281, N'AMAPALA', 17)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (282, N'ARAMECINA', 17)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (283, N'CARIDAD', 17)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (284, N'GOASCORAN', 17)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (285, N'LANGUE', 17)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (286, N'SAN FRANCISCO DE CORAY', 17)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (287, N'SAN LORENZO', 17)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (288, N'YORO', 18)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (289, N'ARENAL', 18)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (290, N'EL NEGRITO', 18)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (291, N'EL PROGRESO', 18)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (292, N'JOCON', 18)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (293, N'MORAZAN', 18)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (294, N'OLANCHITO', 18)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (295, N'SANTA RITA', 18)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (296, N'SULACO', 18)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (297, N'VICTORIA', 18)
GO
INSERT [dbo].[Municipio] ([Id], [Nombre], [DepartamentoId]) VALUES (298, N'YORITO', 18)
GO
SET IDENTITY_INSERT [dbo].[Municipio] OFF
GO
SET IDENTITY_INSERT [dbo].[Partidos] ON 
GO
INSERT [dbo].[Partidos] ([Id], [Nombre]) VALUES (2, N'PARTIDO NACIONAL')
GO
INSERT [dbo].[Partidos] ([Id], [Nombre]) VALUES (3, N'PARTIDO LIBERAL')
GO
SET IDENTITY_INSERT [dbo].[Partidos] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuarios] ON 
GO
INSERT [dbo].[Usuarios] ([Id], [Nombre], [Dni], [Contrasena]) VALUES (1, N'Greydi', N'1415200000177', N'G123')
GO
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
GO
SET IDENTITY_INSERT [dbo].[Votantes] ON 
GO
INSERT [dbo].[Votantes] ([Id], [Nombre], [NumeroIdentificacion], [AldeaId]) VALUES (2, N'MARIO GAVARRETE', N'1415200100177', 2816)
GO
SET IDENTITY_INSERT [dbo].[Votantes] OFF
GO
ALTER TABLE [dbo].[Aldea]  WITH CHECK ADD FOREIGN KEY([MunicipioId])
REFERENCES [dbo].[Municipio] ([Id])
GO
ALTER TABLE [dbo].[Candidatos]  WITH CHECK ADD  CONSTRAINT [FK__Candidato__Aldea__34C8D9D1] FOREIGN KEY([MunicipioId])
REFERENCES [dbo].[Aldea] ([Id])
GO
ALTER TABLE [dbo].[Candidatos] CHECK CONSTRAINT [FK__Candidato__Aldea__34C8D9D1]
GO
ALTER TABLE [dbo].[Candidatos]  WITH CHECK ADD  CONSTRAINT [FK__Candidato__Cargo__32E0915F] FOREIGN KEY([CargoId])
REFERENCES [dbo].[Cargos] ([Id])
GO
ALTER TABLE [dbo].[Candidatos] CHECK CONSTRAINT [FK__Candidato__Cargo__32E0915F]
GO
ALTER TABLE [dbo].[Candidatos]  WITH CHECK ADD  CONSTRAINT [FK__Candidato__Parti__33D4B598] FOREIGN KEY([PartidoId])
REFERENCES [dbo].[Partidos] ([Id])
GO
ALTER TABLE [dbo].[Candidatos] CHECK CONSTRAINT [FK__Candidato__Parti__33D4B598]
GO
ALTER TABLE [dbo].[Municipio]  WITH CHECK ADD FOREIGN KEY([DepartamentoId])
REFERENCES [dbo].[Departamento] ([Id])
GO
ALTER TABLE [dbo].[Votantes]  WITH CHECK ADD FOREIGN KEY([AldeaId])
REFERENCES [dbo].[Aldea] ([Id])
GO
ALTER TABLE [dbo].[Votos]  WITH CHECK ADD  CONSTRAINT [FK__Votos__Candidato__38996AB5] FOREIGN KEY([CandidatoId])
REFERENCES [dbo].[Candidatos] ([Id])
GO
ALTER TABLE [dbo].[Votos] CHECK CONSTRAINT [FK__Votos__Candidato__38996AB5]
GO
ALTER TABLE [dbo].[Votos]  WITH CHECK ADD FOREIGN KEY([VotanteID])
REFERENCES [dbo].[Votantes] ([Id])
GO
