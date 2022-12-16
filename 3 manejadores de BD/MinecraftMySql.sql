CREATE DATABASE Minecraft;
USE Minecraft;

CREATE TABLE Aldea
(
	idAldea int not null,
	estilo varchar(50) not null,
	evento varchar(50) not null,
	botin varchar(50) not null,
	estatus bit default 1,
    primary key (idAldea)
);


CREATE TABLE Amigo
(
	idAmigo int not null,
	gamertag varchar(50) not null,
	aspecto Varchar(50)not null,
	estatus bit default 1,
    primary key (idAmigo)
);


CREATE TABLE Animal
(
	idAnimal int not null,
	puntosVida varchar(50) not null,
	botin varchar(50) not null,
	tipoAnimal varchar(50),
	estatus bit default 1,
    primary key(idAnimal)
);


CREATE TABLE Arma
(
	idArma int not null,
	tipoArma varchar(50) not null,
	nombre varchar(50) not null,
	material varchar(50) not null,
	daño int not null,
	resistencia int not null,
	estatus bit default 1,
    primary key (idArma)
);


CREATE TABLE Armadura
(
	idArmadura int not null,
	material varchar(50) not null,
	nombre varchar(50)not null,
	resistencia int not null,
	idInventario int not null,
	estatus bit default 1,
    primary key(idArmadura)
);


CREATE TABLE Bloque
(
	idBloque int not null,
	material varchar(50) not null,
	nombre varchar(50) not null,
	estatus bit default 1,
    primary key (idBloque)
);


CREATE TABLE Chat
(
	idChat int not null,
	fuente varchar(50) not null,
	color varchar(50) not null,
	espaciadoLinea int not null,
	estatus bit default 1,
    primary key (idChat)
);


CREATE TABLE Chunk
(
	idChunk int not null,
	limite int not null,
	formato varchar(50) not null,
	estatus bit default 1,
    primary key (idChunk)
);


CREATE TABLE Comercio
(
	idComercio int not null,
	tipoComercio varchar(50) not null,
	tipoIntercambio varchar(50) not null,
	estatus bit default 1,
    primary key (idComercio)
);


CREATE TABLE Comida
(
	idComida int not null,
	tipo varchar(50) not null,
	valorNutrimental int not null,
	nombre varchar(50) not null,
	ingredientes varchar(50) not null,
	estatus bit default 1,
    primary key (idComida)
);


CREATE TABLE ConfigMundo
(
	idConfigMundo int not null,
	modoJuego varchar(50) not null,
	dificultad varchar(50) not null,
	preferencia varchar(50) not null,
	semilla int not null,
	tipo varchar(50) not null,
	estatus bit default 1,
    primary key (idConfigMundo)
);


CREATE TABLE ConfigUsuario
(
	idConfigUsuario int not null,
	gamertag varchar(50) not null,
	idioma varchar(50) not null,
	estatus bit default 1,
    primary key (idConfigUsuario)
);


CREATE TABLE Coordenada
(
	idCoordenada int not null,
	ejeX int not null,
	ejeY int not null,
	ejeZ int not null,
	estatus bit default 1,
    primary key(idCoordenada)
);


CREATE TABLE Crafteo
(
	idCrafteo int not null,
	tipo varchar(50)not null,
	detalle varchar(50) not null,
	idMesaTrabajo int not null,
	idInventario int not null,
	estatus bit default 1,
    primary key (idCrafteo)
);


CREATE TABLE Cultivo
(
	idCultivo int not null,
	tiempoCultivo varchar(50) not null,
	tipo varchar(50) not null,
	estatus bit default 1,
    primary key (idCultivo)
);


CREATE TABLE Dimension
(
	idDimension int not null,
	nombre varchar(50) not null,
	estilo varchar(50) not null,
	cicloDelDia varchar(50) not null,
	estatus bit default 1,
    primary key(idDimension)
);


CREATE TABLE Ecosistema
(
	idEcosistema int not null,
	tipo varchar(50) not null,
	tamaño int not null,
	bioma varchar(50) not null,
	clima varchar(50) not null,
	estatus bit default 1,
    primary key(idEcosistema)
);


CREATE TABLE Efecto
(
	idEfecto int not null,
	tipo varchar(50) not null,
	durabilidad int not null,
	nombre varchar(50) not null,
	estatus bit default 1,
    primary key (idEfecto)
);


CREATE TABLE Encantamiento
(
	idEncantamiento int not null,
	tipo varchar(50) not null,
	durabilidad int not null,
	nombre varchar(50) not null,
	estatus bit default 1,
    primary key (idEncantamiento)
);


CREATE TABLE Estadistica
(
	idEstadistica int not null,
	dsitanciaRecorrida int not null,
	distanciaVolada int not null,
	distanciaCaida int not null,
	saltos int not null,
	numeroMuertes int not null,
	estatus bit default 1 ,
    primary key (idEstadistica)
);
use Minecraft;
CREATE TABLE Estructura
(
	idEstructura int not null,
	tipo varchar(50) not null,
	estilo varchar (50)not null,
	estatus bit default 1,
    primary key (idEstructura)
);

CREATE TABLE Evento
(
	idEvento int not null,
	tipo varchar(50) not null,
	fechainicio datetime not null,
	fechaCierre datetime not null,
	duarbilidad int not null,
	estatus bit default 1,
    primary key (idEvento)
);


CREATE TABLE Fluido
(
	idFluido int not null,
	tipo varchar(50) not null,
	nombre varchar(50)not null,
	nivelFluido int not null,
	estatus bit default 1,
    primary key (idFluido)
);

CREATE TABLE Fortaleza
(
	idFortaleza int not null,
	botin varchar(50) not null,
	nombre varchar(50) not null,
	estilo varchar(50) not null,
	estatus bit default 1,
    primary key (idFortaleza)
);

CREATE TABLE Generacion
(
	idGeneracion int not null,
	tipo varchar(50)not null,
	lugarGeneracion varchar(50) not null,
	estatus bit default 1,
    primary key (idGeneracion)
);

CREATE TABLE Herramienta
(
	idHerramienta int not null,
	material varchar(50) not null,
	nombre varchar(50) not null,
	resistencia int not null,
	tipo varchar(50) not null,
	estatus bit default 1,
    primary key (idHerramienta)
);


CREATE TABLE Inventario
(
	idInventario int not null,
	espacio int not null,
	estatus bit default 1,
    primary key(idInventario)
);

CREATE TABLE Item
(
	idItem int not null,
	tipo varchar(50) not null,
	nombre varchar(50) not null,
	estatus bit default 1,
    primary key (idItem)
);

CREATE TABLE Jefe
(
	idJefe int not null,
	dimension varchar(50) not null,
	habilidad varchar(50) not null,
	puntosVida int not null,
	nombre varchar(50) not null,
	estatus bit default 1,
    primary key (idJefe)
);


CREATE TABLE Jugador
(
	idJugador int not null,
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
	estatus bit default 1,
    primary key (idJugador)
);

CREATE TABLE Logro
(
	idLogro int not null,
	nombre varchar(50) not null,
	recompensa varchar(50) not null,
	puntosJugador int not null,
	tiempoJuego int not null,
	tipo varchar(50) not null,
	idJugador int not null,
	estatus bit default 1,
    primary key (idLogro)
);


CREATE TABLE Mascota
(
	idMascota int not null,
	nombre varchar(50) not null,
	tipo int not null,
	puntosVida int not null,
	comida int not null,
	idJugador int not null,
	estatus bit default 1,
    primary key (idMascota)
);

CREATE TABLE Menu
(
	idMenu int not null,
	accion varchar(50) not null,
	estatus bit default 1,
    primary key (idMenu)
);


CREATE TABLE MesaTrabajo
(
	idMesaTrabajo int not null,
	tipo varchar(50) not null,
	idInventario int not null,
	estatus bit default 1,
    primary key (idMesaTrabajo)
);


CREATE TABLE Mob
(
	idMob int not null,
	puntosVida int not null,
	botin varchar(50) not null,
	habilidad varchar(50) not null,
	tipo varchar(50) not null,
	nombre varchar(50) not null,
	puntosDaño int not null,
	estatus bit default 1,
    primary key (idMob)
);

CREATE TABLE Modd
(
	idModd int not null,
	nombre varchar(50) not null,
	versionMod int not null,
	formato varchar(50) not null,
	estatus bit default 1,
    primary key (idModd)
);

CREATE TABLE ModoJuego
(
	idModoJuego int not null,
	tipo varchar(50) not null,
	dificultad varchar(50) not null,
	preferencia varchar(50) not null,
	estatus bit default 1,
    primary key (idModoJuego)
);


CREATE TABLE ModoServidor
(
	idModoServidor int not null,
	tipo int not null,
	estatus bit default 1,
    primary key (idModoServidor)
);


CREATE TABLE Mundo
(
	idMundo int not null,
	nombre varchar(50) not null,
	tipo varchar(50) not null,
	idParche int not null,
	estatus bit default 1,
    primary key (idMundo)
);

CREATE TABLE Sonido
(
	idSonido int not null,
	principal varchar(50) not null,
	musica int not null,
	ambiente varchar(50) not null,
	bloque int not null,
	criatura int not null,
	estatus bit default 1,
    primary key (idSonido)
);


CREATE TABLE PackRecurso
(
	idPackRecurso int not null,
	nombre varchar(50) not null,
	formato varchar(50) not null,
	estatus bit default 1,
    primary key (idPackRecurso)
);

CREATE TABLE PackTextura
(
	idPackTextura int not null,
	nombre varchar(50) not null,
	formato varchar(50) not null,
	estatus bit default 1,
    primary key (idPackTextura)
);


CREATE TABLE Parche
(
	idParche int not null,
	versioParche int not null,
	formato varchar(50) not null,
	fechaActualizacion datetime not null,
	estatus bit default 1,
    primary key (idParche)
);

CREATE TABLE Pesca
(
	idPesca int not null,
	tipo varchar(50) not null,
	botin varchar(50) not null,
	estatus bit default 1,
    primary key (idPesca)
);

CREATE TABLE Plugin
(
	idPlugin int not null,
	nombre varchar(50) not null,
	main varchar(50) not null,
	versionPlugin int not null,
	estatus bit default 1,
    primary key (idPlugin)
);


CREATE TABLE Pocion
(
	idPocion int not null,
	nombre varchar(50) not null,
	tipo varchar(50) not null,
	puntosDaño int not null,
	puntosVida int not null,
	estatus bit default 1,
    primary key(idPocion)
);


CREATE TABLE Servidor
(
	idServidor int not null,
	nombre varchar(50) not null,
	dificultad varchar(50) not null,
	idModoServidor int not null,
	estatus bit default 1, 
    primary key (idServidor)
);


CREATE TABLE Stack
(
	idStack int not null,
	nombre varchar(50) not null,
	limiteItem int not null,
	idInventario int not null,
	estatus bit default 1,
    primary key (idStack)
);


CREATE TABLE Templo
(
	idTemplo int not null,
	estilo varchar(50) not null,
	tipo varchar(50) not null,
	nombre varchar(50) not null,
	botin varchar(50) not null,
	estatus bit default 1,
    primary key (idTemplo)
);


CREATE TABLE Tesoro
(
	idTesoro int not null,
	tipo datetime not null,
	botin varchar(30) not null,
	estatus bit default 1,
    primary key (idTesoro)
);

CREATE TABLE MundoParche
(
	idMundoParche int not null,
	idMundo int not null,
	idParche int not null,
	estatus bit default 1,
    primary key (idMundoParche)
);

CREATE TABLE EncantamientoEfecto
(
	idEncantamientoEfecto int not null,
	idEncantamiento int not null,
	idEfecto int not null,
	estatus bit default 1,
    primary key(idEncantamientoEfecto)
);

CREATE TABLE JugadorAmigo
(
	idJugadorAmigo int not null,
	idJugador int not null,
	idAmigo int not null,
	estatus bit default 1,
    primary key (idJugadorAmigo)
);


CREATE TABLE JugadorComercio
(
	idJugadorComercio int not null,
	idJugador int not null,
	idComercio int not null,
	estatus bit default 1,
    primary key(idJugadorComercio)
);

CREATE TABLE JugadorItem
(
	idJugadorItem int not null,
	idJugador int not null,
	idItem int not null,
	estatus bit default 1,
    primary key (idJugadorItem)
);

CREATE TABLE JugadorServidor
(
	idJugadorServidor int not null,
	idJugador int not null,
	idServidor int not null,
	estatus bit default 1,
    primary key(idJugadorServidor)
);

CREATE TABLE MesaTrabajoEncantamiento
(
	idMesaTrabajoEncantamiento int not null,
	idMesaTrabajo int not null,
	idEncantamiento int not null,
	estatus bit default 1,
    primary key(idMesaTrabajoEncantamiento)
);

CREATE TABLE MesaTrabajoJugador
(
	idMesaTrabajoJugador int not null,
	idMesaTrabajo int not null,
	idJugador int not null,
	estatus bit default 1 not null,
	primary key(idMesaTrabajoJugador)

);
CREATE TABLE MundoAldea
(
	idMundoAldea int not null,
	idMundo int not null,
	idAldea int not null,
	estatus bit default 1 not null,
	primary key(idMundoAldea)

);
CREATE TABLE MundoBloque
(
	idMundoBloque int not null,
	idMundo int not null,
	idBloque int not null,
	estatus bit default 1 not null,
	primary key(idMundoBloque)

);
CREATE TABLE MundoDimension
(
	idMundoDimension int not null,
	idMundo int not null,
	idDimension int not null,
	estatus bit default 1 not null,
	primary key(idMundoDimension)

);

CREATE TABLE MundoEcosistema
(
	idMundoEcosistema int not null,
	idMundo int not null,
	idEcosistema int not null,
	estatus bit default 1 not null,
	primary key(idMundoEcosistema)

);

CREATE TABLE MundoEstructura
(
	idMundoEstructura int not null,
	idMundo int not null,
	idEstructura int not null,
	estatus bit default 1 not null,
	primary key(idMundoEstructura)

);


CREATE TABLE MundoFluido
(
	idMundoFluido int not null,
	idMundo int not null,
	idFluido int not null,
	estatus bit default 1 not null,
	primary key(idMundoFluido)

);

CREATE TABLE MundoFortaleza
(
	idMundoFortaleza int not null,
	idMundo int not null,
	idFortaleza int not null,
	estatus bit default 1 not null,
	primary key(idMundoFortaleza)

);

CREATE TABLE MundoGeneracion
(
	idMundoGeneracion int not null,
	idMundo int not null,
	idGeneracion int not null,
	estatus bit default 1 not null,
	primary key(idMundoGeneracion)

);

CREATE TABLE MundoJefe
(
	idMundoJefe int not null,
	idMundo int not null,
	idJefe int not null,
	estatus bit default 1 not null,
	primary key(idMundoJefe)
);

CREATE TABLE MundoJugador
(
	idMundoJugador int not null,
	idMundo int not null,
	idJugador int not null,
	estatus bit default 1 not null,
	primary key(idMundoJugador)

);


CREATE TABLE MundoMob
(
	idMundoMob int not null,
	idMundo int not null,
	idMob int not null,
	estatus bit default 1 not null,
	primary key(idMundoMob)

);

CREATE TABLE MundoModd
(
	idMundoModd int not null,
	idMundo int not null,
	idModd int not null,
	estatus bit default 1 not null,
	primary key(idMundoModd)

);

CREATE TABLE MundoPackRecurso
(
	idMundoPackrecurso int not null,
	idMundo int not null,
	idPackRecurso int not null,
	estatus bit default 1 not null,
	primary key(idMundoPackrecurso)

);

CREATE TABLE MundoPackTextura
(
	idMundoPackTextura int not null,
	idMundo int not null,
	idPackTextura int not null,
	estatus bit default 1 not null,
	primary key(idMundoPackTextura)

);

CREATE TABLE MundoTemplo
(
	idMundoTemplo int not null,
	idMundo int not null,
	idTemplo int not null,
	estatus bit default 1 not null,
	primary key(idMundoTemplo)
);
CREATE TABLE ServidorModoServidor
(
idServidorModoServidor INT NOT NULL AUTO_INCREMENT,
idServidor INT NOT NULL,
idModoServidor INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
PRIMARY KEY (idServidorModoServidor)
);

#Foraneas Pendientes
#Crafteo
ALTER TABLE Crafteo ADD CONSTRAINT FK_CrafteoMesaTrabajo FOREIGN KEY (idMesaTrabajo) REFERENCES MesaTrabajo(idMesaTrabajo);
ALTER TABLE Crafteo ADD CONSTRAINT FK_CrafteoInventario FOREIGN KEY (idInventario) REFERENCES Inventario(idInventario);
#Jugador
ALTER TABLE Jugador ADD CONSTRAINT FK_JugadorInventario FOREIGN KEY (idInventario) REFERENCES Inventario(idInventario);
ALTER TABLE Jugador ADD CONSTRAINT FK_JugadorConfigMundo FOREIGN KEY (idConfigMundo) REFERENCES ConfigMundo(idConfigMundo);
ALTER TABLE Jugador ADD CONSTRAINT FK_JugadorMenu FOREIGN KEY (idMenu) REFERENCES Menu(idMenu);
ALTER TABLE Jugador ADD CONSTRAINT FK_JugadorEstadistica FOREIGN KEY (idEstadistica) REFERENCES Estadistica(idEstadistica);
ALTER TABLE Jugador ADD CONSTRAINT FK_JugadorConfigUsuario FOREIGN KEY (idConfigUsuario) REFERENCES ConfigUsuario(idConfigUsuario);
#Logro
ALTER TABLE Logro ADD CONSTRAINT FK_LogroJugador FOREIGN KEY (idJugador) REFERENCES Jugador(idJugador);
#Mascota
ALTER TABLE Mascota ADD CONSTRAINT FK_MascotaJugador FOREIGN KEY (idJugador) REFERENCES Jugador(idJugador);
#MesaTrabajo
ALTER TABLE MesaTrabajo ADD CONSTRAINT FK_MesaTrabajoInventario FOREIGN KEY (idInventario) REFERENCES Inventario(idInventario);
#Mundo
ALTER TABLE Mundo ADD CONSTRAINT FK_MundoParche FOREIGN KEY (idParche) REFERENCES Parche(idParche);
#Servidor
ALTER TABLE Servidor ADD CONSTRAINT FK_idServidorModoServidor FOREIGN KEY (idModoServidor) REFERENCES ModoServidor(idModoServidor);
#Stack
ALTER TABLE Stack ADD CONSTRAINT FK_StackInventario FOREIGN KEY (idInventario) REFERENCES Inventario(idInventario);
#EncantamientoEfecto
ALTER TABLE EncantamientoEfecto ADD CONSTRAINT FK_EncantamientoEfectoEfecto FOREIGN KEY (idEfecto) REFERENCES Efecto(idEfecto);
ALTER TABLE EncantamientoEfecto ADD CONSTRAINT FK_EncantamientoEfectoEncantamiento FOREIGN KEY (idEncantamiento) REFERENCES Encantamiento(idEncantamiento);
#JugadorAmigo
ALTER TABLE JugadorAmigo ADD CONSTRAINT FK_JugadorAmigoAmigo FOREIGN KEY (idAmigo) REFERENCES Amigo(idAmigo);
ALTER TABLE JugadorAmigo ADD CONSTRAINT FK_JugadorAmigoJugador FOREIGN KEY (idJugador) REFERENCES Jugador(idJugador);
#JugadorComercio
ALTER TABLE JugadorComercio ADD CONSTRAINT FK_JugadorComercioComercio FOREIGN KEY (idComercio) REFERENCES Comercio(idComercio);
ALTER TABLE JugadorComercio ADD CONSTRAINT FK_JugadorComercioJugador FOREIGN KEY (idJugador) REFERENCES Jugador(idJugador);
#JugadorItem
ALTER TABLE JugadorItem ADD CONSTRAINT FK_JugadorItemItem FOREIGN KEY (idItem) REFERENCES Item(idItem);
ALTER TABLE JugadorItem ADD CONSTRAINT FK_JugadorItemJugador FOREIGN KEY (idJugador) REFERENCES Jugador(idJugador);
#JugadorServidor
ALTER TABLE JugadorServidor ADD CONSTRAINT FK_JugadorServidorServidor FOREIGN KEY (idServidor) REFERENCES Servidor(idServidor);
ALTER TABLE JugadorServidor ADD CONSTRAINT FK_JugadorServidorJugador FOREIGN KEY (idJugador) REFERENCES Jugador(idJugador);
#MesaTrabajoEncantamiento
ALTER TABLE MesaTrabajoEncantamiento ADD CONSTRAINT FK_MesaTrabajoEncantamientoEncantamiento FOREIGN KEY (idEncantamiento) REFERENCES Encantamiento(idEncantamiento);
ALTER TABLE MesaTrabajoEncantamiento ADD CONSTRAINT FK_MesaTrabajoEncantamientoMesaTrabajo FOREIGN KEY (idMesatrabajo) REFERENCES MesaTrabajo(idMesaTrabajo);
#MesaTrabajoJugador
ALTER TABLE MesaTrabajoJugador ADD CONSTRAINT FK_MesaTrabajoJugadorJugador FOREIGN KEY (idJugador) REFERENCES Jugador(idJugador);
ALTER TABLE MesaTrabajoJugador ADD CONSTRAINT FK_MesaTrabajoJugadorMesaTrabajo FOREIGN KEY (idMesaTrabajo) REFERENCES MesaTrabajo(idMesaTrabajo);
#MundoAldea
ALTER TABLE MundoAldea ADD CONSTRAINT FK_MundoAldeaAldea FOREIGN KEY (idAldea) REFERENCES Aldea(idAldea);
ALTER TABLE MundoAldea ADD CONSTRAINT FK_MundoAldeaMundo FOREIGN KEY (idMundo) REFERENCES Mundo(idMundo);
#MundoBloque
ALTER TABLE MundoBloque ADD CONSTRAINT FK_MundoBloqueMundo FOREIGN KEY (idMundo) REFERENCES Mundo(idMundo);
ALTER TABLE MundoBloque ADD CONSTRAINT FK_MundoBloqueBloque FOREIGN KEY (idBloque) REFERENCES Bloque(idBloque);
#MundoDimension
ALTER TABLE MundoDimension ADD CONSTRAINT FK_MundoDimension FOREIGN KEY (idDimension) REFERENCES Dimension(idDimension);
#MundoEcosistema
ALTER TABLE MundoEcosistema ADD CONSTRAINT FK_MundoEcosistemaMundo FOREIGN KEY (idMundo) REFERENCES Mundo(idMundo);
ALTER TABLE MundoEcosistema ADD CONSTRAINT FK_MundoEcosistemaEcosistema FOREIGN KEY (idEcosistema) REFERENCES Ecosistema(idEcosistema);
#MundoEstructura
ALTER TABLE MundoEstructura ADD CONSTRAINT FK_MundoEsctructuraMundo FOREIGN KEY (idMundo) REFERENCES Mundo(idMundo);
ALTER TABLE MundoEstructura ADD CONSTRAINT FK_MundoEstructura FOREIGN KEY (idEstructura) REFERENCES Estructura(idEstructura);
#MundoFluido
ALTER TABLE MundoFluido ADD CONSTRAINT FK_MundoFluidoMundo FOREIGN KEY (idMundo) REFERENCES Mundo(idMundo);
ALTER TABLE MundoFluido ADD CONSTRAINT FK_MundoFluidoFluido FOREIGN KEY (idFluido) REFERENCES Fluido(idFluido);
#MundoFortaleza
ALTER TABLE MundoFortaleza ADD CONSTRAINT FK_MundoFortalezaMundo FOREIGN KEY (idMundo) REFERENCES Mundo(idMundo);
ALTER TABLE MundoFortaleza ADD CONSTRAINT FK_MundoFortalezaFortaleza FOREIGN KEY (idFortaleza) REFERENCES Fortaleza(idFortaleza);
#MundoGeneracion
ALTER TABLE MundoGeneracion ADD CONSTRAINT FK_MundoGeneracionGeneracion FOREIGN KEY (idGeneracion) REFERENCES Generacion(idGeneracion);
ALTER TABLE MundoGeneracion ADD CONSTRAINT FK_MundoGeneracionMundo FOREIGN KEY (idMundo) REFERENCES Mundo(idMundo);
#MundoJefe
ALTER TABLE MundoJefe ADD CONSTRAINT FK_MundoJefeMundo FOREIGN KEY (idMundo) REFERENCES Mundo(idMundo);
ALTER TABLE MundoJefe ADD CONSTRAINT FK_MundoJefeJefe FOREIGN KEY (idJefe) REFERENCES Jefe(idJefe);
#MundoJugador
ALTER TABLE MundoJugador ADD CONSTRAINT FK_MundoJugadorMundo FOREIGN KEY (idMundo) REFERENCES Mundo(idMundo);
ALTER TABLE MundoJugador ADD CONSTRAINT FK_MundoJugadorJugador FOREIGN KEY (idJugador) REFERENCES Jugador(idJugador);
#MundoMob
ALTER TABLE MundoMob ADD CONSTRAINT FK_MundoMobMundo FOREIGN KEY (idMundo) REFERENCES Mundo(idMundo);
ALTER TABLE MundoMob ADD CONSTRAINT FK_MundoMobMob FOREIGN KEY (idMob) REFERENCES Mob(idMob);
#MundoMod
ALTER TABLE MundoModd ADD CONSTRAINT FK_MundoModdMundo FOREIGN KEY (idMundo) REFERENCES Mundo(idMundo);
ALTER TABLE MundoModd ADD CONSTRAINT FK_MundoModdModd FOREIGN KEY (idModd) REFERENCES Modd(idModd);
#MundoPackRecurso
ALTER TABLE MundoPackRecurso ADD CONSTRAINT FK_MundoPackRecursoMundo FOREIGN KEY (idMundo) REFERENCES Encantamiento(idEncantamiento);
ALTER TABLE MundoPackRecurso ADD CONSTRAINT FK_MundoPackRecursoPackRecurso FOREIGN KEY (idPackRecurso) REFERENCES PackRecurso(idPackrecurso);
#MundoPackTextura
ALTER TABLE MundoPackTextura ADD CONSTRAINT FK_MundoPackTexturaMundo FOREIGN KEY (idMundo) REFERENCES Mundo(idMundo);
ALTER TABLE MundoPackTextura ADD CONSTRAINT FK_MundoPackTexturaPackTextura FOREIGN KEY (idPackTextura) REFERENCES PackTextura(idPackTextura);
#MundoTemplo
ALTER TABLE MundoTemplo ADD CONSTRAINT FK_MundoTemploMundo FOREIGN KEY (idMundo) REFERENCES Mundo(idMundo);
ALTER TABLE MundoTemplo ADD CONSTRAINT FK_MundoTemploTemplo FOREIGN KEY (idTemplo) REFERENCES Templo(idTemplo);
#ServidorModoServidor
ALTER TABLE ServidorModoServidor ADD CONSTRAINT FK_ServidorModoServidorServidor FOREIGN KEY (idServidor) REFERENCES Servidor(idServidor);
ALTER TABLE ServidorModoServidor ADD CONSTRAINT FK_ServidorModoServidorModoServidor FOREIGN KEY (idModoServidor) REFERENCES ModoServidor(idModoServidor);

#Index
CREATE INDEX IX_Aldea ON Aldea(idAldea);
CREATE INDEX IX_Amigo ON Amigo(idAmigo);
CREATE INDEX IX_Animal ON Animal(idAnimal);
CREATE INDEX IX_Arma ON Arma(idArma);
CREATE INDEX IX_Armadura ON Armadura(idArmadura);
CREATE INDEX IX_Bloque ON Bloque(idBloque);
CREATE INDEX IX_Chat ON Chat (idChat);
CREATE INDEX IX_Chunk ON Chunk(idChunk);
CREATE INDEX IX_Comida ON Comida (idComida);
CREATE INDEX IX_Comercio ON Comercio (idComercio);
CREATE INDEX IX_ConfigMundo ON ConfigMundo(idConfigMundo);
CREATE INDEX IX_ConfigUsuario ON ConfigUsuario(idConfigUsuario);
CREATE INDEX IX_Coordenada ON Coordenada(idCoordenada);
CREATE INDEX IX_Crafteo ON Crafteo(idCrafteo);
CREATE INDEX IX_Cultivo ON Cultivo(idCultivo);
CREATE INDEX IX_Dimension ON Dimension(idDimension);
CREATE INDEX IX_Ecosistema ON Ecosistema(idEcosistema);
CREATE INDEX IX_Efecto ON Efecto(idEfecto);
CREATE INDEX IX_Encantamiento ON Encantamiento(idEncantamiento);
CREATE INDEX IX_Estadistica ON Estadistica(idEstadistica);
CREATE INDEX IX_Estructura ON Estructura(idEstructura);
CREATE INDEX IX_Evento ON Evento(idEvento);
CREATE INDEX IX_Fluido ON Fluido(idFluido);
CREATE INDEX IX_Fortaleza ON Fortaleza(idFortaleza);
CREATE INDEX IX_Generacion ON Generacion(idGeneracion);
CREATE INDEX IX_Herramienta ON Herramienta(idHerramienta);
CREATE INDEX IX_Inventario ON Inventario(idInventario);
CREATE INDEX IX_Item ON Item(idItem);
CREATE INDEX IX_Jefe ON Jefe(idJefe);
CREATE INDEX IX_Jugador ON Jugador(idJugador);
CREATE INDEX IX_Logro ON Logro(idLogro);
CREATE INDEX IX_Mascota ON Mascota(idMascota);
CREATE INDEX IX_Menu ON Menu(idMenu);
CREATE INDEX IX_MesaTrabajo ON MesaTrabajo(idMesaTrabajo);
CREATE INDEX IX_Mob ON Mob(idMob);
CREATE INDEX IX_Modd ON Modd(idModd);
CREATE INDEX IX_ModoJuego ON ModoJuego(idModoJuego);
CREATE INDEX IX_ModoServidor ON ModoServidor(idModoServidor);
CREATE INDEX IX_Mundo ON Mundo(idMundo);
CREATE INDEX IX_Sonido ON Sonido(idSonido);
CREATE INDEX IX_PackRecurso ON PackRecurso(idPackRecurso);
CREATE INDEX IX_PackTextura ON PackTextura(idPackTextura);
CREATE INDEX IX_Parche ON Parche(idParche);
CREATE INDEX IX_Pesca ON Pesca(idPesca);
CREATE INDEX IX_Plugin ON Plugin(idPlugin);
CREATE INDEX IX_Pocion ON Pocion(idPocion);
CREATE INDEX IX_Servidor ON Servidor(idServidor);
CREATE INDEX IX_Templo ON Templo(idTemplo);
CREATE INDEX IX_Stack ON Stack(idStack);
CREATE INDEX IX_Tesoro ON Tesoro(idTesoro);

use Minecraft;
#Aldea
INSERT INTO Aldea(idAldea, estilo, evento, botin) values (1,'Desierto','Asalto', 'Pala  hierro');
INSERT INTO Aldea(idAldea, estilo, evento, botin) values (2,'Llanura','Cultivo', 'Trigo');
INSERT INTO Aldea(idAldea, estilo, evento, botin) values (3,'Prado','Asalto', 'Pala  piedra');
INSERT INTO Aldea(idAldea, estilo, evento, botin) values (4, 'Sabana','Asalto', 'Azada  hierro');
INSERT INTO Aldea(idAldea, estilo, evento, botin) values (5,'Taiga nevada','Hordas', 'carne podrida');
INSERT INTO Aldea(idAldea, estilo, evento, botin) values (6,'Llanura','Asalto', 'pan');
INSERT INTO Aldea(idAldea, estilo, evento, botin) values (7,'Taiga','Cultivo', 'Zanahorias');
INSERT INTO Aldea(idAldea, estilo, evento, botin) values (8,'LLanura nevada','Cultivo', 'Remolachas');
INSERT INTO Aldea(idAldea, estilo, evento, botin) values (9,'Desierto','Asalto', 'Libros');
INSERT INTO Aldea(idAldea, estilo, evento, botin) values (10,'Taiga nevada','Asalto', 'Mapa');
#Amigo
INSERT INTO Amigo(idAmigo,gamertag, aspecto) values (1,'Barbiqiu', 'Calamardo');
INSERT INTO Amigo(idAmigo,gamertag, aspecto) values (2,'AxRadiel', 'Personalizado');
INSERT INTO Amigo(idAmigo,gamertag, aspecto) values (3,'juso', 'Zombie');
INSERT INTO Amigo(idAmigo,gamertag, aspecto) values (4,'Roles', 'Creeper');
INSERT INTO Amigo(idAmigo,gamertag, aspecto) values (5,'yosare', 'Endeman');
INSERT INTO Amigo(idAmigo,gamertag, aspecto) values (6,'lucho', 'Personalizado');
INSERT INTO Amigo(idAmigo,gamertag, aspecto) values (7,'rino', 'Jirafa');
INSERT INTO Amigo(idAmigo,gamertag, aspecto) values (8,'losa', 'Creeper');
INSERT INTO Amigo(idAmigo,gamertag, aspecto) values (9,'serrato', 'Zombie');
INSERT INTO Amigo(idAmigo,gamertag, aspecto) values (10,'Yusiniu', 'Personalizado');


SELECT *FROM Aldea;
UPDATE Aldea SET estilo = 'Desierto' WHERE idAldea = 1;
SELECT *FROM Aldea;
DELETE FROM Aldea WHERE idAldea = 1;
SELECT *FROM Aldea;

#Animal
INSERT INTO Animal(idAnimal,puntosVida, botin, tipoAnimal) values (1,4, 'Cuero', 'Vaca');
INSERT INTO Animal(idAnimal,puntosVida, botin, tipoAnimal) values (2,4, 'Leche', 'Vaca');
INSERT INTO Animal(idAnimal,puntosVida, botin, tipoAnimal) values (3,5, 'Ternera', 'Oveja');
INSERT INTO Animal(idAnimal,puntosVida, botin, tipoAnimal) values (4,4, 'Carne  res', 'Vaca');
INSERT INTO Animal(idAnimal,puntosVida, botin, tipoAnimal) values (5,4, 'Carne  cerdo', 'Cerdo');
INSERT INTO Animal(idAnimal,puntosVida, botin, tipoAnimal) values (6,1, 'Bacalao', 'Pez');
INSERT INTO Animal(idAnimal,puntosVida, botin, tipoAnimal) values (7,2, 'Pluma', 'pollo');
INSERT INTO Animal(idAnimal,puntosVida, botin, tipoAnimal) values (8,5, 'Cuero', 'Caballo');
INSERT INTO Animal(idAnimal,puntosVida, botin, tipoAnimal) values (9,3, 'Cuero  conejo', 'Conejo');
INSERT INTO Animal(idAnimal,puntosVida, botin, tipoAnimal) values (10,3, 'carne  conejo', 'Conejo');

#Arma
INSERT INTO Arma(idArma,tipoArma, nombre, material, daño, resistencia) Values (1,'arco', 'arco', 'palos', 5, 6);
INSERT INTO Arma(idArma,tipoArma, nombre, material, daño, resistencia) Values (2,'espada', 'espada de diamante', 'diamante', 6, 7);
INSERT INTO Arma(idArma,tipoArma, nombre, material, daño, resistencia) Values (3,'ballesta', 'ballesta', 'palos', 5, 6);
INSERT INTO Arma(idArma,tipoArma, nombre, material, daño, resistencia) Values (4,'espada', 'espada de oro', 'oro', 5, 4);
INSERT INTO Arma(idArma,tipoArma, nombre, material, daño, resistencia) Values (5,'acha', 'acha de hierro', 'hierro', 6, 6);
INSERT INTO Arma(idArma,tipoArma, nombre, material, daño, resistencia) Values (6,'espada', 'espada de netherita', 'netherita', 5, 6);
INSERT INTO Arma(idArma,tipoArma, nombre, material, daño, resistencia) Values (7,'espada', 'espada de hierro', 'hierro', 5, 6);
INSERT INTO Arma(idArma,tipoArma, nombre, material, daño, resistencia) Values (8,'espada', 'espada de piedra', 'piedra', 4, 5);
INSERT INTO Arma(idArma,tipoArma, nombre, material, daño, resistencia) Values (9,'acha', 'acha de piedra', 'piedra', 4, 5);
INSERT INTO Arma(idArma,tipoArma, nombre, material, daño, resistencia) Values (10,'acha', 'acha de diamante', 'diamante', 6, 7);
#Armadura
INSERT INTO Armadura(idArmadura,material, nombre, resistencia, estatus, idInventario) values (1,'Diamante', 'Armadura  diamante', 6, 1, 1);
INSERT INTO Armadura(idArmadura,material, nombre, resistencia, estatus, idInventario) values (2,'Oro', 'Armadura  oro', 3, 1, 2);
INSERT INTO Armadura(idArmadura,material, nombre, resistencia, estatus, idInventario) values (3,'Hierro', 'Armadura  hierro', 4, 1,3);
INSERT INTO Armadura(idArmadura,material, nombre, resistencia, estatus, idInventario) values (4,'Cuero', 'Armadura  cuero',  2, 1,4);
INSERT INTO Armadura(idArmadura,material, nombre, resistencia, estatus, idInventario) values (5,'Maya', 'Armadura  Maya', 1, 1,5);
INSERT INTO Armadura(idArmadura,material, nombre, resistencia, estatus, idInventario) values (6,'Netherita', 'Armadura  netherita', 7, 1,6);
INSERT INTO Armadura(idArmadura,material, nombre, resistencia, estatus, idInventario) values (7,'Diamante', 'Armadura  diamante para caballo', 6, 1,7);
INSERT INTO Armadura(idArmadura,material, nombre, resistencia, estatus, idInventario) values (8,'Oro', 'Armadura  oro para caballo',3, 1,8);
INSERT INTO Armadura(idArmadura,material, nombre, resistencia, estatus, idInventario) values (9,'Hierro', 'Armadura  hierro para caballo', 4, 1,9);
INSERT INTO Armadura(idArmadura,material, nombre, resistencia, estatus, idInventario) values (10,'Cuero', 'Armadura  cuero para caballo', 2, 1,10);

#Bloque
INSERT INTO Bloque(idBloque,material, nombre) values (1,'piedra','bloque de piedra');
INSERT INTO Bloque(idBloque,material, nombre) values (2,'Tierra','bloque de Tierra');
INSERT INTO Bloque(idBloque,material, nombre) values (3,'Cuarzo','bloque de Cuarzo');
INSERT INTO Bloque(idBloque,material, nombre) values (4,'Piedra rojiza','bloque  de piedra rojiza');
INSERT INTO Bloque(idBloque,material, nombre) values (5,'Madera','bloque de Madera');
INSERT INTO Bloque(idBloque,material, nombre) values (6,'Oro','bloque  oro');
INSERT INTO Bloque(idBloque,material, nombre) values (7,'Cobre','bloque de cobre');
INSERT INTO Bloque(idBloque,material, nombre) values (8,'Hierro','bloque de hierro');
INSERT INTO Bloque(idBloque,material, nombre) values (9,'Obsidiana','bloque de obsidiana');
INSERT INTO Bloque(idBloque,material, nombre) values (10,'Diorita','bloque de diorita');

INSERT INTO Chat(idChat,fuente, color, espaciadoLinea) values (1,'Arial','Verde',1);
INSERT INTO Chat(idChat,fuente, color, espaciadoLinea) values (2,'Times New Roman','Azul',2);
INSERT INTO Chat(idChat,fuente, color, espaciadoLinea) values (3,'Calibri','Rojo',1.5);
INSERT INTO Chat(idChat,fuente, color, espaciadoLinea) values (4,'Arial Narrow','Negro',1);
INSERT INTO Chat(idChat,fuente, color, espaciadoLinea) values (5,'Algerian','Azul',2);
INSERT INTO Chat(idChat,fuente, color, espaciadoLinea) values (6,'Arial','Negro',1);
INSERT INTO Chat(idChat,fuente, color, espaciadoLinea) values (7,'Calibri','Verde',1.5);
INSERT INTO Chat(idChat,fuente, color, espaciadoLinea) values (8,'Georgia','Azul',1);
INSERT INTO Chat(idChat,fuente, color, espaciadoLinea) values (9,'Candara','Negro',1.5);

INSERT INTO Chunk(idChunk,limite, formato) values (1,32,'PNG');
INSERT INTO Chunk(idChunk,limite, formato) values (2,15,'AVI');
INSERT INTO Chunk(idChunk,limite, formato) values (3,5,'MP3');
INSERT INTO Chunk(idChunk,limite, formato) values (4,7,'PNG');
INSERT INTO Chunk(idChunk,limite, formato) values (5,8,'PNG');
INSERT INTO Chunk(idChunk,limite, formato) values (6,5,'AVI');
INSERT INTO Chunk(idChunk,limite, formato) values (7,16,'IFF');
INSERT INTO Chunk(idChunk,limite, formato) values (8,28,'IFF');
INSERT INTO Chunk(idChunk,limite, formato) values (9,30,'MP3');
INSERT INTO Chunk(idChunk,limite, formato) values (10,31,'PNG');

#Comercio
INSERT INTO Comercio(idComercio,tipoComercio, tipoIntercambio) values (1,'Vendedor ambulante', 'Zanahoria');
INSERT INTO Comercio(idComercio,tipoComercio, tipoIntercambio) values (2,'Cartografo', 'Esemeralda');
INSERT INTO Comercio(idComercio,tipoComercio, tipoIntercambio) values (3,'Herrero', 'Lingote de hierro');
INSERT INTO Comercio(idComercio,tipoComercio, tipoIntercambio) values (4,'Carnicero', 'Esmeralda');
INSERT INTO Comercio(idComercio,tipoComercio, tipoIntercambio) values (5,'Granjero', 'Semillas de trigo');
INSERT INTO Comercio(idComercio,tipoComercio, tipoIntercambio) values (6,',Bibliotecario', 'Cuero');
INSERT INTO Comercio(idComercio,tipoComercio, tipoIntercambio) values (7,'Carnicero', 'Esmeralda');
INSERT INTO Comercio(idComercio,tipoComercio, tipoIntercambio) values (8,'Cartografo', 'Lingote de hierro');
INSERT INTO Comercio(idComercio,tipoComercio, tipoIntercambio) values (9,'Vendedor ambulante', 'Lingote de oro');
INSERT INTO Comercio(idComercio,tipoComercio, tipoIntercambio) values (10,'Pescador', 'Esmeralda');

#Comida
INSERT INTO Comida(idComida,tipo, valorNutrimental, nombre, ingredientes) values (1,'carne', 3, 'Filete', 'Vaca');
INSERT INTO Comida(idComida,tipo, valorNutrimental, nombre, ingredientes) values (2,'Vegetal', 0.5, 'Zanahoria','zanahoria');
INSERT INTO Comida(idComida,tipo, valorNutrimental, nombre, ingredientes) values (3,'Postre', 6, 'Pastel', 'Huevos,Leche,trigo,Azucar');
INSERT INTO Comida(idComida,tipo, valorNutrimental, nombre, ingredientes) values (4,'carne', 3, 'chuleta', 'Cerdo');
INSERT INTO Comida(idComida,tipo, valorNutrimental, nombre, ingredientes) values (5,'Fruta', 0.5, 'Manzana', 'Manzana');
INSERT INTO Comida(idComida,tipo, valorNutrimental, nombre, ingredientes) values (6,'Postre', 3, 'Pastel de calabaza', 'Azucar,huevo,calabaza');
INSERT INTO Comida(idComida,tipo, valorNutrimental, nombre, ingredientes) values (7,'Pollo', 3, 'Pollo asado', 'Pollo');
INSERT INTO Comida(idComida,tipo, valorNutrimental, nombre, ingredientes) values (8,'Carne', 3, 'Carne de conejo', 'Conejo');
INSERT INTO Comida(idComida,tipo, valorNutrimental, nombre, ingredientes) values (9,'Sopa', 2, 'Sopa de chamiñon', 'Champiñon, plato');
INSERT INTO Comida(idComida,tipo, valorNutrimental, nombre, ingredientes) values (10,'carne', 3, 'chuleta', 'Vaca');
#ConfigMundo
INSERT INTO ConfigMundo(idConfigMundo,modoJuego, dificultad,preferencia, semilla, tipo) values (1,'creativo', 'nulo','Mapa inicial', 333, 'Super plano');
INSERT INTO ConfigMundo(idConfigMundo,modoJuego, dificultad,preferencia, semilla, tipo) values (2,'Supervivencia', 'Normal','Cofre de bonificación', 6151, 'Clasico');
INSERT INTO ConfigMundo(idConfigMundo,modoJuego, dificultad,preferencia, semilla, tipo) values (3,'Superviviencia', 'Dificil','Cofre de bonificacion', 15265, 'Sky Block');
INSERT INTO ConfigMundo(idConfigMundo,modoJuego, dificultad,preferencia, semilla, tipo) values (4,'creativo', 'nulo', 'Mapan inicial',65131, 'Clasico');
INSERT INTO ConfigMundo(idConfigMundo,modoJuego, dificultad,preferencia, semilla, tipo) values (5,'Aventura', 'Normal','Mapa inicial', 416545, 'Clasico');
INSERT INTO ConfigMundo(idConfigMundo,modoJuego, dificultad,preferencia, semilla, tipo) values (6,'creativo', 'nulo','nulo',4424, 'Clasico');
INSERT INTO ConfigMundo(idConfigMundo,modoJuego, dificultad,preferencia, semilla, tipo) values (7,'Aventura', 'Normal','nulo',65545, 'Sky Block');
INSERT INTO ConfigMundo(idConfigMundo,modoJuego, dificultad,preferencia, semilla, tipo) values (8,'Extremo', 'Dificil','nulo', 4354, 'Clasico');
INSERT INTO ConfigMundo(idConfigMundo,modoJuego, dificultad,preferencia, semilla, tipo) values (9,'Extremo', 'Normal', 'nulo',15289, 'Clasico');

#COnfigUsuario
INSERT INTO ConfigUsuario(idConfigUsuario,gamertag, idioma) values (1,'barbiqiu', 'español');
INSERT INTO ConfigUsuario(idConfigUsuario,gamertag, idioma) values (2,'AxRadiel', 'inglés');
INSERT INTO ConfigUsuario(idConfigUsuario,gamertag, idioma) values (3,'Rinoxd', 'español');
INSERT INTO ConfigUsuario(idConfigUsuario,gamertag, idioma) values (4,'Aguilablanca', 'español');
INSERT INTO ConfigUsuario(idConfigUsuario,gamertag, idioma) values (5,'Kev0ti', 'inglés');
INSERT INTO ConfigUsuario(idConfigUsuario,gamertag, idioma) values (6,'taquito32', 'inglés');
INSERT INTO ConfigUsuario(idConfigUsuario,gamertag, idioma) values (7,'Camenio', 'inglés');
INSERT INTO ConfigUsuario(idConfigUsuario,gamertag, idioma) values (8,'patoasado2', 'español');
INSERT INTO ConfigUsuario(idConfigUsuario,gamertag, idioma) values (9,'frurro54', 'español');
INSERT INTO ConfigUsuario(idConfigUsuario,gamertag, idioma) values (10,'paco63', 'inglés');

#Cordenada
INSERT INTO Coordenada(idCoordenada,ejeX, ejeY,ejeZ) values (1,0293838, 134085, 33);
INSERT INTO Coordenada(idCoordenada,ejeX, ejeY,ejeZ) values (2,5456372, 0039499200, 2284);
INSERT INTO Coordenada(idCoordenada,ejeX, ejeY,ejeZ) values (3,0293838, 134085, 19);
INSERT INTO Coordenada(idCoordenada,ejeX, ejeY,ejeZ) values (4,0293838, 134085, 0031);
INSERT INTO Coordenada(idCoordenada,ejeX, ejeY,ejeZ) values (5,0293838, 134085, -34);
INSERT INTO Coordenada(idCoordenada,ejeX, ejeY,ejeZ) values (6,-994884, 431662, 11);
INSERT INTO Coordenada(idCoordenada,ejeX, ejeY,ejeZ) values (7,0293838, 134085, -322);
INSERT INTO Coordenada(idCoordenada,ejeX, ejeY,ejeZ) values (8,-0004789239, 47823, 33);
INSERT INTO Coordenada(idCoordenada,ejeX, ejeY,ejeZ) values (9,988492911, 134085, -44736);
INSERT INTO Coordenada(idCoordenada,ejeX, ejeY,ejeZ) values (10,09953932, 498937, 0029394);

#Cultivo
INSERT INTO Cultivo(idCultivo,tiempoCultivo, tipo) values (1,'00:03', 'planta zanahoria');
INSERT INTO Cultivo(idCultivo,tiempoCultivo, tipo) values (2,'00:10', 'planta bambú');
INSERT INTO Cultivo(idCultivo,tiempoCultivo, tipo) values (3,'00:5', 'planta trigo');
INSERT INTO Cultivo(idCultivo,tiempoCultivo, tipo) values (4,'00:03', 'planta papa');
INSERT INTO Cultivo(idCultivo,tiempoCultivo, tipo) values (5,'00:5', 'planta rabano');
INSERT INTO Cultivo(idCultivo,tiempoCultivo, tipo) values (6,'00:5', 'planta caña');
INSERT INTO Cultivo(idCultivo,tiempoCultivo, tipo) values (7,'00:10', 'planta calabaza');
INSERT INTO Cultivo(idCultivo,tiempoCultivo, tipo) values (8,'00:15', 'planta sandia');
INSERT INTO Cultivo(idCultivo,tiempoCultivo, tipo) values (9,'00:10', 'arbol de abeto');
INSERT INTO Cultivo(idCultivo,tiempoCultivo, tipo) values (10,'00:15', 'arbol de jungla');

#Dimension
INSERT INTO DImension(idDImension,nombre, estilo, cicloDelDia) values (1,'Overworld','normal', 'Dia,Noche');
INSERT INTO DImension(idDImension,nombre, estilo, cicloDelDia) values (2,'Overworld','normal', 'Dia');
INSERT INTO DImension(idDImension,nombre, estilo, cicloDelDia) values (3,'Nether','Infierno', 'Noche');
INSERT INTO DImension(idDImension,nombre, estilo, cicloDelDia) values (4,'Nether','Infierno', 'sin datos');
INSERT INTO DImension(idDImension,nombre, estilo, cicloDelDia) values (5,'End','Fin', 'Noche');
INSERT INTO DImension(idDImension,nombre, estilo, cicloDelDia) values (6,'End','normal', 'Noche');
INSERT INTO DImension(idDImension,nombre, estilo, cicloDelDia) values (7,'End','Ciudad', 'Noche');
INSERT INTO DImension(idDImension,nombre, estilo, cicloDelDia) values (8,'Overworld','Desertico', 'Dia');
INSERT INTO DImension(idDImension,nombre, estilo, cicloDelDia) values (9,'Overworld','normal', 'Dia,Noche');
INSERT INTO DImension(idDImension,nombre, estilo, cicloDelDia) values (10,'Nether','Infierno', 'Noche');

#Ecosistema
INSERT INTO Ecosistema(idEcosistema, tipo, tamaño, bioma, clima) values (1,'Desertico', 1540, 'Desierto', "Calido");
INSERT INTO Ecosistema(idEcosistema, tipo, tamaño, bioma, clima) values (2,'Boscoso', 55, 'Bosque', "Frio");
INSERT INTO Ecosistema(idEcosistema, tipo, tamaño, bioma, clima) values (3,'Boscoso', 51212, 'Jungla', "Humedo");
INSERT INTO Ecosistema(idEcosistema, tipo, tamaño, bioma, clima) values (4,'Desertico', 421, 'Desierto', "Frio");
INSERT INTO Ecosistema(idEcosistema, tipo, tamaño, bioma, clima) values (5,'Boscoso', 415, 'Bosque', "Calido");
INSERT INTO Ecosistema(idEcosistema, tipo, tamaño, bioma, clima) values (6,'Nevado', 4551, 'Tundra', "Frio");
INSERT INTO Ecosistema(idEcosistema, tipo, tamaño, bioma, clima) values (7,'Boscoso', 53152, 'Bosque', "Humedo");
INSERT INTO Ecosistema(idEcosistema, tipo, tamaño, bioma, clima) values (8,'Boscosos', 56532, 'Bosque', "Humedo");
INSERT INTO Ecosistema(idEcosistema, tipo, tamaño, bioma, clima) values (9,'Desertico', 53, 'Desierto', "Calido");
INSERT INTO Ecosistema(idEcosistema, tipo, tamaño, bioma, clima) values (10,'Desertico', 5345, 'Desierto', "Frio");

#Efecto
INSERT INTO Efecto(idEfecto,tipo, durabilidad, nombre) values (1,'Daño', 50,  'Pocion de daño');
INSERT INTO Efecto(idEfecto,tipo, durabilidad, nombre) values (2,'Resistencia contra el fuego', 100, 'Pocion de resistencia contra el fuego');
INSERT INTO Efecto(idEfecto,tipo, durabilidad, nombre) values (3 ,'Daño', 45,  'Pocion de lanzamiento de daño');
INSERT INTO Efecto(idEfecto,tipo, durabilidad, nombre) values (4,'Salto', 559, ' Pocion de super salto');
INSERT INTO Efecto(idEfecto,tipo, durabilidad, nombre) values (5 ,'Invisibilidad', 50,  'Pocion de invisibilidad');
INSERT INTO Efecto(idEfecto,tipo, durabilidad, nombre) values (6,'Daño', 50,  'Veneno');
INSERT INTO Efecto(idEfecto,tipo, durabilidad, nombre) values (7,'curacion', 50, 'curacion instantanea');
INSERT INTO Efecto(idEfecto,tipo, durabilidad, nombre) values (8,'respirar debajo del agua', 50,  'vida marina');
INSERT INTO Efecto(idEfecto,tipo, durabilidad, nombre) values (9,'Daño', 50,  'Pocion de daño');
INSERT INTO Efecto(idEfecto,tipo, durabilidad, nombre) values (10,'Salto', 50,  'Super salto');


#Encantamiento
INSERT INTO Encantamiento (idEncantamiento,tipo, durabilidad, nombre) values(1,'construccion', 50, 'toque de seda');
INSERT INTO Encantamiento (idEncantamiento,tipo, durabilidad, nombre) values(2,'daño', 50, 'filo');
INSERT INTO Encantamiento (idEncantamiento,tipo, durabilidad, nombre) values(3,'defensa', 50, 'irrompibilidad');
INSERT INTO Encantamiento (idEncantamiento,tipo, durabilidad, nombre) values(4,'construccion', 50, 'fortuna');
INSERT INTO Encantamiento (idEncantamiento,tipo, durabilidad, nombre) values(5,'daño', 50, 'saqueo');
INSERT INTO Encantamiento (idEncantamiento,tipo, durabilidad, nombre) values(6,'daño', 50, 'perdicion para los artropodos');
INSERT INTO Encantamiento (idEncantamiento,tipo, durabilidad, nombre) values(7,'defensa', 50, 'caida de pluma');
INSERT INTO Encantamiento (idEncantamiento,tipo, durabilidad, nombre) values(8,'daño', 50, 'fuego');
INSERT INTO Encantamiento (idEncantamiento,tipo, durabilidad, nombre) values(9,'construccion', 50, 'reparacion');
INSERT INTO Encantamiento (idEncantamiento,tipo, durabilidad, nombre) values(10,'defensa', 50, 'reparacion');

#Estadistica

INSERT INTO Estadistica(idEstadistica,dsitanciaRecorrida, distanciaVolada, distanciaCaida, saltos, numeroMuertes) values (1,2, 5, 4, 5, 6);
INSERT INTO Estadistica(idEstadistica,dsitanciaRecorrida, distanciaVolada, distanciaCaida, saltos, numeroMuertes) values (2,2, 5, 4, 5, 6);
INSERT INTO Estadistica(idEstadistica,dsitanciaRecorrida, distanciaVolada, distanciaCaida, saltos, numeroMuertes) values (3,2, 5, 4, 5, 6);
INSERT INTO Estadistica(idEstadistica,dsitanciaRecorrida, distanciaVolada, distanciaCaida, saltos, numeroMuertes) values (4,2, 5, 4, 5, 6);
INSERT INTO Estadistica(idEstadistica,dsitanciaRecorrida, distanciaVolada, distanciaCaida, saltos, numeroMuertes) values (5,2, 5, 4, 5, 6);
INSERT INTO Estadistica(idEstadistica,dsitanciaRecorrida, distanciaVolada, distanciaCaida, saltos, numeroMuertes) values (6,2, 5, 4, 5, 6);
INSERT INTO Estadistica(idEstadistica,dsitanciaRecorrida, distanciaVolada, distanciaCaida, saltos, numeroMuertes) values (7,2, 5, 4, 5, 6);
INSERT INTO Estadistica(idEstadistica,dsitanciaRecorrida, distanciaVolada, distanciaCaida, saltos, numeroMuertes) values (8,2, 5, 4, 5, 6);
INSERT INTO Estadistica(idEstadistica,dsitanciaRecorrida, distanciaVolada, distanciaCaida, saltos, numeroMuertes) values (9,2, 5, 4, 5, 6);
INSERT INTO Estadistica(idEstadistica,dsitanciaRecorrida, distanciaVolada, distanciaCaida, saltos, numeroMuertes) values (10,2, 5, 4, 5, 6);

#Estructura
INSERT INTO Estructura(idEstructura, tipo, estilo) values (1,'desierto', 'piramide');
INSERT INTO Estructura(idEstructura, tipo, estilo) values (2,'jungla', 'templo');
INSERT INTO Estructura(idEstructura, tipo, estilo) values (3,'desierto', 'aldea');
INSERT INTO Estructura(idEstructura, tipo, estilo) values (4,'bosque', 'casa de villagers');
INSERT INTO Estructura(idEstructura, tipo, estilo) values (5,'jungla', 'aldea');
INSERT INTO Estructura(idEstructura, tipo, estilo) values (6,'bosque', 'aldea de saqueadores');
INSERT INTO Estructura(idEstructura, tipo, estilo) values (7,'desierto', 'piramide');
INSERT INTO Estructura(idEstructura, tipo, estilo) values (8,'tundra', 'igloo');
INSERT INTO Estructura(idEstructura, tipo, estilo) values (9,'desierto', 'piramide');
INSERT INTO Estructura(idEstructura, tipo, estilo) values (10,'desierto', 'piramide');

#Evento
INSERT INTO Evento(idEvento,tipo, fechaInicio, fechaCierre, duarbilidad) values (1,'juego', '2014-10-25 20:00:00', '2014-11-25 20:00:00', 4);
INSERT INTO Evento(idEvento,tipo, fechaInicio, fechaCierre, duarbilidad) values (4,'juego', '2014-10-25 20:00:00', '2014-11-25 20:00:00', 4);
INSERT INTO Evento(idEvento,tipo, fechaInicio, fechaCierre, duarbilidad) values (5,'juego', '2014-10-25 20:00:00', '2014-11-25 20:00:00', 4);
INSERT INTO Evento(idEvento,tipo, fechaInicio, fechaCierre, duarbilidad) values (6,'juego', '2014-10-25 20:00:00', '2014-11-25 20:00:00', 4);
INSERT INTO Evento(idEvento,tipo, fechaInicio, fechaCierre, duarbilidad) values (7,'juego', '2014-10-25 20:00:00', '2014-11-25 20:00:00', 4);
INSERT INTO Evento(idEvento,tipo, fechaInicio, fechaCierre, duarbilidad) values (8,'juego', '2014-10-25 20:00:00', '2014-11-25 20:00:00', 4);
INSERT INTO Evento(idEvento,tipo, fechaInicio, fechaCierre, duarbilidad) values (9,'juego', '2014-10-25 20:00:00', '2014-11-25 20:00:00', 4);
INSERT INTO Evento(idEvento,tipo, fechaInicio, fechaCierre, duarbilidad) values (10,'juego', '2014-10-25 20:00:00', '2014-11-25 20:00:00', 4);

#Fluido
INSERT INTO Fluido(idFluido,tipo, nombre, nivelFluido) values (1,'frio', 'agua', 3);
INSERT INTO Fluido(idFluido,tipo, nombre, nivelFluido) values (2,'caliente', 'lava', 1);
INSERT INTO Fluido(idFluido,tipo, nombre, nivelFluido) values (3,'caliente', 'agua', 3);
INSERT INTO Fluido(idFluido,tipo, nombre, nivelFluido) values (4,'frio', 'nieve', 0);
INSERT INTO Fluido(idFluido,tipo, nombre, nivelFluido) values (5,'frio', 'agua', 3);
INSERT INTO Fluido(idFluido,tipo, nombre, nivelFluido) values (6,'caliente', 'lava', 1);
INSERT INTO Fluido(idFluido,tipo, nombre, nivelFluido) values (7,'caliente', 'agua', 3);
INSERT INTO Fluido(idFluido,tipo, nombre, nivelFluido) values (8,'frio', 'nieve', 0);
INSERT INTO Fluido(idFluido,tipo, nombre, nivelFluido) values (9,'frio', 'agua', 3);
INSERT INTO Fluido(idFluido,tipo, nombre, nivelFluido) values (10,'frio', 'agua', 3);

#Fortaleza
INSERT INTO Fortaleza(idFortaleza,botin, nombre, estilo) values (1,'oro', 'piramide', 'desierto');
INSERT INTO Fortaleza(idFortaleza,botin, nombre, estilo) values (2,'oro', 'templo', 'jungla');
INSERT INTO Fortaleza(idFortaleza,botin, nombre, estilo) values (3,'oro', 'fortaleza del netther', 'nether');
INSERT INTO Fortaleza(idFortaleza,botin, nombre, estilo) values (4,'hierro', 'Ender', 'cueva');
INSERT INTO Fortaleza(idFortaleza,botin, nombre, estilo) values (5,'hierro', 'casa de los villager', 'bosque');
INSERT INTO Fortaleza(idFortaleza,botin, nombre, estilo) values (6,'oro', 'piramide', 'desierto');
INSERT INTO Fortaleza(idFortaleza,botin, nombre, estilo) values (7,'oro', 'templo', 'jungla');
INSERT INTO Fortaleza(idFortaleza,botin, nombre, estilo) values (8,'oro', 'fortaleza del netther', 'nether');
INSERT INTO Fortaleza(idFortaleza,botin, nombre, estilo) values (9,'hierro', 'Ender', 'cueva');
INSERT INTO Fortaleza(idFortaleza,botin, nombre, estilo) values (10,'hierro', 'casa de los villager', 'bosque');

#Generación
INSERT INTO Generacion(idGeneracion,tipo, lugarGeneracion) values (1,'Mundo', 'General');
INSERT INTO Generacion(idGeneracion,tipo, lugarGeneracion) values (2,'Jugador', 'bosque');
INSERT INTO Generacion(idGeneracion,tipo, lugarGeneracion) values (3,'Vaca', 'bosque');
INSERT INTO Generacion(idGeneracion,tipo, lugarGeneracion) values (4,'Conejo', 'desierto');
INSERT INTO Generacion(idGeneracion,tipo, lugarGeneracion) values (5,'gato', 'aldea');
INSERT INTO Generacion(idGeneracion,tipo, lugarGeneracion) values (6,'zombie', 'desierto');
INSERT INTO Generacion(idGeneracion,tipo, lugarGeneracion) values (7,'creeper', 'tundra');
INSERT INTO Generacion(idGeneracion,tipo, lugarGeneracion) values (8,'cabra', 'tundra');
INSERT INTO Generacion(idGeneracion,tipo, lugarGeneracion) values (9,'panda', 'bosque de bambus');
INSERT INTO Generacion(idGeneracion,tipo, lugarGeneracion) values (10,'abeja', 'bosque');

#Herramienta
INSERT INTO Herramienta(idHerramienta,material, nombre, resistencia, tipo) values (1,'hierro', 'pala', 4, 'trabajo');
INSERT INTO Herramienta(idHerramienta,material, nombre, resistencia, tipo) values (2,'hierro', 'pala', 4, 'trabajo');
INSERT INTO Herramienta(idHerramienta,material, nombre, resistencia, tipo) values (3,'hierro', 'pala', 4, 'trabajo');
INSERT INTO Herramienta(idHerramienta,material, nombre, resistencia, tipo) values (4,'hierro', 'pala', 4, 'trabajo');
INSERT INTO Herramienta(idHerramienta,material, nombre, resistencia, tipo) values (5,'hierro', 'pala', 4, 'trabajo');
INSERT INTO Herramienta(idHerramienta,material, nombre, resistencia, tipo) values (6,'hierro', 'pala', 4, 'trabajo');
INSERT INTO Herramienta(idHerramienta,material, nombre, resistencia, tipo) values (7,'hierro', 'pala', 4, 'trabajo');
INSERT INTO Herramienta(idHerramienta,material, nombre, resistencia, tipo) values (8,'hierro', 'pala', 4, 'trabajo');
INSERT INTO Herramienta(idHerramienta,material, nombre, resistencia, tipo) values (9,'hierro', 'pala', 4, 'trabajo');
INSERT INTO Herramienta(idHerramienta,material, nombre, resistencia, tipo) values (10,'hierro', 'pala', 4, 'trabajo');

#Inventario
INSERT INTO Inventario(idInventario,espacio) values (1,25);
INSERT INTO Inventario(idInventario,espacio) values (2,5);
INSERT INTO Inventario(idInventario,espacio) values (3,10);
INSERT INTO Inventario(idInventario,espacio) values (4,15);
INSERT INTO Inventario(idInventario,espacio) values (5,16);
INSERT INTO Inventario(idInventario,espacio) values (6,22);
INSERT INTO Inventario(idInventario,espacio) values (7,13);
INSERT INTO Inventario(idInventario,espacio) values (8,11);
INSERT INTO Inventario(idInventario,espacio) values (9,3);
INSERT INTO Inventario(idInventario,espacio) values (10,5);

#Item
INSERT INTO Item(idItem,tipo, nombre) values (1,'construccion', 'piedra');
INSERT INTO Item(idItem,tipo, nombre) values (2,'comida', 'zanahoria');
INSERT INTO Item(idItem,tipo, nombre) values (3,'defensa', 'escudo');
INSERT INTO Item(idItem,tipo, nombre) values (4,'ataque', 'espada');
INSERT INTO Item(idItem,tipo, nombre) values (5,'construccion', 'ladrillos');
INSERT INTO Item(idItem,tipo, nombre) values (6,'construccion', 'madera');
INSERT INTO Item(idItem,tipo, nombre) values (7,'comida', 'papa');
INSERT INTO Item(idItem,tipo, nombre) values (8,'mecanismo', 'piedra rojiza');
INSERT INTO Item(idItem,tipo, nombre) values (9,'musica', 'bloque musical');
INSERT INTO Item(idItem,tipo, nombre) values (10,'construccion', 'diorita');

#Jefe
INSERT INTO Jefe(idJefe,dimension, habilidad, puntosVida, nombre) values (1, 'nether', 'daño', 3, 'gosth');
INSERT INTO Jefe(idJefe,dimension, habilidad, puntosVida, nombre) values (2, 'ender', 'daño', 5, 'dragon');
INSERT INTO Jefe(idJefe,dimension, habilidad, puntosVida, nombre) values (3, 'overworld', 'daño', 8, 'wither');
INSERT INTO Jefe(idJefe,dimension, habilidad, puntosVida, nombre) values (4, 'nether', 'daño', 8, 'wither');
INSERT INTO Jefe(idJefe,dimension, habilidad, puntosVida, nombre) values (5, 'ender', 'daño', 6, 'wither');
INSERT INTO Jefe(idJefe,dimension, habilidad, puntosVida, nombre) values (6, 'nether', 'daño', 3, 'gosth');
INSERT INTO Jefe(idJefe,dimension, habilidad, puntosVida, nombre) values (7, 'ender', 'daño', 5, 'dragon');
INSERT INTO Jefe(idJefe,dimension, habilidad, puntosVida, nombre) values (8, 'overworld', 'daño', 8, 'wither');
INSERT INTO Jefe(idJefe,dimension, habilidad, puntosVida, nombre) values (9, 'nether', 'daño', 8, 'wither');
INSERT INTO Jefe(idJefe,dimension, habilidad, puntosVida, nombre) values (10, 'ender', 'daño', 6, 'wither');
