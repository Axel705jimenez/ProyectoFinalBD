CREATE DATABASE Minecraft																																																								||																			
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
	semilla varchar(50) not null,
	tipo int not null,
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
	tipo int not null,
	nombre varchar(50)not null,
	nivelFluido int not null,
	estatus bit default 1,
    primary key (idFluido)
);

CREATE TABLE Fortaleza
(
	idFortaleza int not null,
	botin datetime not null,
	nombre varchar(50) not null,
	estilo int not null,
	estatus bit default 1,
    primary key (idFortaleza)
);

CREATE TABLE Generacion
(
	idGeneracion int not null,
	tipo datetime not null,
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
INSERT INTO Comida(idComida,tipo, valorNutrimento, nombre, ingredientes) values (1,'carne', 3, 'Filete', 'Vaca');
INSERT INTO Comida(idComida,tipo, valorNutrimento, nombre, ingredientes) values (2,'Vegetal', 0.5, 'Zanahoria','zanahoria');
INSERT INTO Comida(idComida,tipo, valorNutrimento, nombre, ingredientes) values (3,'Postre', 6, 'Pastel', 'Huevos,Leche,trigo,Azucar');
INSERT INTO Comida(idComida,tipo, valorNutrimento, nombre, ingredientes) values (4,'carne', 3, 'chuleta', 'Cerdo');
INSERT INTO Comida(idComida,tipo, valorNutrimento, nombre, ingredientes) values (5,'Fruta', 0.5, 'Manzana', 'Manzana');
INSERT INTO Comida(idComida,tipo, valorNutrimento, nombre, ingredientes) values (6,'Postre', 3, 'Pastel de calabaza', 'Azucar,huevo,calabaza');
INSERT INTO Comida(idComida,tipo, valorNutrimento, nombre, ingredientes) values (7,'Pollo', 3, 'Pollo asado', 'Pollo');
INSERT INTO Comida(idComida,tipo, valorNutrimento, nombre, ingredientes) values (8,'Carne', 3, 'Carne de conejo', 'Conejo');
INSERT INTO Comida(idComida,tipo, valorNutrimento, nombre, ingredientes) values (9,'Sopa', 2, 'Sopa de chamiñon', 'Champiñon, plato');
INSERT INTO Comida(idComida,tipo, valorNutrimento, nombre, ingredientes) values (10,'carne', 3, 'chuleta', 'Vaca');
#ConfigMundo
INSERT INTO ConfigMundo(idConfigMundo,modoJuego, dificultad,preferenciasMundo, semilla, tipoMundo) values (1,'creativo', 'nulo','Mapa inicial', 333, 'Super plano');
INSERT INTO ConfigMundo(idConfigMundo,modoJuego, dificultad,preferenciasMundo, semilla, tipoMundo) values (2,'Supervivencia', 'Normal','Cofre de bonificación', 6151, 'Clasico');
INSERT INTO ConfigMundo(idConfigMundo,modoJuego, dificultad,preferenciasMundo, semilla, tipoMundo) values (3,'Superviviencia', 'Dificil','Cofre de bonificacion', 15265, 'Sky Block');
INSERT INTO ConfigMundo(idConfigMundo,modoJuego, dificultad,preferenciasMundo, semilla, tipoMundo) values (4,'creativo', 'nulo', 'Mapan inicial',65131, 'Clasico');
INSERT INTO ConfigMundo(idConfigMundo,modoJuego, dificultad,preferenciasMundo, semilla, tipoMundo) values (5,'Aventura', 'Normal','Mapa inicial', 416545, 'Clasico');
INSERT INTO ConfigMundo(idConfigMundo,modoJuego, dificultad,preferenciasMundo, semilla, tipoMundo) values (6,'creativo', 'nulo','nulo',4424, 'Clasico');
INSERT INTO ConfigMundo(idConfigMundo,modoJuego, dificultad,preferenciasMundo, semilla, tipoMundo) values (7,'Aventura', 'Normal','nulo',65545, 'Sky Block');
INSERT INTO ConfigMundo(idConfigMundo,modoJuego, dificultad,preferenciasMundo, semilla, tipoMundo) values (8,'Extremo', 'Dificil','nulo', 4354, 'Clasico');
INSERT INTO ConfigMundo(idConfigMundo,modoJuego, dificultad,preferenciasMundo, semilla, tipoMundo) values (9,'Extremo', 'Normal', 'nulo',15289, 'Clasico');

INSERT INTO ConfigUsuario(idConfigUsuario,gamertag,idioma) values (1,'AxRadiel', 'Español');


INSERT INTO Cultivo(idCultivo,CultivoDisponible, CultivoDebe, fecha) values ('CultivoDisponible2','CultivoDebe2', '1/12/2022');
INSERT INTO Cultivo(idCultivo,CultivoDisponible, CultivoDebe, fecha) values ('CultivoDisponible3','CultivoDebe3', '1/12/2022');
INSERT INTO Cultivo(idCultivo,CultivoDisponible, CultivoDebe, fecha) values ('CultivoDisponible4','CultivoDebe4', '1/12/2022');
INSERT INTO Cultivo(idCultivo,CultivoDisponible, CultivoDebe, fecha) values ('CultivoDisponible5','CultivoDebe5', '1/12/2022');
INSERT INTO Cultivo(idCultivo,CultivoDisponible, CultivoDebe, fecha) values ('CultivoDisponible6','CultivoDebe6', '1/12/2022');
INSERT INTO Cultivo(CultivoDisponible, CultivoDebe, fecha) values ('CultivoDisponible7','CultivoDebe7', '1/12/2022');
INSERT INTO Cultivo(CultivoDisponible, CultivoDebe, fecha) values ('CultivoDisponible8','CultivoDebe8', '1/12/2022');
INSERT INTO Cultivo(CultivoDisponible, CultivoDebe, fecha) values ('CultivoDisponible9','CultivoDebe9', '1/12/2022');
INSERT INTO Cultivo(CultivoDisponible, CultivoDebe, fecha) values ('CultivoDisponible10','CultivoDebe10', '1/12/2022');


--Deartamento
INSERT INTO Ecosistema(nombre, numero, cantidad) values ('nombre1', 1, 'cantidad1')

INSERT INTO Ecosistema(nombre, numero, cantidad) values ('nombre2', 2, 'cantidad2')

INSERT INTO Ecosistema(nombre, numero, cantidad) values ('nombre3', 3, 'cantidad3')

INSERT INTO Ecosistema(nombre, numero, cantidad) values ('nombre4', 4, 'cantidad4')

INSERT INTO Ecosistema(nombre, numero, cantidad) values ('nombre5', 5, 'cantidad5')

INSERT INTO Ecosistema(nombre, numero, cantidad) values ('nombre6', 6, 'cantidad6')

INSERT INTO Ecosistema(nombre, numero, cantidad) values ('nombre7', 7, 'cantidad7')

INSERT INTO Ecosistema(nombre, numero, cantidad) values ('nombre8', 8, 'cantidad8')

INSERT INTO Ecosistema(nombre, numero, cantidad) values ('nombre9', 9, 'cantidad9')

INSERT INTO Ecosistema(nombre, numero, cantidad) values ('nombre10', 10, 'cantidad10')


--Efecto
INSERT INTO Efecto(Parche, cantidad, cantidadmonetaria, fecha) values ('Parche1', 1, 'cantidadmonetaria1', '1/12/2022')

INSERT INTO Efecto(Parche, cantidad, cantidadmonetaria, fecha) values ('Parche2', 2, 'cantidadmonetaria2', '1/12/2022')

INSERT INTO Efecto(Parche, cantidad, cantidadmonetaria, fecha) values ('Parche3', 3, 'cantidadmonetaria3', '1/12/2022')

INSERT INTO Efecto(Parche, cantidad, cantidadmonetaria, fecha) values ('Parche4', 4, 'cantidadmonetaria4', '1/12/2022')

INSERT INTO Efecto(Parche, cantidad, cantidadmonetaria, fecha) values ('Parche5', 5, 'cantidadmonetaria5', '1/12/2022')

INSERT INTO Efecto(Parche, cantidad, cantidadmonetaria, fecha) values ('Parche6', 6, 'cantidadmonetaria6', '1/12/2022')

INSERT INTO Efecto(Parche, cantidad, cantidadmonetaria, fecha) values ('Parche7', 7, 'cantidadmonetaria7', '1/12/2022')

INSERT INTO Efecto(Parche, cantidad, cantidadmonetaria, fecha) values ('Parche8', 8, 'cantidadmonetaria8', '1/12/2022')

INSERT INTO Efecto(Parche, cantidad, cantidadmonetaria, fecha) values ('Parche9', 9, 'cantidadmonetaria9', '1/12/2022')

INSERT INTO Efecto(Parche, cantidad, cantidadmonetaria, fecha) values ('Parche10', 10, 'cantidadmonetaria10', '1/12/2022')



--Encantamiento
INSERT INTO Encantamiento (nombre, apellidop, apellidom) values('Encantamiento1', 'Apellido1', 'Apellido1')

INSERT INTO Encantamiento (nombre, apellidop, apellidom) values('Encantamiento2', 'Apellido2', 'Apellido2')

INSERT INTO Encantamiento (nombre, apellidop, apellidom) values('Encantamiento3', 'Apellido3', 'Apellido3')

INSERT INTO Encantamiento (nombre, apellidop, apellidom) values('Encantamiento4', 'Apellido4', 'Apellido4')

INSERT INTO Encantamiento (nombre, apellidop, apellidom) values('Encantamiento5', 'Apellido5', 'Apellido5')

INSERT INTO Encantamiento (nombre, apellidop, apellidom) values('Encantamiento6', 'Apellido6', 'Apellido6')

INSERT INTO Encantamiento (nombre, apellidop, apellidom) values('Encantamiento7', 'Apellido7', 'Apellido7')

INSERT INTO Encantamiento (nombre, apellidop, apellidom) values('Encantamiento8', 'Apellido8', 'Apellido8')

INSERT INTO Encantamiento (nombre, apellidop, apellidom) values('Encantamiento9', 'Apellido8', 'Apellido9')

INSERT INTO Encantamiento (nombre, apellidop, apellidom) values('Encantamiento10', 'Apellido10', 'Apellido10')


--Estadistica
INSERT INTO Estadistica(Plugin, sueldo, nombre, apellidop, apellidom, calle, numero, ciudad, telefono) values('Plugin1', 'sueldo1', 'nombre1', 'apellidop1', 'apellidom1', 'calle1', 1, 'ciudad1', 1)

INSERT INTO Estadistica(Plugin, sueldo, nombre, apellidop, apellidom, calle, numero, ciudad, telefono) values('Plugin2', 'sueldo2', 'nombre2', 'apellidop2', 'apellidom2', 'calle2', 2, 'ciudad2', 2)

INSERT INTO Estadistica(Plugin, sueldo, nombre, apellidop, apellidom, calle, numero, ciudad, telefono) values('Plugin3', 'sueldo3', 'nombre3', 'apellidop3', 'apellidom3', 'calle3', 3, 'ciudad3', 3)

INSERT INTO Estadistica(Plugin, sueldo, nombre, apellidop, apellidom, calle, numero, ciudad, telefono) values('Plugin4', 'sueldo4', 'nombre4', 'apellidop4', 'apellidom4', 'calle4',4 , 'ciudad4', 4)

INSERT INTO Estadistica(Plugin, sueldo, nombre, apellidop, apellidom, calle, numero, ciudad, telefono) values('Plugin5', 'sueldo5', 'nombre5', 'apellidop5', 'apellidom5', 'calle5', 5, 'ciudad5', 5)

INSERT INTO Estadistica(Plugin, sueldo, nombre, apellidop, apellidom, calle, numero, ciudad, telefono) values('Plugin6', 'sueldo6', 'nombre6', 'apellidop6', 'apellidom6', 'calle6', 6, 'ciudad6', 6)

INSERT INTO Estadistica(Plugin, sueldo, nombre, apellidop, apellidom, calle, numero, ciudad, telefono) values('Plugin7', 'sueldo7', 'nombre7', 'apellidop7', 'apellidom7', 'calle7', 7, 'ciudad7', 7)

INSERT INTO Estadistica(Plugin, sueldo, nombre, apellidop, apellidom, calle, numero, ciudad, telefono) values('Plugin8', 'sueldo8', 'nombre8', 'apellidop8', 'apellidom8', 'calle8', 8, 'ciudad8', 8)

INSERT INTO Estadistica(Plugin, sueldo, nombre, apellidop, apellidom, calle, numero, ciudad, telefono) values('Plugin9', 'sueldo9', 'nombre9', 'apellidop9', 'apellidom9', 'calle9', 9, 'ciudad9', 9)

INSERT INTO Estadistica(Plugin, sueldo, nombre, apellidop, apellidom, calle, numero, ciudad, telefono) values('Plugin10', 'sueldo10', 'nombre10', 'apellidop10', 'apellidom10', 'calle10', 10, 'ciudad10', 10)


--Estructura
INSERT INTO Estructura(nombre, telefono, calle, estado, numero, colonia, ciudad) values('nombre1', 1, 'calle1', 'estado1', 1, 'colonia1', 'ciudad1')

INSERT INTO Estructura(nombre, telefono, calle, estado, numero, colonia, ciudad) values('nombre2', 2, 'calle2', 'estado2', 2, 'colonia2', 'ciudad2')

INSERT INTO Estructura(nombre, telefono, calle, estado, numero, colonia, ciudad) values('nombre3', 3, 'calle3', 'estado3', 3, 'colonia3', 'ciudad3')

INSERT INTO Estructura(nombre, telefono, calle, estado, numero, colonia, ciudad) values('nombre4', 4, 'calle4', 'estado4', 4, 'colonia4', 'ciudad4')

INSERT INTO Estructura(nombre, telefono, calle, estado, numero, colonia, ciudad) values('nombre5', 5, 'calle5', 'estado5', 5, 'colonia5', 'ciudad5')

INSERT INTO Estructura(nombre, telefono, calle, estado, numero, colonia, ciudad) values('nombre6', 6, 'calle6', 'estado6', 6, 'colonia6', 'ciudad6')

INSERT INTO Estructura(nombre, telefono, calle, estado, numero, colonia, ciudad) values('nombre7', 7, 'calle7', 'estado7', 7, 'colonia7', 'ciudad7')

INSERT INTO Estructura(nombre, telefono, calle, estado, numero, colonia, ciudad) values('nombre8', 8, 'calle8', 'estado8', 8, 'colonia8', 'ciudad8')

INSERT INTO Estructura(nombre, telefono, calle, estado, numero, colonia, ciudad) values('nombre9', 9, 'calle9', 'estado9', 9, 'colonia9', 'ciudad9')

INSERT INTO Estructura(nombre, telefono, calle, estado, numero, colonia, ciudad) values('nombre10', 10, 'calle10', 'estado10', 10, 'colonia10', 'ciudad10')


--Evento
INSERT INTO Evento(fechaSalida, fechaLlegada, Parches, cantidad) values('1/12/2022', '1/12/2022', 'Parche1', 1)

INSERT INTO Evento(fechaSalida, fechaLlegada, Parches, cantidad) values('1/12/2022', '1/12/2022', 'Parche2', 2)

INSERT INTO Evento(fechaSalida, fechaLlegada, Parches, cantidad) values('1/12/2022', '1/12/2022', 'Parche3', 3)

INSERT INTO Evento(fechaSalida, fechaLlegada, Parches, cantidad) values('1/12/2022', '1/12/2022', 'Parche4', 4)

INSERT INTO Evento(fechaSalida, fechaLlegada, Parches, cantidad) values('1/12/2022', '1/12/2022', 'Parche5', 5)

INSERT INTO Evento(fechaSalida, fechaLlegada, Parches, cantidad) values('1/12/2022', '1/12/2022', 'Parche6', 6)

INSERT INTO Evento(fechaSalida, fechaLlegada, Parches, cantidad) values('1/12/2022', '1/12/2022', 'Parche7', 7)

INSERT INTO Evento(fechaSalida, fechaLlegada, Parches, cantidad) values('1/12/2022', '1/12/2022', 'Parche8', 8)

INSERT INTO Evento(fechaSalida, fechaLlegada, Parches, cantidad) values('1/12/2022', '1/12/2022', 'Parche9', 9)

INSERT INTO Evento(fechaSalida, fechaLlegada, Parches, cantidad) values('1/12/2022', '1/12/2022', 'Parche10', 10)


--Jefe
INSERT INTO Jefe(nombre, modelo) values('nombre1','modelo1')

INSERT INTO Jefe(nombre, modelo) values('nombre2','modelo2')

INSERT INTO Jefe(nombre, modelo) values('nombre3','modelo3')

INSERT INTO Jefe(nombre, modelo) values('nombre4','modelo4')

INSERT INTO Jefe(nombre, modelo) values('nombre5','modelo5')

INSERT INTO Jefe(nombre, modelo) values('nombre6','modelo6')

INSERT INTO Jefe(nombre, modelo) values('nombre7','modelo7')

INSERT INTO Jefe(nombre, modelo) values('nombre8','modelo8')

INSERT INTO Jefe(nombre, modelo) values('nombre9','modelo9')

INSERT INTO Jefe(nombre, modelo) values('nombre10','modelo10')


--Logro
INSERT INTO Logro(material, nombre, cantidad) values('material1','nomre1', 1)

INSERT INTO Logro(material, nombre, cantidad) values('material2','nomre2', 2)

INSERT INTO Logro(material, nombre, cantidad) values('material3','nomre3', 3)

INSERT INTO Logro(material, nombre, cantidad) values('material4','nomre4', 4)

INSERT INTO Logro(material, nombre, cantidad) values('material5','nomre5', 5)

INSERT INTO Logro(material, nombre, cantidad) values('material6','nomre6', 6)

INSERT INTO Logro(material, nombre, cantidad) values('material7','nomre7', 7)

INSERT INTO Logro(material, nombre, cantidad) values('material8','nomre8', 8)

INSERT INTO Logro(material, nombre, cantidad) values('material9','nomre9', 9)

INSERT INTO Logro(material, nombre, cantidad) values('material10','nomre10', 10)


--Menu
INSERT INTO Menu(tipo) values('tipo1')

INSERT INTO Menu(tipo) values('tipo2')

INSERT INTO Menu(tipo) values('tipo3')

INSERT INTO Menu(tipo) values('tipo4')

INSERT INTO Menu(tipo) values('tipo5')

INSERT INTO Menu(tipo) values('tipo6')

INSERT INTO Menu(tipo) values('tipo7')

INSERT INTO Menu(tipo) values('tipo8')

INSERT INTO Menu(tipo) values('tipo9')

INSERT INTO Menu(tipo) values('tipo10')


--Mob
INSERT INTO Mob(numero, fecha, persona) values(1, '1/12/2022', 'persona1')

INSERT INTO Mob(numero, fecha, persona) values(2, '1/12/2022', 'persona2')

INSERT INTO Mob(numero, fecha, persona) values(3, '1/12/2022', 'persona3')

INSERT INTO Mob(numero, fecha, persona) values(4, '1/12/2022', 'persona4')

INSERT INTO Mob(numero, fecha, persona) values(5, '1/12/2022', 'persona5')

INSERT INTO Mob(numero, fecha, persona) values(6, '1/12/2022', 'persona6')

INSERT INTO Mob(numero, fecha, persona) values(7, '1/12/2022', 'persona7')

INSERT INTO Mob(numero, fecha, persona) values(8, '1/12/2022', 'persona8')

INSERT INTO Mob(numero, fecha, persona) values(9, '1/12/2022', 'persona9')

INSERT INTO Mob(numero, fecha, persona) values(10, '1/12/2022', 'persona10')



--Modd
INSERT INTO Modd(Parche, precio, precioAnterior, fecha) values('Parche1', 'precio1', 'precioAnterior1', '1/12/2022')

INSERT INTO Modd(Parche, precio, precioAnterior, fecha) values('Parche1', 'precio1', 'precioAnterior1', '1/12/2022')

INSERT INTO Modd(Parche, precio, precioAnterior, fecha) values('Parche1', 'precio1', 'precioAnterior1', '1/12/2022')

INSERT INTO Modd(Parche, precio, precioAnterior, fecha) values('Parche1', 'precio1', 'precioAnterior1', '1/12/2022')

INSERT INTO Modd(Parche, precio, precioAnterior, fecha) values('Parche1', 'precio1', 'precioAnterior1', '1/12/2022')

INSERT INTO Modd(Parche, precio, precioAnterior, fecha) values('Parche1', 'precio1', 'precioAnterior1', '1/12/2022')

INSERT INTO Modd(Parche, precio, precioAnterior, fecha) values('Parche1', 'precio1', 'precioAnterior1', '1/12/2022')

INSERT INTO Modd(Parche, precio, precioAnterior, fecha) values('Parche1', 'precio1', 'precioAnterior1', '1/12/2022')

INSERT INTO Modd(Parche, precio, precioAnterior, fecha) values('Parche1', 'precio1', 'precioAnterior1', '1/12/2022')

INSERT INTO Modd(Parche, precio, precioAnterior, fecha) values('Parche1', 'precio1', 'precioAnterior1', '1/12/2022')


--ModoJuego
INSERT INTO ModoJuego(nombre, apellidoPaterno, apellidoMaterno, fechaNacimiento) values('nombre1', 'apellidop1', 'apellidom1', '1/12/2022')

INSERT INTO ModoJuego(nombre, apellidoPaterno, apellidoMaterno, fechaNacimiento) values('nombre2', 'apellidop2', 'apellidom2', '1/12/2022')

INSERT INTO ModoJuego(nombre, apellidoPaterno, apellidoMaterno, fechaNacimiento) values('nombre3', 'apellidop3', 'apellidom3', '1/12/2022')

INSERT INTO ModoJuego(nombre, apellidoPaterno, apellidoMaterno, fechaNacimiento) values('nombre4', 'apellidop4', 'apellidom4', '1/12/2022')

INSERT INTO ModoJuego(nombre, apellidoPaterno, apellidoMaterno, fechaNacimiento) values('nombre5', 'apellidop5', 'apellidom5', '1/12/2022')

INSERT INTO ModoJuego(nombre, apellidoPaterno, apellidoMaterno, fechaNacimiento) values('nombre6', 'apellidop6', 'apellidom6', '1/12/2022')

INSERT INTO ModoJuego(nombre, apellidoPaterno, apellidoMaterno, fechaNacimiento) values('nombre7', 'apellidop7', 'apellidom7', '1/12/2022')

INSERT INTO ModoJuego(nombre, apellidoPaterno, apellidoMaterno, fechaNacimiento) values('nombre8', 'apellidop8', 'apellidom8', '1/12/2022')

INSERT INTO ModoJuego(nombre, apellidoPaterno, apellidoMaterno, fechaNacimiento) values('nombre9', 'apellidop9', 'apellidom9', '1/12/2022')

INSERT INTO ModoJuego(nombre, apellidoPaterno, apellidoMaterno, fechaNacimiento) values('nombre10', 'apellidop10', 'apellidom10', '1/12/2022')


--Sonido
INSERT INTO Sonido(Parches, cantidad, costo) values('Parche1', 1, 'costo1')

INSERT INTO Sonido(Parches, cantidad, costo) values('Parche2', 2, 'costo2')

INSERT INTO Sonido(Parches, cantidad, costo) values('Parche3', 3, 'costo3')

INSERT INTO Sonido(Parches, cantidad, costo) values('Parche4', 4, 'costo4')

INSERT INTO Sonido(Parches, cantidad, costo) values('Parche5', 5, 'costo5')

INSERT INTO Sonido(Parches, cantidad, costo) values('Parche6', 6, 'costo6')

INSERT INTO Sonido(Parches, cantidad, costo) values('Parche7', 7, 'costo7')

INSERT INTO Sonido(Parches, cantidad, costo) values('Parche8', 8, 'costo8')

INSERT INTO Sonido(Parches, cantidad, costo) values('Parche9', 9, 'costo9')

INSERT INTO Sonido(Parches, cantidad, costo) values('Parche10', 10, 'costo10')


--PackRecurso
INSERT INTO PackRecurso(clasificacion, descripcion) values('clasificacion1', 'descripcion1')

INSERT INTO PackRecurso(clasificacion, descripcion) values('clasificacion2', 'descripcion2')

INSERT INTO PackRecurso(clasificacion, descripcion) values('clasificacion3', 'descripcion3')

INSERT INTO PackRecurso(clasificacion, descripcion) values('clasificacion4', 'descripcion4')

INSERT INTO PackRecurso(clasificacion, descripcion) values('clasificacion5', 'descripcion5')

INSERT INTO PackRecurso(clasificacion, descripcion) values('clasificacion6', 'descripcion6')

INSERT INTO PackRecurso(clasificacion, descripcion) values('clasificacion7', 'descripcion7')

INSERT INTO PackRecurso(clasificacion, descripcion) values('clasificacion8', 'descripcion8')

INSERT INTO PackRecurso(clasificacion, descripcion) values('clasificacion9', 'descripcion9')

INSERT INTO PackRecurso(clasificacion, descripcion) values('clasificacion10', 'descripcion10')



--PackTextura
INSERT INTO PackTextura(cantidadFinal, ingresos) values(1, 'ingreso1')

INSERT INTO PackTextura(cantidadFinal, ingresos) values(2, 'ingreso2')

INSERT INTO PackTextura(cantidadFinal, ingresos) values(3, 'ingreso3')

INSERT INTO PackTextura(cantidadFinal, ingresos) values(4, 'ingreso4')

INSERT INTO PackTextura(cantidadFinal, ingresos) values(5, 'ingreso5')

INSERT INTO PackTextura(cantidadFinal, ingresos) values(6, 'ingreso6')

INSERT INTO PackTextura(cantidadFinal, ingresos) values(7, 'ingreso7')

INSERT INTO PackTextura(cantidadFinal, ingresos) values(8, 'ingreso8')

INSERT INTO PackTextura(cantidadFinal, ingresos) values(9, 'ingreso9')

INSERT INTO PackTextura(cantidadFinal, ingresos) values(10, 'ingreso10')


--Templo
INSERT INTO Templo(nombre, telefoo, calle, estado, colonia, ciudad) values('nombre1', 1, 'calle1', 'estado1', 'colonia1', 'ciudad1')

INSERT INTO Templo(nombre, telefoo, calle, estado, colonia, ciudad) values('nombre2', 2, 'calle2', 'estado2', 'colonia2', 'ciudad2')

INSERT INTO Templo(nombre, telefoo, calle, estado, colonia, ciudad) values('nombre3', 3, 'calle3', 'estado3', 'colonia3', 'ciudad3')

INSERT INTO Templo(nombre, telefoo, calle, estado, colonia, ciudad) values('nombre4', 4, 'calle4', 'estado4', 'colonia4', 'ciudad4')

INSERT INTO Templo(nombre, telefoo, calle, estado, colonia, ciudad) values('nombre5', 5, 'calle5', 'estado5', 'colonia5', 'ciudad5')

INSERT INTO Templo(nombre, telefoo, calle, estado, colonia, ciudad) values('nombre6', 6, 'calle6', 'estado6', 'colonia6', 'ciudad6')

INSERT INTO Templo(nombre, telefoo, calle, estado, colonia, ciudad) values('nombre7', 7, 'calle7', 'estado7', 'colonia7', 'ciudad7')

INSERT INTO Templo(nombre, telefoo, calle, estado, colonia, ciudad) values('nombre8', 8, 'calle8', 'estado8', 'colonia8', 'ciudad8')

INSERT INTO Templo(nombre, telefoo, calle, estado, colonia, ciudad) values('nombre9', 9, 'calle9', 'estado9', 'colonia9', 'ciudad9')

INSERT INTO Templo(nombre, telefoo, calle, estado, colonia, ciudad) values('nombre10', 10, 'calle10', 'estado10', 'colonia10', 'ciudad10')


--Tesoro
INSERT INTO Tesoro(fecha, cantidad) values('1/12/2022', 'cantidad1')

INSERT INTO Tesoro(fecha, cantidad) values('1/12/2022', 'cantidad2')

INSERT INTO Tesoro(fecha, cantidad) values('1/12/2022', 'cantidad3')

INSERT INTO Tesoro(fecha, cantidad) values('1/12/2022', 'cantidad4')

INSERT INTO Tesoro(fecha, cantidad) values('1/12/2022', 'cantidad5')

INSERT INTO Tesoro(fecha, cantidad) values('1/12/2022', 'cantidad6')

INSERT INTO Tesoro(fecha, cantidad) values('1/12/2022', 'cantidad7')

INSERT INTO Tesoro(fecha, cantidad) values('1/12/2022', 'cantidad8')

INSERT INTO Tesoro(fecha, cantidad) values('1/12/2022', 'cantidad9')

INSERT INTO Tesoro(fecha, cantidad) values('1/12/2022', 'cantidad10')


--Pesca
INSERT INTO Pesca(nombre, apellidoPaterno, apellidMaterno, calle, numero, ciudad, telefono) values('nombre1', 'apellidop1', 'apellidom1', 'calle1', 1, 'ciudad1', 1)

INSERT INTO Pesca(nombre, apellidoPaterno, apellidMaterno, calle, numero, ciudad, telefono) values('nombre2', 'apellidop2', 'apellidom2', 'calle2', 2, 'ciudad2', 2)

INSERT INTO Pesca(nombre, apellidoPaterno, apellidMaterno, calle, numero, ciudad, telefono) values('nombre3', 'apellidop3', 'apellidom3', 'calle3', 3, 'ciudad3', 3)

INSERT INTO Pesca(nombre, apellidoPaterno, apellidMaterno, calle, numero, ciudad, telefono) values('nombre4', 'apellidop4', 'apellidom4', 'calle4', 4, 'ciudad4', 4)

INSERT INTO Pesca(nombre, apellidoPaterno, apellidMaterno, calle, numero, ciudad, telefono) values('nombre5', 'apellidop5', 'apellidom5', 'calle5', 5, 'ciudad5', 5)

INSERT INTO Pesca(nombre, apellidoPaterno, apellidMaterno, calle, numero, ciudad, telefono) values('nombre6', 'apellidop6', 'apellidom6', 'calle6', 6, 'ciudad6', 6)

INSERT INTO Pesca(nombre, apellidoPaterno, apellidMaterno, calle, numero, ciudad, telefono) values('nombre7', 'apellidop7', 'apellidom7', 'calle7', 7, 'ciudad7', 7)

INSERT INTO Pesca(nombre, apellidoPaterno, apellidMaterno, calle, numero, ciudad, telefono) values('nombre8', 'apellidop8', 'apellidom8', 'calle8', 8, 'ciudad8', 8)

INSERT INTO Pesca(nombre, apellidoPaterno, apellidMaterno, calle, numero, ciudad, telefono) values('nombre9', 'apellidop9', 'apellidom9', 'calle9', 9, 'ciudad9', 9)

INSERT INTO Pesca(nombre, apellidoPaterno, apellidMaterno, calle, numero, ciudad, telefono) values('nombre10', 'apellidop10', 'apellidom10', 'calle10', 10, 'ciudad10', 10)


--Stack
INSERT INTO Stack(Jefe, matricula, modelo, cilindros) values('Jefe1', 'matricula1', 'modelo1', 'cilindro1')

INSERT INTO Stack(Jefe, matricula, modelo, cilindros) values('Jefe2', 'matricula2', 'modelo2', 'cilindro2')

INSERT INTO Stack(Jefe, matricula, modelo, cilindros) values('Jefe3', 'matricula3', 'modelo3', 'cilindro3')

INSERT INTO Stack(Jefe, matricula, modelo, cilindros) values('Jefe4', 'matricula4', 'modelo4', 'cilindro4')

INSERT INTO Stack(Jefe, matricula, modelo, cilindros) values('Jefe5', 'matricula5', 'modelo5', 'cilindro5')

INSERT INTO Stack(Jefe, matricula, modelo, cilindros) values('Jefe6', 'matricula6', 'modelo6', 'cilindro6')

INSERT INTO Stack(Jefe, matricula, modelo, cilindros) values('Jefe7', 'matricula7', 'modelo7', 'cilindro7')

INSERT INTO Stack(Jefe, matricula, modelo, cilindros) values('Jefe8', 'matricula8', 'modelo8', 'cilindro8')

INSERT INTO Stack(Jefe, matricula, modelo, cilindros) values('Jefe9', 'matricula9', 'modelo9', 'cilindro9')

INSERT INTO Stack(Jefe, matricula, modelo, cilindros) values('Jefe10', 'matricula10', 'modelo10', 'cilindro9')



--Aldea
INSERT INTO Aldea(nombre, fecha, idEncantamiento, estatus) values ('Aldea1', '1/12/2022', '1', '1')

INSERT INTO Aldea(nombre, fecha, idEncantamiento, estatus) values ('Aldea2', '1/12/2022', '2', '1')

INSERT INTO Aldea(nombre, fecha, idEncantamiento, estatus) values ('Aldea3', '1/12/2022', '3', '1')

INSERT INTO Aldea(nombre, fecha, idEncantamiento, estatus) values ('Aldea4', '1/12/2022', '4', '1')

INSERT INTO Aldea(nombre, fecha, idEncantamiento, estatus) values ('Aldea5', '1/12/2022', '5', '1')

INSERT INTO Aldea(nombre, fecha, idEncantamiento, estatus) values ('Aldea6', '1/12/2022', '6', '1')

INSERT INTO Aldea(nombre, fecha, idEncantamiento, estatus) values ('Aldea7', '1/12/2022', '7', '1')

INSERT INTO Aldea(nombre, fecha, idEncantamiento, estatus) values ('Aldea8', '1/12/2022', '8', '1')

INSERT INTO Aldea(nombre, fecha, idEncantamiento, estatus) values ('Aldea9', '1/12/2022', '9', '1')

INSERT INTO Aldea(nombre, fecha, idEncantamiento, estatus) values ('Aldea10', '1/12/2022', '10', '1')

SELECT *FROM Aldea


--Animal
INSERT INTO Animal(nombre, calle, numero, ciudad, idTemplo, estatus) values ('Animal1', 'calle1',1, 'ciudad1', '1', '1')

INSERT INTO Animal(nombre, calle, numero, ciudad, idTemplo, estatus) values ('Animal2', 'calle2',2,  'ciudad2', '2', '1')

INSERT INTO Animal(nombre, calle, numero, ciudad, idTemplo, estatus) values ('Animal3', 'calle3',3, 'ciudad3', '3', '1')

INSERT INTO Animal(nombre, calle, numero, ciudad, idTemplo, estatus) values ('Animal4', 'calle4',4, 'ciudad4', '4', '1')

INSERT INTO Animal(nombre, calle, numero, ciudad, idTemplo, estatus) values ('Animal5', 'calle5',5, 'ciudad5', '5', '1')

INSERT INTO Animal(nombre, calle, numero, ciudad, idTemplo, estatus) values ('Animal6', 'calle6',6, 'ciudad6', '6', '1')

INSERT INTO Animal(nombre, calle, numero, ciudad, idTemplo, estatus) values ('Animal7', 'calle7',7, 'ciudad7', '7', '1')

INSERT INTO Animal(nombre, calle, numero, ciudad, idTemplo, estatus) values ('Animal8', 'calle8',8, 'ciudad8', '8', '1')

INSERT INTO Animal(nombre, calle, numero, ciudad, idTemplo, estatus) values ('Animal9', 'calle9',9, 'ciudad9', '9', '1')

INSERT INTO Animal(nombre, calle, numero, ciudad, idTemplo, estatus) values ('Animal10', 'calle10',10, 'ciudad10', '10', '1')


SELECT *FROM Animal

--Arma
INSERT INTO Arma(numer, persona, computadora, idTemplo, estatus) values (1, 'persona1', 'computadora1', '1', '1')

INSERT INTO Arma(numer, persona, computadora, idTemplo, estatus) values (2, 'persona2', 'computadora2', '2', '1')

INSERT INTO Arma(numer, persona, computadora, idTemplo, estatus) values (3, 'persona3', 'computadora3', '3', '1')

INSERT INTO Arma(numer, persona, computadora, idTemplo, estatus) values (4, 'persona4', 'computadora4', '4', '1')

INSERT INTO Arma(numer, persona, computadora, idTemplo, estatus) values (5, 'persona5', 'computadora5', '5', '1')

INSERT INTO Arma(numer, persona, computadora, idTemplo, estatus) values (6, 'persona6', 'computadora6', '6', '1')

INSERT INTO Arma(numer, persona, computadora, idTemplo, estatus) values (7, 'persona7', 'computadora7', '7', '1')

INSERT INTO Arma(numer, persona, computadora, idTemplo, estatus) values (8, 'persona8', 'computadora8', '8', '1')

INSERT INTO Arma(numer, persona, computadora, idTemplo, estatus) values (9, 'persona9', 'computadora9', '9', '1')

INSERT INTO Arma(numer, persona, computadora, idTemplo, estatus) values (10, 'persona10', 'computadora110', '10', '1')


--Bloque
INSERT INTO Bloque(fecha, asunto, nombre, edad, idAldea, estatus) values ('1/12/2022', 'asunto1', 'nombre1', 1, '1', '1')

INSERT INTO Bloque(fecha, asunto, nombre, edad, idAldea, estatus) values ('1/12/2022', 'asunto2', 'nombre2', 2, '2', '1')

INSERT INTO Bloque(fecha, asunto, nombre, edad, idAldea, estatus) values ('1/12/2022', 'asunto3', 'nombre3', 3, '3', '1')

INSERT INTO Bloque(fecha, asunto, nombre, edad, idAldea, estatus) values ('1/12/2022', 'asunto4', 'nombre4', 4, '4', '1')

INSERT INTO Bloque(fecha, asunto, nombre, edad, idAldea, estatus) values ('1/12/2022', 'asunto5', 'nombre5', 5, '5', '1')

INSERT INTO Bloque(fecha, asunto, nombre, edad, idAldea, estatus) values ('1/12/2022', 'asunto6', 'nombre6', 6, '6', '1')

INSERT INTO Bloque(fecha, asunto, nombre, edad, idAldea, estatus) values ('1/12/2022', 'asunto7', 'nombre7', 7, '7', '1')

INSERT INTO Bloque(fecha, asunto, nombre, edad, idAldea, estatus) values ('1/12/2022', 'asunto8', 'nombre8', 8, '8', '1')

INSERT INTO Bloque(fecha, asunto, nombre, edad, idAldea, estatus) values ('1/12/2022', 'asunto9', 'nombre9', 9, '9', '1')

INSERT INTO Bloque(fecha, asunto, nombre, edad, idAldea, estatus) values ('1/12/2022', 'asunto10', 'nombre10', 10, '10', '1')


--Chat
INSERT INTO Chat(nombre, apellidoPaterno, apellidoMaterno, curp, calle,  telefono, numero, estado, idCultivo, estatus) values ('nombre1', 'apellidoPaterno1', 'apellidoMaterno', 'curp1','calle1', 1, 1, 'Estado1', '1', '1')

INSERT INTO Chat(nombre, apellidoPaterno, apellidoMaterno, curp, calle, telefono, numero, estado, idCultivo, estatus) values ('nombre1', 'apellidoPaterno1', 'apellidoMaterno', 'curp1', 'Calle2', 2, 2, 'Estado2', '1', '1')

INSERT INTO Chat(nombre, apellidoPaterno, apellidoMaterno, curp, calle,  telefono, numero, estado, idCultivo, estatus) values ('nombre1', 'apellidoPaterno1', 'apellidoMaterno', 'curp1', 'Calle3',3, 3, 'Estado3','1', '1')

INSERT INTO Chat(nombre, apellidoPaterno, apellidoMaterno, curp, calle,  telefono, numero, estado, idCultivo, estatus) values ('nombre1', 'apellidoPaterno1', 'apellidoMaterno', 'curp1', 'Calle4', 4, 4, 'Estado4', '1', '1')

INSERT INTO Chat(nombre, apellidoPaterno, apellidoMaterno, curp, calle,  telefono, numero, estado, idCultivo, estatus) values ('nombre1', 'apellidoPaterno1', 'apellidoMaterno', 'curp1', 'Calle5', 5, 5, 'Estado5', '1', '1')

INSERT INTO Chat(nombre, apellidoPaterno, apellidoMaterno, curp, calle,  telefono, numero, estado, idCultivo, estatus) values ('nombre1', 'apellidoPaterno1', 'apellidoMaterno', 'curp1', 'Calle6', 6,6, 'Estado6',  '1', '1')

INSERT INTO Chat(nombre, apellidoPaterno, apellidoMaterno, curp, calle,  telefono, numero, estado, idCultivo, estatus) values ('nombre1', 'apellidoPaterno1', 'apellidoMaterno', 'curp1','Calle7', 7, 7, 'Estado7', '1', '1')

INSERT INTO Chat(nombre, apellidoPaterno, apellidoMaterno, curp, calle, telefono, numero, estado, idCultivo, estatus) values ('nombre1', 'apellidoPaterno1', 'apellidoMaterno', 'curp1', 'Calle8', 8,8, 'Estado8', '1', '1')

INSERT INTO Chat(nombre, apellidoPaterno, apellidoMaterno, curp, calle,  telefono, numero, estado, idCultivo, estatus) values ('nombre1', 'apellidoPaterno1', 'apellidoMaterno', 'curp1', 'Calle9',  9, 9, 'Estado9', '1', '1')

INSERT INTO Chat(nombre, apellidoPaterno, apellidoMaterno, curp, calle,  telefono, numero, estado, idCultivo, estatus) values ('nombre1', 'apellidoPaterno1', 'apellidoMaterno', 'curp1', 'Calle10', 10, 10, 'Estado10', '1', '1')


--Crafteo
INSERT INTO Crafteo(cantidad, fecha, idChat , estatus) values (1, '1/12/2022', '1', '1')

INSERT INTO Crafteo(cantidad, fecha, idChat , estatus) values (2, '1/12/2022', '2', '1')

INSERT INTO Crafteo(cantidad, fecha, idChat , estatus) values (3, '1/12/2022', '3', '1')

INSERT INTO Crafteo(cantidad, fecha, idChat , estatus) values (4, '1/12/2022', '4', '1')

INSERT INTO Crafteo(cantidad, fecha, idChat , estatus) values (5, '1/12/2022', '5', '1')

INSERT INTO Crafteo(cantidad, fecha, idChat , estatus) values (6, '1/12/2022', '6', '1')

INSERT INTO Crafteo(cantidad, fecha, idChat , estatus) values (7, '1/12/2022', '7', '1')

INSERT INTO Crafteo(cantidad, fecha, idChat , estatus) values (8, '1/12/2022', '8', '1')

INSERT INTO Crafteo(cantidad, fecha, idChat , estatus) values (9, '1/12/2022', '9', '1')

INSERT INTO Crafteo(cantidad, fecha, idChat , estatus) values (10, '1/12/2022', '10', '1')



--Chunk
INSERT INTO Chunk(cantidad, fecha, idComida, idCrafteo, estatus) values (1, '1/12/2022', '1', '1', '1')

INSERT INTO Chunk(cantidad, fecha, idComida, idCrafteo, estatus) values (2, '1/12/2022', '2', '2', '1')

INSERT INTO Chunk(cantidad, fecha, idComida, idCrafteo, estatus) values (3, '1/12/2022', '3', '3', '1')

INSERT INTO Chunk(cantidad, fecha, idComida, idCrafteo, estatus) values (4, '1/12/2022', '4', '4', '1')

INSERT INTO Chunk(cantidad, fecha, idComida, idCrafteo, estatus) values (5, '1/12/2022', '5', '5', '1')

INSERT INTO Chunk(cantidad, fecha, idComida, idCrafteo, estatus) values (6, '1/12/2022', '6', '6', '1')

INSERT INTO Chunk(cantidad, fecha, idComida, idCrafteo, estatus) values (7, '1/12/2022', '7', '7', '1')

INSERT INTO Chunk(cantidad, fecha, idComida, idCrafteo, estatus) values (8, '1/12/2022', '8', '8', '1')

INSERT INTO Chunk(cantidad, fecha, idComida, idCrafteo, estatus) values (9, '1/12/2022', '9', '9', '1')

INSERT INTO Chunk(cantidad, fecha, idComida, idCrafteo, estatus) values (10, '1/12/2022', '10', '10', '1')




--Comercio
INSERT INTO Comercio(fecha, precio, nombre, idModoJuego, idEncantamiento, estatus) values ('1/12/2022', 1, 'nombre1', '1', '1', '1')

INSERT INTO Comercio(fecha, precio, nombre, idModoJuego, idEncantamiento, estatus) values ('1/12/2022', 2, 'nombre2', '2', '2', '1')

INSERT INTO Comercio(fecha, precio, nombre, idModoJuego, idEncantamiento, estatus) values ('1/12/2022', 3, 'nombre3', '3', '3', '1')

INSERT INTO Comercio(fecha, precio, nombre, idModoJuego, idEncantamiento, estatus) values ('1/12/2022', 4, 'nombre4', '4', '4', '1')

INSERT INTO Comercio(fecha, precio, nombre, idModoJuego, idEncantamiento, estatus) values ('1/12/2022', 5, 'nombre5', '5', '5', '1')

INSERT INTO Comercio(fecha, precio, nombre, idModoJuego, idEncantamiento, estatus) values ('1/12/2022', 6, 'nombre6', '6', '6', '1')

INSERT INTO Comercio(fecha, precio, nombre, idModoJuego, idEncantamiento, estatus) values ('1/12/2022', 7, 'nombre7', '7', '7', '1')

INSERT INTO Comercio(fecha, precio, nombre, idModoJuego, idEncantamiento, estatus) values ('1/12/2022', 8, 'nombre8', '8', '8', '1')

INSERT INTO Comercio(fecha, precio, nombre, idModoJuego, idEncantamiento, estatus) values ('1/12/2022', 9, 'nombre9', '9', '9', '1')

INSERT INTO Comercio(fecha, precio, nombre, idModoJuego, idEncantamiento, estatus) values ('1/12/2022', 10, 'nombre10', '10', '10', '1')


--ConfigUsuario
INSERT INTO ConfigUsuario(fecha, nombre, servicio, idEstadistica, estatus) values ('1/12/2022', 'nombre1', 'servicio1', '1', '1')

INSERT INTO ConfigUsuario(fecha, nombre, servicio, idEstadistica, estatus) values ('1/12/2022', 'nombre2', 'servicio2', '2', '1')

INSERT INTO ConfigUsuario(fecha, nombre, servicio, idEstadistica, estatus) values ('1/12/2022', 'nombre3', 'servicio3', '3', '1')

INSERT INTO ConfigUsuario(fecha, nombre, servicio, idEstadistica, estatus) values ('1/12/2022', 'nombre4', 'servicio4', '4', '1')

INSERT INTO ConfigUsuario(fecha, nombre, servicio, idEstadistica, estatus) values ('1/12/2022', 'nombre5', 'servicio5', '5', '1')

INSERT INTO ConfigUsuario(fecha, nombre, servicio, idEstadistica, estatus) values ('1/12/2022', 'nombre6', 'servicio6', '6', '1')

INSERT INTO ConfigUsuario(fecha, nombre, servicio, idEstadistica, estatus) values ('1/12/2022', 'nombre7', 'servicio7', '7', '1')

INSERT INTO ConfigUsuario(fecha, nombre, servicio, idEstadistica, estatus) values ('1/12/2022', 'nombre8', 'servicio8', '8', '1')

INSERT INTO ConfigUsuario(fecha, nombre, servicio, idEstadistica, estatus) values ('1/12/2022', 'nombre9', 'servicio9', '9', '1')

INSERT INTO ConfigUsuario(fecha, nombre, servicio, idEstadistica, estatus) values ('1/12/2022','nombre10','servicio10','10','1')


--Coordenada
INSERT INTO Coordenada(fecha, cantidad, idChat, estatus) values ('1/12/2022', 1, '1', '1')

INSERT INTO Coordenada(fecha, cantidad, idChat, estatus) values ('1/12/2022', 2, '2', '1')

INSERT INTO Coordenada(fecha, cantidad, idChat, estatus) values ('1/12/2022', 3, '3', '1')

INSERT INTO Coordenada(fecha, cantidad, idChat, estatus) values ('1/12/2022', 4, '4', '1')

INSERT INTO Coordenada(fecha, cantidad, idChat, estatus) values ('1/12/2022', 5, '5', '1')

INSERT INTO Coordenada(fecha, cantidad, idChat, estatus) values ('1/12/2022', 6, '6', '1')

INSERT INTO Coordenada(fecha, cantidad, idChat, estatus) values ('1/12/2022', 7, '7', '1')

INSERT INTO Coordenada(fecha, cantidad, idChat, estatus) values ('1/12/2022', 8, '8', '1')

INSERT INTO Coordenada(fecha, cantidad, idChat, estatus) values ('1/12/2022', 9, '9', '1')

INSERT INTO Coordenada(fecha, cantidad, idChat, estatus) values ('1/12/2022', 10, '10', '1')


--Dimension
INSERT INTO Dimension(cantidad, Parche, direccion, horasalida, horallegada, idTemplo, estatus) values ('Cantidad1','Parche1', 'Direccion1', '1/12/2022', '1/12/2022', '1', '1')

INSERT INTO Dimension(cantidad, Parche, direccion, horasalida, horallegada, idTemplo, estatus) values ('Cantidad2','Parche2', 'Direccion2', '1/12/2022', '1/12/2022', '2', '1')

INSERT INTO Dimension(cantidad, Parche, direccion, horasalida, horallegada, idTemplo, estatus) values ('Cantidad3','Parche3', 'Direccion3', '1/12/2022', '1/12/2022', '3', '1')

INSERT INTO Dimension(cantidad, Parche, direccion, horasalida, horallegada, idTemplo, estatus) values ('Cantidad4','Parche4', 'Direccion4', '1/12/2022', '1/12/2022', '4', '1')

INSERT INTO Dimension(cantidad, Parche, direccion, horasalida, horallegada, idTemplo, estatus) values ('Cantidad5','Parche5', 'Direccion5', '1/12/2022', '1/12/2022', '5', '1')

INSERT INTO Dimension(cantidad, Parche, direccion, horasalida, horallegada, idTemplo, estatus) values ('Cantidad6','Parche6', 'Direccion6', '1/12/2022', '1/12/2022', '6', '1')

INSERT INTO Dimension(cantidad, Parche, direccion, horasalida, horallegada, idTemplo, estatus) values ('Cantidad7','Parche7', 'Direccion7', '1/12/2022', '1/12/2022', '7', '1')

INSERT INTO Dimension(cantidad, Parche, direccion, horasalida, horallegada, idTemplo, estatus) values ('Cantidad8','Parche8', 'Direccion8', '1/12/2022', '1/12/2022', '8', '1')

INSERT INTO Dimension(cantidad, Parche, direccion, horasalida, horallegada, idTemplo, estatus) values ('Cantidad9','Parche9', 'Direccion9', '1/12/2022', '1/12/2022', '9', '1')

INSERT INTO Dimension(cantidad, Parche, direccion, horasalida, horallegada, idTemplo, estatus) values ('Cantidad10','Parche10', 'Direccion10', '1/12/2022', '1/12/2022', '10', '1')



--Fluido
INSERT INTO Fluido(numero, numerodiscapaBloquedos, idTemplo, estatus) values(1,  1, '1', '1')

INSERT INTO Fluido(numero, numerodiscapaBloquedos, idTemplo, estatus) values(2,  2, '2', '1')

INSERT INTO Fluido(numero, numerodiscapaBloquedos, idTemplo, estatus) values(3,  3, '3', '1')

INSERT INTO Fluido(numero, numerodiscapaBloquedos, idTemplo, estatus) values(4,  4, '4', '1')

INSERT INTO Fluido(numero, numerodiscapaBloquedos, idTemplo, estatus) values(5,  5, '5', '1')

INSERT INTO Fluido(numero, numerodiscapaBloquedos, idTemplo, estatus) values(6,  6, '6', '1')

INSERT INTO Fluido(numero, numerodiscapaBloquedos, idTemplo, estatus) values(7,  7, '7', '1')

INSERT INTO Fluido(numero, numerodiscapaBloquedos, idTemplo, estatus) values(8,  8, '8', '1')

INSERT INTO Fluido(numero, numerodiscapaBloquedos, idTemplo, estatus) values(9,  9, '9', '1')

INSERT INTO Fluido(numero, numerodiscapaBloquedos, idTemplo, estatus) values(10,  10, '10', '1')


--Fortaleza
INSERT INTO Fortaleza(fecha, remitente, cantidad, idConfigMundo, idChat, estatus) values('1/12/2022', 'remitente1', 1, '1', '1', '1')

INSERT INTO Fortaleza(fecha, remitente, cantidad, idConfigMundo, idChat, estatus) values('1/12/2022', 'remitente2', 2, '2', '2', '1')

INSERT INTO Fortaleza(fecha, remitente, cantidad, idConfigMundo, idChat, estatus) values('1/12/2022', 'remitente3', 3, '3', '3', '1')

INSERT INTO Fortaleza(fecha, remitente, cantidad, idConfigMundo, idChat, estatus) values('1/12/2022', 'remitente4', 4, '4', '4', '1')

INSERT INTO Fortaleza(fecha, remitente, cantidad, idConfigMundo, idChat, estatus) values('1/12/2022', 'remitente5', 5, '5', '5', '1')

INSERT INTO Fortaleza(fecha, remitente, cantidad, idConfigMundo, idChat, estatus) values('1/12/2022', 'remitente6', 6, '6', '6', '1')

INSERT INTO Fortaleza(fecha, remitente, cantidad, idConfigMundo, idChat, estatus) values('1/12/2022', 'remitente7', 7, '7', '7', '1')

INSERT INTO Fortaleza(fecha, remitente, cantidad, idConfigMundo, idChat, estatus) values('1/12/2022', 'remitente8', 8, '8', '8', '1')

INSERT INTO Fortaleza(fecha, remitente, cantidad, idConfigMundo, idChat, estatus) values('1/12/2022', 'remitente9', 9, '9', '9', '1')

INSERT INTO Fortaleza(fecha, remitente, cantidad, idConfigMundo, idChat, estatus) values('1/12/2022', 'remitente10', 10, '10', '10', '1')


--Generacion
INSERT INTO Generacion(fecha, remitente, cantidad, idConfigMundo,idPesca, estatus) values('1/12/2022', 'remitente1', 1, '1', '1', '1')

INSERT INTO Generacion(fecha, remitente, cantidad, idConfigMundo, idPesca, estatus) values('1/12/2022', 'remitente2', 2, '2', '2', '1')

INSERT INTO Generacion(fecha, remitente, cantidad, idConfigMundo, idPesca, estatus) values('1/12/2022', 'remitente3', 3, '3', '3', '1')

INSERT INTO Generacion(fecha, remitente, cantidad, idConfigMundo, idPesca, estatus) values('1/12/2022', 'remitente4', 4, '4', '4', '1')

INSERT INTO Generacion(fecha, remitente, cantidad, idConfigMundo, idPesca, estatus) values('1/12/2022', 'remitente5', 5, '5', '5', '1')

INSERT INTO Generacion(fecha, remitente, cantidad, idConfigMundo, idPesca, estatus) values('1/12/2022', 'remitente6', 6, '6', '6', '1')

INSERT INTO Generacion(fecha, remitente, cantidad, idConfigMundo, idPesca,estatus) values('1/12/2022', 'remitente7', 7, '7', '7', '1')

INSERT INTO Generacion(fecha, remitente, cantidad, idConfigMundo, idPesca, estatus) values('1/12/2022', 'remitente8', 8, '8', '8','1')

INSERT INTO Generacion(fecha, remitente, cantidad, idConfigMundo, idPesca, estatus) values('1/12/2022', 'remitente9', 9, '9', '9','1')

INSERT INTO Generacion(fecha, remitente, cantidad, idConfigMundo, idPesca, estatus) values('1/12/2022', 'remitente10', 10, '10', '10','1')


--Herramienta
INSERT INTO Herramienta(entrada, salida, horasextras, idEstadistica, estatus) values('8:50', '8:50', 'horaextra1', '1', '1')

INSERT INTO Herramienta(entrada, salida, horasextras, idEstadistica, estatus) values('8:50', '8:50', 'horaextra2', '2', '1')

INSERT INTO Herramienta(entrada, salida, horasextras, idEstadistica, estatus) values('8:50', '8:50', 'horaextra3', '3', '1')

INSERT INTO Herramienta(entrada, salida, horasextras, idEstadistica, estatus) values('8:50', '8:50', 'horaextra4', '4', '1')

INSERT INTO Herramienta(entrada, salida, horasextras, idEstadistica, estatus) values('8:50', '8:50', 'horaextra5', '5', '1')

INSERT INTO Herramienta(entrada, salida, horasextras, idEstadistica, estatus) values('8:50', '8:50', 'horaextra6', '6', '1')

INSERT INTO Herramienta(entrada, salida, horasextras, idEstadistica, estatus) values('8:50', '8:50', 'horaextra7', '7', '1')

INSERT INTO Herramienta(entrada, salida, horasextras, idEstadistica, estatus) values('8:50', '8:50', 'horaextra8', '8', '1')

INSERT INTO Herramienta(entrada, salida, horasextras, idEstadistica, estatus) values('8:50', '8:50', 'horaextra9', '9', '1')

INSERT INTO Herramienta(entrada, salida, horasextras, idEstadistica, estatus) values('8:50', '8:50', 'horaextra10', '10', '1')


--Inventario
INSERT INTO Inventario(nombre, tamaño, Jefe, idEncantamiento, estatus) values('nombre1', 'tamaño1', 'Jefe1','1', '1')

INSERT INTO Inventario(nombre, tamaño,Jefe, idEncantamiento, estatus) values('nombre2', 'tamaño2', 'Jefe2', '2', '1')

INSERT INTO Inventario(nombre, tamaño, Jefe,idEncantamiento, estatus) values('nombre3', 'tamaño3', 'Jefe3','3', '1')

INSERT INTO Inventario(nombre, tamaño, Jefe,idEncantamiento, estatus) values('nombre4', 'tamaño4', 'Jefe4','4', '1')

INSERT INTO Inventario(nombre, tamaño, Jefe,idEncantamiento, estatus) values('nombre5', 'tamaño5', 'Jefe5','5', '1')

INSERT INTO Inventario(nombre, tamaño, Jefe,idEncantamiento, estatus) values('nombre6', 'tamaño6', 'Jefe6','6', '1')

INSERT INTO Inventario(nombre, tamaño, Jefe, idEncantamiento, estatus) values('nombre7', 'tamaño7', 'Jefe7','7', '1')

INSERT INTO Inventario(nombre, tamaño, Jefe ,idEncantamiento, estatus) values('nombre8', 'tamaño8','Jefe8', '8', '1')

INSERT INTO Inventario(nombre, tamaño, Jefe ,idEncantamiento, estatus) values('nombre9', 'tamaño9','Jefe9', '9', '1')

INSERT INTO Inventario(nombre, tamaño,Jefe, idEncantamiento, estatus) values('nombre10', 'tamaño10','Jefe10', '10', '1')


--Item
INSERT INTO Item(fecha, costo, persona, idTemplo, estatus) values('1/12/2022','costo1','persona1', '1', '1')

INSERT INTO Item(fecha, costo, persona, idTemplo, estatus) values('1/12/2022','costo2','persona2', '2', '1')

INSERT INTO Item(fecha, costo, persona, idTemplo, estatus) values('1/12/2022','costo3','persona3', '3', '1')

INSERT INTO Item(fecha, costo, persona, idTemplo, estatus) values('1/12/2022','costo4','persona4', '4', '1')

INSERT INTO Item(fecha, costo, persona, idTemplo, estatus) values('1/12/2022','costo5','persona5', '5', '1')

INSERT INTO Item(fecha, costo, persona, idTemplo, estatus) values('1/12/2022','costo6','persona6', '6', '1')

INSERT INTO Item(fecha, costo, persona, idTemplo, estatus) values('1/12/2022','costo7','persona7', '7', '1')

INSERT INTO Item(fecha, costo, persona, idTemplo, estatus) values('1/12/2022','costo8','persona8', '8', '1')

INSERT INTO Item(fecha, costo, persona, idTemplo, estatus) values('1/12/2022','costo9','persona9', '9', '1')

INSERT INTO Item(fecha, costo, persona, idTemplo, estatus) values('1/12/2022','costo10','persona10', '10', '1')




--Jugador
INSERT INTO Jugador(tipo, lugar, idTemplo, estatus) values('tipo1','lugar1', '1', '1')

INSERT INTO Jugador(tipo, lugar, idTemplo, estatus) values('tipo2','lugar2', '2', '1')

INSERT INTO Jugador(tipo, lugar, idTemplo, estatus) values('tipo3','lugar3', '3', '1')

INSERT INTO Jugador(tipo, lugar, idTemplo, estatus) values('tipo4','lugar4', '4', '1')

INSERT INTO Jugador(tipo, lugar, idTemplo, estatus) values('tipo5','lugar5', '5', '1')

INSERT INTO Jugador(tipo, lugar, idTemplo, estatus) values('tipo6','lugar6', '6', '1')

INSERT INTO Jugador(tipo, lugar, idTemplo, estatus) values('tipo7','lugar7', '7', '1')

INSERT INTO Jugador(tipo, lugar, idTemplo, estatus) values('tipo8','lugar8', '8', '1')

INSERT INTO Jugador(tipo, lugar, idTemplo, estatus) values('tipo9','lugar9', '9', '1')

INSERT INTO Jugador(tipo, lugar, idTemplo, estatus) values('tipo10','lugar10', '10', '1')




--Mascota
INSERT INTO Mascota(nombre, existencia, salida, idEncantamiento, estatus) values('nombre1',1, 1, '1', '1')

INSERT INTO Mascota(nombre, existencia, salida, idEncantamiento, estatus) values('nombre2',2, 2, '1', '1')

INSERT INTO Mascota(nombre, existencia, salida, idEncantamiento, estatus) values('nombre3',3, 3, '1', '1')

INSERT INTO Mascota(nombre, existencia, salida, idEncantamiento, estatus) values('nombre4',4, 4, '1', '1')

INSERT INTO Mascota(nombre, existencia, salida, idEncantamiento, estatus) values('nombre5',5, 5, '1', '1')

INSERT INTO Mascota(nombre, existencia, salida, idEncantamiento, estatus) values('nombre6',6, 6, '1', '1')

INSERT INTO Mascota(nombre, existencia, salida, idEncantamiento, estatus) values('nombre7',7, 7, '1', '1')

INSERT INTO Mascota(nombre, existencia, salida, idEncantamiento, estatus) values('nombre8',8, 8, '1', '1')

INSERT INTO Mascota(nombre, existencia, salida, idEncantamiento, estatus) values('nombre9',9, 9, '1', '1')

INSERT INTO Mascota(nombre, existencia, salida, idEncantamiento, estatus) values('nombre10',10, 10, '1', '1')


	

--MesaTrabajo
INSERT INTO MesaTrabajo(nombre, cantidad, material, idTemplo, estatus) values('nombre1', 1, 'material1', '1', '1')

INSERT INTO MesaTrabajo(nombre, cantidad, material, idTemplo, estatus) values('nombre2', 2, 'material2', '2', '1')

INSERT INTO MesaTrabajo(nombre, cantidad, material, idTemplo, estatus) values('nombre3', 3, 'material3', '3', '1')

INSERT INTO MesaTrabajo(nombre, cantidad, material, idTemplo, estatus) values('nombre4', 4, 'material4', '4', '1')

INSERT INTO MesaTrabajo(nombre, cantidad, material, idTemplo, estatus) values('nombre5', 5, 'material5', '5', '1')

INSERT INTO MesaTrabajo(nombre, cantidad, material, idTemplo, estatus) values('nombre6', 6, 'material6', '6', '1')

INSERT INTO MesaTrabajo(nombre, cantidad, material, idTemplo, estatus) values('nombre7', 7, 'material7', '7', '1')

INSERT INTO MesaTrabajo(nombre, cantidad, material, idTemplo, estatus) values('nombre8', 8, 'material8', '8', '1')

INSERT INTO MesaTrabajo(nombre, cantidad, material, idTemplo, estatus) values('nombre9', 9, 'material9', '9', '1')

INSERT INTO MesaTrabajo(nombre, cantidad, material, idTemplo, estatus) values('nombre10', 10, 'material10', '10', '1')






--ModoServidor
INSERT INTO ModoServidor(catidad, servicio, fecha, idTemplo, estatus) values(1, 'servicio1', '1/12/2022', '1', '1')

INSERT INTO ModoServidor(catidad, servicio, fecha, idTemplo, estatus) values(2, 'servicio2', '1/12/2022', '2', '1')

INSERT INTO ModoServidor(catidad, servicio, fecha, idTemplo, estatus) values(3, 'servicio3', '1/12/2022', '3', '1')

INSERT INTO ModoServidor(catidad, servicio, fecha, idTemplo, estatus) values(4, 'servicio4', '1/12/2022', '4', '1')

INSERT INTO ModoServidor(catidad, servicio, fecha, idTemplo, estatus) values(5, 'servicio5', '1/12/2022', '5', '1')

INSERT INTO ModoServidor(catidad, servicio, fecha, idTemplo, estatus) values(6, 'servicio6', '1/12/2022', '6', '1')

INSERT INTO ModoServidor(catidad, servicio, fecha, idTemplo, estatus) values(7, 'servicio7', '1/12/2022', '7', '1')

INSERT INTO ModoServidor(catidad, servicio, fecha, idTemplo, estatus) values(8, 'servicio8', '1/12/2022', '8', '1')

INSERT INTO ModoServidor(catidad, servicio, fecha, idTemplo, estatus) values(9, 'servicio9', '1/12/2022', '9', '1')

INSERT INTO ModoServidor(catidad, servicio, fecha, idTemplo, estatus) values(10, 'servicio10', '1/12/2022', '10', '1')


--Mundo
INSERT INTO Mundo(numero, peso, remitente, destinatario, idEvento, idSonido, idStack, estatus) values(1, 'peso1', 'remitente1', 'destinatario1', '1', '1', '1', '1')

INSERT INTO Mundo(numero, peso, remitente, destinatario, idEvento, idSonido, idStack, estatus) values(2, 'peso2', 'remitente2', 'destinatario2', '2', '2', '1', '1')

INSERT INTO Mundo(numero, peso, remitente, destinatario, idEvento, idSonido, idStack, estatus) values(3, 'peso3', 'remitente3', 'destinatario3', '3', '3', '1', '1')

INSERT INTO Mundo(numero, peso, remitente, destinatario, idEvento, idSonido, idStack, estatus) values(4, 'peso4', 'remitente4', 'destinatario4', '4', '4', '1', '1')

INSERT INTO Mundo(numero, peso, remitente, destinatario, idEvento, idSonido, idStack, estatus) values(5, 'peso5', 'remitente5', 'destinatario5', '5', '5', '1', '1')

INSERT INTO Mundo(numero, peso, remitente, destinatario, idEvento, idSonido, idStack, estatus) values(6, 'peso6', 'remitente6', 'destinatario6', '6', '6', '1', '1')

INSERT INTO Mundo(numero, peso, remitente, destinatario, idEvento, idSonido, idStack, estatus) values(7, 'peso7', 'remitente7', 'destinatario7', '7', '7', '1', '1')

INSERT INTO Mundo(numero, peso, remitente, destinatario, idEvento, idSonido, idStack, estatus) values(8, 'peso8', 'remitente8', 'destinatario8', '8', '8', '1', '1')

INSERT INTO Mundo(numero, peso, remitente, destinatario, idEvento, idSonido, idStack, estatus) values(9, 'peso9', 'remitente9', 'destinatario9', '9', '9', '1', '1')

INSERT INTO Mundo(numero, peso, remitente, destinatario, idEvento, idSonido, idStack, estatus) values(10, 'peso10', 'remitente10', 'destinatario10', '10', '10', '1', '1')






--Parche
INSERT INTO Parche(nombre, precio, cantidad, idSonido, idLogro, idAmigo, idEvento, idEfecto, idChunk, estatus) values('nombre1', 1, 1, '1', '1', '1', '1', '1', '1', '1')

INSERT INTO Parche(nombre, precio, cantidad, idSonido, idLogro, idAmigo, idEvento, idEfecto, idChunk, estatus) values('nombre2', 2, 2, '2', '2', '2', '2', '2', '2', '2')

INSERT INTO Parche(nombre, precio, cantidad, idSonido, idLogro, idAmigo, idEvento, idEfecto, idChunk, estatus) values('nombre3', 3, 3, '3', '3', '3', '3', '3', '3', '3')

INSERT INTO Parche(nombre, precio, cantidad, idSonido, idLogro, idAmigo, idEvento, idEfecto, idChunk, estatus) values('nombre4', 4, 4, '4', '4', '4', '4', '4', '4', '4')

INSERT INTO Parche(nombre, precio, cantidad, idSonido, idLogro, idAmigo, idEvento, idEfecto, idChunk, estatus) values('nombre5', 5, 5, '5', '5', '5', '5', '5', '5', '5')

INSERT INTO Parche(nombre, precio, cantidad, idSonido, idLogro, idAmigo, idEvento, idEfecto, idChunk, estatus) values('nombre6', 6, 6, '6', '6', '6', '6', '6', '6', '6')

INSERT INTO Parche(nombre, precio, cantidad, idSonido, idLogro, idAmigo, idEvento, idEfecto, idChunk, estatus) values('nombre7', 7, 7, '7', '7', '7', '7', '7', '7', '7')

INSERT INTO Parche(nombre, precio, cantidad, idSonido, idLogro, idAmigo, idEvento, idEfecto, idChunk, estatus) values('nombre8', 8, 8, '8', '8', '8', '8', '8', '8', '8')

INSERT INTO Parche(nombre, precio, cantidad, idSonido, idLogro, idAmigo, idEvento, idEfecto, idChunk, estatus) values('nombre9', 9, 9, '9', '9', '9', '9', '9', '9', '9')

INSERT INTO Parche(nombre, precio, cantidad, idSonido, idLogro, idAmigo, idEvento, idEfecto, idChunk, estatus) values('nombre10', 10, 10, '10', '10', '10', '10', '10', '10', '1')



--Plugin
INSERT INTO Plugin(Plugin, numero, idEstadistica, estatus) values('Plugin1', 1, '1', '1')

INSERT INTO Plugin(Plugin, numero, idEstadistica, estatus) values('Plugin2', 2, '2', '1')

INSERT INTO Plugin(Plugin, numero, idEstadistica, estatus) values('Plugin3', 3, '3', '1')

INSERT INTO Plugin(Plugin, numero, idEstadistica, estatus) values('Plugin4', 4, '4', '1')

INSERT INTO Plugin(Plugin, numero, idEstadistica, estatus) values('Plugin5', 5, '5', '1')

INSERT INTO Plugin(Plugin, numero, idEstadistica, estatus) values('Plugin6', 6, '6', '1')

INSERT INTO Plugin(Plugin, numero, idEstadistica, estatus) values('Plugin7', 7, '7', '1')

INSERT INTO Plugin(Plugin, numero, idEstadistica, estatus) values('Plugin8', 8, '8', '1')

INSERT INTO Plugin(Plugin, numero, idEstadistica, estatus) values('Plugin9', 9, '9', '1')

INSERT INTO Plugin(Plugin, numero, idEstadistica, estatus) values('Plugin10', 10, '10', '1')


--Pocion
INSERT INTO Pocion(descripcion, Mascota, cantidad, idEncantamiento, idModoJuego, estatus) values('descrpcion1', 'Mascota1', 1, '1', '1', '1')

INSERT INTO Pocion(descripcion, Mascota, cantidad, idEncantamiento, idModoJuego, estatus) values('descrpcion2', 'Mascota2', 2, '2', '2', '1')

INSERT INTO Pocion(descripcion, Mascota, cantidad, idEncantamiento, idModoJuego, estatus) values('descrpcion3', 'Mascota3', 3, '3', '3', '1')

INSERT INTO Pocion(descripcion, Mascota, cantidad, idEncantamiento, idModoJuego, estatus) values('descrpcion4', 'Mascota4', 4, '4', '4', '1')

INSERT INTO Pocion(descripcion, Mascota, cantidad, idEncantamiento, idModoJuego, estatus) values('descrpcion5', 'Mascota5', 5, '5', '5', '1')

INSERT INTO Pocion(descripcion, Mascota, cantidad, idEncantamiento, idModoJuego, estatus) values('descrpcion6', 'Mascota6', 6, '6', '6', '1')

INSERT INTO Pocion(descripcion, Mascota, cantidad, idEncantamiento, idModoJuego, estatus) values('descrpcion7', 'Mascota7', 7, '7', '7', '1')

INSERT INTO Pocion(descripcion, Mascota, cantidad, idEncantamiento, idModoJuego, estatus) values('descrpcion8', 'Mascota8', 8, '8', '8', '1')

INSERT INTO Pocion(descripcion, Mascota, cantidad, idEncantamiento, idModoJuego, estatus) values('descrpcion9', 'Mascota9', 9, '9', '9', '1')

INSERT INTO Pocion(descripcion, Mascota, cantidad, idEncantamiento, idModoJuego, estatus) values('descrpcion10', 'Mascota10', 10, '10', '10', '1')


--Servidor
INSERT INTO Servidor(nombre, apellidoPaterno, apellidoMaterno, calle, numero, ciudad, telefono, idEstructura, estatus) values('nombre1', 'apellidop1', 'apellidom1', 'calle1', 1, 'ciudad1', 1, '1', '1')

INSERT INTO Servidor(nombre, apellidoPaterno, apellidoMaterno, calle, numero, ciudad, telefono, idEstructura, estatus) values('nombre2', 'apellidop2', 'apellidom2', 'calle2', 2, 'ciudad2', 2, '2', '1')

INSERT INTO Servidor(nombre, apellidoPaterno, apellidoMaterno, calle, numero, ciudad, telefono, idEstructura, estatus) values('nombre3', 'apellidop3', 'apellidom3', 'calle3', 3, 'ciudad3', 3, '3', '1')

INSERT INTO Servidor(nombre, apellidoPaterno, apellidoMaterno, calle, numero, ciudad, telefono, idEstructura, estatus) values('nombre4', 'apellidop4', 'apellidom4', 'calle4', 4, 'ciudad4', 4, '4', '1')

INSERT INTO Servidor(nombre, apellidoPaterno, apellidoMaterno, calle, numero, ciudad, telefono, idEstructura, estatus) values('nombre5', 'apellidop5', 'apellidom5', 'calle5', 5, 'ciudad5', 5, '5', '1')

INSERT INTO Servidor(nombre, apellidoPaterno, apellidoMaterno, calle, numero, ciudad, telefono, idEstructura, estatus) values('nombre6', 'apellidop6', 'apellidom6', 'calle6', 6, 'ciudad6', 6, '6', '1')

INSERT INTO Servidor(nombre, apellidoPaterno, apellidoMaterno, calle, numero, ciudad, telefono, idEstructura, estatus) values('nombre7', 'apellidop7', 'apellidom7', 'calle7', 7, 'ciudad7', 7, '7', '1')

INSERT INTO Servidor(nombre, apellidoPaterno, apellidoMaterno, calle, numero, ciudad, telefono, idEstructura, estatus) values('nombre8', 'apellidop8', 'apellidom8', 'calle8', 8, 'ciudad8', 8, '8', '1')

INSERT INTO Servidor(nombre, apellidoPaterno, apellidoMaterno, calle, numero, ciudad, telefono, idEstructura, estatus) values('nombre9', 'apellidop9', 'apellidom9', 'calle9', 9, 'ciudad9', 9, '9', '1')

INSERT INTO Servidor(nombre, apellidoPaterno, apellidoMaterno, calle, numero, ciudad, telefono, idEstructura, estatus) values('nombre10', 'apellidop10', 'apellidom9', 'calle9', 10, 'ciudad10', 10, '10', '1')


SELECT *FROM Amigo
--MundoParche
INSERT INTO MundoParche(cantidad, idAmigo, idParche, estatus) values(1, '1', '1', '1')

INSERT INTO MundoParche(cantidad, idAmigo, idParche, estatus) values(1, '2', '2', '2')

INSERT INTO MundoParche(cantidad, idAmigo, idParche, estatus) values(3, '3', '3', '3')

INSERT INTO MundoParche(cantidad, idAmigo,  idParche, estatus) values(4, '4', '4', '4')

INSERT INTO MundoParche(cantidad, idAmigo, idParche,  estatus) values(5, '5', '5', '5')

INSERT INTO MundoParche(cantidad, idAmigo, idParche, estatus) values(6,'6', '6', '6')

INSERT INTO MundoParche(cantidad, idAmigo, idParche, estatus) values(7, '7', '7', '7')

INSERT INTO MundoParche(cantidad, idAmigo,  idParche, estatus) values(8, '8', '8', '8')

INSERT INTO MundoParche(cantidad, idAmigo, idParche, estatus) values(9, '9', '9', '9')

INSERT INTO MundoParche(cantidad, idAmigo, idParche, estatus) values(10, '10', '10', '10')


--EncantamientoEfecto
INSERT INTO EncantamientoEfecto(idChat, idMenu, estatus) values('1', '1', '1')

INSERT INTO EncantamientoEfecto(idChat, idMenu, estatus) values('2', '2', '1')

INSERT INTO EncantamientoEfecto(idChat, idMenu, estatus) values('3', '3', '1')

INSERT INTO EncantamientoEfecto(idChat, idMenu, estatus) values('4', '4', '1')

INSERT INTO EncantamientoEfecto(idChat, idMenu, estatus) values('5', '5', '1')

INSERT INTO EncantamientoEfecto(idChat, idMenu, estatus) values('6', '6', '1')

INSERT INTO EncantamientoEfecto(idChat, idMenu, estatus) values('7', '7', '1')

INSERT INTO EncantamientoEfecto(idChat, idMenu, estatus) values('8', '8', '1')

INSERT INTO EncantamientoEfecto(idChat, idMenu, estatus) values('9', '9', '1')

INSERT INTO EncantamientoEfecto(idChat, idMenu, estatus) values('10', '10', '1')


--JugadorAmigo
INSERT INTO JugadorAmigo(idChunk, idChat, estatus) values('1', '1', '1')

INSERT INTO JugadorAmigo(idChunk, idChat, estatus) values('2', '2', '1')

INSERT INTO JugadorAmigo(idChunk, idChat, estatus) values('3', '3', '1')

INSERT INTO JugadorAmigo(idChunk, idChat, estatus) values('4', '4', '1')

INSERT INTO JugadorAmigo(idChunk, idChat, estatus) values('5', '5', '1')

INSERT INTO JugadorAmigo(idChunk, idChat, estatus) values('6', '6', '1')

INSERT INTO JugadorAmigo(idChunk, idChat, estatus) values('7', '7', '1')

INSERT INTO JugadorAmigo(idChunk, idChat, estatus) values('8', '8', '1')

INSERT INTO JugadorAmigo(idChunk, idChat, estatus) values('9', '9', '1')

INSERT INTO JugadorAmigo(idChunk, idChat, estatus) values('10', '10', '1')


--JugadorComercio
INSERT INTO JugadorComercio(idEstadistica, idArmadura, estatus) values('1', '1', '1')

INSERT INTO JugadorComercio(idEstadistica, idArmadura, estatus) values('2', '2', '1')

INSERT INTO JugadorComercio(idEstadistica, idArmadura, estatus) values('3', '3', '1')

INSERT INTO JugadorComercio(idEstadistica, idArmadura, estatus) values('4', '4', '1')

INSERT INTO JugadorComercio(idEstadistica, idArmadura, estatus) values('5', '5', '1')

INSERT INTO JugadorComercio(idEstadistica, idArmadura, estatus) values('6', '6', '1')

INSERT INTO JugadorComercio(idEstadistica, idArmadura, estatus) values('7', '7', '1')

INSERT INTO JugadorComercio(idEstadistica, idArmadura, estatus) values('8', '8', '1')

INSERT INTO JugadorComercio(idEstadistica, idArmadura, estatus) values('9', '9', '1')

INSERT INTO JugadorComercio(idEstadistica, idArmadura, estatus) values('10', '10', '1')


--JugadorItem
INSERT INTO JugadorItem(idJefe, idParche, estatus) values('1', '1', '1')

INSERT INTO JugadorItem(idJefe, idParche, estatus) values('2', '2', '1')

INSERT INTO JugadorItem(idJefe, idParche, estatus) values('3', '3', '1')

INSERT INTO JugadorItem(idJefe, idParche, estatus) values('4', '4', '1')

INSERT INTO JugadorItem(idJefe, idParche, estatus) values('5', '5', '1')

INSERT INTO JugadorItem(idJefe, idParche, estatus) values('6', '6', '1')

INSERT INTO JugadorItem(idJefe, idParche, estatus) values('7', '7', '1')

INSERT INTO JugadorItem(idJefe, idParche, estatus) values('8', '8', '1')

INSERT INTO JugadorItem(idJefe, idParche, estatus) values('9', '9', '1')

INSERT INTO JugadorItem(idJefe, idParche, estatus) values('10', '10', '1')


--JugadorServidor
INSERT INTO JugadorServidor(idParche, idModd, estatus) values('1', '1', '1')

INSERT INTO JugadorServidor(idParche, idModd, estatus) values('2', '2', '1')

INSERT INTO JugadorServidor(idParche, idModd, estatus) values('3', '3', '1')

INSERT INTO JugadorServidor(idParche, idModd, estatus) values('4', '4', '1')

INSERT INTO JugadorServidor(idParche, idModd, estatus) values('5', '5', '1')

INSERT INTO JugadorServidor(idParche, idModd, estatus) values('6', '6', '1')

INSERT INTO JugadorServidor(idParche, idModd, estatus) values('7', '7', '1')

INSERT INTO JugadorServidor(idParche, idModd, estatus) values('8', '8', '1')

INSERT INTO JugadorServidor(idParche, idModd, estatus) values('9', '9', '1')

INSERT INTO JugadorServidor(idParche, idModd, estatus) values('10', '10', '1')


--MesaTrabajoEncantamiento
INSERT INTO MesaTrabajoEncantamiento(idParche, idTesoro, estatus) values('1', '1', '1')

INSERT INTO MesaTrabajoEncantamiento(idParche, idTesoro, estatus) values('2', '2', '1')

INSERT INTO MesaTrabajoEncantamiento(idParche, idTesoro, estatus) values('3', '3', '1')

INSERT INTO MesaTrabajoEncantamiento(idParche, idTesoro, estatus) values('4', '4', '1')

INSERT INTO MesaTrabajoEncantamiento(idParche, idTesoro, estatus) values('5', '5', '1')

INSERT INTO MesaTrabajoEncantamiento(idParche, idTesoro, estatus) values('6', '6', '1')

INSERT INTO MesaTrabajoEncantamiento(idParche, idTesoro, estatus) values('7', '7', '1')

INSERT INTO MesaTrabajoEncantamiento(idParche, idTesoro, estatus) values('8', '8', '1')

INSERT INTO MesaTrabajoEncantamiento(idParche, idTesoro, estatus) values('9', '9', '1')

INSERT INTO MesaTrabajoEncantamiento(idParche, idTesoro, estatus) values('10', '10', '1')


--MesaTrabajoJugador
INSERT INTO MesaTrabajoJugador(idTemplo, idEstadistica, estatus) values('1', '1', '1')

INSERT INTO MesaTrabajoJugador(idTemplo, idEstadistica, estatus) values('2', '2', '1')

INSERT INTO MesaTrabajoJugador(idTemplo, idEstadistica, estatus) values('3', '3', '1')

INSERT INTO MesaTrabajoJugador(idTemplo, idEstadistica, estatus) values('4', '4', '1')

INSERT INTO MesaTrabajoJugador(idTemplo, idEstadistica, estatus) values('5', '5', '1')

INSERT INTO MesaTrabajoJugador(idTemplo, idEstadistica, estatus) values('6', '6', '1')

INSERT INTO MesaTrabajoJugador(idTemplo, idEstadistica, estatus) values('7', '7', '1')

INSERT INTO MesaTrabajoJugador(idTemplo, idEstadistica, estatus) values('8', '8', '1')

INSERT INTO MesaTrabajoJugador(idTemplo, idEstadistica, estatus) values('9', '9', '1')

INSERT INTO MesaTrabajoJugador(idTemplo, idEstadistica, estatus) values('10', '10', '1')


--Amigo
SELECT *FROM Amigo
UPDATE Amigo SET nombre = 'Amigo1.0' WHERE idAmigo = 1

SELECT *FROM Amigo
DELETE FROM Amigo WHERE idAmigo = 1

SELECT *FROM Amigo

--Animal
SELECT *FROM Animal
UPDATE Animal SET nombre = 'Animal1.0' WHERE idAnimal = 1

SELECT *FROM Animal
DELETE FROM Animal WHERE idAnimal = 1

SELECT *FROM Animal

--Arma
SELECT *FROM Arma
UPDATE Arma SET numer = '2' WHERE idArma = 1

SELECT *FROM Arma
DELETE FROM Arma WHERE idArma = 1

SELECT *FROM Arma

--Armadura
SELECT *FROM Armadura
UPDATE Armadura SET nombre = 'Armadura1.0' WHERE idArmadura = 1

SELECT *FROM Armadura
DELETE FROM Armadura WHERE idArmadura = 1

SELECT *FROM Armadura

--Bloque
SELECT *FROM Bloque
UPDATE Bloque SET fecha = '2/12/2002' WHERE idBloque = 1

SELECT *FROM Bloque
DELETE FROM Bloque WHERE idBloque = 1

SELECT *FROM Bloque

--Chat
SELECT *FROM Chat
UPDATE Chat SET nombre = 'Amigo1.0' WHERE idChat = 1

SELECT *FROM Chat
DELETE FROM Chat WHERE idChat = 1

SELECT *FROM Chat

--Chunk
SELECT *FROM Chunk
UPDATE Chunk SET cantidad = '2' WHERE idChunk = 1

SELECT *FROM Chunk
DELETE FROM Chunk WHERE idChunk = 1

SELECT *FROM Chunk

--Comida
SELECT *FROM Comida
UPDATE Comida SET cantidad = '2' WHERE idComida = 1

SELECT *FROM Comida
DELETE FROM Comida WHERE idComida = 1

SELECT *FROM Comida

--Comercio
SELECT *FROM Comercio
UPDATE Comercio SET nombre = 'nombre1-0' WHERE idComercio = 1

SELECT *FROM Comercio
DELETE FROM Comercio WHERE idComercio = 1

SELECT *FROM Comercio

--ConfigMundo
SELECT *FROM ConfigMundo
UPDATE ConfigMundo SET nombre = 'ConfigMundo1.0' WHERE idConfigMundo = 1

SELECT *FROM ConfigMundo
DELETE FROM ConfigMundo WHERE idConfigMundo = 1

SELECT *FROM ConfigMundo

--ConfigUsuario
SELECT *FROM ConfigUsuario
UPDATE ConfigUsuario SET nombre = 'nombre1.0' WHERE idConfigUsuario = 1

SELECT *FROM ConfigUsuario
DELETE FROM ConfigUsuario WHERE idConfigUsuario = 1

SELECT *FROM ConfigUsuario

--Coordenada
SELECT *FROM Amigo
UPDATE Amigo SET nombre = 'Amigo1.0' WHERE idAmigo = 1

SELECT *FROM Amigo
DELETE FROM Amigo WHERE idAmigo = 1

SELECT *FROM Amigo

--Crafteo
SELECT *FROM Amigo
UPDATE Amigo SET nombre = 'Amigo1.0' WHERE idAmigo = 1

SELECT *FROM Amigo
DELETE FROM Amigo WHERE idAmigo = 1

SELECT *FROM Amigo

--Cultivo
SELECT *FROM Amigo
UPDATE Amigo SET nombre = 'Amigo1.0' WHERE idAmigo = 1

SELECT *FROM Amigo
DELETE FROM Amigo WHERE idAmigo = 1

SELECT *FROM Amigo

--Dimension
SELECT *FROM Amigo
UPDATE Amigo SET nombre = 'Amigo1.0' WHERE idAmigo = 1

SELECT *FROM Amigo
DELETE FROM Amigo WHERE idAmigo = 1

SELECT *FROM Amigo

--Ecosistema
SELECT *FROM Amigo
UPDATE Amigo SET nombre = 'Amigo1.0' WHERE idAmigo = 1

SELECT *FROM Amigo
DELETE FROM Amigo WHERE idAmigo = 1

SELECT *FROM Amigo

--Efectoes
SELECT *FROM Amigo
UPDATE Amigo SET nombre = 'Amigo1.0' WHERE idAmigo = 1

SELECT *FROM Amigo
DELETE FROM Amigo WHERE idAmigo = 1

SELECT *FROM Amigo

--Encantamiento
SELECT *FROM Amigo
UPDATE Amigo SET nombre = 'Amigo1.0' WHERE idAmigo = 1

SELECT *FROM Amigo
DELETE FROM Amigo WHERE idAmigo = 1

SELECT *FROM Amigo

--Estadistica
SELECT *FROM Amigo
UPDATE Amigo SET nombre = 'Amigo1.0' WHERE idAmigo = 1

SELECT *FROM Amigo
DELETE FROM Amigo WHERE idAmigo = 1

SELECT *FROM Amigo

--Estructura
SELECT *FROM Amigo
UPDATE Amigo SET nombre = 'Amigo1.0' WHERE idAmigo = 1

SELECT *FROM Amigo
DELETE FROM Amigo WHERE idAmigo = 1

SELECT *FROM Amigo

--Evento
SELECT *FROM Amigo
UPDATE Amigo SET nombre = 'Amigo1.0' WHERE idAmigo = 1

SELECT *FROM Amigo
DELETE FROM Amigo WHERE idAmigo = 1

SELECT *FROM Amigo

--Fluido
SELECT *FROM Amigo
UPDATE Amigo SET nombre = 'Amigo1.0' WHERE idAmigo = 1

SELECT *FROM Amigo
DELETE FROM Amigo WHERE idAmigo = 1

SELECT *FROM Amigo

--Fortaleza
SELECT *FROM Amigo
UPDATE Amigo SET nombre = 'Amigo1.0' WHERE idAmigo = 1

SELECT *FROM Amigo
DELETE FROM Amigo WHERE idAmigo = 1

SELECT *FROM Amigo

--Generacion
SELECT *FROM Amigo
UPDATE Amigo SET nombre = 'Amigo1.0' WHERE idAmigo = 1

SELECT *FROM Amigo
DELETE FROM Amigo WHERE idAmigo = 1

SELECT *FROM Amigo

--Herramienta
SELECT *FROM Amigo
UPDATE Amigo SET nombre = 'Amigo1.0' WHERE idAmigo = 1

SELECT *FROM Amigo
DELETE FROM Amigo WHERE idAmigo = 1

SELECT *FROM Amigo

--Inventarios
SELECT *FROM Amigo
UPDATE Amigo SET nombre = 'Amigo1.0' WHERE idAmigo = 1

SELECT *FROM Amigo
DELETE FROM Amigo WHERE idAmigo = 1

SELECT *FROM Amigo

--Item
SELECT *FROM Amigo
UPDATE Amigo SET nombre = 'Amigo1.0' WHERE idAmigo = 1

SELECT *FROM Amigo
DELETE FROM Amigo WHERE idAmigo = 1

SELECT *FROM Amigo

--Jefe
SELECT *FROM Amigo
UPDATE Amigo SET nombre = 'Amigo1.0' WHERE idAmigo = 1

SELECT *FROM Amigo
DELETE FROM Amigo WHERE idAmigo = 1

SELECT *FROM Amigo

--Jugador
SELECT *FROM Amigo
UPDATE Amigo SET nombre = 'Amigo1.0' WHERE idAmigo = 1

SELECT *FROM Amigo
DELETE FROM Amigo WHERE idAmigo = 1

SELECT *FROM Amigo

--Logro
SELECT *FROM Amigo
UPDATE Amigo SET nombre = 'Amigo1.0' WHERE idAmigo = 1

SELECT *FROM Amigo
DELETE FROM Amigo WHERE idAmigo = 1

SELECT *FROM Amigo

--Mascota
SELECT *FROM Amigo
UPDATE Amigo SET nombre = 'Amigo1.0' WHERE idAmigo = 1

SELECT *FROM Amigo
DELETE FROM Amigo WHERE idAmigo = 1

SELECT *FROM Amigo

--Menu
SELECT *FROM Amigo
UPDATE Amigo SET nombre = 'Amigo1.0' WHERE idAmigo = 1

SELECT *FROM Amigo
DELETE FROM Amigo WHERE idAmigo = 1

SELECT *FROM Amigo

--Moviliario
SELECT *FROM Amigo
UPDATE Amigo SET nombre = 'Amigo1.0' WHERE idAmigo = 1

SELECT *FROM Amigo
DELETE FROM Amigo WHERE idAmigo = 1

SELECT *FROM Amigo

--Mob
SELECT *FROM Amigo
UPDATE Amigo SET nombre = 'Amigo1.0' WHERE idAmigo = 1

SELECT *FROM Amigo
DELETE FROM Amigo WHERE idAmigo = 1

SELECT *FROM Amigo

--Modd
SELECT *FROM Amigo
UPDATE Amigo SET nombre = 'Amigo1.0' WHERE idAmigo = 1

SELECT *FROM Amigo
DELETE FROM Amigo WHERE idAmigo = 1

SELECT *FROM Amigo

--ModoJuego
SELECT *FROM Amigo
UPDATE Amigo SET nombre = 'Amigo1.0' WHERE idAmigo = 1

SELECT *FROM Amigo
DELETE FROM Amigo WHERE idAmigo = 1

SELECT *FROM Amigo

--ModoServidor
SELECT *FROM Amigo
UPDATE Amigo SET nombre = 'Amigo1.0' WHERE idAmigo = 1

SELECT *FROM Amigo
DELETE FROM Amigo WHERE idAmigo = 1

SELECT *FROM Amigo

--Mundo
SELECT *FROM Amigo
UPDATE Amigo SET nombre = 'Amigo1.0' WHERE idAmigo = 1

SELECT *FROM Amigo
DELETE FROM Amigo WHERE idAmigo = 1

SELECT *FROM Amigo

--Sonido
SELECT *FROM Amigo
UPDATE Amigo SET nombre = 'Amigo1.0' WHERE idAmigo = 1

SELECT *FROM Amigo
DELETE FROM Amigo WHERE idAmigo = 1

SELECT *FROM Amigo

--PackRecursoes
SELECT *FROM Amigo
UPDATE Amigo SET nombre = 'Amigo1.0' WHERE idAmigo = 1

SELECT *FROM Amigo
DELETE FROM Amigo WHERE idAmigo = 1

SELECT *FROM Amigo

--PackTextura
SELECT *FROM Amigo
UPDATE Amigo SET nombre = 'Amigo1.0' WHERE idAmigo = 1

SELECT *FROM Amigo
DELETE FROM Amigo WHERE idAmigo = 1

SELECT *FROM Amigo

--Parche
SELECT *FROM Amigo
UPDATE Amigo SET nombre = 'Amigo1.0' WHERE idAmigo = 1

SELECT *FROM Amigo
DELETE FROM Amigo WHERE idAmigo = 1

SELECT *FROM Amigo

--Pesca
SELECT *FROM Amigo
UPDATE Amigo SET nombre = 'Amigo1.0' WHERE idAmigo = 1

SELECT *FROM Amigo
DELETE FROM Amigo WHERE idAmigo = 1

SELECT *FROM Amigo

--Plugin
SELECT *FROM Amigo
UPDATE Amigo SET nombre = 'Amigo1.0' WHERE idAmigo = 1

SELECT *FROM Amigo
DELETE FROM Amigo WHERE idAmigo = 1

SELECT *FROM Amigo

--Pocion
SELECT *FROM Amigo
UPDATE Amigo SET nombre = 'Amigo1.0' WHERE idAmigo = 1

SELECT *FROM Amigo
DELETE FROM Amigo WHERE idAmigo = 1

SELECT *FROM Amigo

--Servidor
SELECT *FROM Amigo
UPDATE Amigo SET nombre = 'Amigo1.0' WHERE idAmigo = 1

SELECT *FROM Amigo
DELETE FROM Amigo WHERE idAmigo = 1

SELECT *FROM Amigo

--Templo
SELECT *FROM Amigo
UPDATE Amigo SET nombre = 'Amigo1.0' WHERE idAmigo = 1

SELECT *FROM Amigo
DELETE FROM Amigo WHERE idAmigo = 1

SELECT *FROM Amigo

--Stack
SELECT *FROM Amigo
UPDATE Amigo SET nombre = 'Amigo1.0' WHERE idAmigo = 1

SELECT *FROM Amigo
DELETE FROM Amigo WHERE idAmigo = 1

SELECT *FROM Amigo

--Tesoro
SELECT *FROM Amigo
UPDATE Amigo SET nombre = 'Amigo1.0' WHERE idAmigo = 1

SELECT *FROM Amigo
DELETE FROM Amigo WHERE idAmigo = 1

SELECT *FROM Amigo

