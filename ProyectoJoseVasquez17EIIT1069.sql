/*Nombre: Jose Andres Vasquez Perez. Matricula:17-EIIT-1-069 Seccion: 0541*/


USE [master]
GO
/****** Object:  Database [Hospital]    Script Date: 15/04/2019 16:47:30 ******/
CREATE DATABASE [Hospital]

EXEC sys.sp_db_vardecimal_storage_format N'Hospital', N'ON'
GO
ALTER DATABASE [Hospital] SET QUERY_STORE = OFF
GO
USE [Hospital]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [Hospital]
GO
/****** Object:  Table [dbo].[Consultorios]    Script Date: 15/04/2019 16:47:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Consultorios](
	[Consultoriosid] [int] NOT NULL,
	[Doctorid] [int] NULL,
 CONSTRAINT [PK_Consultorios] PRIMARY KEY CLUSTERED 
(
	[Consultoriosid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doctor]    Script Date: 15/04/2019 16:47:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctor](
	[Doctorid] [int] NOT NULL,
	[Nombre] [varchar](70) NULL,
	[FechaDeNacimiento] [datetime] NULL,
	[Telefono] [varchar](13) NULL,
	[CorreoElectronico] [varchar](20) NULL,
	[Direccion] [varchar](90) NULL,
	[Especialidad] [varchar](30) NULL,
	[Sexo] [nchar](1) NULL,
	[Consurtorioid] [nchar](4) NULL,
 CONSTRAINT [PK_Doctor] PRIMARY KEY CLUSTERED 
(
	[Doctorid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Habitacion]    Script Date: 15/04/2019 16:47:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Habitacion](
	[Pacienteid] [int] NOT NULL,
	[Habitacionid] [int] NULL,
	[Fechadeingreso] [datetime] NULL,
	[Fechadesalida] [datetime] NULL,
 CONSTRAINT [PK_Habitacion] PRIMARY KEY CLUSTERED 
(
	[Pacienteid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paciente]    Script Date: 15/04/2019 16:47:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paciente](
	[Pacienteid] [int] NOT NULL,
	[Nombre] [varchar](70) NULL,
	[FechaDeNacimiento] [datetime] NULL,
	[Telefono] [varchar](13) NULL,
	[CorreoElectronico] [varchar](20) NULL,
	[Direccion] [varchar](90) NULL,
	[Diagnostico] [varchar](100) NULL,
	[Sexo] [nchar](1) NULL,
	[Habitacionid] [nchar](4) NULL,
	[Doctorid] [int] NULL,
	[SeguroMedico] [varchar](20) NULL,
 CONSTRAINT [PK_Paciente] PRIMARY KEY CLUSTERED 
(
	[Pacienteid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Consultorios] ([Consultoriosid], [Doctorid]) VALUES (401, 1)
INSERT [dbo].[Consultorios] ([Consultoriosid], [Doctorid]) VALUES (402, 2)
INSERT [dbo].[Consultorios] ([Consultoriosid], [Doctorid]) VALUES (403, 3)
INSERT [dbo].[Consultorios] ([Consultoriosid], [Doctorid]) VALUES (404, 4)
INSERT [dbo].[Consultorios] ([Consultoriosid], [Doctorid]) VALUES (405, 1)
INSERT [dbo].[Consultorios] ([Consultoriosid], [Doctorid]) VALUES (406, 6)
INSERT [dbo].[Consultorios] ([Consultoriosid], [Doctorid]) VALUES (407, 12)
INSERT [dbo].[Consultorios] ([Consultoriosid], [Doctorid]) VALUES (408, 9)
INSERT [dbo].[Consultorios] ([Consultoriosid], [Doctorid]) VALUES (409, 8)
INSERT [dbo].[Consultorios] ([Consultoriosid], [Doctorid]) VALUES (410, 11)
INSERT [dbo].[Consultorios] ([Consultoriosid], [Doctorid]) VALUES (411, 15)
INSERT [dbo].[Consultorios] ([Consultoriosid], [Doctorid]) VALUES (412, 14)
INSERT [dbo].[Consultorios] ([Consultoriosid], [Doctorid]) VALUES (413, 7)
INSERT [dbo].[Consultorios] ([Consultoriosid], [Doctorid]) VALUES (414, 10)
INSERT [dbo].[Consultorios] ([Consultoriosid], [Doctorid]) VALUES (415, 13)
INSERT [dbo].[Doctor] ([Doctorid], [Nombre], [FechaDeNacimiento], [Telefono], [CorreoElectronico], [Direccion], [Especialidad], [Sexo], [Consurtorioid]) VALUES (1, N'Jose Veriguete', CAST(N'1998-04-05T00:00:00.000' AS DateTime), N'8298307200', N'jveriguete@gmail.com', N'Dr. Defillo, los praditos, casa numero30', N'Pediatria', N'M', N'401 ')
INSERT [dbo].[Doctor] ([Doctorid], [Nombre], [FechaDeNacimiento], [Telefono], [CorreoElectronico], [Direccion], [Especialidad], [Sexo], [Consurtorioid]) VALUES (2, N'Angel Mejia', CAST(N'1998-02-15T00:00:00.000' AS DateTime), N'8298396200', N'jveriguete@gmail.com', N'Av. Guscavo Mejia Ricart, Enz. Quisqueya, resp. 19 Casa n. 28', N'Psicologia', N'M', N'414 ')
INSERT [dbo].[Doctor] ([Doctorid], [Nombre], [FechaDeNacimiento], [Telefono], [CorreoElectronico], [Direccion], [Especialidad], [Sexo], [Consurtorioid]) VALUES (3, N'Jose de Leon', CAST(N'1990-02-20T00:00:00.000' AS DateTime), N'8298316460', N'jleon02@gmail.com', N'Av. Gustavo mejia ricard, enzanche quisqueya, casa numero 93', N'Cardiologia', N'M', N'405 ')
INSERT [dbo].[Doctor] ([Doctorid], [Nombre], [FechaDeNacimiento], [Telefono], [CorreoElectronico], [Direccion], [Especialidad], [Sexo], [Consurtorioid]) VALUES (4, N'Miguel del Monte', CAST(N'1988-04-12T00:00:00.000' AS DateTime), N'8298654640', N'mdelmonte@gmail.com', N'Dr. defillo, los praditos casa numero 76', N'Cardiologia', N'M', N'402 ')
INSERT [dbo].[Doctor] ([Doctorid], [Nombre], [FechaDeNacimiento], [Telefono], [CorreoElectronico], [Direccion], [Especialidad], [Sexo], [Consurtorioid]) VALUES (5, N'Pricila Tavarez', CAST(N'1972-12-19T00:00:00.000' AS DateTime), N'8298394135', N'Ptavarez@gmail.com', N'Av. Maximo gomez casa 24', N'Cardiologia', N'F', N'408 ')
INSERT [dbo].[Doctor] ([Doctorid], [Nombre], [FechaDeNacimiento], [Telefono], [CorreoElectronico], [Direccion], [Especialidad], [Sexo], [Consurtorioid]) VALUES (6, N'Rafael Garcia', CAST(N'1981-11-14T00:00:00.000' AS DateTime), N'8291111200', N'rgarcia@hotmail.com', N'Jhon F. Kennedy, casa numero50', N'Pediatria', N'M', N'406 ')
INSERT [dbo].[Doctor] ([Doctorid], [Nombre], [FechaDeNacimiento], [Telefono], [CorreoElectronico], [Direccion], [Especialidad], [Sexo], [Consurtorioid]) VALUES (7, N'Ruth Vasquez', CAST(N'1960-04-28T00:00:00.000' AS DateTime), N'8298307215', N'rvasquez09@gmail.com', N'Av. Charles Sumers, los prados, casa 71', N'Cardiologia', N'F', N'403 ')
INSERT [dbo].[Doctor] ([Doctorid], [Nombre], [FechaDeNacimiento], [Telefono], [CorreoElectronico], [Direccion], [Especialidad], [Sexo], [Consurtorioid]) VALUES (8, N'Yoatan Acevedo', CAST(N'1964-09-16T00:00:00.000' AS DateTime), N'8298666666', N'yacevedo@gmail.com', N'Av. Churchill, El manguito, casa 97', N'Cardiologia', N'M', N'404 ')
INSERT [dbo].[Doctor] ([Doctorid], [Nombre], [FechaDeNacimiento], [Telefono], [CorreoElectronico], [Direccion], [Especialidad], [Sexo], [Consurtorioid]) VALUES (9, N'Angel Luis Milina', CAST(N'1974-12-29T00:00:00.000' AS DateTime), N'8298167240', N'luismolina@gmail.com', N'Av. Isabela Guiar, Herrera, casa 64', N'Pediatria', N'M', N'409 ')
INSERT [dbo].[Doctor] ([Doctorid], [Nombre], [FechaDeNacimiento], [Telefono], [CorreoElectronico], [Direccion], [Especialidad], [Sexo], [Consurtorioid]) VALUES (10, N'Junior Then', CAST(N'1962-06-07T00:00:00.000' AS DateTime), N'8098304464', N'then022@hotmail.com', N'Carretera mella, casa 24', N'Psicologia', N'M', N'410 ')
INSERT [dbo].[Doctor] ([Doctorid], [Nombre], [FechaDeNacimiento], [Telefono], [CorreoElectronico], [Direccion], [Especialidad], [Sexo], [Consurtorioid]) VALUES (11, N'Oscar Vasquez', CAST(N'1949-03-23T00:00:00.000' AS DateTime), N'8098302224', N'vasquez191@gmail.com', N'Av. Nuñez de Cacerez, cara numero 90', N'Pediatria', N'M', N'415 ')
INSERT [dbo].[Doctor] ([Doctorid], [Nombre], [FechaDeNacimiento], [Telefono], [CorreoElectronico], [Direccion], [Especialidad], [Sexo], [Consurtorioid]) VALUES (12, N'Cesar Elias Ramirez', CAST(N'1958-01-20T00:00:00.000' AS DateTime), N'8098344444', N'cramirez@gmail.com', N'Av. 27 de Febrero, el millon, casa 62', N'Psicologia', N'M', N'413 ')
INSERT [dbo].[Doctor] ([Doctorid], [Nombre], [FechaDeNacimiento], [Telefono], [CorreoElectronico], [Direccion], [Especialidad], [Sexo], [Consurtorioid]) VALUES (13, N'Miguel Carrillo', CAST(N'1994-07-16T00:00:00.000' AS DateTime), N'8098154164', N'mcarillo44@gmail.com', N'Calle, Guacanagarix, Manganagua, calle 30', N'Pediatria', N'M', N'412 ')
INSERT [dbo].[Doctor] ([Doctorid], [Nombre], [FechaDeNacimiento], [Telefono], [CorreoElectronico], [Direccion], [Especialidad], [Sexo], [Consurtorioid]) VALUES (14, N'Alex Perez', CAST(N'1993-09-14T00:00:00.000' AS DateTime), N'8098315464', N'perex09@gmail.com', N'Av. Maximo Gomez casi esq. Ovando, Casa 46', N'Pediatria', N'M', N'411 ')
INSERT [dbo].[Doctor] ([Doctorid], [Nombre], [FechaDeNacimiento], [Telefono], [CorreoElectronico], [Direccion], [Especialidad], [Sexo], [Consurtorioid]) VALUES (15, N'Lisbeth Melo', CAST(N'1967-10-17T00:00:00.000' AS DateTime), N'8098111164', N'melolis@gmail.com', N'Av. Nuñez de Cacerez, Las Praderas, casa 94', N'Pediatria', N'F', N'407 ')
INSERT [dbo].[Habitacion] ([Pacienteid], [Habitacionid], [Fechadeingreso], [Fechadesalida]) VALUES (102, 203, CAST(N'2018-03-19T00:00:00.000' AS DateTime), CAST(N'2018-02-13T00:00:00.000' AS DateTime))
INSERT [dbo].[Habitacion] ([Pacienteid], [Habitacionid], [Fechadeingreso], [Fechadesalida]) VALUES (103, 204, CAST(N'2018-02-19T00:00:00.000' AS DateTime), CAST(N'2018-02-19T00:00:00.000' AS DateTime))
INSERT [dbo].[Habitacion] ([Pacienteid], [Habitacionid], [Fechadeingreso], [Fechadesalida]) VALUES (104, 209, CAST(N'2018-02-11T00:00:00.000' AS DateTime), CAST(N'2018-02-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Habitacion] ([Pacienteid], [Habitacionid], [Fechadeingreso], [Fechadesalida]) VALUES (105, 210, CAST(N'2018-02-20T00:00:00.000' AS DateTime), CAST(N'2018-02-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Habitacion] ([Pacienteid], [Habitacionid], [Fechadeingreso], [Fechadesalida]) VALUES (106, 211, CAST(N'2018-01-19T00:00:00.000' AS DateTime), CAST(N'2018-02-20T00:00:00.000' AS DateTime))
INSERT [dbo].[Habitacion] ([Pacienteid], [Habitacionid], [Fechadeingreso], [Fechadesalida]) VALUES (107, 215, CAST(N'2018-02-08T00:00:00.000' AS DateTime), CAST(N'2018-02-19T00:00:00.000' AS DateTime))
INSERT [dbo].[Habitacion] ([Pacienteid], [Habitacionid], [Fechadeingreso], [Fechadesalida]) VALUES (108, 214, CAST(N'2018-02-08T00:00:00.000' AS DateTime), CAST(N'2018-02-24T00:00:00.000' AS DateTime))
INSERT [dbo].[Habitacion] ([Pacienteid], [Habitacionid], [Fechadeingreso], [Fechadesalida]) VALUES (109, 209, CAST(N'2018-02-08T00:00:00.000' AS DateTime), CAST(N'2018-02-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Habitacion] ([Pacienteid], [Habitacionid], [Fechadeingreso], [Fechadesalida]) VALUES (110, 201, CAST(N'2018-02-08T00:00:00.000' AS DateTime), CAST(N'2018-02-13T00:00:00.000' AS DateTime))
INSERT [dbo].[Habitacion] ([Pacienteid], [Habitacionid], [Fechadeingreso], [Fechadesalida]) VALUES (111, 206, CAST(N'2018-02-08T00:00:00.000' AS DateTime), CAST(N'2018-02-26T00:00:00.000' AS DateTime))
INSERT [dbo].[Habitacion] ([Pacienteid], [Habitacionid], [Fechadeingreso], [Fechadesalida]) VALUES (112, 207, CAST(N'2018-02-10T00:00:00.000' AS DateTime), CAST(N'2018-02-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Habitacion] ([Pacienteid], [Habitacionid], [Fechadeingreso], [Fechadesalida]) VALUES (113, 208, CAST(N'2018-02-16T00:00:00.000' AS DateTime), CAST(N'2018-02-19T00:00:00.000' AS DateTime))
INSERT [dbo].[Habitacion] ([Pacienteid], [Habitacionid], [Fechadeingreso], [Fechadesalida]) VALUES (114, 213, CAST(N'2018-02-07T00:00:00.000' AS DateTime), CAST(N'2018-02-27T00:00:00.000' AS DateTime))
INSERT [dbo].[Habitacion] ([Pacienteid], [Habitacionid], [Fechadeingreso], [Fechadesalida]) VALUES (115, 212, CAST(N'2018-02-24T00:00:00.000' AS DateTime), CAST(N'2018-02-21T00:00:00.000' AS DateTime))
INSERT [dbo].[Habitacion] ([Pacienteid], [Habitacionid], [Fechadeingreso], [Fechadesalida]) VALUES (201, 207, CAST(N'2018-02-22T00:00:00.000' AS DateTime), CAST(N'2018-02-17T00:00:00.000' AS DateTime))
INSERT [dbo].[Paciente] ([Pacienteid], [Nombre], [FechaDeNacimiento], [Telefono], [CorreoElectronico], [Direccion], [Diagnostico], [Sexo], [Habitacionid], [Doctorid], [SeguroMedico]) VALUES (102, N'Angel Mejia', CAST(N'1984-07-26T00:00:00.000' AS DateTime), N'8098304494', N'amejia08@hotmail.com', N'Av. Nuñez de Cacerez, casa n. 99', N'Hipertension', N'M', N'203 ', 15, N'1616014166')
INSERT [dbo].[Paciente] ([Pacienteid], [Nombre], [FechaDeNacimiento], [Telefono], [CorreoElectronico], [Direccion], [Diagnostico], [Sexo], [Habitacionid], [Doctorid], [SeguroMedico]) VALUES (103, N'Oscar Vasquez', CAST(N'1967-10-17T00:00:00.000' AS DateTime), N'8098356444', N'oscarv02@hotmail.com', N'Av. Nuñez de Cacerez, casa n. 90', N'Hipertension', N'M', N'204 ', 4, N'1615444444')
INSERT [dbo].[Paciente] ([Pacienteid], [Nombre], [FechaDeNacimiento], [Telefono], [CorreoElectronico], [Direccion], [Diagnostico], [Sexo], [Habitacionid], [Doctorid], [SeguroMedico]) VALUES (104, N'Jose Vasquez', CAST(N'1994-07-16T00:00:00.000' AS DateTime), N'8098399999', N'jvasquez@hotmail.com', N'Carretera mella, casa 29', N'Varicela', N'M', N'213 ', 3, N'6165165164')
INSERT [dbo].[Paciente] ([Pacienteid], [Nombre], [FechaDeNacimiento], [Telefono], [CorreoElectronico], [Direccion], [Diagnostico], [Sexo], [Habitacionid], [Doctorid], [SeguroMedico]) VALUES (105, N'Miguel de los Montes', CAST(N'1967-10-17T00:00:00.000' AS DateTime), N'8098000004', N'msantos8@hotmail.com', N'Av. Maximo Gomez casi esq. Ovando, Casa 46', N'Hipertension', N'M', N'211 ', 2, N'5655544447')
INSERT [dbo].[Paciente] ([Pacienteid], [Nombre], [FechaDeNacimiento], [Telefono], [CorreoElectronico], [Direccion], [Diagnostico], [Sexo], [Habitacionid], [Doctorid], [SeguroMedico]) VALUES (106, N'Alejandro de lo Santos', CAST(N'1994-07-16T00:00:00.000' AS DateTime), N'8098301664', N'Aleja@hotmail.com', N'Av. Charles Sumers, los prados, casa 41', N'Amigdalitis aguda', N'M', N'215 ', 10, N'1616056666')
INSERT [dbo].[Paciente] ([Pacienteid], [Nombre], [FechaDeNacimiento], [Telefono], [CorreoElectronico], [Direccion], [Diagnostico], [Sexo], [Habitacionid], [Doctorid], [SeguroMedico]) VALUES (107, N'Oldrys Sanchez', CAST(N'1967-10-17T00:00:00.000' AS DateTime), N'8098110000', N'Ordrys@gmail.com', N'Av. Nuñez de Cacerez, cara n. 40', N'Hipertension', N'M', N'214 ', 11, N'1616011100')
INSERT [dbo].[Paciente] ([Pacienteid], [Nombre], [FechaDeNacimiento], [Telefono], [CorreoElectronico], [Direccion], [Diagnostico], [Sexo], [Habitacionid], [Doctorid], [SeguroMedico]) VALUES (108, N'Cristopher Sanchez', CAST(N'1994-07-16T00:00:00.000' AS DateTime), N'8491661164', N'CritoS@gmail.com', N'Av. Maximo Gomez casi esq. Ovando, Casa 46', N'Amigdalitis aguda', N'M', N'210 ', 9, N'1614448899')
INSERT [dbo].[Paciente] ([Pacienteid], [Nombre], [FechaDeNacimiento], [Telefono], [CorreoElectronico], [Direccion], [Diagnostico], [Sexo], [Habitacionid], [Doctorid], [SeguroMedico]) VALUES (109, N'Miguel Angel Casado', CAST(N'1967-10-17T00:00:00.000' AS DateTime), N'8491633533', N'Miguela@gmail.com', N'Carretera mella, casa 24', N'Varicela', N'M', N'207 ', 6, N'1616011105')
INSERT [dbo].[Paciente] ([Pacienteid], [Nombre], [FechaDeNacimiento], [Telefono], [CorreoElectronico], [Direccion], [Diagnostico], [Sexo], [Habitacionid], [Doctorid], [SeguroMedico]) VALUES (110, N'Roberto Vicini', CAST(N'1962-06-07T00:00:00.000' AS DateTime), N'8494615534', N'robertov09@gmail.com', N'Av. Maximo Gomez casi esq. Ovando, Casa 46', N'Hipertension', N'M', N'209 ', 8, N'1616050298')
INSERT [dbo].[Paciente] ([Pacienteid], [Nombre], [FechaDeNacimiento], [Telefono], [CorreoElectronico], [Direccion], [Diagnostico], [Sexo], [Habitacionid], [Doctorid], [SeguroMedico]) VALUES (111, N'Lisbeth Melo', CAST(N'1967-10-17T00:00:00.000' AS DateTime), N'8492546662', N'Meliss16@gmail.com', N'Av. Charles Sumers, los prados, casa 11', N'Amigdalitis aguda', N'F', N'205 ', 7, N'1616980210')
INSERT [dbo].[Paciente] ([Pacienteid], [Nombre], [FechaDeNacimiento], [Telefono], [CorreoElectronico], [Direccion], [Diagnostico], [Sexo], [Habitacionid], [Doctorid], [SeguroMedico]) VALUES (112, N'Francis Ramirez', CAST(N'1967-10-17T00:00:00.000' AS DateTime), N'8491664552', N'ramirez@gmail.com', N'Av. Maximo Gomez casi esq. Ovando, Casa 46', N'Varicela', N'M', N'206 ', 1, N'1616016481')
INSERT [dbo].[Paciente] ([Pacienteid], [Nombre], [FechaDeNacimiento], [Telefono], [CorreoElectronico], [Direccion], [Diagnostico], [Sexo], [Habitacionid], [Doctorid], [SeguroMedico]) VALUES (113, N'Brayan Melo', CAST(N'1967-12-12T00:00:00.000' AS DateTime), N'8494561164', N'bryanmelo@gmail.com', N'Carretera mella, casa 24', N'Hipertension', N'M', N'208 ', 5, N'1616080298')
INSERT [dbo].[Paciente] ([Pacienteid], [Nombre], [FechaDeNacimiento], [Telefono], [CorreoElectronico], [Direccion], [Diagnostico], [Sexo], [Habitacionid], [Doctorid], [SeguroMedico]) VALUES (114, N'Ariel Peña', CAST(N'1994-07-16T00:00:00.000' AS DateTime), N'8496646664', N'Apeña@gmail.com', N'Av. Maximo Gomez casi esq. Ovando, Casa 46', N'Hipertension', N'M', N'202 ', 6, N'1616020143')
INSERT [dbo].[Paciente] ([Pacienteid], [Nombre], [FechaDeNacimiento], [Telefono], [CorreoElectronico], [Direccion], [Diagnostico], [Sexo], [Habitacionid], [Doctorid], [SeguroMedico]) VALUES (115, N'Juan Luis Tejada', CAST(N'1967-10-17T00:00:00.000' AS DateTime), N'8491248400', N'tejada@hotmail.com', N'Av. Maximo Gomez casi esq. Ovando, Casa 46', N'Amigdalitis aguda', N'M', N'215 ', 6, N'1616054000')
INSERT [dbo].[Paciente] ([Pacienteid], [Nombre], [FechaDeNacimiento], [Telefono], [CorreoElectronico], [Direccion], [Diagnostico], [Sexo], [Habitacionid], [Doctorid], [SeguroMedico]) VALUES (201, N'Jose Almonte', CAST(N'1940-09-15T00:00:00.000' AS DateTime), N'8293994089', N'jalmonte@hotmail.com', N'Calle villini, los girasoles, numero 40', N'Varicela', N'M', N'201 ', 1, N'1616059090')
ALTER TABLE [dbo].[Consultorios]  WITH CHECK ADD  CONSTRAINT [FK_Consultorios_Doctor] FOREIGN KEY([Doctorid])
REFERENCES [dbo].[Doctor] ([Doctorid])
GO
ALTER TABLE [dbo].[Consultorios] CHECK CONSTRAINT [FK_Consultorios_Doctor]
GO
ALTER TABLE [dbo].[Paciente]  WITH CHECK ADD  CONSTRAINT [FK_Paciente_Doctor] FOREIGN KEY([Doctorid])
REFERENCES [dbo].[Doctor] ([Doctorid])
GO
ALTER TABLE [dbo].[Paciente] CHECK CONSTRAINT [FK_Paciente_Doctor]
GO
USE [master]
GO
ALTER DATABASE [Hospital] SET  READ_WRITE 
GO
