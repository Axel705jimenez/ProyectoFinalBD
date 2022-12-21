--Sql
USE master;
GO
IF DB_ID (N'Minecraft') IS NOT NULL
	Drop DATABASE MINECRAFT;
	GO
CREATE DATABASE Minecraft

ON   
( NAME = Minecraft_dat,  
    FILENAME = 'C:\BD\BD\MINECRAFT.mdf',  
    SIZE = 10,  
    MAXSIZE = 50,  
    FILEGROWTH = 5 )  
LOG ON  
( NAME = Sales_log,  
    FILENAME = 'C:\BD\BD\MINECRAFT.ldf',  
    SIZE = 5MB,  
    MAXSIZE = 25MB,  
    FILEGROWTH = 5MB );  
GO
USE Minecraft;
GO

CREATE TABLE Aldea
(
	idAldea int identity(1,1),
	estilo varchar(50) not null,
	evento varchar(50) not null,
	botin varchar(50) not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Amigo
(
	idAmigo int identity(1,1),
	gamertag varchar(50) not null,
	aspecto Varchar(50)not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Animal
(
	idAnimal int identity(1,1),
	puntosVida varchar(50) not null,
	botin varchar(50) not null,
	tipoAnimal varchar(50),
	estatus bit default 1 not null
);
GO

CREATE TABLE Arma
(
	idArma int identity(1,1),
	tipoArma varchar(50) not null,
	nombre varchar(50) not null,
	material varchar(50) not null,
	daño int not null,
	resistencia int not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Armadura
(
	idArmadura int identity(1,1),
	material varchar(50) not null,
	nombre varchar(50)not null,
	resistencia int not null,
	idInventario int not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Bloque
(
	idBloque int identity(1,1),
	material varchar(50) not null,
	nombre varchar(50) not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Chat
(
	idChat int identity(1,1),
	fuente varchar(50) not null,
	color varchar(50) not null,
	espaciadoLinea int not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Chunk
(
	idChunk int identity(1,1),
	limite int not null,
	formato varchar (50)not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Comercio
(
	idComercio int identity(1,1),
	tipoComercio varchar(50) not null,
	tipoIntercambio varchar(50) not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Comida
(
	idComida int identity(1,1),
	tipo varchar(50) not null,
	valorNutrimental int not null,
	nombre varchar(50) not null,
	ingredientes varchar(50) not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE ConfigMundo
(
	idConfigMundo int identity(1,1),
	modoJuego varchar(50) not null,
	dificultad varchar(50) not null,
	preferencia varchar(50) not null,
	semilla varchar(50) not null,
	tipo varchar(50) not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE ConfigUsuario
(
	idConfigUsuario int identity(1,1),
	gamertag varchar(50) not null,
	idioma varchar(50) not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Coordenada
(
	idCoordenada int identity(1,1),
	ejeX int not null,
	ejeY int not null,
	ejeZ int not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Crafteo
(
	idCrafteo int identity(1,1),
	tipo varchar(50)not null,
	detalle varchar(50) not null,
	idMesaTrabajo int not null,
	idInventario int not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Cultivo
(
	idCultivo int identity(1,1),
	tiempoCultivo varchar(50) not null,
	tipo varchar(50) not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Dimension
(
	idDimension int identity(1,1),
	nombre varchar(30) not null,
	estilo varchar(50) not null,
	cicloDelDia varchar(50) not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Ecosistema
(
	idEcosistema int identity(1,1),
	tipo varchar(50) not null,
	tamaño int not null,
	bioma varchar(50) not null,
	clima varchar(50) not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Efecto
(
	idEfecto int identity(1,1),
	tipo varchar(50) not null,
	durabilidad int not null,
	nombre varchar(50) not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Encantamiento
(
	idEncantamiento int identity(1,1),
	tipo varchar(50) not null,
	durabilidad int not null,
	nombre varchar(50) not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Estadistica
(
	idEstadistica int identity(1,1),
	dsitanciaRecorrida int not null,
	distanciaVolada int not null,
	distanciaCaida int not null,
	saltos int not null,
	numeroMuertes int not null,
	estatus bit default 1 not null,
);
GO

CREATE TABLE Estructura
(
	idEstructura int identity(1,1),
	tipo varchar(50) not null,
	estilo varchar(50) not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Evento
(
	idEvento int identity(1,1),
	tipo varchar(50) not null,
	fechainicio datetime not null,
	fechaCierre datetime not null,
	duarbilidad int not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Fluido
(
	idFluido int identity(1,1),
	tipo varchar(50) not null,
	nombre varchar(50)not null,
	nivelFluido int not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Fortaleza
(
	idFortaleza int identity(1,1),
	botin varchar(50) not null,
	nombre varchar(50) not null,
	estilo varchar(50) not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Generacion
(
	idGeneracion int identity(1,1),
	tipo varchar(50) not null,
	lugarGeneracion varchar(50) not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Herramienta
(
	idHerramienta int identity(1,1),
	material varchar(50) not null,
	nombre varchar(50) not null,
	resistencia int not null,
	tipo varchar(50) not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Inventario
(
	idInventario int identity(1,1),
	espacio int not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Item
(
	idItem int identity(1,1),
	tipo varchar(50) not null,
	nombre varchar(50) not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Jefe
(
	idJefe int identity(1,1),
	dimension varchar(50) not null,
	habilidad varchar(50) not null,
	puntosVida int not null,
	nombre varchar(50) not null,
	estatus bit default 1 not null
);
GO


CREATE TABLE Jugador
(
	idJugador int identity(1,1),
	gamertag varchar(50) not null,
	aspecto varchar(50) not null,
	puntosVida int not null,
	puntosAlimento int not null,
	puntosExperiencia int not null,
	idInventario int not null,
	idConfigMundo int not null,
	idMenu int not null,
	idEstadistica int not null,
	idConfigUsuario int not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Logro
(
	idLogro int identity(1,1),
	nombre varchar(50) not null,
	recompensa varchar(50) not null,
	puntosJugador int not null,
	tiempoJuego int not null,
	tipo varchar(50) not null,
	idJugador int not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Mascota
(
	idMascota int identity(1,1),
	nombre varchar(50) not null,
	tipo varchar(50) not null,
	puntosVida int not null,
	comida varchar(50) not null,
	idJugador int not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Menu
(
	idMenu int identity(1,1),
	accion varchar(50) not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE MesaTrabajo
(
	idMesaTrabajo int identity(1,1),
	tipo varchar(50) not null,
	idInventario int not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Mob
(
	idMob int identity(1,1),
	puntosVida int not null,
	botin varchar(50) not null,
	habilidad varchar(50) not null,
	nombre varchar(50) not null,
	puntosDaño int not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Modd
(
	idModd int identity(1,1),
	nombre varchar(50) not null,
	versionMod int not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE ModoJuego
(
	idModoJuego int identity(1,1),
	tipo varchar(50) not null,
	dificultad varchar(50) not null,
	preferencia varchar(50) not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE ModoServidor
(
	idModoServidor int identity(1,1),
	tipo varchar(50) not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Mundo
(
	idMundo int identity(1,1),
	nombre varchar(50) not null,
	tipo varchar(50) not null,
	idParche int not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Sonido
(
	idSonido int identity(1,1),
	principal varchar(50) not null,
	musica int not null,
	ambiente varchar(50) not null,
	bloque int not null,
	criatura int not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE PackRecurso
(
	idPackRecurso int identity(1,1),
	nombre varchar(50) not null,
	formato varchar(50) not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE PackTextura
(
	idPackTextura int identity(1,1),
	nombre varchar(50) not null,
	formato varchar(50) not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Parche
(
	idParche int identity(1,1),
	versioParche int not null,
	fechaActualizacion datetime not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Pesca
(
	idPesca int identity(1,1),
	tipo varchar(50) not null,
	botin varchar(50) not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Plugin
(
	idPlugin int identity(1,1),
	nombre varchar(50) not null,
	main varchar(50) not null,
	versionPlugin int not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Pocion
(
	idPocion int identity(1,1),
	nombre varchar(50) not null,
	tipo varchar(50) not null,
	puntosDaño int not null,
	puntosVida int not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Servidor
(
	idServidor int identity(1,1),
	nombre varchar(50) not null,
	dificultad varchar(50) not null,
	idModoServidor int not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Stack
(
	idStack int identity(1,1),
	nombre varchar(50) not null,
	limiteItem int not null,
	idInventario int not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Templo
(
	idTemplo int identity(1,1),
	estilo varchar(50) not null,
	tipo varchar(50) not null,
	nombre varchar(50) not null,
	botin varchar(50) not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Tesoro
(
	idTesoro int identity(1,1),
	tipo varchar(50) not null,
	botin varchar(50) not null,
	estatus bit default 1 not null
);

CREATE TABLE MundoParche
(
	idMundoParche int identity(1,1),
	idMundo int not null,
	idParche int not null,
	estatus bit default 1 not null,
);
GO

CREATE TABLE EncantamientoEfecto
(
	idEncantamientoEfecto int identity(1,1),
	idEncantamiento int not null,
	idEfecto int not null,
	estatus bit default 1 not null,
);
GO

CREATE TABLE JugadorAmigo
(
	idJugadorAmigo int identity(1,1),
	idJugador int not null,
	idAmigo int not null,
	estatus bit default 1 not null,
);
GO

CREATE TABLE JugadorComercio
(
	idJugadorComercio int identity(1,1),
	idJugador int not null,
	idComercio int not null,
	estatus bit default 1 not null,
);
GO

CREATE TABLE JugadorItem
(
	idJugadorItem int identity(1,1),
	idJugador int not null,
	idItem int not null,
	estatus bit default 1 not null,
);
GO

CREATE TABLE JugadorServidor
(
	idJugadorServidor int identity(1,1),
	idJugador int not null,
	idServidor int not null,
	estatus bit default 1 not null,
);
GO

CREATE TABLE MesaTrabajoEncantamiento
(
	idMesaTrabajoEncantamiento int identity(1,1),
	idMesaTrabajo int not null,
	idEncantamiento int not null,
	estatus bit default 1 not null,
);
GO

CREATE TABLE MesaTrabajoJugador
(
	idMesaTrabajoJugador int identity(1,1),
	idMesaTrabajo int not null,
	idJugador int not null,
	estatus bit default 1 not null,
);
GO
CREATE TABLE MundoAldea
(
	idMundoAldea int identity(1,1),
	idMundo int not null,
	idAldea int not null,
	estatus bit default 1 not null,
);
GO
CREATE TABLE MundoBloque
(
	idMundoBloque int identity(1,1),
	idMundo int not null,
	idBloque int not null,
	estatus bit default 1 not null,
);
GO
CREATE TABLE MundoDimension
(
	idMundoDimension int identity(1,1),
	idMundo int not null,
	idDimension int not null,
	estatus bit default 1 not null,
);
GO
CREATE TABLE MundoEcosistema
(
	idMundoEcosistema int identity(1,1),
	idMundo int not null,
	idEcosistema int not null,
	estatus bit default 1 not null,
);
GO
CREATE TABLE MundoEstructura
(
	idMundoEstructura int identity(1,1),
	idMundo int not null,
	idEstructura int not null,
	estatus bit default 1 not null,
);
GO

CREATE TABLE MundoFluido
(
	idMundoFluido int identity(1,1),
	idMundo int not null,
	idFluido int not null,
	estatus bit default 1 not null,
);
GO
CREATE TABLE MundoFortaleza
(
	idMundoFortaleza int identity(1,1),
	idMundo int not null,
	idFortaleza int not null,
	estatus bit default 1 not null,
);
GO
CREATE TABLE MundoGeneracion
(
	idMundoGeneracion int identity(1,1),
	idMundo int not null,
	idGeneracion int not null,
	estatus bit default 1 not null,
);
GO
CREATE TABLE MundoJefe
(
	idMundoJefe int identity(1,1),
	idMundo int not null,
	idJefe int not null,
	estatus bit default 1 not null,
);
GO

CREATE TABLE MundoJugador
(
	idMundoJugador int identity(1,1),
	idMundo int not null,
	idJugador int not null,
	estatus bit default 1 not null,
);
GO

CREATE TABLE MundoMob
(
	idMundoMob int identity(1,1),
	idMundo int not null,
	idMob int not null,
	estatus bit default 1 not null,
);
GO

CREATE TABLE MundoModd
(
	idMundoModd int identity(1,1),
	idMundo int not null,
	idModd int not null,
	estatus bit default 1 not null,
);
GO

CREATE TABLE MundoPackRecurso
(
	idMundoPackrecurso int identity(1,1),
	idMundo int not null,
	idPackRecurso int not null,
	estatus bit default 1 not null,
);
GO

CREATE TABLE MundoPackTextura
(
	idMundoPackTextura int identity(1,1),
	idMundo int not null,
	idPackTextura int not null,
	estatus bit default 1 not null,
);
GO

CREATE TABLE MundoTemplo
(
	idMundoTemplo int identity(1,1),
	idMundo int not null,
	idTemplo int not null,
	estatus bit default 1 not null,
);
GO
CREATE TABLE ServidorModoServidor
(
	idServidorModoServidor int identity(1,1),
	idServidor int not null,
	idModoServidor int not null,
	estatus bit default 1 not null,
);
GO


--Llaves primarias
ALTER TABLE Aldea ADD CONSTRAINT PK_Aldea PRIMARY KEY (idAldea)
ALTER TABLE Amigo ADD CONSTRAINT PK_Amigo PRIMARY KEY (idAmigo)
ALTER TABLE Animal ADD CONSTRAINT PK_Animal PRIMARY KEY (idAnimal)
ALTER TABLE Arma ADD CONSTRAINT PK_Arma PRIMARY KEY (idArma)
ALTER TABLE Armadura ADD CONSTRAINT PK_Armadura PRIMARY KEY (idArmadura)
ALTER TABLE Bloque ADD CONSTRAINT PK_Bloque PRIMARY KEY (idBloque)
ALTER TABLE Chat ADD CONSTRAINT PK_Chat PRIMARY KEY (idChat)
ALTER TABLE Chunk ADD CONSTRAINT PK_Chunk PRIMARY KEY (idChunk)
ALTER TABLE Comida ADD CONSTRAINT PK_Comida PRIMARY KEY (idComida)
ALTER TABLE Comercio ADD CONSTRAINT PK_Comercio PRIMARY KEY (idComercio)
ALTER TABLE ConfigMundo ADD CONSTRAINT PK_ConfigMundo PRIMARY KEY (idConfigMundo)
ALTER TABLE ConfigUsuario ADD CONSTRAINT PK_ConfigUsuario PRIMARY KEY (idConfigUsuario)
ALTER TABLE Coordenada ADD CONSTRAINT PK_Coordenada PRIMARY KEY (idCoordenada)
ALTER TABLE Crafteo ADD CONSTRAINT PK_Crafteo PRIMARY KEY (idCrafteo)
ALTER TABLE Cultivo ADD CONSTRAINT PK_Cultivo PRIMARY KEY (idCultivo)
ALTER TABLE Dimension ADD CONSTRAINT PK_Dimension PRIMARY KEY (idDimension)
ALTER TABLE Ecosistema ADD CONSTRAINT PK_Ecosistema PRIMARY KEY (idEcosistema)
ALTER TABLE Efecto ADD CONSTRAINT PK_Efecto PRIMARY KEY (idEfecto)
ALTER TABLE Encantamiento ADD CONSTRAINT PK_Encantamiento PRIMARY KEY (idEncantamiento)
ALTER TABLE Estadistica ADD CONSTRAINT PK_Estadistica PRIMARY KEY (idEstadistica)
ALTER TABLE Estructura ADD CONSTRAINT PK_Estructura PRIMARY KEY (idEstructura)
ALTER TABLE Evento ADD CONSTRAINT PK_Evento PRIMARY KEY (idEvento)
ALTER TABLE Fluido ADD CONSTRAINT PK_Fluido PRIMARY KEY (idFluido)
ALTER TABLE Fortaleza ADD CONSTRAINT PK_Fortaleza PRIMARY KEY (idFortaleza)
ALTER TABLE Generacion ADD CONSTRAINT PK_Generacion PRIMARY KEY (idGeneracion)
ALTER TABLE Herramienta ADD CONSTRAINT PK_Herramienta PRIMARY KEY (idHerramienta)
ALTER TABLE Inventario ADD CONSTRAINT PK_Inventario PRIMARY KEY (idInventario)
ALTER TABLE Item ADD CONSTRAINT PK_Item PRIMARY KEY (idItem)
ALTER TABLE Jefe ADD CONSTRAINT PK_Jefe PRIMARY KEY (idJefe)
ALTER TABLE Jugador ADD CONSTRAINT PK_Jugador PRIMARY KEY (idJugador)
ALTER TABLE Logro ADD CONSTRAINT PK_Logro PRIMARY KEY (idLogro)
ALTER TABLE Mascota ADD CONSTRAINT PK_Mascota PRIMARY KEY (idMascota)
ALTER TABLE Menu ADD CONSTRAINT PK_Menu PRIMARY KEY (idMenu)
ALTER TABLE MesaTrabajo ADD CONSTRAINT PK_MesaTrabajo PRIMARY KEY (idMesaTrabajo)
ALTER TABLE Mob ADD CONSTRAINT PK_Mob PRIMARY KEY (idMob)
ALTER TABLE Modd ADD CONSTRAINT PK_Modd PRIMARY KEY (idModd)
ALTER TABLE ModoJuego ADD CONSTRAINT PK_ModoJuego PRIMARY KEY (idModoJuego)
ALTER TABLE ModoServidor ADD CONSTRAINT PK_ModoServidor PRIMARY KEY (idModoServidor)
ALTER TABLE Mundo ADD CONSTRAINT PK_Mundo PRIMARY KEY (idMundo)
ALTER TABLE Sonido ADD CONSTRAINT PK_Sonido PRIMARY KEY (idSonido)
ALTER TABLE PackRecurso ADD CONSTRAINT PK_PackRecurso PRIMARY KEY (idPackRecurso)
ALTER TABLE PackTextura ADD CONSTRAINT PK_PackTextura PRIMARY KEY (idPackTextura)
ALTER TABLE Parche ADD CONSTRAINT PK_Parche PRIMARY KEY (idParche)
ALTER TABLE Pesca ADD CONSTRAINT PK_Pesca PRIMARY KEY (idPesca)
ALTER TABLE Plugin ADD CONSTRAINT PK_Plugin PRIMARY KEY (idPlugin)
ALTER TABLE Pocion ADD CONSTRAINT PK_Pocion PRIMARY KEY (idPocion)
ALTER TABLE Servidor ADD CONSTRAINT PK_Servidor PRIMARY KEY (idServidor)
ALTER TABLE Templo ADD CONSTRAINT PK_Templo PRIMARY KEY (idTemplo)
ALTER TABLE Stack ADD CONSTRAINT PK_Stack PRIMARY KEY (idStack)
ALTER TABLE Tesoro ADD CONSTRAINT PK_Tesoro PRIMARY KEY (idTesoro)


--Foraneas Pendientes
--Crafteo
ALTER TABLE Crafteo ADD CONSTRAINT FK_CrafteoMesaTrabajo FOREIGN KEY (idMesaTrabajo) REFERENCES 
MesaTrabajo(idMesaTrabajo)
ALTER TABLE Crafteo ADD CONSTRAINT FK_CrafteoInventario FOREIGN KEY (idInventario) REFERENCES 
Inventario(idInventario)
--Jugador
ALTER TABLE Jugador ADD CONSTRAINT FK_JugadorInventario FOREIGN KEY (idInventario) REFERENCES 
Inventario(idInventario)
ALTER TABLE Jugador ADD CONSTRAINT FK_JugadorConfigMundo FOREIGN KEY (idConfigMundo) REFERENCES 
ConfigMundo(idConfigMundo)
ALTER TABLE Jugador ADD CONSTRAINT FK_JugadorMenu FOREIGN KEY (idMenu) REFERENCES 
Menu(idMenu)
ALTER TABLE Jugador ADD CONSTRAINT FK_JugadorEstadistica FOREIGN KEY (idEstadistica) REFERENCES 
Estadistica(idEstadistica)
ALTER TABLE Jugador ADD CONSTRAINT FK_JugadorConfigUsuario FOREIGN KEY (idConfigUsuario) REFERENCES 
ConfigUsuario(idConfigUsuario)
--Logro
ALTER TABLE Logro ADD CONSTRAINT FK_LogroJugador FOREIGN KEY (idJugador) REFERENCES 
Jugador(idJugador)
--Mascota
ALTER TABLE Mascota ADD CONSTRAINT FK_MascotaJugador FOREIGN KEY (idJugador) REFERENCES 
Jugador(idJugador)
--MesaTrabajo
ALTER TABLE MesaTrabajo ADD CONSTRAINT FK_MesaTrabajoInventario FOREIGN KEY (idInventario) REFERENCES 
Inventario(idInventario)
--Mundo
ALTER TABLE Mundo ADD CONSTRAINT FK_MundoParche FOREIGN KEY (idParche) REFERENCES 
Parche(idParche)
--Servidor
ALTER TABLE Servidor ADD CONSTRAINT FK_idServidorModoServidor FOREIGN KEY (idModoServidor) REFERENCES 
ModoServidor(idModoServidor)
--Stack
ALTER TABLE Stack ADD CONSTRAINT FK_StackInventario FOREIGN KEY (idInventario) REFERENCES 
Inventario(idInventario)
--MundoParche
ALTER TABLE MundoParche ADD CONSTRAINT FK_MundoParcheMundo FOREIGN KEY (idMundo) REFERENCES 
Mundo(idMundo)
ALTER TABLE MundoParche ADD CONSTRAINT FK_MundoParcheParche FOREIGN KEY (idParche) REFERENCES 
Parche(idParche)
--EncantamientoEfecto
ALTER TABLE EncantamientoEfecto ADD CONSTRAINT FK_EncantamientoEfectoEfecto FOREIGN KEY (idEfecto) REFERENCES 
Efecto(idEfecto)
ALTER TABLE EncantamientoEfecto ADD CONSTRAINT FK_EncantamientoEfectoEncantamiento FOREIGN KEY (idEncantamiento) REFERENCES 
Encantamiento(idEncantamiento)
--JugadorAmigo
ALTER TABLE JugadorAmigo ADD CONSTRAINT FK_JugadorAmigoAmigo FOREIGN KEY (idAmigo) REFERENCES 
Amigo(idAmigo)
ALTER TABLE JugadorAmigo ADD CONSTRAINT FK_JugadorAmigoJugador FOREIGN KEY (idJugador) REFERENCES 
Jugador(idJugador)
--JugadorComercio
ALTER TABLE JugadorComercio ADD CONSTRAINT FK_JugadorComercioComercio FOREIGN KEY (idComercio) REFERENCES 
Comercio(idComercio)
ALTER TABLE JugadorComercio ADD CONSTRAINT FK_JugadorComercioJugador FOREIGN KEY (idJugador) REFERENCES 
Jugador(idJugador)
--JugadorItem
ALTER TABLE JugadorItem ADD CONSTRAINT FK_JugadorItemItem FOREIGN KEY (idItem) REFERENCES 
Item(idItem)
ALTER TABLE JugadorItem ADD CONSTRAINT FK_JugadorItemJugador FOREIGN KEY (idJugador) REFERENCES 
Jugador(idJugador)
--JugadorServidor
ALTER TABLE JugadorServidor ADD CONSTRAINT FK_JugadorServidorServidor FOREIGN KEY (idServidor) REFERENCES 
Servidor(idServidor)
ALTER TABLE JugadorServidor ADD CONSTRAINT FK_JugadorServidorJugador FOREIGN KEY (idJugador) REFERENCES 
Jugador(idJugador)
--MesaTrabajoEncantamiento
ALTER TABLE MesaTrabajoEncantamiento ADD CONSTRAINT FK_MesaTrabajoEncantamientoEncantamiento FOREIGN KEY (idEncantamiento) REFERENCES 
Encantamiento(idEncantamiento)
ALTER TABLE MesaTrabajoEncantamiento ADD CONSTRAINT FK_MesaTrabajoEncantamientoMesaTrabajo FOREIGN KEY (idMesatrabajo) REFERENCES 
MesaTrabajo(idMesaTrabajo)
--MesaTrabajoJugador
ALTER TABLE MesaTrabajoJugador ADD CONSTRAINT FK_MesaTrabajoJugadorJugador FOREIGN KEY (idJugador) REFERENCES 
Jugador(idJugador)
ALTER TABLE MesaTrabajoJugador ADD CONSTRAINT FK_MesaTrabajoJugadorMesaTrabajo FOREIGN KEY (idMesaTrabajo) REFERENCES 
MesaTrabajo(idMesaTrabajo)
--MundoAldea
ALTER TABLE MundoAldea ADD CONSTRAINT FK_MundoAldeaAldea FOREIGN KEY (idAldea) REFERENCES 
Aldea(idAldea)
ALTER TABLE MundoAldea ADD CONSTRAINT FK_MundoAldeaMundo FOREIGN KEY (idMundo) REFERENCES 
Mundo(idMundo)
--MundoBloque
ALTER TABLE MundoBloque ADD CONSTRAINT FK_MundoBloqueMundo FOREIGN KEY (idMundo) REFERENCES 
Mundo(idMundo)
ALTER TABLE MundoBloque ADD CONSTRAINT FK_MundoBloqueBloque FOREIGN KEY (idBloque) REFERENCES 
Bloque(idBloque)
--MundoDimension
ALTER TABLE MundoDimension ADD CONSTRAINT FK_MundoDimension FOREIGN KEY (idDimension) REFERENCES 
Dimension(idDimension)
--MundoEcosistema
ALTER TABLE MundoEcosistema ADD CONSTRAINT FK_MundoEcosistemaMundo FOREIGN KEY (idMundo) REFERENCES 
Mundo(idMundo)
ALTER TABLE MundoEcosistema ADD CONSTRAINT FK_MundoEcosistemaEcosistema FOREIGN KEY (idEcosistema) REFERENCES 
Ecosistema(idEcosistema)
--MundoEstructura
ALTER TABLE MundoEstructura ADD CONSTRAINT FK_MundoEsctructuraMundo FOREIGN KEY (idMundo) REFERENCES 
Mundo(idMundo)
ALTER TABLE MundoEstructura ADD CONSTRAINT FK_MundoEstructura FOREIGN KEY (idEstructura) REFERENCES 
Estructura(idEstructura)
--MundoFluido
ALTER TABLE MundoFluido ADD CONSTRAINT FK_MundoFluidoMundo FOREIGN KEY (idMundo) REFERENCES 
Mundo(idMundo)
ALTER TABLE MundoFluido ADD CONSTRAINT FK_MundoFluidoFluido FOREIGN KEY (idFluido) REFERENCES 
Fluido(idFluido)
--MundoFortaleza
ALTER TABLE MundoFortaleza ADD CONSTRAINT FK_MundoFortalezaMundo FOREIGN KEY (idMundo) REFERENCES 
Mundo(idMundo)
ALTER TABLE MundoFortaleza ADD CONSTRAINT FK_MundoFortalezaFortaleza FOREIGN KEY (idFortaleza) REFERENCES 
Fortaleza(idFortaleza)
--MundoGeneracion
ALTER TABLE MundoGeneracion ADD CONSTRAINT FK_MundoGeneracionGeneracion FOREIGN KEY (idGeneracion) REFERENCES 
Generacion(idGeneracion)
ALTER TABLE MundoGeneracion ADD CONSTRAINT FK_MundoGeneracionMundo FOREIGN KEY (idMundo) REFERENCES 
Mundo(idMundo)
--MundoJefe
ALTER TABLE MundoJefe ADD CONSTRAINT FK_MundoJefeMundo FOREIGN KEY (idMundo) REFERENCES 
Mundo(idMundo)
ALTER TABLE MundoJefe ADD CONSTRAINT FK_MundoJefeJefe FOREIGN KEY (idJefe) REFERENCES 
Jefe(idJefe)
--MundoJugador
ALTER TABLE MundoJugador ADD CONSTRAINT FK_MundoJugadorMundo FOREIGN KEY (idMundo) REFERENCES 
Mundo(idMundo)
ALTER TABLE MundoJugador ADD CONSTRAINT FK_MundoJugadorJugador FOREIGN KEY (idJugador) REFERENCES 
Jugador(idJugador)
--MundoMob
ALTER TABLE MundoMob ADD CONSTRAINT FK_MundoMobMundo FOREIGN KEY (idMundo) REFERENCES 
Mundo(idMundo)
ALTER TABLE MundoMob ADD CONSTRAINT FK_MundoMobMob FOREIGN KEY (idMob) REFERENCES 
Mob(idMob)
--MundoMod
ALTER TABLE MundoModd ADD CONSTRAINT FK_MundoModdMundo FOREIGN KEY (idMundo) REFERENCES 
Mundo(idMundo)
ALTER TABLE MundoModd ADD CONSTRAINT FK_MundoModdModd FOREIGN KEY (idModd) REFERENCES 
Modd(idModd)
--MundoPackRecurso
ALTER TABLE MundoPackRecurso ADD CONSTRAINT FK_MundoPackRecursoMundo FOREIGN KEY (idMundo) REFERENCES 
Encantamiento(idEncantamiento)
ALTER TABLE MundoPackRecurso ADD CONSTRAINT FK_MundoPackRecursoPackRecurso FOREIGN KEY (idPackRecurso) REFERENCES 
PackRecurso(idPackrecurso)
--MundoPackTextura
ALTER TABLE MundoPackTextura ADD CONSTRAINT FK_MundoPackTexturaMundo FOREIGN KEY (idMundo) REFERENCES 
Mundo(idMundo)
ALTER TABLE MundoPackTextura ADD CONSTRAINT FK_MundoPackTexturaPackTextura FOREIGN KEY (idPackTextura) REFERENCES 
PackTextura(idPackTextura)
--MundoTemplo
ALTER TABLE MundoTemplo ADD CONSTRAINT FK_MundoTemploMundo FOREIGN KEY (idMundo) REFERENCES 
Mundo(idMundo)
ALTER TABLE MundoTemplo ADD CONSTRAINT FK_MundoTemploTemplo FOREIGN KEY (idTemplo) REFERENCES 
Templo(idTemplo)
ALTER TABLE ServidorModoServidor ADD CONSTRAINT FK_ServidorModoServidorServidor FOREIGN KEY (idServidor) REFERENCES 
Servidor(idServidor)
ALTER TABLE ServidorModoServidor ADD CONSTRAINT FK_ServidorModoServidorModoServidor FOREIGN KEY (idModoServidor) REFERENCES 
ModoServidor(idModoServidor)

--Index
CREATE INDEX IX_Aldea ON Aldea(idAldea)
CREATE INDEX IX_Amigo ON Amigo(idAmigo)
CREATE INDEX IX_Animal ON Animal(idAnimal)
CREATE INDEX IX_Arma ON Arma(idArma)
CREATE INDEX IX_Armadura ON Armadura(idArmadura)
CREATE INDEX IX_Bloque ON Bloque(idBloque)
CREATE INDEX IX_Chat ON Chat (idChat)
CREATE INDEX IX_Chunk ON Chunk(idChunk)
CREATE INDEX IX_Comida ON Comida (idComida)
CREATE INDEX IX_Comercio ON Comercio (idComercio)
CREATE INDEX IX_ConfigMundo ON ConfigMundo(idConfigMundo)
CREATE INDEX IX_ConfigUsuario ON ConfigUsuario(idConfigUsuario)
CREATE INDEX IX_Coordenada ON Coordenada(idCoordenada)
CREATE INDEX IX_Crafteo ON Crafteo(idCrafteo)
CREATE INDEX IX_Cultivo ON Cultivo(idCultivo)
CREATE INDEX IX_Dimension ON Dimension(idDimension)
CREATE INDEX IX_Ecosistema ON Ecosistema(idEcosistema)
CREATE INDEX IX_Efecto ON Efecto(idEfecto)
CREATE INDEX IX_Encantamiento ON Encantamiento(idEncantamiento)
CREATE INDEX IX_Estadistica ON Estadistica(idEstadistica)
CREATE INDEX IX_Estructura ON Estructura(idEstructura)
CREATE INDEX IX_Evento ON Evento(idEvento)
CREATE INDEX IX_Fluido ON Fluido(idFluido)
CREATE INDEX IX_Fortaleza ON Fortaleza(idFortaleza)
CREATE INDEX IX_Generacion ON Generacion(idGeneracion)
CREATE INDEX IX_Herramienta ON Herramienta(idHerramienta)
CREATE INDEX IX_Inventario ON Inventario(idInventario)
CREATE INDEX IX_Item ON Item(idItem)
CREATE INDEX IX_Jefe ON Jefe(idJefe)
CREATE INDEX IX_Jugador ON Jugador(idJugador)
CREATE INDEX IX_Logro ON Logro(idLogro)
CREATE INDEX IX_Mascota ON Mascota(idMascota)
CREATE INDEX IX_Menu ON Menu(idMenu)
CREATE INDEX IX_MesaTrabajo ON MesaTrabajo(idMesaTrabajo)
CREATE INDEX IX_Mob ON Mob(idMob)
CREATE INDEX IX_Modd ON Modd(idModd)
CREATE INDEX IX_ModoJuego ON ModoJuego(idModoJuego)
CREATE INDEX IX_ModoServidor ON ModoServidor(idModoServidor)
CREATE INDEX IX_Mundo ON Mundo(idMundo)
CREATE INDEX IX_Sonido ON Sonido(idSonido)
CREATE INDEX IX_PackRecurso ON PackRecurso(idPackRecurso)
CREATE INDEX IX_PackTextura ON PackTextura(idPackTextura)
CREATE INDEX IX_Parche ON Parche(idParche)
CREATE INDEX IX_Pesca ON Pesca(idPesca)
CREATE INDEX IX_Plugin ON Plugin(idPlugin)
CREATE INDEX IX_Pocion ON Pocion(idPocion)
CREATE INDEX IX_Servidor ON Servidor(idServidor)
CREATE INDEX IX_Templo ON Templo(idTemplo)
CREATE INDEX IX_Stack ON Stack(idStack)
CREATE INDEX IX_Tesoro ON Tesoro(idTesoro)

--Aldea
INSERT INTO Aldea(estilo, evento, botin) values ('Desierto','Asalto', 'Pala de hierro')
GO
INSERT INTO Aldea(estilo, evento, botin) values ('Llanura','Cultivo', 'Trigo')
GO
INSERT INTO Aldea(estilo, evento, botin) values ('Prado','Asalto', 'Pala de piedra')
GO
INSERT INTO Aldea(estilo, evento, botin) values ('Sabana','Asalto', 'Azada de hierro')
GO
INSERT INTO Aldea(estilo, evento, botin) values ('Taiga nevada','Hordas', 'carne podrida')
GO
INSERT INTO Aldea(estilo, evento, botin) values ('Llanura','Asalto', 'pan')
GO
INSERT INTO Aldea(estilo, evento, botin) values ('Taiga','Cultivo', 'Zanahorias')
GO
INSERT INTO Aldea(estilo, evento, botin) values ('LLanura nevada','Cultivo', 'Remolachas')
GO
INSERT INTO Aldea(estilo, evento, botin) values ('Desierto','Asalto', 'Libros')
GO
INSERT INTO Aldea(estilo, evento, botin) values ('Taiga nevada','Asalto', 'Mapa')
GO
--Amigo
INSERT INTO Amigo(gamertag, aspecto) values ('Barbiqiu', 'Calamardo')
GO
INSERT INTO Amigo(gamertag, aspecto) values ('AxRadiel', 'Personalizado')
GO
INSERT INTO Amigo(gamertag, aspecto) values ('juso', 'Zombie')
GO
INSERT INTO Amigo(gamertag, aspecto) values ('Roles', 'Creeper')
GO
INSERT INTO Amigo(gamertag, aspecto) values ('yosare', 'Endeman')
GO
INSERT INTO Amigo(gamertag, aspecto) values ('lucho', 'Personalizado')
GO
INSERT INTO Amigo(gamertag, aspecto) values ('rino', 'Jirafa')
GO
INSERT INTO Amigo(gamertag, aspecto) values ('losa', 'Creeper')
GO
INSERT INTO Amigo(gamertag, aspecto) values ('serrato', 'Zombie')
GO
INSERT INTO Amigo(gamertag, aspecto) values ('Yusiniu', 'Personalizado')
GO


--Animal
INSERT INTO Animal(puntosVida, botin, tipoAnimal) values (4, 'Cuero', 'Vaca')
GO
INSERT INTO Animal(puntosVida, botin, tipoAnimal) values (4, 'Leche', 'Vaca')
GO
INSERT INTO Animal(puntosVida, botin, tipoAnimal) values (5, 'Ternera', 'Oveja')
GO
INSERT INTO Animal(puntosVida, botin, tipoAnimal) values (4, 'Carne de res', 'Vaca')
GO
INSERT INTO Animal(puntosVida, botin, tipoAnimal) values (4, 'Carne de cerdo', 'Cerdo')
GO
INSERT INTO Animal(puntosVida, botin, tipoAnimal) values (1, 'Bacalao', 'Pez')
GO
INSERT INTO Animal(puntosVida, botin, tipoAnimal) values (2, 'Pluma', 'pollo')
GO
INSERT INTO Animal(puntosVida, botin, tipoAnimal) values (5, 'Cuero', 'Caballo')
GO
INSERT INTO Animal(puntosVida, botin, tipoAnimal) values (3, 'Cuero de conejo', 'Conejo')
GO
INSERT INTO Animal(puntosVida, botin, tipoAnimal) values (3, 'carne de conejo', 'Conejo')
GO

--Armadura
INSERT INTO Armadura(material, nombre, resistencia, estatus, idInventario) values ('Diamante', 'Armadura de diamante', 6, 1, 1)
GO
INSERT INTO Armadura(material, nombre, resistencia, estatus, idInventario) values ('Oro', 'Armadura de oro', 3, 1, 2)
GO
INSERT INTO Armadura(material, nombre, resistencia, estatus, idInventario) values ('Hierro', 'Armadura de hierro', 4, 1,3)
GO
INSERT INTO Armadura(material, nombre, resistencia, estatus, idInventario) values ('Cuero', 'Armadura de cuero',  2, 1,4)
GO
INSERT INTO Armadura(material, nombre, resistencia, estatus, idInventario) values ('Maya', 'Armadura de Maya', 1, 1,5)
GO
INSERT INTO Armadura(material, nombre, resistencia, estatus, idInventario) values ('Netherita', 'Armadura de netherita', 7, 1,6)
GO
INSERT INTO Armadura(material, nombre, resistencia, estatus, idInventario) values ('Diamante', 'Armadura de diamante para caballo', 6, 1,7)
GO
INSERT INTO Armadura(material, nombre, resistencia, estatus, idInventario) values ('Oro', 'Armadura de oro para caballo',3, 1,8)
GO
INSERT INTO Armadura(material, nombre, resistencia, estatus, idInventario) values ('Hierro', 'Armadura de hierro para caballo', 4, 1,9)
GO
INSERT INTO Armadura(material, nombre, resistencia, estatus, idInventario) values ('Cuero', 'Armadura de cuero para caballo', 2, 1,10)
GO

--Bloque
INSERT INTO Bloque(material, nombre) values ('piedra','Bloque de piedra')
GO
INSERT INTO Bloque(material, nombre) values ('Cuarzo','Bloque de cuarzo')
GO
INSERT INTO Bloque(material, nombre) values ('Madera','Bloque de madera')
GO
INSERT INTO Bloque(material, nombre) values ('piedra rojiza','Bloque de piedra rojiza')
GO
INSERT INTO Bloque(material, nombre) values ('Hierro','Bloque de hierro')
GO
INSERT INTO Bloque(material, nombre) values ('Tierra','Bloque de tierra')
GO
INSERT INTO Bloque(material, nombre) values ('Obsidiana','Bloque de obsidiana')
GO
INSERT INTO Bloque(material, nombre) values ('Prismarina','Bloque de prismarina')
GO
INSERT INTO Bloque(material, nombre) values ('Piedra','bloque de piedra')
GO
INSERT INTO Bloque(material, nombre) values ('Oro','Bloque de oro')
GO


--Chat
INSERT INTO Chat(fuente, color, espaciadoLinea) values ('Arial', 'Azul', '1')
GO
INSERT INTO Chat(fuente, color, espaciadoLinea) values ('Arial', 'Rojo', '2')
GO
INSERT INTO Chat(fuente, color, espaciadoLinea) values ('Calibri', 'Verde', '1')
GO
INSERT INTO Chat(fuente, color, espaciadoLinea) values ('Times New Roman', 'Azul', '1')
GO
INSERT INTO Chat(fuente, color, espaciadoLinea) values ('Arial', 'Amarillo', '2')
GO
INSERT INTO Chat(fuente, color, espaciadoLinea) values ('Arial Narrow', 'Morado', '1')
GO
INSERT INTO Chat(fuente, color, espaciadoLinea) values ('Times New Roman', 'Verde', '2')
GO
INSERT INTO Chat(fuente, color, espaciadoLinea) values ('Arial', 'Verde', '1')
GO
INSERT INTO Chat(fuente, color, espaciadoLinea) values ('Candara', 'Azul', '2')
GO
INSERT INTO Chat(fuente, color, espaciadoLinea) values ('Arial Narrow', 'Azul', '1')
GO


--chunk
INSERT INTO Chunk(limite, formato) values (32,'PNG')
GO
INSERT INTO Chunk(limite, formato) values (15,'AVI')
GO
INSERT INTO Chunk(limite, formato) values (5,'MP3')
GO
INSERT INTO Chunk(limite, formato) values (7,'PNG')
GO
INSERT INTO Chunk(limite, formato) values (8,'PNG')
GO
INSERT INTO Chunk(limite, formato) values (5,'AVI')
GO
INSERT INTO Chunk(limite, formato) values (16,'IFF')
GO
INSERT INTO Chunk(limite, formato) values (28,'IFF')
GO
INSERT INTO Chunk(limite, formato) values (30,'MP3')

GO
INSERT INTO Chunk(limite, formato) values (31,'PNG')
GO

--Comercio
INSERT INTO Comercio(tipoComercio, tipoIntercambio) values ('Vendedor ambulante', 'Zanahoria')
GO
INSERT INTO Comercio(tipoComercio, tipoIntercambio) values ('Cartografo', 'Esemeralda')
GO
INSERT INTO Comercio(tipoComercio, tipoIntercambio) values ('Herrero', 'Lingote de hierro')
GO
INSERT INTO Comercio(tipoComercio, tipoIntercambio) values ('Carnicero', 'Esmeralda')
GO
INSERT INTO Comercio(tipoComercio, tipoIntercambio) values ('Granjero', 'Semillas de trigo')
GO
INSERT INTO Comercio(tipoComercio, tipoIntercambio) values (',Bibliotecario', 'Cuero')
GO
INSERT INTO Comercio(tipoComercio, tipoIntercambio) values ('Carnicero', 'Esmeralda')
GO
INSERT INTO Comercio(tipoComercio, tipoIntercambio) values ('Cartografo', 'Lingote de hierro')
GO
INSERT INTO Comercio(tipoComercio, tipoIntercambio) values ('Vendedor ambulante', 'Lingote de oro')
GO
INSERT INTO Comercio(tipoComercio, tipoIntercambio) values ('Pescador', 'Esmeralda')
GO

--Comida
INSERT INTO Comida(tipo, valorNutrimental, nombre, ingredientes) values ('carne', 3, 'Filete', 'Vaca')
GO
INSERT INTO Comida(tipo, valorNutrimental, nombre, ingredientes) values ('Vegetal', 0.5, 'Zanahoria','zanahoria')
GO
INSERT INTO Comida(tipo, valorNutrimental, nombre, ingredientes) values ('Postre', 6, 'Pastel', 'Huevos,Leche,trigo,Azucar')
GO
INSERT INTO Comida(tipo, valorNutrimental, nombre, ingredientes) values ('carne', 3, 'chuleta', 'Cerdo')
GO
INSERT INTO Comida(tipo, valorNutrimental, nombre, ingredientes) values ('Fruta', 0.5, 'Manzana', 'Manzana')
GO
INSERT INTO Comida(tipo, valorNutrimental, nombre, ingredientes) values ('Postre', 3, 'Pastel de calabaza', 'Azucar,huevo,calabaza')
GO
INSERT INTO Comida(tipo, valorNutrimental, nombre, ingredientes) values ('Pollo', 3, 'Pollo asado', 'Pollo')
GO
INSERT INTO Comida(tipo, valorNutrimental, nombre, ingredientes) values ('Carne', 3, 'Carne de conejo', 'Conejo')
GO
INSERT INTO Comida(tipo, valorNutrimental, nombre, ingredientes) values ('Sopa', 2, 'Sopa de chamiñon', 'Champiñon, plato')
GO
INSERT INTO Comida(tipo, valorNutrimental, nombre, ingredientes) values ('carne', 3, 'chuleta', 'Vaca')
GO

--ConfigMundo
INSERT INTO ConfigMundo(modoJuego, dificultad,preferencia, semilla, tipo) values ('creativo', 'nulo','Mapa inicial', 333, 'Super plano')
GO
INSERT INTO ConfigMundo(modoJuego, dificultad,preferencia, semilla, tipo) values ('Supervivencia', 'Normal','Cofre de bonificación', 6151, 'Clasico')
GO
INSERT INTO ConfigMundo(modoJuego, dificultad,preferencia, semilla, tipo) values ('Superviviencia', 'Dificil','Cofre de bonificacion', 15265, 'Sky Block')
GO
INSERT INTO ConfigMundo(modoJuego, dificultad,preferencia, semilla, tipo) values ('creativo', 'nulo', 'Mapan inicial',65131, 'Clasico')
GO
INSERT INTO ConfigMundo(modoJuego, dificultad,preferencia, semilla, tipo) values ('Aventura', 'Normal','Mapa inicial', 416545, 'Clasico')
GO
INSERT INTO ConfigMundo(modoJuego, dificultad,preferencia, semilla, tipo) values ('creativo', 'nulo','nulo',4424, 'Clasico')
GO
INSERT INTO ConfigMundo(modoJuego, dificultad,preferencia, semilla, tipo) values ('Aventura', 'Normal','nulo',65545, 'Sky Block')
GO
INSERT INTO ConfigMundo(modoJuego, dificultad,preferencia, semilla, tipo) values ('Extremo', 'Dificil','nulo', 4354, 'Clasico')
GO
INSERT INTO ConfigMundo(modoJuego, dificultad,preferencia, semilla, tipo) values ('Extremo', 'Normal', 'nulo',15289, 'Clasico')
GO
INSERT INTO ConfigMundo(modoJuego, dificultad,preferencia, semilla, tipo) values ('Aventura', 'facil', 'mapa inicial',15154, 'Clasico')
GO

--COnfigUsuario
INSERT INTO ConfigUsuario(gamertag, idioma) values ('barbiqiu', 'español')
GO
INSERT INTO ConfigUsuario(gamertag, idioma) values ('AxRadiel', 'inglés')
GO
INSERT INTO ConfigUsuario(gamertag, idioma) values ('Rinoxd', 'español')
GO
INSERT INTO ConfigUsuario(gamertag, idioma) values ('Aguilablanca', 'español')
GO
INSERT INTO ConfigUsuario(gamertag, idioma) values ('Kev0ti', 'inglés')
GO
INSERT INTO ConfigUsuario(gamertag, idioma) values ('taquito32', 'inglés')
GO
INSERT INTO ConfigUsuario(gamertag, idioma) values ('Camenio', 'inglés')
GO
INSERT INTO ConfigUsuario(gamertag, idioma) values ('patoasado2', 'español')
GO
INSERT INTO ConfigUsuario(gamertag, idioma) values ('frurro54', 'español')
GO
INSERT INTO ConfigUsuario(gamertag, idioma) values ('paco63', 'inglés')
GO

--Cordenada
INSERT INTO Coordenada(ejeX, ejeY,ejeZ) values (0293838, 134085, 33)
go
INSERT INTO Coordenada(ejeX, ejeY,ejeZ) values (5456372, 0039499200, 2284)
go
INSERT INTO Coordenada(ejeX, ejeY,ejeZ) values (0293838, 134085, 19)
go
INSERT INTO Coordenada(ejeX, ejeY,ejeZ) values (0293838, 134085, 0031)
go
INSERT INTO Coordenada(ejeX, ejeY,ejeZ) values (0293838, 134085, -34)
go
INSERT INTO Coordenada(ejeX, ejeY,ejeZ) values (-994884, 431662, 11)
go
INSERT INTO Coordenada(ejeX, ejeY,ejeZ) values (0293838, 134085, -322)
go
INSERT INTO Coordenada(ejeX, ejeY,ejeZ) values (-0004789239, 47823, 33)
go
INSERT INTO Coordenada(ejeX, ejeY,ejeZ) values (988492911, 134085, -44736)
go
INSERT INTO Coordenada(ejeX, ejeY,ejeZ) values (09953932, 498937, 0029394)
go

--Cultivo
INSERT INTO Cultivo(tiempoCultivo, tipo) values ('00:03', 'planta zanahoria')
GO
INSERT INTO Cultivo(tiempoCultivo, tipo) values ('00:10', 'planta bambú')
GO
INSERT INTO Cultivo(tiempoCultivo, tipo) values ('00:5', 'planta trigo')
GO
INSERT INTO Cultivo(tiempoCultivo, tipo) values ('00:03', 'planta papa')
GO
INSERT INTO Cultivo(tiempoCultivo, tipo) values ('00:5', 'planta rabano')
GO
INSERT INTO Cultivo(tiempoCultivo, tipo) values ('00:5', 'planta caña')
GO
INSERT INTO Cultivo(tiempoCultivo, tipo) values ('00:10', 'planta calabaza')
GO
INSERT INTO Cultivo(tiempoCultivo, tipo) values ('00:15', 'planta sandia')
GO
INSERT INTO Cultivo(tiempoCultivo, tipo) values ('00:10', 'arbol de abeto')
GO
INSERT INTO Cultivo(tiempoCultivo, tipo) values ('00:15', 'arbol de jungla')
GO

--Dimension
INSERT INTO DImension(nombre, estilo, cicloDelDia) values ('Overworld','normal', 'Dia,Noche')
GO
INSERT INTO DImension(nombre, estilo, cicloDelDia) values ('Overworld','normal', 'Dia')
GO
INSERT INTO DImension(nombre, estilo, cicloDelDia) values ('Nether','Infierno', 'Noche')
GO
INSERT INTO DImension(nombre, estilo, cicloDelDia) values ('Nether','Infierno', 'sin datos')
GO
INSERT INTO DImension(nombre, estilo, cicloDelDia) values ('End','Fin', 'Noche')
GO
INSERT INTO DImension(nombre, estilo, cicloDelDia) values ('End','normal', 'Noche')
GO
INSERT INTO DImension(nombre, estilo, cicloDelDia) values ('End','Ciudad', 'Noche')
GO
INSERT INTO DImension(nombre, estilo, cicloDelDia) values ('Overworld','Desertico', 'Dia')
GO
INSERT INTO DImension(nombre, estilo, cicloDelDia) values ('Overworld','normal', 'Dia,Noche')
GO
INSERT INTO DImension(nombre, estilo, cicloDelDia) values ('Nether','Infierno', 'Noche')
GO

--Ecosistema
INSERT INTO Ecosistema( tipo, tamaño, bioma, clima) values ('Desertico', 1540, 'Desierto', 'Calido')
go
INSERT INTO Ecosistema( tipo, tamaño, bioma, clima) values ('Boscoso', 55, 'Bosque', 'Frio')
go
INSERT INTO Ecosistema( tipo, tamaño, bioma, clima) values ('Boscoso', 51212, 'Jungla', 'Humedo')
go
INSERT INTO Ecosistema( tipo, tamaño, bioma, clima) values ('Desertico', 421, 'Desierto', 'Frio')
go
INSERT INTO Ecosistema( tipo, tamaño, bioma, clima) values ('Boscoso', 415, 'Bosque', 'Calido')
go
INSERT INTO Ecosistema( tipo, tamaño, bioma, clima) values ('Nevado', 4551, 'Tundra', 'Frio')
go
INSERT INTO Ecosistema( tipo, tamaño, bioma, clima) values ('Boscoso', 53152, 'Bosque', 'Humedo')
go
INSERT INTO Ecosistema( tipo, tamaño, bioma, clima) values ('Boscosos', 56532, 'Bosque', 'Humedo')
go
INSERT INTO Ecosistema( tipo, tamaño, bioma, clima) values ('Desertico', 53, 'Desierto', 'Calido')
go
INSERT INTO Ecosistema( tipo, tamaño, bioma, clima) values ('Desertico', 5345, 'Desierto', 'Frio')
go

--Efecto
INSERT INTO Efecto(tipo, durabilidad, nombre) values ('Daño', 50,  'Pocion de daño')
GO
INSERT INTO Efecto(tipo, durabilidad, nombre) values ('Resistencia contra el fuego', 100, 'Pocion de resistencia contra el fuego')
GO
INSERT INTO Efecto(tipo, durabilidad, nombre) values ('Daño', 45,  'Pocion de lanzamiento de daño')
GO
INSERT INTO Efecto(tipo, durabilidad, nombre) values ('Salto', 559, ' Pocion de super salto')
GO
INSERT INTO Efecto(tipo, durabilidad, nombre) values ('Invisibilidad', 50,  'Pocion de invisibilidad')
GO
INSERT INTO Efecto(tipo, durabilidad, nombre) values ('Daño', 50,  'Veneno')
GO
INSERT INTO Efecto(tipo, durabilidad, nombre) values ('curacion', 50, 'curacion instantanea')
GO
INSERT INTO Efecto(tipo, durabilidad, nombre) values ('respirar debajo del agua', 50,  'vida marina')
GO
INSERT INTO Efecto(tipo, durabilidad, nombre) values ('Daño', 50,  'Pocion de daño')
GO
INSERT INTO Efecto(tipo, durabilidad, nombre) values ('Salto', 50,  'Super salto')
GO


--Encantamiento
INSERT INTO Encantamiento (tipo, durabilidad, nombre) values('construccion', 50, 'toque de seda')
GO
INSERT INTO Encantamiento (tipo, durabilidad, nombre) values('daño', 50, 'filo')
GO
INSERT INTO Encantamiento (tipo,durabilidad, nombre) values('defensa', 50, 'irrompibilidad')
GO
INSERT INTO Encantamiento (tipo, durabilidad, nombre) values('construccion', 50, 'fortuna')
GO
INSERT INTO Encantamiento (tipo, durabilidad, nombre) values('daño', 50, 'saqueo')
GO
INSERT INTO Encantamiento (tipo, durabilidad, nombre) values('daño', 50, 'perdicion para los artropodos')
GO
INSERT INTO Encantamiento (tipo, durabilidad, nombre) values('defensa', 50, 'caida de pluma')
GO
INSERT INTO Encantamiento (tipo, durabilidad, nombre) values('daño', 50, 'fuego')
GO
INSERT INTO Encantamiento (tipo, durabilidad, nombre) values('construccion', 50, 'reparacion')	
GO
INSERT INTO Encantamiento (tipo, durabilidad, nombre) values('defensa', 50, 'reparacion')
GO

--Estadistica

INSERT INTO Estadistica(dsitanciaRecorrida, distanciaVolada, distanciaCaida, saltos, numeroMuertes) values (2, 5, 4, 5, 6)
go
INSERT INTO Estadistica(dsitanciaRecorrida, distanciaVolada, distanciaCaida, saltos, numeroMuertes) values (2, 5, 4, 5, 6)
go
INSERT INTO Estadistica(dsitanciaRecorrida, distanciaVolada, distanciaCaida, saltos, numeroMuertes) values (2, 5, 4, 5, 6)
go
INSERT INTO Estadistica(dsitanciaRecorrida, distanciaVolada, distanciaCaida, saltos, numeroMuertes) values (2, 5, 4, 5, 6)
go
INSERT INTO Estadistica(dsitanciaRecorrida, distanciaVolada, distanciaCaida, saltos, numeroMuertes) values (2, 5, 4, 5, 6)
go
INSERT INTO Estadistica(dsitanciaRecorrida, distanciaVolada, distanciaCaida, saltos, numeroMuertes) values (2, 5, 4, 5, 6)
go
INSERT INTO Estadistica(dsitanciaRecorrida, distanciaVolada, distanciaCaida, saltos, numeroMuertes) values (2, 5, 4, 5, 6)
go
INSERT INTO Estadistica(dsitanciaRecorrida, distanciaVolada, distanciaCaida, saltos, numeroMuertes) values (2, 5, 4, 5, 6)
go
INSERT INTO Estadistica(dsitanciaRecorrida, distanciaVolada, distanciaCaida, saltos, numeroMuertes) values (2, 5, 4, 5, 6)
go
INSERT INTO Estadistica(dsitanciaRecorrida, distanciaVolada, distanciaCaida, saltos, numeroMuertes) values (2, 5, 4, 5, 6)
go

--Estructura
INSERT INTO Estructura( tipo, estilo) values ('desierto', 'piramide')
GO
INSERT INTO Estructura( tipo, estilo) values ('jungla', 'templo')
GO
INSERT INTO Estructura( tipo, estilo) values ('desierto', 'aldea')
GO
INSERT INTO Estructura( tipo, estilo) values ('bosque', 'casa de villagers')
GO
INSERT INTO Estructura( tipo, estilo) values ('jungla', 'aldea')
GO
INSERT INTO Estructura( tipo, estilo) values ('bosque', 'aldea de saqueadores')
GO
INSERT INTO Estructura( tipo, estilo) values ('desierto', 'piramide')
GO
INSERT INTO Estructura( tipo, estilo) values ('tundra', 'igloo')
GO
INSERT INTO Estructura( tipo, estilo) values ('desierto', 'piramide')

GO
INSERT INTO Estructura( tipo, estilo) values ('desierto', 'piramide')
GO

--Evento
INSERT INTO Evento(tipo, fechaInicio, fechaCierre, duarbilidad) values ('juego', '2014-10-25 20:00:00', '2014-11-25 20:00:00', 4)
go
INSERT INTO Evento(tipo, fechaInicio, fechaCierre, duarbilidad) values ('juego', '2014-10-25 20:00:00', '2014-11-25 20:00:00', 4)
go
INSERT INTO Evento(tipo, fechaInicio, fechaCierre, duarbilidad) values ('juego', '2014-10-25 20:00:00', '2014-11-25 20:00:00', 4)
go
INSERT INTO Evento(tipo, fechaInicio, fechaCierre, duarbilidad) values ('juego', '2014-10-25 20:00:00', '2014-11-25 20:00:00', 4)
go
INSERT INTO Evento(tipo, fechaInicio, fechaCierre, duarbilidad) values ('juego', '2014-10-25 20:00:00', '2014-11-25 20:00:00', 4)
go
INSERT INTO Evento(tipo, fechaInicio, fechaCierre, duarbilidad) values ('juego', '2014-10-25 20:00:00', '2014-11-25 20:00:00', 4)
go
INSERT INTO Evento(tipo, fechaInicio, fechaCierre, duarbilidad) values ('juego', '2014-10-25 20:00:00', '2014-11-25 20:00:00', 4)
go
INSERT INTO Evento(tipo, fechaInicio, fechaCierre, duarbilidad) values ('juego', '2014-10-25 20:00:00', '2014-11-25 20:00:00', 4)
go

--Fluido
INSERT INTO Fluido(tipo, nombre, nivelFluido) values ('frio', 'agua', 3)
go
INSERT INTO Fluido(tipo, nombre, nivelFluido) values ('caliente', 'lava', 1)
go
INSERT INTO Fluido(tipo, nombre, nivelFluido) values ('caliente', 'agua', 3)
go
INSERT INTO Fluido(tipo, nombre, nivelFluido) values ('frio', 'nieve', 0)
go
INSERT INTO Fluido(tipo, nombre, nivelFluido) values ('frio', 'agua', 3)
go
INSERT INTO Fluido(tipo, nombre, nivelFluido) values ('caliente', 'lava', 1)
go
INSERT INTO Fluido(tipo, nombre, nivelFluido) values ('caliente', 'agua', 3)
go
INSERT INTO Fluido(tipo, nombre, nivelFluido) values ('frio', 'agua', 3)
go
INSERT INTO Fluido(tipo, nombre, nivelFluido) values ('frio', 'agua', 3)
go
INSERT INTO Fluido(tipo, nombre, nivelFluido) values ('frio', 'agua', 3)
go

--Fortaleza
INSERT INTO Fortaleza(botin, nombre, estilo) values ('oro', 'piramide', 'desierto')
GO
INSERT INTO Fortaleza(botin, nombre, estilo) values ('oro', 'templo', 'jungla')
GO
INSERT INTO Fortaleza(botin, nombre, estilo) values ('oro', 'fortaleza del netther', 'nether')
GO
INSERT INTO Fortaleza(botin, nombre, estilo) values ('hierro', 'Ender', 'cueva')
GO
INSERT INTO Fortaleza(botin, nombre, estilo) values ('hierro', 'casa de los villager', 'bosque')
GO
INSERT INTO Fortaleza(botin, nombre, estilo) values ('oro', 'piramide', 'desierto')
GO
INSERT INTO Fortaleza(botin, nombre, estilo) values ('oro', 'templo', 'jungla')
GO
INSERT INTO Fortaleza(botin, nombre, estilo) values ('oro', 'fortaleza del netther', 'nether')
GO
INSERT INTO Fortaleza(botin, nombre, estilo) values ('hierro', 'Ender', 'cueva')
GO
INSERT INTO Fortaleza(botin, nombre, estilo) values ('hierro', 'casa de los villager', 'bosque')
GO

--Generación
INSERT INTO Generacion(tipo, lugarGeneracion) values ('Mundo', 'General')
GO
INSERT INTO Generacion(tipo, lugarGeneracion) values ('Jugador', 'bosque')
GO
INSERT INTO Generacion(tipo, lugarGeneracion) values ('Vaca', 'bosque')
GO
INSERT INTO Generacion(tipo, lugarGeneracion) values ('Conejo', 'desierto')
GO
INSERT INTO Generacion(tipo, lugarGeneracion) values ('gato', 'aldea')
GO
INSERT INTO Generacion(tipo, lugarGeneracion) values ('zombie', 'desierto')
GO
INSERT INTO Generacion(tipo, lugarGeneracion) values ('creeper', 'tundra')
GO
INSERT INTO Generacion(tipo, lugarGeneracion) values ('cabra', 'tundra')
GO
INSERT INTO Generacion(tipo, lugarGeneracion) values ('panda', 'bosque de bambus')
GO
INSERT INTO Generacion(tipo, lugarGeneracion) values ('abeja', 'bosque')
GO

--Herramienta
INSERT INTO Herramienta(material, nombre, resistencia, tipo) values ('hierro', 'pala', 4, 'trabajo')
GO
INSERT INTO Herramienta(material, nombre, resistencia, tipo) values ('hierro', 'pala', 4, 'trabajo')
GO
INSERT INTO Herramienta(material, nombre, resistencia, tipo) values ('hierro', 'pala', 4, 'trabajo')
GO
INSERT INTO Herramienta(material, nombre, resistencia, tipo) values ('hierro', 'pala', 4, 'trabajo')
GO
INSERT INTO Herramienta(material, nombre, resistencia, tipo) values ('hierro', 'pala', 4, 'trabajo')
GO
INSERT INTO Herramienta(material, nombre, resistencia, tipo) values ('hierro', 'pala', 4, 'trabajo')
GO
INSERT INTO Herramienta(material, nombre, resistencia, tipo) values ('hierro', 'pala', 4, 'trabajo')
GO
INSERT INTO Herramienta(material, nombre, resistencia, tipo) values ('hierro', 'pala', 4, 'trabajo')
GO
INSERT INTO Herramienta(material, nombre, resistencia, tipo) values ('hierro', 'pala', 4, 'trabajo')
GO
INSERT INTO Herramienta(material, nombre, resistencia, tipo) values ('hierro', 'pala', 4, 'trabajo')
GO

--Inventario
INSERT INTO Inventario(espacio) values (25)
go
INSERT INTO Inventario(espacio) values (5)
go
INSERT INTO Inventario(espacio) values (10)
go
INSERT INTO Inventario(espacio) values (15)
go
INSERT INTO Inventario(espacio) values (16)
go
INSERT INTO Inventario(espacio) values (22)
go
INSERT INTO Inventario(espacio) values (13)
go
INSERT INTO Inventario(espacio) values (11)
go
INSERT INTO Inventario(espacio) values (3)
go
INSERT INTO Inventario(espacio) values (5)
go

--Item
INSERT INTO Item(tipo, nombre) values ('construccion', 'piedra')
GO
INSERT INTO Item(tipo, nombre) values ('comida', 'zanahoria')
GO
INSERT INTO Item(tipo, nombre) values ('defensa', 'escudo')
GO
INSERT INTO Item(tipo, nombre) values ('ataque', 'espada')
GO
INSERT INTO Item(tipo, nombre) values ('construccion', 'ladrillos')
GO
INSERT INTO Item(tipo, nombre) values ('construccion', 'madera')
GO
INSERT INTO Item(tipo, nombre) values ('comida', 'papa')
GO
INSERT INTO Item(tipo, nombre) values ('mecanismo', 'piedra rojiza')
GO
INSERT INTO Item(tipo, nombre) values ('musica', 'bloque musical')
GO
INSERT INTO Item(tipo, nombre) values ('construccion', 'diorita')
GO

--Jefe
INSERT INTO Jefe(dimension, habilidad, puntosVida, nombre) values ( 'nether', 'daño', 3, 'gosth')
GO
INSERT INTO Jefe(dimension, habilidad, puntosVida, nombre) values ( 'ender', 'daño', 5, 'dragon')
GO
INSERT INTO Jefe(dimension, habilidad, puntosVida, nombre) values ( 'overworld', 'daño', 8, 'wither')
GO
INSERT INTO Jefe(dimension, habilidad, puntosVida, nombre) values ( 'nether', 'daño', 8, 'wither')
GO
INSERT INTO Jefe(dimension, habilidad, puntosVida, nombre) values ( 'ender', 'daño', 6, 'wither')
GO
INSERT INTO Jefe(dimension, habilidad, puntosVida, nombre) values ( 'nether', 'daño', 3, 'gosth')
GO
INSERT INTO Jefe(dimension, habilidad, puntosVida, nombre) values ( 'ender', 'daño', 5, 'dragon')
GO
INSERT INTO Jefe(dimension, habilidad, puntosVida, nombre) values ( 'overworld', 'daño', 8, 'wither')
GO
INSERT INTO Jefe(dimension, habilidad, puntosVida, nombre) values ( 'nether', 'daño', 8, 'wither')
GO
INSERT INTO Jefe(dimension, habilidad, puntosVida, nombre) values ( 'ender', 'daño', 6, 'wither')
GO

--Menu
INSERT INTO Menu(accion) values ('reanudar juego')
GO
INSERT INTO Menu(accion) values ('ajustes')
GO
INSERT INTO Menu(accion) values ('mercado')
GO
INSERT INTO Menu(accion) values ('guardar y salir')
GO
INSERT INTO Menu(accion) values ('vestidor')
GO
INSERT INTO Menu(accion) values ('invitar al juego')
GO
INSERT INTO Menu(accion) values ('logros')
GO
INSERT INTO Menu(accion) values ('permisos del jugador')
GO
INSERT INTO Menu(accion) values ('nivel de permisos')
GO
INSERT INTO Menu(accion) values ('usuarios')
GO

--MesaTrabajo
INSERT INTO MesaTrabajo(tipo, idInventario) values ('mesa de crafteo', 1)
GO
INSERT INTO MesaTrabajo(tipo, idInventario) values ('mesa de herreria', 2) 
GO
INSERT INTO MesaTrabajo(tipo, idInventario) values ('mesa de encantamiento', 3)
GO
INSERT INTO MesaTrabajo(tipo, idInventario) values ('mesa de pociones', 4)
GO
INSERT INTO MesaTrabajo(tipo, idInventario) values ('mesa de crafteo', 5)
GO
INSERT INTO MesaTrabajo(tipo, idInventario) values ('mesa de cartografía', 6)
GO
INSERT INTO MesaTrabajo(tipo, idInventario) values ('telar', 7)
GO
INSERT INTO MesaTrabajo(tipo, idInventario) values ('cortapiedra', 8)
GO
INSERT INTO MesaTrabajo(tipo, idInventario) values ('yunque', 9)
GO
INSERT INTO MesaTrabajo(tipo, idInventario) values ('mesa de pociones',10)
GO

--Mob
INSERT INTO Mob(puntosVida, botin, habilidad,  nombre, puntosDaño) values (6, 'carne podrida', 'golpe', 'zombie', 2)
go
INSERT INTO Mob(puntosVida, botin, habilidad,  nombre, puntosDaño) values (5, 'ojo de araña', 'picadura', 'araña', 1)
go
INSERT INTO Mob(puntosVida, botin, habilidad,  nombre, puntosDaño) values (6, 'polvora', 'explosion', 'creeper', 6)
go
INSERT INTO Mob(puntosVida, botin, habilidad,  nombre, puntosDaño) values (8, 'ojo de ender', 'teletransportar', 'enderman', 6)
go
INSERT INTO Mob(puntosVida, botin, habilidad,  nombre, puntosDaño) values (6, 'calavera', 'arquear', 'esqueleto',2)
go
INSERT INTO Mob(puntosVida, botin, habilidad,  nombre, puntosDaño) values (6, 'carne podrida', 'golpe con veneno', 'vaina', 3)
go
INSERT INTO Mob(puntosVida, botin, habilidad,  nombre, puntosDaño) values (5, 'telaraña', 'picadura con veneno', 'araña de cueva',2)
go
INSERT INTO Mob(puntosVida, botin, habilidad,  nombre, puntosDaño) values (6, 'pepita de oro', 'golpe', 'porquero zombie',2)
go
INSERT INTO Mob(puntosVida, botin, habilidad,  nombre, puntosDaño) values (6, 'redstone', 'hechizos', 'bruja',  2)
go
INSERT INTO Mob(puntosVida, botin, habilidad,  nombre, puntosDaño) values (6, 'obsidiana', 'trueque con oro', 'pigling', 2)
go

--Modd
INSERT INTO Modd(nombre, versionMod) values ('Inventory HUD', 1.19)
GO
INSERT INTO Modd(nombre, versionMod) values ('Alex´s mobs mod', 1.18)
GO
INSERT INTO Modd(nombre, versionMod) values ('Cooking For Blockheads Mod', 1.18)
GO
INSERT INTO Modd(nombre, versionMod) values ('Carry on Mod', 1.17 )
GO
INSERT INTO Modd(nombre, versionMod) values ('Mascaw´s Trapdoors Mod', 1.18)
GO
INSERT INTO Modd(nombre, versionMod) values ('The one Prove Mod', 1.16)
GO
INSERT INTO Modd(nombre, versionMod) values ('Jade Mod', 1.15)
GO
INSERT INTO Modd(nombre, versionMod) values ('Biomes O´Plenty Mod', 1.18)
GO
INSERT INTO Modd(nombre, versionMod) values ('Cosmetic Armor Mod', 1.19)
GO
INSERT INTO Modd(nombre, versionMod) values ('Comforts Mod', 1.14)
GO

--ModoJuego
INSERT INTO ModoJuego(tipo, dificultad, preferencia) values ('sky block', 'normal', 'mapa inicial')
GO
INSERT INTO ModoJuego(tipo, dificultad, preferencia) values ('Clasico', 'dificil', 'cofre de bonificacion')
GO
INSERT INTO ModoJuego(tipo, dificultad, preferencia) values ('One block', 'normal', 'nulo')
GO
INSERT INTO ModoJuego(tipo, dificultad, preferencia) values ('clasico', 'experto', 'nulo')
GO
INSERT INTO ModoJuego(tipo, dificultad, preferencia) values ('super plano', 'facil', 'nulo')
GO
INSERT INTO ModoJuego(tipo, dificultad, preferencia) values ('sky block', 'dificil', 'mapa inical')
GO
INSERT INTO ModoJuego(tipo, dificultad, preferencia) values ('sky block', 'facil', 'cofre de bonificacion')
GO
INSERT INTO ModoJuego(tipo, dificultad, preferencia) values ('clkasico', 'facil', 'cofre de bonificacion')
GO
INSERT INTO ModoJuego(tipo, dificultad, preferencia) values ('one block', 'normal', 'n¿mapoa inicial')
GO
INSERT INTO ModoJuego(tipo, dificultad, preferencia) values ('sky block', 'normal', 'si')
GO

--ModoServidor
INSERT INTO ModoServidor(tipo) values ('HyPlex')
GO
INSERT INTO ModoServidor(tipo) values ('Librecraft')
GO
INSERT INTO ModoServidor(tipo) values ('Complex Gaming')
GO
INSERT INTO ModoServidor(tipo) values ('MineLatino Network')
GO
INSERT INTO ModoServidor(tipo) values ('Deluxe Zone ')
GO
INSERT INTO ModoServidor(tipo) values ('Supercraft')
GO
INSERT INTO ModoServidor(tipo) values ('UniversoCraft')
GO
INSERT INTO ModoServidor(tipo) values ('Skycraft')
GO
INSERT INTO ModoServidor(tipo) values ('privado')
GO
INSERT INTO ModoServidor(tipo) values ('Mineplex')
GO


--Sonido
INSERT INTO Sonido(principal, musica, ambiente, bloque, criatura) values (9, 8, 7, 6, 5)
go
INSERT INTO Sonido(principal, musica, ambiente, bloque, criatura) values (8, 7, 6, 5, 4)
go
INSERT INTO Sonido(principal, musica, ambiente, bloque, criatura) values (7, 6, 5, 4, 3)
go
INSERT INTO Sonido(principal, musica, ambiente, bloque, criatura) values (6, 5, 4, 3, 2)
go
INSERT INTO Sonido(principal, musica, ambiente, bloque, criatura) values (5, 4, 3, 2, 1)
go
INSERT INTO Sonido(principal, musica, ambiente, bloque, criatura) values (4, 3, 2, 1, 0)
go
INSERT INTO Sonido(principal, musica, ambiente, bloque, criatura) values (3, 2, 1, 0, 1)
go
INSERT INTO Sonido(principal, musica, ambiente, bloque, criatura) values (2, 1, 0, 1, 2)
go
INSERT INTO Sonido(principal, musica, ambiente, bloque, criatura) values (1, 0, 1, 2, 3)
go
INSERT INTO Sonido(principal, musica, ambiente, bloque, criatura) values (0, 1, 2, 3, 4)
go

--PackRecurso
INSERT INTO PackRecurso(nombre, formato) values ('LB Photo Realism Reload', 'zip')
GO
INSERT INTO PackRecurso(nombre, formato) values ('Faithful', 'rar')
GO
INSERT INTO PackRecurso(nombre, formato) values ('SapixCraft', 'rar')
GO
INSERT INTO PackRecurso(nombre, formato) values ('Modern HD', 'zip')
GO
INSERT INTO PackRecurso(nombre, formato) values ('CoterieCraft', 'zip')
GO
INSERT INTO PackRecurso(nombre, formato) values ('Eternal Hearts', 'zip')
GO
INSERT INTO PackRecurso(nombre, formato) values ('Jolicraft', 'zip')
GO
INSERT INTO PackRecurso(nombre, formato) values ('Conquest', 'rar')
GO
INSERT INTO PackRecurso(nombre, formato) values ('Eternal Hearts', 'zip')
GO
INSERT INTO PackRecurso(nombre, formato) values ('Jolicraft', 'zip')
GO

--PackTextura
INSERT INTO PackTextura(nombre, formato) values ('Bare bones', 'zip')
GO
INSERT INTO PackTextura(nombre, formato) values ('Retro NES', 'zip')
GO
INSERT INTO PackTextura(nombre, formato) values ('Mythic', 'zip')
GO
INSERT INTO PackTextura(nombre, formato) values ('John Smith Legacy', 'rar')
GO
INSERT INTO PackTextura(nombre, formato) values ('DokuCraft', 'zip')
GO
INSERT INTO PackTextura(nombre, formato) values ('Default photo realism', 'rar')
GO
INSERT INTO PackTextura(nombre, formato) values ('Realistico', 'zip')
GO
INSERT INTO PackTextura(nombre, formato) values ('Sphax PureBDCraft', 'zip')
GO
INSERT INTO PackTextura(nombre, formato) values ('Soartex Texture pack', 'rar')
GO
INSERT INTO PackTextura(nombre, formato) values ('Classic 3D Texture Pack', 'zip')
GO

--Parche
INSERT INTO Parche(versioParche,  fechaActualizacion) values (1.14, '04/22/2010')
go
INSERT INTO Parche(versioParche,  fechaActualizacion) values (1.14,  '06/26/2010')
go
INSERT INTO Parche(versioParche, fechaActualizacion) values (1.15, '10/05/2010')
go
INSERT INTO Parche(versioParche,  fechaActualizacion) values (1.15, '12/12/2010')
go
INSERT INTO Parche(versioParche,  fechaActualizacion) values (1.16,  '01/30/2011')
go
INSERT INTO Parche(versioParche, fechaActualizacion) values (1.16, '01/25/2011')
go
INSERT INTO Parche(versioParche,  fechaActualizacion) values (1.162, '10/26/2011')
go
INSERT INTO Parche(versioParche,  fechaActualizacion) values (1.162,  '11/06/2017')
go
INSERT INTO Parche(versioParche, fechaActualizacion) values (1.17, '05/05/2018')
go
INSERT INTO Parche(versioParche, fechaActualizacion) values (1.17, '11/22/2019')
go

--Mundo
INSERT INTO Mundo(nombre, tipo, idParche) values ('ayf', 'clasico', 1)
go
INSERT INTO Mundo(nombre, tipo ,idParche) values ('nom ', 'one block', 2)
go
INSERT INTO Mundo(nombre, tipo ,idParche) values ('reyes', 'sky block', 3)
go
INSERT INTO Mundo(nombre, tipo ,idParche) values ('lasaña', 'super plano', 4)
go
INSERT INTO Mundo(nombre, tipo ,idParche) values ('run', 'clasico', 5)
go
INSERT INTO Mundo(nombre, tipo ,idParche) values ('ayfer', 'one block', 6)
go
INSERT INTO Mundo(nombre, tipo ,idParche) values ('resistencia', 'super plano', 7)
go
INSERT INTO Mundo(nombre, tipo ,idParche) values ('mundo', 'clasico', 8)
go
INSERT INTO Mundo(nombre, tipo ,idParche) values ('nuevo mundo', 'one block', 9)
go
INSERT INTO Mundo(nombre, tipo ,idParche) values ('copia', 'clasico', 10)
go

--Pesca
INSERT INTO Pesca(tipo, botin) values ('cubeta', 'salmón')
GO
INSERT INTO Pesca(tipo, botin) values ('caña de pescar', 'pez globo')
GO
INSERT INTO Pesca(tipo, botin) values ('caña de pescar', 'salmon')
GO
INSERT INTO Pesca(tipo, botin) values ('cubeta', 'ajolote')
GO
INSERT INTO Pesca(tipo, botin) values ('caña de pescar', 'pez payaso')
GO
INSERT INTO Pesca(tipo, botin) values ('cubeta', 'pez payaso')
GO
INSERT INTO Pesca(tipo, botin) values ('cubeta', 'esponja')
GO
INSERT INTO Pesca(tipo, botin) values ('caña de pescar', 'libros encantados')
GO
INSERT INTO Pesca(tipo, botin) values ('caña de pescar', 'bacalao')
GO
INSERT INTO Pesca(tipo, botin) values ('cubeta', 'bacalao')
GO

--Plugin
INSERT INTO Plugin(nombre, main, versionPlugin) values ('EsentialsX Chat', 'EsentialsX', 1.8)
go
INSERT INTO Plugin(nombre, main, versionPlugin) values ('Multiverse-core', 'Multiverse-core', 1.9)
go
INSERT INTO Plugin(nombre, main, versionPlugin) values ('LuckyPerms', 'LuckyPerms', 1.14)
go
INSERT INTO Plugin(nombre, main, versionPlugin) values ('ViaBackWards', 'ViaVersion', 1.15)
go
INSERT INTO Plugin(nombre, main, versionPlugin) values ('Sternalboard', 'Sternalboard', 1.10)
go
INSERT INTO Plugin(nombre, main, versionPlugin) values ('EsentialsX Spawn', 'EsentialsX', 1.8)
go
INSERT INTO Plugin(nombre, main, versionPlugin) values ('EsentialsX Protect', 'EsentialsX', 1.8)
go
INSERT INTO Plugin(nombre, main, versionPlugin) values ('ViaVersioniarewind', 'ViaVersion', 1.15)
go
INSERT INTO Plugin(nombre, main, versionPlugin) values ('skript', 'skript', 1.11)
go
INSERT INTO Plugin(nombre, main, versionPlugin) values ('Towny', 'Towny', 1.18)
go

--Pocion
INSERT INTO Pocion(nombre, tipo, puntosDaño, puntosVida) values ('curación', 'arojadiza', 0, 8)
go
INSERT INTO Pocion(nombre, tipo, puntosDaño, puntosVida) values ('Debilidad', 'arojadiza', 5, 0)
go
INSERT INTO Pocion(nombre, tipo, puntosDaño, puntosVida) values ('Fuerza ll', 'consumible', 0, 8)
go
INSERT INTO Pocion(nombre, tipo, puntosDaño, puntosVida) values ('Regeneracion', 'consumible', 0, 8)
go
INSERT INTO Pocion(nombre, tipo, puntosDaño, puntosVida) values ('Velocidad', 'arojadiza', 0, 0)
go
INSERT INTO Pocion(nombre, tipo, puntosDaño, puntosVida) values ('Velocidad', 'consumible', 0, 0)
go
INSERT INTO Pocion(nombre, tipo, puntosDaño, puntosVida) values ('Lentitud', 'arojadiza', 0, 0)
go
INSERT INTO Pocion(nombre, tipo, puntosDaño, puntosVida) values ('Daño instntaneo', 'arojadiza', 2, 0)
go
INSERT INTO Pocion(nombre, tipo, puntosDaño, puntosVida) values ('Veneno', 'arojadiza', 1, 0)
go
INSERT INTO Pocion(nombre, tipo, puntosDaño, puntosVida) values ('Vision nocturna', 'consumible', 0, 0)
go

--Servidor
INSERT INTO Servidor(nombre, dificultad, idModoServidor) values ('pointer', 'normal', 1)
go
INSERT INTO Servidor(nombre, dificultad, idModoServidor) values ('resuna', 'dificil', 2)
go
INSERT INTO Servidor(nombre, dificultad, idModoServidor) values ('press', 'experto', 3)
go
INSERT INTO Servidor(nombre, dificultad, idModoServidor) values ('resina', 'facil', 4)
go
INSERT INTO Servidor(nombre, dificultad, idModoServidor) values ('cincuenta', 'normal', 5)
go
INSERT INTO Servidor(nombre, dificultad, idModoServidor) values ('pvp', 'facil', 6)
go
INSERT INTO Servidor(nombre, dificultad, idModoServidor) values ('sierra', 'normal', 7)
go
INSERT INTO Servidor(nombre, dificultad, idModoServidor) values ('ropero', 'dificil', 8)
go
INSERT INTO Servidor(nombre, dificultad, idModoServidor) values ('puertio', 'experto', 9)
go
INSERT INTO Servidor(nombre, dificultad, idModoServidor) values ('poisero', 'normal', 10)
go

--Stack
INSERT INTO Stack(nombre, limiteItem, idInventario) values ('zanahoria', 64, 1)
go
INSERT INTO Stack(nombre, limiteItem, idInventario) values ('roca', 64, 2)
go
INSERT INTO Stack(nombre, limiteItem, idInventario) values ('vidrio', 64, 3)
go
INSERT INTO Stack(nombre, limiteItem, idInventario) values ('antorcha', 64, 4)
go
INSERT INTO Stack(nombre, limiteItem, idInventario) values ('botas de hierro', 1, 5)
go
INSERT INTO Stack(nombre, limiteItem, idInventario) values ('casco de oro', 1, 6)
go
INSERT INTO Stack(nombre, limiteItem, idInventario) values ('papa', 64, 7)
go
INSERT INTO Stack(nombre, limiteItem, idInventario) values ('hierro', 64, 8)
go
INSERT INTO Stack(nombre, limiteItem, idInventario) values ('bloque de obsidiana', 64, 9)
go
INSERT INTO Stack(nombre, limiteItem, idInventario) values ('remolacha', 64, 10)
go

--Templo
INSERT INTO Templo(estilo, tipo, nombre, botin) values ('piramide', 'desierto', 'piramide del desierto', 'oro')
GO
INSERT INTO Templo(estilo, tipo, nombre, botin) values ('templo', 'jungla', 'templo de jungla', 'oro')
GO
INSERT INTO Templo(estilo, tipo, nombre, botin) values ('templo', 'mar', ' templo marino', 'esponjas')
GO
INSERT INTO Templo(estilo, tipo, nombre, botin) values ('templo', 'jungla', 'templo de jungla', 'diamante')
GO
INSERT INTO Templo(estilo, tipo, nombre, botin) values('templo', 'jungla', 'templo de jungla', 'lingote de hierro')
GO
INSERT INTO Templo(estilo, tipo, nombre, botin) values ('templo', 'jungla', 'templo de jungla', 'lingote de oro')
go
INSERT INTO Templo(estilo, tipo, nombre, botin) values ('templo', 'jungla', 'templo de jungla', 'esmeralda')
GO
INSERT INTO Templo(estilo, tipo, nombre, botin) values ('templo', 'jungla', 'templo de jungla', 'hueso')
GO
INSERT INTO Templo(estilo, tipo, nombre, botin) values ('piramide', 'desierto', 'piramide del desierto', 'armadura de hierro para caballo')
GO
INSERT INTO Templo(estilo, tipo, nombre, botin) values ('piramide', 'desierto', 'piramide del desierto', 'montura')
GO

--Tesoro
INSERT INTO Tesoro(tipo, botin) values ('enterrado', 'corazón de mar')
GO
INSERT INTO Tesoro(tipo, botin) values ('enterrado', ' armadura para caballo')
GO
INSERT INTO Tesoro(tipo, botin) values ('enterrado', 'mapa en blanco')
GO
INSERT INTO Tesoro(tipo, botin) values ('enterrado', 'lingote de hierro')
GO
INSERT INTO Tesoro(tipo, botin) values ('barco hundido', 'hilo')
GO
INSERT INTO Tesoro(tipo, botin) values ('barco hundido', 'bola de slime')
GO
INSERT INTO Tesoro(tipo, botin) values ('barco hundido', 'pico de piedra')
GO
INSERT INTO Tesoro(tipo, botin) values ('barco hundido', 'Lingote de oro')
GO
INSERT INTO Tesoro(tipo, botin) values ('barco hundido', 'Lingote de hierro')
GO
INSERT INTO Tesoro(tipo, botin) values ('enterrado', 'esmeralda')
GO

--Crafteo
INSERT INTO Crafteo(tipo, detalle, idMesatrabajo, idInventario) values ('mesa de trabajo', 'pechera de hierro con 5 de resistencia', 1, 1)
go
INSERT INTO Crafteo(tipo, detalle, idMesatrabajo, idInventario) values ('mesa de trabajo', 'pala de madera con 3 de resistencia', 2, 2)
go
INSERT INTO Crafteo(tipo, detalle, idMesatrabajo, idInventario) values ('mesa de trabajo', 'cama color blanca', 3, 3)
go
INSERT INTO Crafteo(tipo, detalle, idMesatrabajo, idInventario) values ('inventario', 'mesa de trabajo', 4, 4)
go
INSERT INTO Crafteo(tipo, detalle, idMesatrabajo, idInventario) values ('mesa de trabajo', 'horno de piedra', 5, 5)
go
INSERT INTO Crafteo(tipo, detalle, idMesatrabajo, idInventario) values ('mesa de trabajo', 'hacha de madera con 3 de resistencia', 6, 6)
go
INSERT INTO Crafteo(tipo, detalle, idMesatrabajo, idInventario) values ('mesa de trabajo', 'pala de hierro con 5 de resistencia', 7, 7)
go
INSERT INTO Crafteo(tipo, detalle, idMesatrabajo, idInventario) values ('inventario', 'antorcha con carbón vegetal', 8, 8)
go
INSERT INTO Crafteo(tipo, detalle, idMesatrabajo, idInventario) values ('inventario', 'palos de madera', 9, 9)
go
INSERT INTO Crafteo(tipo, detalle, idMesatrabajo, idInventario) values ('inventario', 'mechero', 10, 10)
go


--Jugador
INSERT INTO Jugador(gamertag, aspecto, puntosVida, puntosAlimento, puntosExperiencia, idInventario, idConfigMundo, idMenu, idConfigUsuario, idEstadistica) values ('AxRadiel', 'personalizado', 4, 1, 4, 1, 1, 1, 1, 1)
go
INSERT INTO Jugador(gamertag, aspecto, puntosVida, puntosAlimento, puntosExperiencia, idInventario, idConfigMundo, idMenu, idConfigUsuario, idEstadistica) values ('pepe', 'vaca', 5, 5, 7, 2, 2, 2, 2, 2)
go
INSERT INTO Jugador(gamertag, aspecto, puntosVida, puntosAlimento, puntosExperiencia, idInventario, idConfigMundo, idMenu, idConfigUsuario, idEstadistica) values ('barbiqiu', 'calamardo', 5, 3, 2, 3, 3, 3, 3, 3)
go
INSERT INTO Jugador(gamertag, aspecto, puntosVida, puntosAlimento, puntosExperiencia, idInventario, idConfigMundo, idMenu, idConfigUsuario, idEstadistica) values ('platano', 'platano', 6, 5, 7, 4, 4, 4, 4, 4)
go
INSERT INTO Jugador(gamertag, aspecto, puntosVida, puntosAlimento, puntosExperiencia, idInventario, idConfigMundo, idMenu, idConfigUsuario, idEstadistica) values ('rosa', 'alex', 5, 2, 1, 5, 5, 5, 5, 5)
go
INSERT INTO Jugador(gamertag, aspecto, puntosVida, puntosAlimento, puntosExperiencia, idInventario, idConfigMundo, idMenu, idConfigUsuario, idEstadistica) values ('sierra', 'steve', 7, 8, 14, 6, 6, 6, 6, 6)
go
INSERT INTO Jugador(gamertag, aspecto, puntosVida, puntosAlimento, puntosExperiencia, idInventario, idConfigMundo, idMenu, idConfigUsuario, idEstadistica) values ('rona', 'cerdo', 7, 4, 4, 7, 7, 7, 7, 7)
go
INSERT INTO Jugador(gamertag, aspecto, puntosVida, puntosAlimento, puntosExperiencia, idInventario, idConfigMundo, idMenu, idConfigUsuario, idEstadistica) values ('fer', 'creeper', 8, 2, 4, 8, 8, 8, 8, 8)
go
INSERT INTO Jugador(gamertag, aspecto, puntosVida, puntosAlimento, puntosExperiencia, idInventario, idConfigMundo, idMenu, idConfigUsuario, idEstadistica) values ('fer', 'creeper', 8, 2, 4, 9 , 9, 9, 9, 9)
go
INSERT INTO Jugador(gamertag, aspecto, puntosVida, puntosAlimento, puntosExperiencia, idInventario, idConfigMundo, idMenu, idConfigUsuario, idEstadistica) values ('manuel', 'personalizado', 7, 9, 2, 10, 10, 10,10, 10)
go


--Logro
INSERT INTO Logro(nombre, recompensa, puntosJugador, tiempoJuego, tipo, idJugador) values ('consiguiendo una mejora', 'puntos de experiencia', 15, 48, 'inicio', 1)
go
INSERT INTO Logro(nombre, recompensa, puntosJugador, tiempoJuego, tipo, idJugador) values ('desencantado', 'emblema', 10, 48, 'progreso', 2)
go
INSERT INTO Logro(nombre, recompensa, puntosJugador, tiempoJuego, tipo, idJugador) values ('ecolocación', 'puntos de experiencia', 20, 48, 'progreso', 3)
go
INSERT INTO Logro(nombre, recompensa, puntosJugador, tiempoJuego, tipo, idJugador) values ('asesino de monstruos', 'puntos de experiencia', 10, 48, 'inicio', 4)
go
INSERT INTO Logro(nombre, recompensa, puntosJugador, tiempoJuego, tipo, idJugador) values ('volquete de vacas', 'puntos de experiencia', 15, 48, 'inicio', 5)
go
INSERT INTO Logro(nombre, recompensa, puntosJugador, tiempoJuego, tipo, idJugador) values ('delicioso pescado', 'emblema', 10, 48, 'progreso', 6)
go
INSERT INTO Logro(nombre, recompensa, puntosJugador, tiempoJuego, tipo, idJugador) values ('ésto es una señal', 'emblema', 15, 48, 'progreso', 7)
go
INSERT INTO Logro(nombre, recompensa, puntosJugador, tiempoJuego, tipo, idJugador) values ('super combustible', 'emblema', 20, 48, 'inicio', 8)
go
INSERT INTO Logro(nombre, recompensa, puntosJugador, tiempoJuego, tipo, idJugador) values ('hora de aventuras', 'puntos de experiencia', 30, 48, 'progreso', 9)
go
INSERT INTO Logro(nombre, recompensa, puntosJugador, tiempoJuego, tipo, idJugador) values ('soy rico', 'puntos de experiencia', 30, 48, 'final', 10)
go

--Mascota
INSERT INTO Mascota(nombre, tipo, puntosVida, comida, idJugador) values ('Fernando', 'oso panda', 7, 8, 1)
go
INSERT INTO Mascota(nombre, tipo, puntosVida, comida, idJugador) values ('tigrita', 'gato', 7, 2, 2)
go
INSERT INTO Mascota(nombre, tipo, puntosVida, comida, idJugador) values ('lola', 'gato', 7, 5, 3)
go
INSERT INTO Mascota(nombre, tipo, puntosVida, comida, idJugador) values ('niña', 'lobo', 7, 6, 4)
go
INSERT INTO Mascota(nombre, tipo, puntosVida, comida, idJugador) values ('chase', 'lobo', 7, 8, 5)
go
INSERT INTO Mascota(nombre, tipo, puntosVida, comida, idJugador) values ('gatote', 'gato', 7, 2, 6)
go
INSERT INTO Mascota(nombre, tipo, puntosVida, comida, idJugador) values ('blanquito', 'gato', 7, 9, 7)
go
INSERT INTO Mascota(nombre, tipo, puntosVida, comida, idJugador) values ('pato', 'caballo', 7, 6, 8)
go
INSERT INTO Mascota(nombre, tipo, puntosVida, comida, idJugador) values ('maggie', 'gato', 7, 5, 9)
go
INSERT INTO Mascota(nombre, tipo, puntosVida, comida, idJugador) values ('liru', 'loro', 7, 8, 10) 
go

--MundoParche
INSERT INTO MundoParche(idMundo, idParche) values (1, 1)
go
INSERT INTO MundoParche(idMundo, idParche) values (2, 2)
go
INSERT INTO MundoParche(idMundo, idParche) values (3, 3)
go
INSERT INTO MundoParche(idMundo, idParche) values (4, 4)
go
INSERT INTO MundoParche(idMundo, idParche) values (5, 5)
go
INSERT INTO MundoParche(idMundo, idParche) values (6, 6)
go
INSERT INTO MundoParche(idMundo, idParche) values (7, 7)
go
INSERT INTO MundoParche(idMundo, idParche) values (8, 8)
go
INSERT INTO MundoParche(idMundo, idParche) values (9, 9)
go
INSERT INTO MundoParche(idMundo, idParche) values (10, 10)
go

--EncantamientoEfecto
INSERT INTO EncantamientoEfecto(idEncantamiento, idEfecto) values (1, 1)
go
INSERT INTO EncantamientoEfecto(idEncantamiento, idEfecto) values (2, 2)
go
INSERT INTO EncantamientoEfecto(idEncantamiento, idEfecto) values (3, 3)
go
INSERT INTO EncantamientoEfecto(idEncantamiento, idEfecto) values (4, 4)
go
INSERT INTO EncantamientoEfecto(idEncantamiento, idEfecto) values (5, 5)
go
INSERT INTO EncantamientoEfecto(idEncantamiento, idEfecto) values (6, 6)
go
INSERT INTO EncantamientoEfecto(idEncantamiento, idEfecto) values (7, 7)
go
INSERT INTO EncantamientoEfecto(idEncantamiento, idEfecto) values (8, 8)
go
INSERT INTO EncantamientoEfecto(idEncantamiento, idEfecto) values (9, 9)
go
INSERT INTO EncantamientoEfecto(idEncantamiento, idEfecto) values (10, 10)
go

--JugadorAmigo
INSERT INTO JugadorAmigo(idJugador, idAmigo) values (1, 1)
go
INSERT INTO JugadorAmigo(idJugador, idAmigo) values (2, 2)
go
INSERT INTO JugadorAmigo(idJugador, idAmigo) values (3, 3)
go
INSERT INTO JugadorAmigo(idJugador, idAmigo) values (4, 4)
go
INSERT INTO JugadorAmigo(idJugador, idAmigo) values (5, 5)
go
INSERT INTO JugadorAmigo(idJugador, idAmigo) values (6, 6)
go
INSERT INTO JugadorAmigo(idJugador, idAmigo) values (7, 7)
go
INSERT INTO JugadorAmigo(idJugador, idAmigo) values (8, 8)
go
INSERT INTO JugadorAmigo(idJugador, idAmigo) values (9, 9)
go
INSERT INTO JugadorAmigo(idJugador, idAmigo) values (10, 10)
go

--JugadorComercio
INSERT INTO JugadorComercio(idJugador, idComercio) values (1, 1)
go
INSERT INTO JugadorComercio(idJugador, idComercio) values (2, 2)
go
INSERT INTO JugadorComercio(idJugador, idComercio) values (3, 3)
go
INSERT INTO JugadorComercio(idJugador, idComercio) values (4, 4)
go
INSERT INTO JugadorComercio(idJugador, idComercio) values (5, 5)
go
INSERT INTO JugadorComercio(idJugador, idComercio) values (6, 6)
go
INSERT INTO JugadorComercio(idJugador, idComercio) values (7, 7)
go
INSERT INTO JugadorComercio(idJugador, idComercio) values (8, 8)
go
INSERT INTO JugadorComercio(idJugador, idComercio) values (9, 9)
go
INSERT INTO JugadorComercio(idJugador, idComercio) values (10, 10)
go

--JugadorItem
INSERT INTO JugadorComercio(idJugador, idComercio) values (1, 1)
go
INSERT INTO JugadorComercio(idJugador, idComercio) values (2, 2)
go
INSERT INTO JugadorComercio(idJugador, idComercio) values (3, 3)
go
INSERT INTO JugadorComercio(idJugador, idComercio) values (4, 4)
go 
INSERT INTO JugadorComercio(idJugador, idComercio) values (5, 5)
go
INSERT INTO JugadorComercio(idJugador, idComercio) values (6, 6)
go
INSERT INTO JugadorComercio(idJugador, idComercio) values (7, 7)
go
INSERT INTO JugadorComercio(idJugador, idComercio) values (8, 8)
go
INSERT INTO JugadorComercio(idJugador, idComercio) values (9, 9)
go
INSERT INTO JugadorComercio(idJugador, idComercio) values (10, 10)
go

--JugadorServidor
INSERT INTO JugadorServidor(idJugador, idServidor) values (1, 1)
go
INSERT INTO JugadorServidor(idJugador, idServidor) values (2, 2)
go
INSERT INTO JugadorServidor(idJugador, idServidor) values (3, 3)
go
INSERT INTO JugadorServidor(idJugador, idServidor) values (4, 4)
go
INSERT INTO JugadorServidor(idJugador, idServidor) values (5, 5)
go
INSERT INTO JugadorServidor(idJugador, idServidor) values (6, 6)
go
INSERT INTO JugadorServidor(idJugador, idServidor) values (7, 7)
go
INSERT INTO JugadorServidor(idJugador, idServidor) values (8, 8)
go
INSERT INTO JugadorServidor(idJugador, idServidor) values (9, 9)
go
INSERT INTO JugadorServidor(idJugador, idServidor) values (10, 10)
go

--MesaTrabajoEncantamiento
INSERT INTO MesaTrabajoEncantamiento(idMesaTrabajo, idEncantamiento) values (1, 1)
go
INSERT INTO MesaTrabajoEncantamiento(idMesaTrabajo, idEncantamiento) values(2, 2)
go
INSERT INTO MesaTrabajoEncantamiento(idMesaTrabajo, idEncantamiento) values (3, 3)
go
INSERT INTO MesaTrabajoEncantamiento(idMesaTrabajo, idEncantamiento) values (4, 4)
go
INSERT INTO MesaTrabajoEncantamiento(idMesaTrabajo, idEncantamiento) values (5, 5)
go
INSERT INTO MesaTrabajoEncantamiento(idMesaTrabajo, idEncantamiento) values (6, 6)
go
INSERT INTO MesaTrabajoEncantamiento(idMesaTrabajo, idEncantamiento) values (7, 7)
go
INSERT INTO MesaTrabajoEncantamiento(idMesaTrabajo, idEncantamiento) values (8, 8)
go
INSERT INTO MesaTrabajoEncantamiento(idMesaTrabajo, idEncantamiento) values (9, 9)
go
INSERT INTO MesaTrabajoEncantamiento(idMesaTrabajo, idEncantamiento) values (10, 10)
go

--MundoAldea
INSERT INTO MundoAldea(idMundo, idAldea) values (1, 1)
go
INSERT INTO MundoAldea(idMundo, idAldea) values (2, 2)
go
INSERT INTO MundoAldea(idMundo, idAldea) values (3, 3)
go
INSERT INTO MundoAldea(idMundo, idAldea) values (4, 4)
go
INSERT INTO MundoAldea(idMundo, idAldea) values (5, 5)
go
INSERT INTO MundoAldea(idMundo, idAldea) values (6, 6)
go
INSERT INTO MundoAldea(idMundo, idAldea) values (7, 7)
go
INSERT INTO MundoAldea(idMundo, idAldea) values (8, 8)
go
INSERT INTO MundoAldea(idMundo, idAldea) values (9, 9)
go
INSERT INTO MundoAldea(idMundo, idAldea) values (10, 10)
go

--MundoBloque
INSERT INTO MundoBloque(idMundo, idBloque) values(1, 1)
go
INSERT INTO MundoBloque(idMundo, idBloque) values (2, 2)
go
INSERT INTO MundoBloque(idMundo, idBloque) values (3, 3)
go
INSERT INTO MundoBloque(idMundo, idBloque) values (4, 4)
go
INSERT INTO MundoBloque(idMundo, idBloque) values (5, 5)
go
INSERT INTO MundoBloque(idMundo, idBloque) values (6, 6)
go
INSERT INTO MundoBloque(idMundo, idBloque) values(7, 7)
go
INSERT INTO MundoBloque(idMundo, idBloque) values (8, 8)
go
INSERT INTO MundoBloque(idMundo, idBloque) values (9, 9)
go
INSERT INTO MundoBloque(idMundo, idBloque) values (10, 10)
go

--MundoDimension
INSERT INTO MundoDimension(idMundo, idDimension) values (1, 1)
go
INSERT INTO MundoDimension(idMundo, idDimension) values (2, 2)
go
INSERT INTO MundoDimension(idMundo, idDimension) values (3, 3)
go
INSERT INTO MundoDimension(idMundo, idDimension) values (4, 4)
go
INSERT INTO MundoDimension(idMundo, idDimension) values (5, 5)
go
INSERT INTO MundoDimension(idMundo, idDimension) values (6, 6)
go
INSERT INTO MundoDimension(idMundo, idDimension) values (7, 7)
go
INSERT INTO MundoDimension(idMundo, idDimension) values (8, 8)
go
INSERT INTO MundoDimension(idMundo, idDimension) values (9, 9)
go
INSERT INTO MundoDimension(idMundo, idDimension) values (10, 10)
go

--MundoEcosistema
INSERT INTO MundoEcosistema(idMundo, idEcosistema) values (1, 1)
go
INSERT INTO MundoEcosistema(idMundo, idEcosistema) values (2, 2)
go
INSERT INTO MundoEcosistema(idMundo, idEcosistema) values (3, 3)
go
INSERT INTO MundoEcosistema(idMundo, idEcosistema) values (4, 4)
go
INSERT INTO MundoEcosistema(idMundo, idEcosistema) values (5, 5)
go
INSERT INTO MundoEcosistema(idMundo, idEcosistema) values (6, 6)
go
INSERT INTO MundoEcosistema(idMundo, idEcosistema) values (7, 7)
go
INSERT INTO MundoEcosistema(idMundo, idEcosistema) values (8, 8)
go
INSERT INTO MundoEcosistema(idMundo, idEcosistema) values (9, 9)
go
INSERT INTO MundoEcosistema(idMundo, idEcosistema) values (10, 10)
go

--MundoEstructura
INSERT INTO MundoEstructura(idMundo, idEstructura) values (1, 1)
go
INSERT INTO MundoEstructura(idMundo, idEstructura) values (2, 2)
go
INSERT INTO MundoEstructura(idMundo, idEstructura) values (3, 3)
go
INSERT INTO MundoEstructura(idMundo, idEstructura) values (4, 4)
go
INSERT INTO MundoEstructura(idMundo, idEstructura) values (5, 5)
go
INSERT INTO MundoEstructura(idMundo, idEstructura) values (6, 6)
go
INSERT INTO MundoEstructura(idMundo, idEstructura) values (7, 7)
go
INSERT INTO MundoEstructura(idMundo, idEstructura) values (8, 8)
go
INSERT INTO MundoEstructura(idMundo, idEstructura) values (9, 9)
go
INSERT INTO MundoEstructura(idMundo, idEstructura) values (10, 10)
go

--MundoFluido
INSERT INTO MundoFluido(idMundo, idFluido) values (1, 1)
go
INSERT INTO MundoFluido(idMundo, idFluido) values (2, 2)
go
INSERT INTO MundoFluido(idMundo, idFluido) values (3, 3)
go
INSERT INTO MundoFluido(idMundo, idFluido) values (4, 4)
go
INSERT INTO MundoFluido(idMundo, idFluido) values (5, 5)
go
INSERT INTO MundoFluido(idMundo, idFluido) values (6, 6)
go
INSERT INTO MundoFluido(idMundo, idFluido) values (7, 7)
go
INSERT INTO MundoFluido(idMundo, idFluido) values (8, 8)
go
INSERT INTO MundoFluido(idMundo, idFluido) values (9, 9)
go
INSERT INTO MundoFluido(idMundo, idFluido) values (10, 10)
go

--MundoFortaleza 
INSERT INTO MundoFortaleza(idMundo, idFortaleza) values (1, 1)
go
INSERT INTO MundoFortaleza(idMundo, idFortaleza) values (2, 2)
go
INSERT INTO MundoFortaleza(idMundo, idFortaleza) values (3, 3)
go
INSERT INTO MundoFortaleza(idMundo, idFortaleza) values (4, 4)
go
INSERT INTO MundoFortaleza(idMundo, idFortaleza) values (5, 5)
go
INSERT INTO MundoFortaleza(idMundo, idFortaleza) values (6, 6)
go
INSERT INTO MundoFortaleza(idMundo, idFortaleza) values (7, 7)
go
INSERT INTO MundoFortaleza(idMundo, idFortaleza) values (8, 8)
go
INSERT INTO MundoFortaleza(idMundo, idFortaleza) values (9, 9)
go
INSERT INTO MundoFortaleza(idMundo, idFortaleza) values (10, 10)
go

--MundoGeneracion
INSERT INTO MundoGeneracion(idMundo, idGeneracion) values (1, 1)
go
INSERT INTO MundoGeneracion(idMundo, idGeneracion) values (2, 2)
go
INSERT INTO MundoGeneracion(idMundo, idGeneracion) values (3, 3)
go
INSERT INTO MundoGeneracion(idMundo, idGeneracion) values (4, 4)
go
INSERT INTO MundoGeneracion(idMundo, idGeneracion) values (5, 5)
go
INSERT INTO MundoGeneracion(idMundo, idGeneracion) values (6, 6)
go
INSERT INTO MundoGeneracion(idMundo, idGeneracion) values (7, 7)
go
INSERT INTO MundoGeneracion(idMundo, idGeneracion) values (8, 8)
go
INSERT INTO MundoGeneracion(idMundo, idGeneracion) values (9, 9)
go
INSERT INTO MundoGeneracion(idMundo, idGeneracion) values (10, 10)
go

--MundoJefe
INSERT INTO MundoJefe(idMundo, idJefe) values(1, 1)
go
INSERT INTO MundoJefe(idMundo, idJefe) values (2, 2)
go
INSERT INTO MundoJefe(idMundo, idJefe) values (3, 3)
go
INSERT INTO MundoJefe(idMundo, idJefe) values (4, 4)
go
INSERT INTO MundoJefe(idMundo, idJefe) values (5, 5)
go
INSERT INTO MundoJefe(idMundo, idJefe) values (6, 6)
go
INSERT INTO MundoJefe(idMundo, idJefe) values (7, 7)
go
INSERT INTO MundoJefe(idMundo, idJefe) values (8, 8)
go
INSERT INTO MundoJefe(idMundo, idJefe) values (9, 9)
go
INSERT INTO MundoJefe(idMundo, idJefe) values (10, 10)
go

--MundoJugador
INSERT INTO MundoJugador(idMundo, idJugador) values (1, 1)
go
INSERT INTO MundoJugador(idMundo, idJugador) values (2, 2)
go
INSERT INTO MundoJugador(idMundo, idJugador) values (3, 3)
go
INSERT INTO MundoJugador(idMundo, idJugador) values (4, 4)
go
INSERT INTO MundoJugador(idMundo, idJugador) values (5, 5)
go
INSERT INTO MundoJugador(idMundo, idJugador) values (6, 6)
go
INSERT INTO MundoJugador(idMundo, idJugador) values (7, 7)
go
INSERT INTO MundoJugador(idMundo, idJugador) values (8, 8)
go
INSERT INTO MundoJugador(idMundo, idJugador) values (9, 9)
go
INSERT INTO MundoJugador(idMundo, idJugador) values (10, 10)
go
--MundoMob
INSERT INTO MundoMob(idMundo, idMob) values (1, 1)
go
INSERT INTO MundoMob(idMundo, idMob) values (2, 2)
go
INSERT INTO MundoMob(idMundo, idMob) values (3, 3)
go
INSERT INTO MundoMob(idMundo, idMob) values (4, 4)
go
INSERT INTO MundoMob(idMundo, idMob) values (5, 5)
go
INSERT INTO MundoMob(idMundo, idMob) values (6, 6)
go
INSERT INTO MundoMob(idMundo, idMob) values (7, 7)
go
INSERT INTO MundoMob(idMundo, idMob) values (8, 8)
go
INSERT INTO MundoMob(idMundo, idMob) values (9, 9)
go
INSERT INTO MundoMob(idMundo, idMob) values (10, 10)
go

--MundoModd
INSERT INTO MundoModd(idMundo, idModd) values (1, 1)
go
INSERT INTO MundoModd(idMundo, idModd) values (2, 2)
go
INSERT INTO MundoModd(idMundo, idModd) values (3, 3)
go
INSERT INTO MundoModd(idMundo, idModd) values (4, 4)
go
INSERT INTO MundoModd(idMundo, idModd) values (5, 5)
go
INSERT INTO MundoModd(idMundo, idModd) values (6, 6)
go
INSERT INTO MundoModd(idMundo, idModd) values (7, 7)
go
INSERT INTO MundoModd(idMundo, idModd) values (8, 8)
go
INSERT INTO MundoModd(idMundo, idModd) values (9, 9)
go
INSERT INTO MundoModd(idMundo, idModd) values (10, 10)
go

--MundoPackRecurso
INSERT INTO MundoPackRecurso(idMundo, idPackRecurso) values (1, 1)
go
INSERT INTO MundoPackRecurso(idMundo, idPackRecurso) values (2, 2)
go
INSERT INTO MundoPackRecurso(idMundo, idPackRecurso) values (3, 3)
go
INSERT INTO MundoPackRecurso(idMundo, idPackRecurso) values (4, 4)
go
INSERT INTO MundoPackRecurso(idMundo, idPackRecurso) values (5, 5)
go
INSERT INTO MundoPackRecurso(idMundo, idPackRecurso) values (6, 6)
go
INSERT INTO MundoPackRecurso(idMundo, idPackRecurso) values (7, 7)
go
INSERT INTO MundoPackRecurso(idMundo, idPackRecurso) values (8, 8)
go
INSERT INTO MundoPackRecurso(idMundo, idPackRecurso) values (9, 9)
go
INSERT INTO MundoPackRecurso(idMundo, idPackRecurso) values (10, 10)
go

--MundoPackTextura
INSERT INTO MundoPackTextura(idMundo, idPackTextura) values (1, 1)
go
INSERT INTO MundoPackTextura(idMundo, idPackTextura) values (2, 2)
go
INSERT INTO MundoPackTextura(idMundo, idPackTextura) values (3, 3)
go
INSERT INTO MundoPackTextura(idMundo, idPackTextura) values (4, 4)
go
INSERT INTO MundoPackTextura(idMundo, idPackTextura) values (5, 5)
go
INSERT INTO MundoPackTextura(idMundo, idPackTextura) values (6, 6)
go
INSERT INTO MundoPackTextura(idMundo, idPackTextura) values (7, 7)
go
INSERT INTO MundoPackTextura(idMundo, idPackTextura) values (8, 8)
go
INSERT INTO MundoPackTextura(idMundo, idPackTextura) values (9, 9)
go
INSERT INTO MundoPackTextura(idMundo, idPackTextura) values (10, 10)
go

--MundoTemplo
INSERT INTO MundoTemplo(idMundo, idTemplo) values (1, 1)
go
INSERT INTO MundoTemplo(idMundo, idTemplo) values (2, 2)
go
INSERT INTO MundoTemplo(idMundo, idTemplo) values (3, 3)
go
INSERT INTO MundoTemplo(idMundo, idTemplo) values (4, 4)
go
INSERT INTO MundoTemplo(idMundo, idTemplo) values (5, 5)
go
INSERT INTO MundoTemplo(idMundo, idTemplo) values (6, 6)
go
INSERT INTO MundoTemplo(idMundo, idTemplo) values (7, 7)
go
INSERT INTO MundoTemplo(idMundo, idTemplo) values (8, 8)
go
INSERT INTO MundoTemplo(idMundo, idTemplo) values (9, 9)
go
INSERT INTO MundoTemplo(idMundo, idTemplo) values (10, 10)
go

--ServidorModoServidor

INSERT INTO ServidorModoServidor(idServidor, idModoServidor) values (1, 1)
go
INSERT INTO ServidorModoServidor(idServidor, idModoServidor) values (2, 2)
go
INSERT INTO ServidorModoServidor(idServidor, idModoServidor) values (3, 3)
go
INSERT INTO ServidorModoServidor(idServidor, idModoServidor) values (4, 4)
go
INSERT INTO ServidorModoServidor(idServidor, idModoServidor) values (5, 5)
go
INSERT INTO ServidorModoServidor(idServidor, idModoServidor) values (6, 6)
go
INSERT INTO ServidorModoServidor(idServidor, idModoServidor) values (7, 7)
go
INSERT INTO ServidorModoServidor(idServidor, idModoServidor) values (8, 8)
go
INSERT INTO ServidorModoServidor(idServidor, idModoServidor) values (9, 9)
go
INSERT INTO ServidorModoServidor(idServidor, idModoServidor) values (10, 10)
go

--SELECT *FROM MundoAldea
--UPDATE MundoAldea SET idAldea = '1' WHERE idMundoAldea = 1
--GO
--SELECT *FROM MundoAldea
--DELETE FROM MundoAldea WHERE idMundoAldea = 1
--GO
--SELECT *FROM MundoAldea

--SELECT *FROM Aldea
--UPDATE Aldea SET estilo = 'Desierto' WHERE idAldea = 1
--GO
--SELECT *FROM Aldea
--DELETE FROM Aldea WHERE idAldea = 1
--GO
--SELECT *FROM Aldea
