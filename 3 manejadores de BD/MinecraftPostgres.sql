--CREATE DATABASE Minecraft;

CREATE TABLE Aldea
(
	idAldea serial primary key,
	estilo varchar(50) not null,
	evento varchar(50) not null,
	botin varchar(50) not null,
	estatus boolean not null default true
);

CREATE TABLE Amigo
(
	idAmigo serial primary key,
	gamertag varchar(50) not null,
	aspecto Varchar(50)not null,
	estatus boolean not null default true
);

CREATE TABLE Animal
(
	idAnimal serial primary key,
	puntosVida varchar(50) not null,
	botin varchar(50) not null,
	tipoAnimal varchar(50),
	estatus boolean not null default true
);

CREATE TABLE Arma
(
	idArma serial primary key,
	tipoArma varchar(50) not null,
	nombre varchar(50) not null,
	material varchar(50) not null,
	daño int not null,
	resistencia int not null,
	estatus boolean not null default true
);

CREATE TABLE Armadura
(
	idArmadura serial primary key,
	material varchar(50) not null,
	nombre varchar(50)not null,
	resistencia int not null,
	idInventario int not null,
	estatus boolean not null default true
);

CREATE TABLE Bloque
(
	idBloque serial primary key,
	material varchar(50) not null,
	nombre varchar(50) not null,
	estatus boolean not null default true
);

CREATE TABLE Chat
(
	idChat serial primary key,
	fuente varchar(50) not null,
	color varchar(50) not null,
	espaciadoLinea int not null,
	estatus boolean not null default true
);

CREATE TABLE Chunk
(
	idChunk serial primary key,
	limite int not null,
	formato varchar not null,
	estatus boolean not null default true
);

CREATE TABLE Comercio
(
	idComercio serial primary key,
	tipoComercio varchar(50) not null,
	tipoIntercambio varchar(50) not null,
	estatus boolean not null default true
);

CREATE TABLE Comida
(
	idComida serial primary key,
	tipo varchar not null,
	valorNutrimental int not null,
	nombre varchar(50) not null,
	ingredientes varchar(50) not null,
	estatus boolean not null default true
);

CREATE TABLE ConfigMundo
(
	idConfigMundo serial primary key,
	modoJuego varchar(50) not null,
	dificultad varchar(50) not null,
	preferencia varchar(50) not null,
	semilla varchar(50) not null,
	tipo varchar not null,
	estatus boolean not null default true
);

CREATE TABLE ConfigUsuario
(
	idConfigUsuario serial primary key ,
	gamertag varchar(50) not null,
	idioma varchar(50) not null,
	estatus boolean not null default true
);

CREATE TABLE Coordenada
(
	idCoordenada serial primary key,
	ejeX int not null,
	ejeY int not null,
	ejeZ int not null,
	estatus boolean not null default true
);

CREATE TABLE Crafteo
(
	idCrafteo serial primary key,
	tipo varchar(50)not null,
	detalle varchar(50) not null,
	idMesaTrabajo int not null,
	idInventario int not null,
	estatus boolean not null default true
);

CREATE TABLE Cultivo
(
	idCultivo serial primary key ,
	tiempoCultivo char(10) not null,
	tipo varchar(50) not null,
	estatus boolean not null default true
);

CREATE TABLE Dimension
(
	idDimension serial primary key,
	nombre varchar(30) not null,
	estilo varchar(50) not null,
	cicloDelDia varchar(50) not null,
	estatus boolean not null default true
);

CREATE TABLE Ecosistema
(
	idEcosistema serial primary key,
	tipo varchar(50) not null,
	tamaño int not null,
	bioma varchar(50) not null,
	clima varchar(50) not null,
	estatus boolean not null default true
);

CREATE TABLE Efecto
(
	idEfecto serial primary key,
	tipo varchar(50) not null,
	durabilidad int not null,
	nombre varchar(50) not null,
	estatus boolean not null default true
);

CREATE TABLE Encantamiento
(
	idEncantamiento serial primary key,
	tipo varchar(50) not null,
	durabilidad int not null,
	nombre varchar(50) not null,
	estatus boolean not null default true
);

CREATE TABLE Estadistica
(
	idEstadistica serial primary key,
	dsitanciaRecorrida int not null,
	distanciaVolada int not null,
	distanciaCaida int not null,
	saltos int not null,
	numeroMuertes int not null,
	estatus boolean not null default true
);

CREATE TABLE Estructura
(
	idEstructura serial primary key,
	tipo varchar(50) not null,
	estilo varchar not null,
	estatus boolean not null default true
);

CREATE TABLE Evento
(
	idEvento serial primary key,
	tipo varchar(50) not null,
	fechainicio timestamp not null,
	fechaCierre timestamp not null,
	duarbilidad int not null,
	estatus boolean not null default true
);

CREATE TABLE Fluido
(
	idFluido serial primary key,
	tipo varchar not null,
	nombre varchar(50)not null,
	nivelFluido int not null,
	estatus boolean not null default true 
);

CREATE TABLE Fortaleza
(
	idFortaleza serial primary key,
	botin varchar not null,
	nombre varchar(50) not null,
	estilo varchar not null,
	estatus boolean not null default true
);

CREATE TABLE Generacion
(
	idGeneracion serial primary key,
	tipo varchar not null,
	lugarGeneracion varchar(50) not null,
	estatus boolean not null default true
);

CREATE TABLE Herramienta
(
	idHerramienta serial primary key,
	material varchar(50) not null,
	nombre varchar(50) not null,
	resistencia int not null,
	tipo varchar(50) not null,
	estatus boolean not null default true
);

CREATE TABLE Inventario
(
	idInventario serial primary key,
	espacio int not null,
	estatus boolean not null default true
);

CREATE TABLE Item
(
	idItem serial primary key,
	tipo varchar(50) not null,
	nombre varchar(50) not null,
	estatus boolean not null default true
);

CREATE TABLE Jefe
(
	idJefe serial primary key,
	dimension varchar(50) not null,
	habilidad varchar(50) not null,
	puntosVida int not null,
	nombre varchar(50) not null,
	estatus boolean not null default true
);

CREATE TABLE Jugador
(
	idJugador serial primary key,
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
	estatus boolean not null default true
);

CREATE TABLE Logro
(
	idLogro serial primary key,
	nombre varchar(50) not null,
	recompensa varchar(50) not null,
	puntosJugador int not null,
	tiempoJuego int not null,
	tipo varchar(50) not null,
	idJugador int not null,
	estatus boolean not null default true
);

CREATE TABLE Mascota
(
	idMascota serial primary key,
	nombre varchar(50) not null,
	tipo varchar not null,
	puntosVida int not null,
	comida int not null,
	idJugador int not null,
	estatus boolean not null default true
);

CREATE TABLE Menu
(
	idMenu serial primary key,
	accion varchar(50) not null,
	estatus boolean not null default true
);


CREATE TABLE MesaTrabajo
(
	idMesaTrabajo serial primary key,
	tipo varchar(50) not null,
	idInventario int not null,
	estatus boolean not null default true
);

CREATE TABLE Mob
(
	idMob serial primary key,
	puntosVida int not null,
	botin varchar(50) not null,
	habilidad varchar(50) not null,
	nombre varchar(50) not null,
	puntosDaño int not null,
	estatus boolean not null default true
);

CREATE TABLE Modd
(
	idModd serial primary key,
	nombre varchar(50) not null,
	versionMod int not null,
	estatus boolean not null default true
);

CREATE TABLE ModoJuego
(
	idModoJuego serial primary key,
	tipo varchar (50) not null,
	dificultad varchar(50) not null,
	preferencia varchar(50) not null,
	estatus boolean not null default true
);

CREATE TABLE ModoServidor
(
	idModoServidor serial primary key,
	tipo varchar not null,
	estatus boolean not null default true
);

CREATE TABLE Mundo
(
	idMundo serial primary key,
	nombre varchar(50) not null,
	tipo varchar(50) not null,
	idParche int not null,
	estatus boolean not null default true
);

CREATE TABLE Sonido
(
	idSonido serial primary key,
	principal varchar(50) not null,
	musica int not null,
	ambiente varchar(50) not null,
	bloque int not null,
	criatura int not null,
	estatus boolean not null default true
);

CREATE TABLE PackRecurso
(
	idPackRecurso serial primary key,
	nombre varchar(50) not null,
	formato varchar(50) not null,
	estatus boolean not null default true
);

CREATE TABLE PackTextura
(
	idPackTextura serial primary key,
	nombre varchar(50) not null,
	formato varchar(50) not null,
	estatus boolean not null default true
);

CREATE TABLE Parche
(
	idParche serial primary key,
	versioParche int not null,
	fechaActualizacion timestamp not null,
	estatus boolean not null default true
);

CREATE TABLE Pesca
(
	idPesca serial primary key,
	tipo varchar(50) not null,
	botin varchar(50) not null,
	estatus boolean not null default true
);


CREATE TABLE Plugin
(
	idPlugin serial primary key,
	nombre varchar(50) not null,
	main varchar(50) not null,
	versionPlugin int not null,
	estatus boolean not null default true
);

CREATE TABLE Pocion
(
	idPocion serial primary key,
	nombre varchar(50) not null,
	tipo varchar(50) not null,
	puntosDaño int not null,
	puntosVida int not null,
	estatus boolean not null default true
);

CREATE TABLE Servidor
(
	idServidor serial primary key,
	nombre varchar(50) not null,
	dificultad varchar(50) not null,
	idModoServidor int not null,
	estatus boolean not null default true
);

CREATE TABLE Stack
(
	idStack serial primary key,
	nombre varchar(50) not null,
	limiteItem int not null,
	idInventario int not null,
	estatus boolean not null default true
);

CREATE TABLE Templo
(
	idTemplo serial primary key,
	estilo varchar(50) not null,
	tipo varchar(50) not null,
	nombre varchar(50) not null,
	botin varchar(50) not null,
	estatus boolean not null default true
);

CREATE TABLE Tesoro
(
	idTesoro serial primary key,
	tipo varchar not null,
	botin varchar(30) not null,
	estatus boolean not null default true
);

CREATE TABLE MundoParche
(
	idMundoParche serial primary key,
	idMundo int not null,
	idParche int not null,
	estatus boolean not null default true
);

CREATE TABLE EncantamientoEfecto
(
	idEncantamientoEfecto serial primary key,
	idEncantamiento int not null,
	idEfecto int not null,
	estatus boolean not null default true
);

CREATE TABLE JugadorAmigo
(
	idJugadorAmigo serial primary key,
	idJugador int not null,
	idAmigo int not null,
	estatus boolean not null default true
);

CREATE TABLE JugadorComercio
(
	idJugadorComercio serial primary key,
	idJugador int not null,
	idComercio int not null,
	estatus boolean not null default true
);

CREATE TABLE JugadorItem
(
	idJugadorItem serial primary key,
	idJugador int not null,
	idItem int not null,
	estatus boolean not null default true
);

CREATE TABLE JugadorServidor
(
	idJugadorServidor serial primary key,
	idJugador int not null,
	idServidor int not null,
	estatus boolean not null default true
);

CREATE TABLE MesaTrabajoEncantamiento
(
	idMesaTrabajoEncantamiento serial primary key,
	idMesaTrabajo int not null,
	idEncantamiento int not null,
	estatus boolean not null default true
);

CREATE TABLE MesaTrabajoJugador
(
	idMesaTrabajoJugador serial primary key,
	idMesaTrabajo int not null,
	idJugador int not null,
	estatus boolean not null default true
);

CREATE TABLE MundoAldea
(
	idMundoAldea serial primary key,
	idMundo int not null,
	idAldea int not null,
	estatus boolean not null default true
);

CREATE TABLE MundoBloque
(
	idMundoBloque serial primary key,
	idMundo int not null,
	idBloque int not null,
	estatus boolean not null default true
);

CREATE TABLE MundoDimension
(
	idMundoDimension serial primary key,
	idMundo int not null,
	idDimension int not null,
	estatus boolean not null default true
);

CREATE TABLE MundoEcosistema
(
	idMundoEcosistema serial primary key,
	idMundo int not null,
	idEcosistema int not null,
	estatus boolean not null default true
);

CREATE TABLE MundoEstructura
(
	idMundoEstructura serial primary key,
	idMundo int not null,
	idEstructura int not null,
	estatus boolean not null default true
);

CREATE TABLE MundoFluido
(
	idMundoFluido serial primary key,
	idMundo int not null,
	idFluido int not null,
	estatus boolean not null default true
);

CREATE TABLE MundoFortaleza
(
	idMundoFortaleza serial primary key,
	idMundo int not null,
	idFortaleza int not null,
	estatus boolean not null default true
);

CREATE TABLE MundoGeneracion
(
	idMundoGeneracion serial primary key,
	idMundo int not null,
	idGeneracion int not null,
	estatus boolean not null default true
);

CREATE TABLE MundoJefe
(
	idMundoJefe serial primary key,
	idMundo int not null,
	idJefe int not null,
	estatus boolean not null default true
);

CREATE TABLE MundoJugador
(
	idMundoJugador serial primary key,
	idMundo int not null,
	idJugador int not null,
	estatus boolean not null default true
);

CREATE TABLE MundoMob
(
	idMundoMob serial primary key,
	idMundo int not null,
	idMob int not null,
	estatus boolean not null default true
);

CREATE TABLE MundoModd
(
	idMundoModd serial primary key,
	idMundo int not null,
	idModd int not null,
	estatus boolean not null default true
);

CREATE TABLE MundoPackRecurso
(
	idMundoPackrecurso serial primary key,
	idMundo int not null,
	idPackRecurso int not null,
	estatus boolean not null default true
);

CREATE TABLE MundoPackTextura
(
	idMundoPackTextura serial primary key,
	idMundo int not null,
	idPackTextura int not null,
	estatus boolean not null default true
);

CREATE TABLE MundoTemplo
(
	idMundoTemplo serial primary key,
	idMundo int not null,
	idTemplo int not null,
	estatus boolean not null default true
);

CREATE TABLE ServidorModoServidor
(
	idServidorModoServidor serial primary key,
	idServidor int not null,
	idModoServidor int not null,
	estatus boolean not null default true
);

--Foraneas Pendientes
--Crafteo
ALTER TABLE Crafteo ADD CONSTRAINT FK_CrafteoMesaTrabajo FOREIGN KEY (idMesaTrabajo) REFERENCES 
MesaTrabajo(idMesaTrabajo);
ALTER TABLE Crafteo ADD CONSTRAINT FK_CrafteoInventario FOREIGN KEY (idInventario) REFERENCES 
Inventario(idInventario);
--Jugador
ALTER TABLE Jugador ADD CONSTRAINT FK_JugadorInventario FOREIGN KEY (idInventario) REFERENCES 
Inventario(idInventario);
ALTER TABLE Jugador ADD CONSTRAINT FK_JugadorConfigMundo FOREIGN KEY (idConfigMundo) REFERENCES 
ConfigMundo(idConfigMundo);
ALTER TABLE Jugador ADD CONSTRAINT FK_JugadorMenu FOREIGN KEY (idMenu) REFERENCES 
Menu(idMenu);
ALTER TABLE Jugador ADD CONSTRAINT FK_JugadorEstadistica FOREIGN KEY (idEstadistica) REFERENCES 
Estadistica(idEstadistica);
ALTER TABLE Jugador ADD CONSTRAINT FK_JugadorConfigUsuario FOREIGN KEY (idConfigUsuario) REFERENCES 
ConfigUsuario(idConfigUsuario);
--Logro
ALTER TABLE Logro ADD CONSTRAINT FK_LogroJugador FOREIGN KEY (idJugador) REFERENCES 
Jugador(idJugador);
--Mascota
ALTER TABLE Mascota ADD CONSTRAINT FK_MascotaJugador FOREIGN KEY (idJugador) REFERENCES 
Jugador(idJugador);
--MesaTrabajo
ALTER TABLE MesaTrabajo ADD CONSTRAINT FK_MesaTrabajoInventario FOREIGN KEY (idInventario) REFERENCES 
Inventario(idInventario);
--Mundo
ALTER TABLE Mundo ADD CONSTRAINT FK_MundoParche FOREIGN KEY (idParche) REFERENCES 
Parche(idParche);
--Servidor
ALTER TABLE Servidor ADD CONSTRAINT FK_idServidorModoServidor FOREIGN KEY (idModoServidor) REFERENCES 
ModoServidor(idModoServidor);
--Stack
ALTER TABLE Stack ADD CONSTRAINT FK_StackInventario FOREIGN KEY (idInventario) REFERENCES 
Inventario(idInventario);
--MundoParche
ALTER TABLE MundoParche ADD CONSTRAINT FK_MundoParcheMundo FOREIGN KEY (idMundo) REFERENCES 
Mundo(idMundo);
ALTER TABLE MundoParche ADD CONSTRAINT FK_MundoParcheParche FOREIGN KEY (idParche) REFERENCES 
Parche(idParche);
--EncantamientoEfecto
ALTER TABLE EncantamientoEfecto ADD CONSTRAINT FK_EncantamientoEfectoEfecto FOREIGN KEY (idEfecto) REFERENCES 
Efecto(idEfecto);
ALTER TABLE EncantamientoEfecto ADD CONSTRAINT FK_EncantamientoEfectoEncantamiento FOREIGN KEY (idEncantamiento) REFERENCES 
Encantamiento(idEncantamiento);
--JugadorAmigo
ALTER TABLE JugadorAmigo ADD CONSTRAINT FK_JugadorAmigoAmigo FOREIGN KEY (idAmigo) REFERENCES 
Amigo(idAmigo);
ALTER TABLE JugadorAmigo ADD CONSTRAINT FK_JugadorAmigoJugador FOREIGN KEY (idJugador) REFERENCES 
Jugador(idJugador);
--JugadorComercio
ALTER TABLE JugadorComercio ADD CONSTRAINT FK_JugadorComercioComercio FOREIGN KEY (idComercio) REFERENCES 
Comercio(idComercio);
ALTER TABLE JugadorComercio ADD CONSTRAINT FK_JugadorComercioJugador FOREIGN KEY (idJugador) REFERENCES 
Jugador(idJugador);
--JugadorItem
ALTER TABLE JugadorItem ADD CONSTRAINT FK_JugadorItemItem FOREIGN KEY (idItem) REFERENCES 
Item(idItem);
ALTER TABLE JugadorItem ADD CONSTRAINT FK_JugadorItemJugador FOREIGN KEY (idJugador) REFERENCES 
Jugador(idJugador);
--JugadorServidor
ALTER TABLE JugadorServidor ADD CONSTRAINT FK_JugadorServidorServidor FOREIGN KEY (idServidor) REFERENCES 
Servidor(idServidor);
ALTER TABLE JugadorServidor ADD CONSTRAINT FK_JugadorServidorJugador FOREIGN KEY (idJugador) REFERENCES 
Jugador(idJugador);
--MesaTrabajoEncantamiento
ALTER TABLE MesaTrabajoEncantamiento ADD CONSTRAINT FK_MesaTrabajoEncantamientoEncantamiento FOREIGN KEY (idEncantamiento) REFERENCES 
Encantamiento(idEncantamiento);
ALTER TABLE MesaTrabajoEncantamiento ADD CONSTRAINT FK_MesaTrabajoEncantamientoMesaTrabajo FOREIGN KEY (idMesatrabajo) REFERENCES 
MesaTrabajo(idMesaTrabajo);
--MesaTrabajoJugador
ALTER TABLE MesaTrabajoJugador ADD CONSTRAINT FK_MesaTrabajoJugadorJugador FOREIGN KEY (idJugador) REFERENCES 
Jugador(idJugador);
ALTER TABLE MesaTrabajoJugador ADD CONSTRAINT FK_MesaTrabajoJugadorMesaTrabajo FOREIGN KEY (idMesaTrabajo) REFERENCES 
MesaTrabajo(idMesaTrabajo);
--MundoAldea
ALTER TABLE MundoAldea ADD CONSTRAINT FK_MundoAldeaAldea FOREIGN KEY (idAldea) REFERENCES 
Aldea(idAldea);
ALTER TABLE MundoAldea ADD CONSTRAINT FK_MundoAldeaMundo FOREIGN KEY (idMundo) REFERENCES 
Mundo(idMundo);
--MundoBloque
ALTER TABLE MundoBloque ADD CONSTRAINT FK_MundoBloqueMundo FOREIGN KEY (idMundo) REFERENCES 
Mundo(idMundo);
ALTER TABLE MundoBloque ADD CONSTRAINT FK_MundoBloqueBloque FOREIGN KEY (idBloque) REFERENCES 
Bloque(idBloque);
--MundoDimension
ALTER TABLE MundoDimension ADD CONSTRAINT FK_MundoDimension FOREIGN KEY (idDimension) REFERENCES 
Dimension(idDimension);
--MundoEcosistema
ALTER TABLE MundoEcosistema ADD CONSTRAINT FK_MundoEcosistemaMundo FOREIGN KEY (idMundo) REFERENCES 
Mundo(idMundo);
ALTER TABLE MundoEcosistema ADD CONSTRAINT FK_MundoEcosistemaEcosistema FOREIGN KEY (idEcosistema) REFERENCES 
Ecosistema(idEcosistema);
--MundoEstructura
ALTER TABLE MundoEstructura ADD CONSTRAINT FK_MundoEsctructuraMundo FOREIGN KEY (idMundo) REFERENCES 
Mundo(idMundo);
ALTER TABLE MundoEstructura ADD CONSTRAINT FK_MundoEstructura FOREIGN KEY (idEstructura) REFERENCES 
Estructura(idEstructura);
--MundoFluido
ALTER TABLE MundoFluido ADD CONSTRAINT FK_MundoFluidoMundo FOREIGN KEY (idMundo) REFERENCES 
Mundo(idMundo);
ALTER TABLE MundoFluido ADD CONSTRAINT FK_MundoFluidoFluido FOREIGN KEY (idFluido) REFERENCES 
Fluido(idFluido);
--MundoFortaleza
ALTER TABLE MundoFortaleza ADD CONSTRAINT FK_MundoFortalezaMundo FOREIGN KEY (idMundo) REFERENCES 
Mundo(idMundo);
ALTER TABLE MundoFortaleza ADD CONSTRAINT FK_MundoFortalezaFortaleza FOREIGN KEY (idFortaleza) REFERENCES 
Fortaleza(idFortaleza);
--MundoGeneracion
ALTER TABLE MundoGeneracion ADD CONSTRAINT FK_MundoGeneracionGeneracion FOREIGN KEY (idGeneracion) REFERENCES 
Generacion(idGeneracion);
ALTER TABLE MundoGeneracion ADD CONSTRAINT FK_MundoGeneracionMundo FOREIGN KEY (idMundo) REFERENCES 
Mundo(idMundo);
--MundoJefe
ALTER TABLE MundoJefe ADD CONSTRAINT FK_MundoJefeMundo FOREIGN KEY (idMundo) REFERENCES 
Mundo(idMundo);
ALTER TABLE MundoJefe ADD CONSTRAINT FK_MundoJefeJefe FOREIGN KEY (idJefe) REFERENCES 
Jefe(idJefe);
--MundoJugador
ALTER TABLE MundoJugador ADD CONSTRAINT FK_MundoJugadorMundo FOREIGN KEY (idMundo) REFERENCES 
Mundo(idMundo);
ALTER TABLE MundoJugador ADD CONSTRAINT FK_MundoJugadorJugador FOREIGN KEY (idJugador) REFERENCES 
Jugador(idJugador);
--MundoMob
ALTER TABLE MundoMob ADD CONSTRAINT FK_MundoMobMundo FOREIGN KEY (idMundo) REFERENCES 
Mundo(idMundo);
ALTER TABLE MundoMob ADD CONSTRAINT FK_MundoMobMob FOREIGN KEY (idMob) REFERENCES 
Mob(idMob);
--MundoMod
ALTER TABLE MundoModd ADD CONSTRAINT FK_MundoModdMundo FOREIGN KEY (idMundo) REFERENCES 
Mundo(idMundo);
ALTER TABLE MundoModd ADD CONSTRAINT FK_MundoModdModd FOREIGN KEY (idModd) REFERENCES 
Modd(idModd);
--MundoPackRecurso
ALTER TABLE MundoPackRecurso ADD CONSTRAINT FK_MundoPackRecursoMundo FOREIGN KEY (idMundo) REFERENCES 
Encantamiento(idEncantamiento);
ALTER TABLE MundoPackRecurso ADD CONSTRAINT FK_MundoPackRecursoPackRecurso FOREIGN KEY (idPackRecurso) REFERENCES 
PackRecurso(idPackrecurso);
--MundoPackTextura
ALTER TABLE MundoPackTextura ADD CONSTRAINT FK_MundoPackTexturaMundo FOREIGN KEY (idMundo) REFERENCES 
Mundo(idMundo);
ALTER TABLE MundoPackTextura ADD CONSTRAINT FK_MundoPackTexturaPackTextura FOREIGN KEY (idPackTextura) REFERENCES 
PackTextura(idPackTextura);
--MundoTemplo
ALTER TABLE MundoTemplo ADD CONSTRAINT FK_MundoTemploMundo FOREIGN KEY (idMundo) REFERENCES 
Mundo(idMundo);
ALTER TABLE MundoTemplo ADD CONSTRAINT FK_MundoTemploTemplo FOREIGN KEY (idTemplo) REFERENCES 
Templo(idTemplo);
--ServidorModoServidor
ALTER TABLE ServidorModoServidor ADD CONSTRAINT FK_ServidorModoServidorServidor FOREIGN KEY (idServidor) REFERENCES 
Servidor(idServidor);
ALTER TABLE ServidorModoServidor ADD CONSTRAINT FK_ServidorModoServidorModoServidor FOREIGN KEY (idModoServidor) REFERENCES 
ModoServidor(idModoServidor);

--Index
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

--Aldea
INSERT INTO Aldea(estilo, evento, botin) values ('Desierto','Asalto', 'Pala de hierro');

INSERT INTO Aldea(estilo, evento, botin) values ('Llanura','Cultivo', 'papa');

INSERT INTO Aldea(estilo, evento, botin) values ('Prado','Asalto', 'Pala de piedra');

INSERT INTO Aldea(estilo, evento, botin) values ('Sabana','Asalto', 'Azada de hierro');

INSERT INTO Aldea(estilo, evento, botin) values ('Taiga nevada','Hordas', 'carne podrida');

INSERT INTO Aldea(estilo, evento, botin) values ('Llanura','Asalto', 'pan');

INSERT INTO Aldea(estilo, evento, botin) values ('Taiga','Cultivo', 'Zanahorias');

INSERT INTO Aldea(estilo, evento, botin) values ('LLanura nevada','Cultivo', 'Remolachas');

INSERT INTO Aldea(estilo, evento, botin) values ('Desierto','Asalto', 'Libros');

INSERT INTO Aldea(estilo, evento, botin) values ('Taiga nevada','Asalto', 'Mapa');

--Amigo
INSERT INTO Amigo(gamertag, aspecto) values ('Barbiqiu', 'Calamardo');

INSERT INTO Amigo(gamertag, aspecto) values ('AxRadiel', 'Personalizado');

INSERT INTO Amigo(gamertag, aspecto) values ('juso', 'Zombie');

INSERT INTO Amigo(gamertag, aspecto) values ('Roles', 'Creeper');

INSERT INTO Amigo(gamertag, aspecto) values ('yosare', 'Endeman');

INSERT INTO Amigo(gamertag, aspecto) values ('lucho', 'Personalizado');

INSERT INTO Amigo(gamertag, aspecto) values ('rino', 'Jirafa');

INSERT INTO Amigo(gamertag, aspecto) values ('losa', 'Creeper');

INSERT INTO Amigo(gamertag, aspecto) values ('serrato', 'Zombie');

INSERT INTO Amigo(gamertag, aspecto) values ('Yusiniu', 'Personalizado');

--Animal
INSERT INTO Animal(puntosVida, botin, tipoAnimal) values (4, 'Cuero', 'Vaca');

INSERT INTO Animal(puntosVida, botin, tipoAnimal) values (4, 'Leche', 'Vaca');

INSERT INTO Animal(puntosVida, botin, tipoAnimal) values (5, 'Ternera', 'Oveja');

INSERT INTO Animal(puntosVida, botin, tipoAnimal) values (4, 'Carne de res', 'Vaca');

INSERT INTO Animal(puntosVida, botin, tipoAnimal) values (4, 'Carne de cerdo', 'Cerdo');

INSERT INTO Animal(puntosVida, botin, tipoAnimal) values (1, 'Bacalao', 'Pez');

INSERT INTO Animal(puntosVida, botin, tipoAnimal) values (2, 'Pluma', 'pollo');

INSERT INTO Animal(puntosVida, botin, tipoAnimal) values (5, 'Cuero', 'Caballo');

INSERT INTO Animal(puntosVida, botin, tipoAnimal) values (3, 'Cuero de conejo', 'Conejo');

INSERT INTO Animal(puntosVida, botin, tipoAnimal) values (3, 'carne de conejo', 'Conejo');

--Arma
INSERT INTO Arma(tipoArma, nombre, material, daño, resistencia) Values ('arco', 'arco', 'palos', 5, 6);

INSERT INTO Arma(tipoArma, nombre, material, daño, resistencia) Values ('espada', 'espada de diamante', 'diamante', 6, 7);

INSERT INTO Arma(tipoArma, nombre, material, daño, resistencia) Values ('ballesta', 'ballesta', 'palos', 5, 6);

INSERT INTO Arma(tipoArma, nombre, material, daño, resistencia) Values ('espada', 'espada de oro', 'oro', 5, 4);

INSERT INTO Arma(tipoArma, nombre, material, daño, resistencia) Values ('acha', 'acha de hierro', 'hierro', 6, 6);

INSERT INTO Arma(tipoArma, nombre, material, daño, resistencia) Values ('espada', 'espada de netherita', 'netherita', 5, 6);

INSERT INTO Arma(tipoArma, nombre, material, daño, resistencia) Values ('espada', 'espada de hierro', 'hierro', 5, 6);

INSERT INTO Arma(tipoArma, nombre, material, daño, resistencia) Values ('espada', 'espada de piedra', 'piedra', 4, 5);

INSERT INTO Arma(tipoArma, nombre, material, daño, resistencia) Values ('acha', 'acha de piedra', 'piedra', 4, 5);

INSERT INTO Arma(tipoArma, nombre, material, daño, resistencia) Values ('acha', 'acha de diamante', 'diamante', 6, 7);

--Armadura
INSERT INTO Armadura(material, nombre, resistencia, idInventario) values ('Diamante', 'Armadura de diamante', 6, 1);

INSERT INTO Armadura(material, nombre, resistencia, idInventario) values ('Oro', 'Armadura de oro', 3, 2);

INSERT INTO Armadura(material, nombre, resistencia, idInventario) values ('Hierro', 'Armadura de hierro', 4,3);

INSERT INTO Armadura(material, nombre, resistencia, idInventario) values ('Cuero', 'Armadura de cuero',  2,4);

INSERT INTO Armadura(material, nombre, resistencia, idInventario) values ('Maya', 'Armadura de Maya', 1,5);

INSERT INTO Armadura(material, nombre, resistencia, idInventario) values ('Netherita', 'Armadura de netherita', 7,6);

INSERT INTO Armadura(material, nombre, resistencia, idInventario) values ('Diamante', 'Armadura de diamante para caballo', 6,7);

INSERT INTO Armadura(material, nombre, resistencia, idInventario) values ('Oro', 'Armadura de oro para caballo',3,8);

INSERT INTO Armadura(material, nombre, resistencia, idInventario) values ('Hierro', 'Armadura de hierro para caballo', 4,9);

INSERT INTO Armadura(material, nombre, resistencia, idInventario) values ('Cuero', 'Armadura de cuero para caballo', 2,10);


--Bloque
INSERT INTO Bloque(material, nombre) values ('piedra','bloque de piedra');

INSERT INTO Bloque(material, nombre) values ('cuarzo','bloque de cuarzo');

INSERT INTO Bloque(material, nombre) values ('madera','bloque de madera');

INSERT INTO Bloque(material, nombre) values ('hojas','bloque de hojas');

INSERT INTO Bloque(material, nombre) values ('piedra','bloque de piedra');

INSERT INTO Bloque(material, nombre) values ('arena','bloque de arena');

INSERT INTO Bloque(material, nombre) values ('tierra','bloque de tierra');

INSERT INTO Bloque(material, nombre) values ('hierro','bloque de hierro');

INSERT INTO Bloque(material, nombre) values ('obsidiana','bloque de obsidiana');

INSERT INTO Bloque(material, nombre) values ('cuarzo','bloque de cuarzo');

--Chat
INSERT INTO Chat(fuente, color,espaciadolinea) values ('arial', 'negro', 1);

INSERT INTO Chat(fuente, color,espaciadolinea) values ('calibri', 'rojo', 1.5);

INSERT INTO Chat(fuente, color,espaciadolinea) values ('times new roman', 'negro', 1);

INSERT INTO Chat(fuente, color,espaciadolinea) values ('arial narrow', 'verde', 1);

INSERT INTO Chat(fuente, color,espaciadolinea) values ('algerian', 'negro', 1.5);

INSERT INTO Chat(fuente, color,espaciadolinea) values ('georgia', 'azul', 1);

INSERT INTO Chat(fuente, color,espaciadolinea) values ('arial', 'rojo', 1);

INSERT INTO Chat(fuente, color,espaciadolinea) values ('calibri', 'negro', 1);

INSERT INTO Chat(fuente, color,espaciadolinea) values ('times new roman', 'amarillo', 1.5);

INSERT INTO Chat(fuente, color,espaciadolinea) values ('arial', 'negro', 1.5);

--Chunk
INSERT INTO Chunk(limite, formato) values (10, 'png');

INSERT INTO Chunk(limite, formato) values (32, 'avi');

INSERT INTO Chunk(limite, formato) values (22, 'png');

INSERT INTO Chunk(limite, formato) values (10, 'mp3');

INSERT INTO Chunk(limite, formato) values (30, 'avi');

INSERT INTO Chunk(limite, formato) values (25, 'avi');

INSERT INTO Chunk(limite, formato) values (32, 'png');

INSERT INTO Chunk(limite, formato) values (28, 'png');

INSERT INTO Chunk(limite, formato) values (30, 'png');

--Comercio
INSERT INTO Comercio(tipoComercio, tipoIntercambio) values ('vendedor ambulante', 'zanahoria');

INSERT INTO Comercio(tipoComercio, tipoIntercambio) values ('cartografo', 'esmeralda');

INSERT INTO Comercio(tipoComercio, tipoIntercambio) values ('herrero', 'lingote de hierro');

INSERT INTO Comercio(tipoComercio, tipoIntercambio) values ('carnicero', 'esmeralda');

INSERT INTO Comercio(tipoComercio, tipoIntercambio) values ('granjero', 'semillas de trigo');

INSERT INTO Comercio(tipoComercio, tipoIntercambio) values ('bibliotecario', 'cuero');

INSERT INTO Comercio(tipoComercio, tipoIntercambio) values ('carnicero', 'esmeralda');

INSERT INTO Comercio(tipoComercio, tipoIntercambio) values ('cartografo', 'lingote de hierro');

INSERT INTO Comercio(tipoComercio, tipoIntercambio) values ('vendedor ambulante', 'lingote de oro');

INSERT INTO Comercio(tipoComercio, tipoIntercambio) values ('pescador', 'esmeralda');

--Comida
INSERT INTO Comida(tipo, valorNutrimental, nombre, ingredientes) values ('carne', 3, 'filete', 'vaca');

INSERT INTO Comida(tipo, valorNutrimental, nombre, ingredientes) values ('vegetal', 0.5, 'zanahoria', 'zanahoria');

INSERT INTO Comida(tipo, valorNutrimental, nombre, ingredientes) values ('postre', 6, 'pastel', 'huevo, leche, azucar, trigo');

INSERT INTO Comida(tipo, valorNutrimental, nombre, ingredientes) values ('carne', 3, 'chuleta', 'cerdo');

INSERT INTO Comida(tipo, valorNutrimental, nombre, ingredientes) values ('fruta', 0.5, 'manzana', 'manzana');

INSERT INTO Comida(tipo, valorNutrimental, nombre, ingredientes) values ('postre', 3, 'pastel de calabaza', 'azucar, huevo, calabaza');

INSERT INTO Comida(tipo, valorNutrimental, nombre, ingredientes) values ('pollo', 3, 'pollo asado', 'pollo');

INSERT INTO Comida(tipo, valorNutrimental, nombre, ingredientes) values ('carne', 3, 'carne de conejo', 'conejo');

INSERT INTO Comida(tipo, valorNutrimental, nombre, ingredientes) values ('sopa', 2, 'sopa de champiñon', 'champiñon, plato');

INSERT INTO Comida(tipo, valorNutrimental, nombre, ingredientes) values ('carne', 3, 'chuleta', 'vaca');

--ConfigMundo
INSERT INTO ConfigMundo(modoJuego, dificultad, preferencia, semilla, tipo) values ('creativo', 'nulo', 'mapa', 33367, 'super plano');

INSERT INTO ConfigMundo(modoJuego, dificultad, preferencia, semilla, tipo) values ('supervivencia', 'normal', 'cofre de bonificación', 65432, 'clasico');

INSERT INTO ConfigMundo(modoJuego, dificultad, preferencia, semilla, tipo) values ('supervivencia', 'dificil', 'cofre de bonificación', 733433, 'sky block');

INSERT INTO ConfigMundo(modoJuego, dificultad, preferencia, semilla, tipo) values ('creativo', 'nulo', 'nulo', 034885893, 'clasico');

INSERT INTO ConfigMundo(modoJuego, dificultad, preferencia, semilla, tipo) values ('aventura', 'normal', 'mapa', 82664, 'clasico');

INSERT INTO ConfigMundo(modoJuego, dificultad, preferencia, semilla, tipo) values ('creativo', 'nulo', 'nulo', 123456, 'clasico');

INSERT INTO ConfigMundo(modoJuego, dificultad, preferencia, semilla, tipo) values ('extremo', 'dificil', 'nulo', 0092321, 'clasico');

INSERT INTO ConfigMundo(modoJuego, dificultad, preferencia, semilla, tipo) values ('aventura', 'normal', 'nulo', 99823, 'sky bolck');

INSERT INTO ConfigMundo(modoJuego, dificultad, preferencia, semilla, tipo) values ('extremo', 'normal', 'nulo', 23093, 'clasico');

INSERT INTO ConfigMundo(modoJuego, dificultad, preferencia, semilla, tipo) values ('creativo', 'nulo', 'nulo', 8399392, 'clasico');

--ConfigUsuario
INSERT INTO ConfigUsuario(gamertag, idioma) values ('barbiqiu', 'español');

INSERT INTO ConfigUsuario(gamertag, idioma) values ('AxRadiel', 'inglés');

INSERT INTO ConfigUsuario(gamertag, idioma) values ('Rinoxd', 'español');

INSERT INTO ConfigUsuario(gamertag, idioma) values ('Aguilablanca', 'español');

INSERT INTO ConfigUsuario(gamertag, idioma) values ('Kev0ti', 'inglés');

INSERT INTO ConfigUsuario(gamertag, idioma) values ('taquito32', 'inglés');

INSERT INTO ConfigUsuario(gamertag, idioma) values ('Camenio', 'inglés');

INSERT INTO ConfigUsuario(gamertag, idioma) values ('patoasado2', 'español');

INSERT INTO ConfigUsuario(gamertag, idioma) values ('frurro54', 'español');

INSERT INTO ConfigUsuario(gamertag, idioma) values ('paco63', 'inglés');

--Cordenada
INSERT INTO Coordenada(ejeX, ejeY,ejeZ) values (0293838, 134085, 33);

INSERT INTO Coordenada(ejeX, ejeY,ejeZ) values (5456372, 0039499200, 2284);

INSERT INTO Coordenada(ejeX, ejeY,ejeZ) values (0293838, 134085, 19);

INSERT INTO Coordenada(ejeX, ejeY,ejeZ) values (0293838, 134085, 0031);

INSERT INTO Coordenada(ejeX, ejeY,ejeZ) values (0293838, 134085, -34);

INSERT INTO Coordenada(ejeX, ejeY,ejeZ) values (-994884, 431662, 11);

INSERT INTO Coordenada(ejeX, ejeY,ejeZ) values (0293838, 134085, -322);

INSERT INTO Coordenada(ejeX, ejeY,ejeZ) values (-0004789239, 47823, 33);

INSERT INTO Coordenada(ejeX, ejeY,ejeZ) values (988492911, 134085, -44736);

INSERT INTO Coordenada(ejeX, ejeY,ejeZ) values (09953932, 498937, 0029394);

--Cultivo
INSERT INTO Cultivo(tiempoCultivo, tipo) values ('00:03', 'planta zanahoria');

INSERT INTO Cultivo(tiempoCultivo, tipo) values ('00:10', 'planta bambú');

INSERT INTO Cultivo(tiempoCultivo, tipo) values ('00:5', 'planta trigo');

INSERT INTO Cultivo(tiempoCultivo, tipo) values ('00:03', 'planta papa');

INSERT INTO Cultivo(tiempoCultivo, tipo) values ('00:5', 'planta rabano');

INSERT INTO Cultivo(tiempoCultivo, tipo) values ('00:5', 'planta caña');

INSERT INTO Cultivo(tiempoCultivo, tipo) values ('00:10', 'planta calabaza');

INSERT INTO Cultivo(tiempoCultivo, tipo) values ('00:15', 'planta sandia');

INSERT INTO Cultivo(tiempoCultivo, tipo) values ('00:10', 'arbol de abeto');

INSERT INTO Cultivo(tiempoCultivo, tipo) values ('00:15', 'arbol de jungla');

--Dimension
INSERT INTO DImension(nombre, estilo, cicloDelDia) values ('Overworld','normal', 'Dia,Noche');

INSERT INTO DImension(nombre, estilo, cicloDelDia) values ('Overworld','normal', 'Dia');

INSERT INTO DImension(nombre, estilo, cicloDelDia) values ('Nether','Infierno', 'Noche');

INSERT INTO DImension(nombre, estilo, cicloDelDia) values ('Nether','Infierno', 'sin datos');

INSERT INTO DImension(nombre, estilo, cicloDelDia) values ('End','Fin', 'Noche');

INSERT INTO DImension(nombre, estilo, cicloDelDia) values ('End','normal', 'Noche');

INSERT INTO DImension(nombre, estilo, cicloDelDia) values ('End','Ciudad', 'Noche');

INSERT INTO DImension(nombre, estilo, cicloDelDia) values ('Overworld','Desertico', 'Dia');

INSERT INTO DImension(nombre, estilo, cicloDelDia) values ('Overworld','normal', 'Dia,Noche');

INSERT INTO DImension(nombre, estilo, cicloDelDia) values ('Nether','Infierno', 'Noche');

--Ecosistema
INSERT INTO Ecosistema( tipo, tamaño, bioma, clima) values ('Desertico', 1540, 'Desierto', 'Calido');

INSERT INTO Ecosistema( tipo, tamaño, bioma, clima) values ('Boscoso', 55, 'Bosque', 'Frio');

INSERT INTO Ecosistema( tipo, tamaño, bioma, clima) values ('Boscoso', 51212, 'Jungla', 'Humedo');

INSERT INTO Ecosistema( tipo, tamaño, bioma, clima) values ('Desertico', 421, 'Desierto', 'Frio');

INSERT INTO Ecosistema( tipo, tamaño, bioma, clima) values ('Boscoso', 415, 'Bosque', 'Calido');

INSERT INTO Ecosistema( tipo, tamaño, bioma, clima) values ('Nevado', 4551, 'Tundra', 'Frio');

INSERT INTO Ecosistema( tipo, tamaño, bioma, clima) values ('Boscoso', 53152, 'Bosque', 'Humedo');

INSERT INTO Ecosistema( tipo, tamaño, bioma, clima) values ('Boscosos', 56532, 'Bosque', 'Humedo');

INSERT INTO Ecosistema( tipo, tamaño, bioma, clima) values ('Desertico', 53, 'Desierto', 'Calido');

INSERT INTO Ecosistema( tipo, tamaño, bioma, clima) values ('Desertico', 5345, 'Desierto', 'Frio');

--Efecto
INSERT INTO Efecto(tipo, durabilidad, nombre) values ('Daño', 50,  'Pocion de daño');

INSERT INTO Efecto(tipo, durabilidad, nombre) values ('Resistencia contra el fuego', 100, 'Pocion de resistencia contra el fuego');

INSERT INTO Efecto(tipo, durabilidad, nombre) values ('Daño', 45,  'Pocion de lanzamiento de daño');

INSERT INTO Efecto(tipo, durabilidad, nombre) values ('Salto', 559, ' Pocion de super salto');

INSERT INTO Efecto(tipo, durabilidad, nombre) values ('Invisibilidad', 50,  'Pocion de invisibilidad');

INSERT INTO Efecto(tipo, durabilidad, nombre) values ('Daño', 50,  'Veneno');

INSERT INTO Efecto(tipo, durabilidad, nombre) values ('curacion', 50, 'curacion instantanea');

INSERT INTO Efecto(tipo, durabilidad, nombre) values ('respirar debajo del agua', 50,  'vida marina');

INSERT INTO Efecto(tipo, durabilidad, nombre) values ('Daño', 50,  'Pocion de daño');

INSERT INTO Efecto(tipo, durabilidad, nombre) values ('Salto', 50,  'Super salto');


--Encantamiento
INSERT INTO Encantamiento (tipo, durabilidad, nombre) values('construccion', 50, 'toque de seda');

INSERT INTO Encantamiento (tipo, durabilidad, nombre) values('daño', 50, 'filo');

INSERT INTO Encantamiento (tipo,durabilidad, nombre) values('defensa', 50, 'irrompibilidad');

INSERT INTO Encantamiento (tipo, durabilidad, nombre) values('construccion', 50, 'fortuna');

INSERT INTO Encantamiento (tipo, durabilidad, nombre) values('daño', 50, 'saqueo');

INSERT INTO Encantamiento (tipo, durabilidad, nombre) values('daño', 50, 'perdicion para los artropodos');

INSERT INTO Encantamiento (tipo, durabilidad, nombre) values('defensa', 50, 'caida de pluma');

INSERT INTO Encantamiento (tipo, durabilidad, nombre) values('daño', 50, 'fuego');

INSERT INTO Encantamiento (tipo, durabilidad, nombre) values('construccion', 50, 'reparacion');

INSERT INTO Encantamiento (tipo, durabilidad, nombre) values('defensa', 50, 'reparacion');

--Estadistica

INSERT INTO Estadistica(dsitanciaRecorrida, distanciaVolada, distanciaCaida, saltos, numeroMuertes) values (2, 5, 4, 5, 6);

INSERT INTO Estadistica(dsitanciaRecorrida, distanciaVolada, distanciaCaida, saltos, numeroMuertes) values (2, 5, 4, 5, 6);

INSERT INTO Estadistica(dsitanciaRecorrida, distanciaVolada, distanciaCaida, saltos, numeroMuertes) values (2, 5, 4, 5, 6);

INSERT INTO Estadistica(dsitanciaRecorrida, distanciaVolada, distanciaCaida, saltos, numeroMuertes) values (2, 5, 4, 5, 6);

INSERT INTO Estadistica(dsitanciaRecorrida, distanciaVolada, distanciaCaida, saltos, numeroMuertes) values (2, 5, 4, 5, 6);

INSERT INTO Estadistica(dsitanciaRecorrida, distanciaVolada, distanciaCaida, saltos, numeroMuertes) values (2, 5, 4, 5, 6);

INSERT INTO Estadistica(dsitanciaRecorrida, distanciaVolada, distanciaCaida, saltos, numeroMuertes) values (2, 5, 4, 5, 6);

INSERT INTO Estadistica(dsitanciaRecorrida, distanciaVolada, distanciaCaida, saltos, numeroMuertes) values (2, 5, 4, 5, 6);

INSERT INTO Estadistica(dsitanciaRecorrida, distanciaVolada, distanciaCaida, saltos, numeroMuertes) values (2, 5, 4, 5, 6);

INSERT INTO Estadistica(dsitanciaRecorrida, distanciaVolada, distanciaCaida, saltos, numeroMuertes) values (2, 5, 4, 5, 6);

--Estructura
INSERT INTO Estructura( tipo, estilo) values ('desierto', 'piramide');

INSERT INTO Estructura( tipo, estilo) values ('jungla', 'templo');

INSERT INTO Estructura( tipo, estilo) values ('desierto', 'aldea');

INSERT INTO Estructura( tipo, estilo) values ('bosque', 'casa de villagers');

INSERT INTO Estructura( tipo, estilo) values ('jungla', 'aldea');

INSERT INTO Estructura( tipo, estilo) values ('bosque', 'aldea de saqueadores');

INSERT INTO Estructura( tipo, estilo) values ('desierto', 'piramide');

INSERT INTO Estructura( tipo, estilo) values ('tundra', 'igloo');

INSERT INTO Estructura( tipo, estilo) values ('desierto', 'piramide');

INSERT INTO Estructura( tipo, estilo) values ('desierto', 'piramide');

--Evento
INSERT INTO Evento(tipo, fechaInicio, fechaCierre, duarbilidad) values ('juego', '2014-10-25 20:00:00', '2014-11-25 20:00:00', 4);

INSERT INTO Evento(tipo, fechaInicio, fechaCierre, duarbilidad) values ('juego', '2014-10-25 20:00:00', '2014-11-25 20:00:00', 4);

INSERT INTO Evento(tipo, fechaInicio, fechaCierre, duarbilidad) values ('juego', '2014-10-25 20:00:00', '2014-11-25 20:00:00', 4);

INSERT INTO Evento(tipo, fechaInicio, fechaCierre, duarbilidad) values ('juego', '2014-10-25 20:00:00', '2014-11-25 20:00:00', 4);

INSERT INTO Evento(tipo, fechaInicio, fechaCierre, duarbilidad) values ('juego', '2014-10-25 20:00:00', '2014-11-25 20:00:00', 4);

INSERT INTO Evento(tipo, fechaInicio, fechaCierre, duarbilidad) values ('juego', '2014-10-25 20:00:00', '2014-11-25 20:00:00', 4);

INSERT INTO Evento(tipo, fechaInicio, fechaCierre, duarbilidad) values ('juego', '2014-10-25 20:00:00', '2014-11-25 20:00:00', 4);

INSERT INTO Evento(tipo, fechaInicio, fechaCierre, duarbilidad) values ('juego', '2014-10-25 20:00:00', '2014-11-25 20:00:00', 4);

--Fluido
INSERT INTO Fluido(tipo, nombre, nivelFluido) values ('frio', 'agua', 3);

INSERT INTO Fluido(tipo, nombre, nivelFluido) values ('caliente', 'lava', 1);

INSERT INTO Fluido(tipo, nombre, nivelFluido) values ('caliente', 'agua', 3);

INSERT INTO Fluido(tipo, nombre, nivelFluido) values ('frio', 'nieve', 0);

INSERT INTO Fluido(tipo, nombre, nivelFluido) values ('frio', 'agua', 3);

INSERT INTO Fluido(tipo, nombre, nivelFluido) values ('caliente', 'lava', 1);

INSERT INTO Fluido(tipo, nombre, nivelFluido) values ('caliente', 'agua', 3);

INSERT INTO Fluido(tipo, nombre, nivelFluido) values ('frio', 'agua', 3);

INSERT INTO Fluido(tipo, nombre, nivelFluido) values ('frio', 'agua', 3);

INSERT INTO Fluido(tipo, nombre, nivelFluido) values ('caliente', 'agua', 3);

--Fortaleza
INSERT INTO Fortaleza(botin, nombre, estilo) values ('oro', 'piramide', 'desierto');

INSERT INTO Fortaleza(botin, nombre, estilo) values ('oro', 'templo', 'jungla');

INSERT INTO Fortaleza(botin, nombre, estilo) values ('oro', 'fortaleza del netther', 'nether');

INSERT INTO Fortaleza(botin, nombre, estilo) values ('hierro', 'Ender', 'cueva');

INSERT INTO Fortaleza(botin, nombre, estilo) values ('hierro', 'casa de los villager', 'bosque');

INSERT INTO Fortaleza(botin, nombre, estilo) values ('oro', 'piramide', 'desierto');

INSERT INTO Fortaleza(botin, nombre, estilo) values ('oro', 'templo', 'jungla');

INSERT INTO Fortaleza(botin, nombre, estilo) values ('oro', 'fortaleza del netther', 'nether');

INSERT INTO Fortaleza(botin, nombre, estilo) values ('hierro', 'Ender', 'cueva');

INSERT INTO Fortaleza(botin, nombre, estilo) values ('hierro', 'casa de los villager', 'bosque');

--Generación
INSERT INTO Generacion(tipo, lugarGeneracion) values ('Mundo', 'General');

INSERT INTO Generacion(tipo, lugarGeneracion) values ('Jugador', 'bosque');

INSERT INTO Generacion(tipo, lugarGeneracion) values ('Vaca', 'bosque');

INSERT INTO Generacion(tipo, lugarGeneracion) values ('Conejo', 'desierto');

INSERT INTO Generacion(tipo, lugarGeneracion) values ('gato', 'aldea');

INSERT INTO Generacion(tipo, lugarGeneracion) values ('zombie', 'desierto');

INSERT INTO Generacion(tipo, lugarGeneracion) values ('creeper', 'tundra');

INSERT INTO Generacion(tipo, lugarGeneracion) values ('cabra', 'tundra');

INSERT INTO Generacion(tipo, lugarGeneracion) values ('panda', 'bosque de bambus');

INSERT INTO Generacion(tipo, lugarGeneracion) values ('abeja', 'bosque');

--Herramienta
INSERT INTO Herramienta(material, nombre, resistencia, tipo) values ('hierro', 'pala', 4, 'trabajo');

INSERT INTO Herramienta(material, nombre, resistencia, tipo) values ('hierro', 'pala', 4, 'trabajo');

INSERT INTO Herramienta(material, nombre, resistencia, tipo) values ('hierro', 'pala', 4, 'trabajo');

INSERT INTO Herramienta(material, nombre, resistencia, tipo) values ('hierro', 'pala', 4, 'trabajo');

INSERT INTO Herramienta(material, nombre, resistencia, tipo) values ('hierro', 'pala', 4, 'trabajo');

INSERT INTO Herramienta(material, nombre, resistencia, tipo) values ('hierro', 'pala', 4, 'trabajo');

INSERT INTO Herramienta(material, nombre, resistencia, tipo) values ('hierro', 'pala', 4, 'trabajo');

INSERT INTO Herramienta(material, nombre, resistencia, tipo) values ('hierro', 'pala', 4, 'trabajo');

INSERT INTO Herramienta(material, nombre, resistencia, tipo) values ('hierro', 'pala', 4, 'trabajo');

INSERT INTO Herramienta(material, nombre, resistencia, tipo) values ('hierro', 'pala', 4, 'trabajo');

--Inventario
INSERT INTO Inventario(espacio) values (25);

INSERT INTO Inventario(espacio) values (5);

INSERT INTO Inventario(espacio) values (10);

INSERT INTO Inventario(espacio) values (15);

INSERT INTO Inventario(espacio) values (16);

INSERT INTO Inventario(espacio) values (22);

INSERT INTO Inventario(espacio) values (13);

INSERT INTO Inventario(espacio) values (11);

INSERT INTO Inventario(espacio) values (3);

INSERT INTO Inventario(espacio) values (5);

--Item
INSERT INTO Item(tipo, nombre) values ('construccion', 'piedra');

INSERT INTO Item(tipo, nombre) values ('comida', 'zanahoria');

INSERT INTO Item(tipo, nombre) values ('defensa', 'escudo');

INSERT INTO Item(tipo, nombre) values ('ataque', 'espada');

INSERT INTO Item(tipo, nombre) values ('construccion', 'ladrillos');

INSERT INTO Item(tipo, nombre) values ('construccion', 'madera');

INSERT INTO Item(tipo, nombre) values ('comida', 'papa');

INSERT INTO Item(tipo, nombre) values ('mecanismo', 'piedra rojiza');

INSERT INTO Item(tipo, nombre) values ('musica', 'bloque musical');


INSERT INTO Item(tipo, nombre) values ('construccion', 'diorita');

--Jefe
INSERT INTO Jefe(dimension, habilidad, puntosVida, nombre) values ( 'nether', 'daño', 3, 'gosth');

INSERT INTO Jefe(dimension, habilidad, puntosVida, nombre) values ( 'ender', 'daño', 5, 'dragon');

INSERT INTO Jefe(dimension, habilidad, puntosVida, nombre) values ( 'overworld', 'daño', 8, 'wither');

INSERT INTO Jefe(dimension, habilidad, puntosVida, nombre) values ( 'nether', 'daño', 8, 'wither');

INSERT INTO Jefe(dimension, habilidad, puntosVida, nombre) values ( 'ender', 'daño', 6, 'wither');

INSERT INTO Jefe(dimension, habilidad, puntosVida, nombre) values ( 'nether', 'daño', 3, 'gosth');

INSERT INTO Jefe(dimension, habilidad, puntosVida, nombre) values ( 'ender', 'daño', 5, 'dragon');

INSERT INTO Jefe(dimension, habilidad, puntosVida, nombre) values ( 'overworld', 'daño', 8, 'wither');

INSERT INTO Jefe(dimension, habilidad, puntosVida, nombre) values ( 'nether', 'daño', 8, 'wither');

INSERT INTO Jefe(dimension, habilidad, puntosVida, nombre) values ( 'ender', 'daño', 6, 'wither');

--Menu
INSERT INTO Menu(accion) values ('reanudar juego');

INSERT INTO Menu(accion) values ('ajustes');

INSERT INTO Menu(accion) values ('mercado');

INSERT INTO Menu(accion) values ('guardar y salir');

INSERT INTO Menu(accion) values ('vestidor');

INSERT INTO Menu(accion) values ('invitar al juego');

INSERT INTO Menu(accion) values ('logros');

INSERT INTO Menu(accion) values ('permisos del jugador');

INSERT INTO Menu(accion) values ('nivel de permisos');

INSERT INTO Menu(accion) values ('usuarios');

--MesaTrabajo
INSERT INTO MesaTrabajo(tipo, idInventario) values ('mesa de crafteo', 1);

INSERT INTO MesaTrabajo(tipo, idInventario) values ('mesa de herreria', 2);

INSERT INTO MesaTrabajo(tipo, idInventario) values ('mesa de encantamiento', 3);

INSERT INTO MesaTrabajo(tipo, idInventario) values ('mesa de pociones', 4);

INSERT INTO MesaTrabajo(tipo, idInventario) values ('mesa de crafteo', 5);

INSERT INTO MesaTrabajo(tipo, idInventario) values ('mesa de cartografía', 6);

INSERT INTO MesaTrabajo(tipo, idInventario) values ('telar', 7);

INSERT INTO MesaTrabajo(tipo, idInventario) values ('cortapiedra', 8);

INSERT INTO MesaTrabajo(tipo, idInventario) values ('yunque', 9);

INSERT INTO MesaTrabajo(tipo, idInventario) values ('mesa de pociones',10);


--Mob
INSERT INTO Mob(puntosVida, botin, habilidad,  nombre, puntosDaño) values (6, 'carne podrida', 'golpe', 'zombie', 2);

INSERT INTO Mob(puntosVida, botin, habilidad,  nombre, puntosDaño) values (5, 'ojo de araña', 'picadura', 'araña', 1);

INSERT INTO Mob(puntosVida, botin, habilidad,  nombre, puntosDaño) values (6, 'polvora', 'explosion', 'creeper', 6);

INSERT INTO Mob(puntosVida, botin, habilidad,  nombre, puntosDaño) values (8, 'ojo de ender', 'teletransportar', 'enderman', 6);

INSERT INTO Mob(puntosVida, botin, habilidad,  nombre, puntosDaño) values (6, 'calavera', 'arquear', 'esqueleto',2);

INSERT INTO Mob(puntosVida, botin, habilidad,  nombre, puntosDaño) values (6, 'carne podrida', 'golpe con veneno', 'vaina', 3);

INSERT INTO Mob(puntosVida, botin, habilidad,  nombre, puntosDaño) values (5, 'telaraña', 'picadura con veneno', 'araña de cueva',2);

INSERT INTO Mob(puntosVida, botin, habilidad,  nombre, puntosDaño) values (6, 'pepita de oro', 'golpe', 'porquero zombie',2);

INSERT INTO Mob(puntosVida, botin, habilidad,  nombre, puntosDaño) values (6, 'redstone', 'hechizos', 'bruja',  2);

INSERT INTO Mob(puntosVida, botin, habilidad,  nombre, puntosDaño) values (6, 'obsidiana', 'trueque con oro', 'pigling', 2);

--Modd
INSERT INTO Modd(nombre, versionMod) values ('Inventory HUD', 1.19);

INSERT INTO Modd(nombre, versionMod) values ('Alex´s mobs mod', 1.18);

INSERT INTO Modd(nombre, versionMod) values ('Cooking For Blockheads Mod', 1.18);

INSERT INTO Modd(nombre, versionMod) values ('Carry on Mod', 1.17 );

INSERT INTO Modd(nombre, versionMod) values ('Mascaw´s Trapdoors Mod', 1.18);

INSERT INTO Modd(nombre, versionMod) values ('The one Prove Mod', 1.16);

INSERT INTO Modd(nombre, versionMod) values ('Jade Mod', 1.15);

INSERT INTO Modd(nombre, versionMod) values ('Biomes O´Plenty Mod', 1.18);

INSERT INTO Modd(nombre, versionMod) values ('Cosmetic Armor Mod', 1.19);

INSERT INTO Modd(nombre, versionMod) values ('Comforts Mod', 1.14);


--ModoJuego
INSERT INTO ModoJuego(tipo, dificultad, preferencia) values ('sky block', 'normal', 'mapa inicial');

INSERT INTO ModoJuego(tipo, dificultad, preferencia) values ('Clasico', 'dificil', 'cofre de bonificacion');

INSERT INTO ModoJuego(tipo, dificultad, preferencia) values ('One block', 'normal', 'nulo');

INSERT INTO ModoJuego(tipo, dificultad, preferencia) values ('clasico', 'experto', 'nulo');

INSERT INTO ModoJuego(tipo, dificultad, preferencia) values ('super plano', 'facil', 'nulo');

INSERT INTO ModoJuego(tipo, dificultad, preferencia) values ('sky block', 'dificil', 'mapa inical');

INSERT INTO ModoJuego(tipo, dificultad, preferencia) values ('sky block', 'facil', 'cofre de bonificacion');

INSERT INTO ModoJuego(tipo, dificultad, preferencia) values ('clkasico', 'facil', 'cofre de bonificacion');

INSERT INTO ModoJuego(tipo, dificultad, preferencia) values ('one block', 'normal', 'n¿mapoa inicial');

INSERT INTO ModoJuego(tipo, dificultad, preferencia) values ('sky block', 'normal', 'si');


--ModoServidor
INSERT INTO ModoServidor(tipo) values ('HyPlex');

INSERT INTO ModoServidor(tipo) values ('Librecraft');

INSERT INTO ModoServidor(tipo) values ('Complex Gaming');

INSERT INTO ModoServidor(tipo) values ('MineLatino Network');

INSERT INTO ModoServidor(tipo) values ('Deluxe Zone');

INSERT INTO ModoServidor(tipo) values ('Supercraft');

INSERT INTO ModoServidor(tipo) values ('UniversoCraft');

INSERT INTO ModoServidor(tipo) values ('Skycraft');

INSERT INTO ModoServidor(tipo) values ('privado');

INSERT INTO ModoServidor(tipo) values ('Mineplex');



--Sonido
INSERT INTO Sonido(principal, musica, ambiente, bloque, criatura) values (9, 8, 7, 6, 5);

INSERT INTO Sonido(principal, musica, ambiente, bloque, criatura) values (8, 7, 6, 5, 4);

INSERT INTO Sonido(principal, musica, ambiente, bloque, criatura) values (7, 6, 5, 4, 3);

INSERT INTO Sonido(principal, musica, ambiente, bloque, criatura) values (6, 5, 4, 3, 2);

INSERT INTO Sonido(principal, musica, ambiente, bloque, criatura) values (5, 4, 3, 2, 1);

INSERT INTO Sonido(principal, musica, ambiente, bloque, criatura) values (4, 3, 2, 1, 0);

INSERT INTO Sonido(principal, musica, ambiente, bloque, criatura) values (3, 2, 1, 0, 1);

INSERT INTO Sonido(principal, musica, ambiente, bloque, criatura) values (2, 1, 0, 1, 2);

INSERT INTO Sonido(principal, musica, ambiente, bloque, criatura) values (1, 0, 1, 2, 3);

INSERT INTO Sonido(principal, musica, ambiente, bloque, criatura) values (0, 1, 2, 3, 4);

--PackRecurso
INSERT INTO PackRecurso(nombre, formato) values ('LB Photo Realism Reload', 'zip');

INSERT INTO PackRecurso(nombre, formato) values ('Faithful', 'rar');

INSERT INTO PackRecurso(nombre, formato) values ('SapixCraft', 'rar');

INSERT INTO PackRecurso(nombre, formato) values ('Modern HD', 'zip');

INSERT INTO PackRecurso(nombre, formato) values ('CoterieCraft', 'zip');

INSERT INTO PackRecurso(nombre, formato) values ('Eternal Hearts', 'zip');

INSERT INTO PackRecurso(nombre, formato) values ('Jolicraft', 'zip');

INSERT INTO PackRecurso(nombre, formato) values ('Conquest', 'rar');

INSERT INTO PackRecurso(nombre, formato) values ('Eternal Hearts', 'zip');

INSERT INTO PackRecurso(nombre, formato) values ('Jolicraft', 'zip');


--PackTextura
INSERT INTO PackTextura(nombre, formato) values ('Bare bones', 'zip');

INSERT INTO PackTextura(nombre, formato) values ('Retro NES', 'zip');

INSERT INTO PackTextura(nombre, formato) values ('Mythic', 'zip');

INSERT INTO PackTextura(nombre, formato) values ('John Smith Legacy', 'rar');

INSERT INTO PackTextura(nombre, formato) values ('DokuCraft', 'zip');

INSERT INTO PackTextura(nombre, formato) values ('Default photo realism', 'rar');

INSERT INTO PackTextura(nombre, formato) values ('Realistico', 'zip');

INSERT INTO PackTextura(nombre, formato) values ('Sphax PureBDCraft', 'zip');

INSERT INTO PackTextura(nombre, formato) values ('Soartex Texture pack', 'rar');

INSERT INTO PackTextura(nombre, formato) values ('Classic 3D Texture Pack', 'zip');


--Parche
INSERT INTO Parche(versioParche,  fechaActualizacion) values (1.14, '04/22/2010');

INSERT INTO Parche(versioParche,  fechaActualizacion) values (1.14,  '06/26/2010');

INSERT INTO Parche(versioParche, fechaActualizacion) values (1.15, '10/05/2010');

INSERT INTO Parche(versioParche,  fechaActualizacion) values (1.15, '12/12/2010');

INSERT INTO Parche(versioParche,  fechaActualizacion) values (1.16,  '01/30/2011');

INSERT INTO Parche(versioParche, fechaActualizacion) values (1.16, '01/25/2011');

INSERT INTO Parche(versioParche,  fechaActualizacion) values (1.162, '10/26/2011');

INSERT INTO Parche(versioParche,  fechaActualizacion) values (1.162,  '11/06/2017');

INSERT INTO Parche(versioParche, fechaActualizacion) values (1.17, '05/05/2018');

INSERT INTO Parche(versioParche, fechaActualizacion) values (1.17, '11/22/2019');


--Mundo
INSERT INTO Mundo(nombre, tipo, idParche) values ('ayf', 'clasico', 1);

INSERT INTO Mundo(nombre, tipo ,idParche) values ('nom ', 'one block', 2);

INSERT INTO Mundo(nombre, tipo ,idParche) values ('reyes', 'sky block', 3);

INSERT INTO Mundo(nombre, tipo ,idParche) values ('lasaña', 'super plano', 4);

INSERT INTO Mundo(nombre, tipo ,idParche) values ('run', 'clasico', 5);

INSERT INTO Mundo(nombre, tipo ,idParche) values ('ayfer', 'one block', 6);

INSERT INTO Mundo(nombre, tipo ,idParche) values ('resistencia', 'super plano', 7);

INSERT INTO Mundo(nombre, tipo ,idParche) values ('mundo', 'clasico', 8);

INSERT INTO Mundo(nombre, tipo ,idParche) values ('nuevo mundo', 'one block', 9);

INSERT INTO Mundo(nombre, tipo ,idParche) values ('copia', 'clasico', 10);

--Pesca
INSERT INTO Pesca(tipo, botin) values ('cubeta', 'salmón');

INSERT INTO Pesca(tipo, botin) values ('caña de pescar', 'pez globo');

INSERT INTO Pesca(tipo, botin) values ('caña de pescar', 'salmon');

INSERT INTO Pesca(tipo, botin) values ('cubeta', 'ajolote');

INSERT INTO Pesca(tipo, botin) values ('caña de pescar', 'pez payaso');

INSERT INTO Pesca(tipo, botin) values ('cubeta', 'pez payaso');

INSERT INTO Pesca(tipo, botin) values ('cubeta', 'esponja');

INSERT INTO Pesca(tipo, botin) values ('caña de pescar', 'libros encantados');

INSERT INTO Pesca(tipo, botin) values ('caña de pescar', 'bacalao');

INSERT INTO Pesca(tipo, botin) values ('cubeta', 'bacalao');


--Plugin
INSERT INTO Plugin(nombre, main, versionPlugin) values ('EsentialsX Chat', 'EsentialsX', 1.8);

INSERT INTO Plugin(nombre, main, versionPlugin) values ('Multiverse-core', 'Multiverse-core', 1.9);

INSERT INTO Plugin(nombre, main, versionPlugin) values ('LuckyPerms', 'LuckyPerms', 1.14);

INSERT INTO Plugin(nombre, main, versionPlugin) values ('ViaBackWards', 'ViaVersion', 1.15);

INSERT INTO Plugin(nombre, main, versionPlugin) values ('Sternalboard', 'Sternalboard', 1.10);

INSERT INTO Plugin(nombre, main, versionPlugin) values ('EsentialsX Spawn', 'EsentialsX', 1.8);

INSERT INTO Plugin(nombre, main, versionPlugin) values ('EsentialsX Protect', 'EsentialsX', 1.8);

INSERT INTO Plugin(nombre, main, versionPlugin) values ('ViaVersioniarewind', 'ViaVersion', 1.15);

INSERT INTO Plugin(nombre, main, versionPlugin) values ('skript', 'skript', 1.11);

INSERT INTO Plugin(nombre, main, versionPlugin) values ('Towny', 'Towny', 1.18);

--Pocion
INSERT INTO Pocion(nombre, tipo, puntosDaño, puntosVida) values ('curación', 'arojadiza', 0, 8);

INSERT INTO Pocion(nombre, tipo, puntosDaño, puntosVida) values ('Debilidad', 'arojadiza', 5, 0);

INSERT INTO Pocion(nombre, tipo, puntosDaño, puntosVida) values ('Fuerza ll', 'consumible', 0, 8);

INSERT INTO Pocion(nombre, tipo, puntosDaño, puntosVida) values ('Regeneracion', 'consumible', 0, 8);

INSERT INTO Pocion(nombre, tipo, puntosDaño, puntosVida) values ('Velocidad', 'arojadiza', 0, 0);

INSERT INTO Pocion(nombre, tipo, puntosDaño, puntosVida) values ('Velocidad', 'consumible', 0, 0);

INSERT INTO Pocion(nombre, tipo, puntosDaño, puntosVida) values ('Lentitud', 'arojadiza', 0, 0);

INSERT INTO Pocion(nombre, tipo, puntosDaño, puntosVida) values ('Daño instntaneo', 'arojadiza', 2, 0);

INSERT INTO Pocion(nombre, tipo, puntosDaño, puntosVida) values ('Veneno', 'arojadiza', 1, 0);

INSERT INTO Pocion(nombre, tipo, puntosDaño, puntosVida) values ('Vision nocturna', 'consumible', 0, 0);


--Servidor
INSERT INTO Servidor(nombre, dificultad, idModoServidor) values ('pointer', 'normal', 1);

INSERT INTO Servidor(nombre, dificultad, idModoServidor) values ('resuna', 'dificil', 2);

INSERT INTO Servidor(nombre, dificultad, idModoServidor) values ('press', 'experto', 3);

INSERT INTO Servidor(nombre, dificultad, idModoServidor) values ('resina', 'facil', 4);

INSERT INTO Servidor(nombre, dificultad, idModoServidor) values ('cincuenta', 'normal', 5);

INSERT INTO Servidor(nombre, dificultad, idModoServidor) values ('pvp', 'facil', 6);

INSERT INTO Servidor(nombre, dificultad, idModoServidor) values ('sierra', 'normal', 7);

INSERT INTO Servidor(nombre, dificultad, idModoServidor) values ('ropero', 'dificil', 8);

INSERT INTO Servidor(nombre, dificultad, idModoServidor) values ('puertio', 'experto', 9);

INSERT INTO Servidor(nombre, dificultad, idModoServidor) values ('poisero', 'normal', 10);


--Stack
INSERT INTO Stack(nombre, limiteItem, idInventario) values ('zanahoria', 64, 1);

INSERT INTO Stack(nombre, limiteItem, idInventario) values ('roca', 64, 2);

INSERT INTO Stack(nombre, limiteItem, idInventario) values ('vidrio', 64, 3);

INSERT INTO Stack(nombre, limiteItem, idInventario) values ('antorcha', 64, 4);

INSERT INTO Stack(nombre, limiteItem, idInventario) values ('botas de hierro', 1, 5);

INSERT INTO Stack(nombre, limiteItem, idInventario) values ('casco de oro', 1, 6);

INSERT INTO Stack(nombre, limiteItem, idInventario) values ('papa', 64, 7);

INSERT INTO Stack(nombre, limiteItem, idInventario) values ('hierro', 64, 8);

INSERT INTO Stack(nombre, limiteItem, idInventario) values ('bloque de obsidiana', 64, 9);

INSERT INTO Stack(nombre, limiteItem, idInventario) values ('remolacha', 64, 10);

--Templo
INSERT INTO Templo(estilo, tipo, nombre, botin) values ('piramide', 'desierto', 'piramide del desierto', 'oro');

INSERT INTO Templo(estilo, tipo, nombre, botin) values ('templo', 'jungla', 'templo de jungla', 'oro');

INSERT INTO Templo(estilo, tipo, nombre, botin) values ('templo', 'mar', ' templo marino', 'esponjas');

INSERT INTO Templo(estilo, tipo, nombre, botin) values ('templo', 'jungla', 'templo de jungla', 'diamante');

INSERT INTO Templo(estilo, tipo, nombre, botin) values('templo', 'jungla', 'templo de jungla', 'lingote de hierro');

INSERT INTO Templo(estilo, tipo, nombre, botin) values ('templo', 'jungla', 'templo de jungla', 'lingote de oro');

INSERT INTO Templo(estilo, tipo, nombre, botin) values ('templo', 'jungla', 'templo de jungla', 'esmeralda');

INSERT INTO Templo(estilo, tipo, nombre, botin) values ('templo', 'jungla', 'templo de jungla', 'hueso');

INSERT INTO Templo(estilo, tipo, nombre, botin) values ('piramide', 'desierto', 'piramide del desierto', 'armadura de hierro para caballo');

INSERT INTO Templo(estilo, tipo, nombre, botin) values ('piramide', 'desierto', 'piramide del desierto', 'montura');


--Tesoro
INSERT INTO Tesoro(tipo, botin) values ('enterrado', 'corazón de mar');

INSERT INTO Tesoro(tipo, botin) values ('enterrado', ' armadura para caballo');

INSERT INTO Tesoro(tipo, botin) values ('enterrado', 'mapa en blanco');

INSERT INTO Tesoro(tipo, botin) values ('enterrado', 'lingote de hierro');

INSERT INTO Tesoro(tipo, botin) values ('barco hundido', 'hilo');

INSERT INTO Tesoro(tipo, botin) values ('barco hundido', 'bola de slime');

INSERT INTO Tesoro(tipo, botin) values ('barco hundido', 'pico de piedra');

INSERT INTO Tesoro(tipo, botin) values ('barco hundido', 'Lingote de oro');

INSERT INTO Tesoro(tipo, botin) values ('barco hundido', 'Lingote de hierro');

INSERT INTO Tesoro(tipo, botin) values ('enterrado', 'esmeralda');


--Crafteo
INSERT INTO Crafteo(tipo, detalle, idMesatrabajo, idInventario) values ('mesa de trabajo', 'pechera de hierro con 5 de resistencia', 1, 1);

INSERT INTO Crafteo(tipo, detalle, idMesatrabajo, idInventario) values ('mesa de trabajo', 'pala de madera con 3 de resistencia', 2, 2);

INSERT INTO Crafteo(tipo, detalle, idMesatrabajo, idInventario) values ('mesa de trabajo', 'cama color blanca', 3, 3);

INSERT INTO Crafteo(tipo, detalle, idMesatrabajo, idInventario) values ('inventario', 'mesa de trabajo', 4, 4);

INSERT INTO Crafteo(tipo, detalle, idMesatrabajo, idInventario) values ('mesa de trabajo', 'horno de piedra', 5, 5);

INSERT INTO Crafteo(tipo, detalle, idMesatrabajo, idInventario) values ('mesa de trabajo', 'hacha de madera con 3 de resistencia', 6, 6);

INSERT INTO Crafteo(tipo, detalle, idMesatrabajo, idInventario) values ('mesa de trabajo', 'pala de hierro con 5 de resistencia', 7, 7);

INSERT INTO Crafteo(tipo, detalle, idMesatrabajo, idInventario) values ('inventario', 'antorcha con carbón vegetal', 8, 8);

INSERT INTO Crafteo(tipo, detalle, idMesatrabajo, idInventario) values ('inventario', 'palos de madera', 9, 9);

INSERT INTO Crafteo(tipo, detalle, idMesatrabajo, idInventario) values ('inventario', 'mechero', 10, 10);

--Jugador
INSERT INTO Jugador(gamertag, aspecto, puntosVida, puntosAlimento, puntosExperiencia, idInventario, idConfigMundo, idMenu, idConfigUsuario, idEstadistica) values ('AxRadiel', 'personalizado', 4, 1, 4, 1, 1, 1, 1, 1);

INSERT INTO Jugador(gamertag, aspecto, puntosVida, puntosAlimento, puntosExperiencia, idInventario, idConfigMundo, idMenu, idConfigUsuario, idEstadistica) values ('pepe', 'vaca', 5, 5, 7, 2, 2, 2, 2, 2);

INSERT INTO Jugador(gamertag, aspecto, puntosVida, puntosAlimento, puntosExperiencia, idInventario, idConfigMundo, idMenu, idConfigUsuario, idEstadistica) values ('barbiqiu', 'calamardo', 5, 3, 2, 3, 3, 3, 3, 3);

INSERT INTO Jugador(gamertag, aspecto, puntosVida, puntosAlimento, puntosExperiencia, idInventario, idConfigMundo, idMenu, idConfigUsuario, idEstadistica) values ('platano', 'platano', 6, 5, 7, 4, 4, 4, 4, 4);

INSERT INTO Jugador(gamertag, aspecto, puntosVida, puntosAlimento, puntosExperiencia, idInventario, idConfigMundo, idMenu, idConfigUsuario, idEstadistica) values ('rosa', 'alex', 5, 2, 1, 5, 5, 5, 5, 5);

INSERT INTO Jugador(gamertag, aspecto, puntosVida, puntosAlimento, puntosExperiencia, idInventario, idConfigMundo, idMenu, idConfigUsuario, idEstadistica) values ('sierra', 'steve', 7, 8, 14, 6, 6, 6, 6, 6);

INSERT INTO Jugador(gamertag, aspecto, puntosVida, puntosAlimento, puntosExperiencia, idInventario, idConfigMundo, idMenu, idConfigUsuario, idEstadistica) values ('rona', 'cerdo', 7, 4, 4, 7, 7, 7, 7, 7);

INSERT INTO Jugador(gamertag, aspecto, puntosVida, puntosAlimento, puntosExperiencia, idInventario, idConfigMundo, idMenu, idConfigUsuario, idEstadistica) values ('fer', 'creeper', 8, 2, 4, 8, 8, 8, 8, 8);

INSERT INTO Jugador(gamertag, aspecto, puntosVida, puntosAlimento, puntosExperiencia, idInventario, idConfigMundo, idMenu, idConfigUsuario, idEstadistica) values ('fer', 'creeper', 8, 2, 4, 9 , 9, 9, 9, 9);

INSERT INTO Jugador(gamertag, aspecto, puntosVida, puntosAlimento, puntosExperiencia, idInventario, idConfigMundo, idMenu, idConfigUsuario, idEstadistica) values ('manuel', 'personalizado', 7, 9, 2, 10, 10, 10,10, 10);

--Logro
INSERT INTO Logro(nombre, recompensa, puntosJugador, tiempoJuego, tipo, idJugador) values ('consiguiendo una mejora', 'puntos de experiencia', 15, 48, 'inicio', 1);

INSERT INTO Logro(nombre, recompensa, puntosJugador, tiempoJuego, tipo, idJugador) values ('desencantado', 'emblema', 10, 48, 'progreso', 2);

INSERT INTO Logro(nombre, recompensa, puntosJugador, tiempoJuego, tipo, idJugador) values ('ecolocación', 'puntos de experiencia', 20, 48, 'progreso', 3);

INSERT INTO Logro(nombre, recompensa, puntosJugador, tiempoJuego, tipo, idJugador) values ('asesino de monstruos', 'puntos de experiencia', 10, 48, 'inicio', 4);

INSERT INTO Logro(nombre, recompensa, puntosJugador, tiempoJuego, tipo, idJugador) values ('volquete de vacas', 'puntos de experiencia', 15, 48, 'inicio', 5);

INSERT INTO Logro(nombre, recompensa, puntosJugador, tiempoJuego, tipo, idJugador) values ('delicioso pescado', 'emblema', 10, 48, 'progreso', 6);

INSERT INTO Logro(nombre, recompensa, puntosJugador, tiempoJuego, tipo, idJugador) values ('ésto es una señal', 'emblema', 15, 48, 'progreso', 7);

INSERT INTO Logro(nombre, recompensa, puntosJugador, tiempoJuego, tipo, idJugador) values ('super combustible', 'emblema', 20, 48, 'inicio', 8);

INSERT INTO Logro(nombre, recompensa, puntosJugador, tiempoJuego, tipo, idJugador) values ('hora de aventuras', 'puntos de experiencia', 30, 48, 'progreso', 9);

INSERT INTO Logro(nombre, recompensa, puntosJugador, tiempoJuego, tipo, idJugador) values ('soy rico', 'puntos de experiencia', 30, 48, 'final', 10);

--Mascota
INSERT INTO Mascota(nombre, tipo, puntosVida, comida, idJugador) values ('Fernando', 'oso panda', 7, 8, 1);

INSERT INTO Mascota(nombre, tipo, puntosVida, comida, idJugador) values ('tigrita', 'gato', 7, 2, 2);

INSERT INTO Mascota(nombre, tipo, puntosVida, comida, idJugador) values ('lola', 'gato', 7, 5, 3);

INSERT INTO Mascota(nombre, tipo, puntosVida, comida, idJugador) values ('niña', 'lobo', 7, 6, 4);

INSERT INTO Mascota(nombre, tipo, puntosVida, comida, idJugador) values ('chase', 'lobo', 7, 8, 5);

INSERT INTO Mascota(nombre, tipo, puntosVida, comida, idJugador) values ('gatote', 'gato', 7, 2, 6);

INSERT INTO Mascota(nombre, tipo, puntosVida, comida, idJugador) values ('blanquito', 'gato', 7, 9, 7);

INSERT INTO Mascota(nombre, tipo, puntosVida, comida, idJugador) values ('pato', 'caballo', 7, 6, 8);

INSERT INTO Mascota(nombre, tipo, puntosVida, comida, idJugador) values ('maggie', 'gato', 7, 5, 9);

INSERT INTO Mascota(nombre, tipo, puntosVida, comida, idJugador) values ('liru', 'loro', 7, 8, 10); 

--MundoParche
INSERT INTO MundoParche(idMundo, idParche) values (1, 1);

INSERT INTO MundoParche(idMundo, idParche) values (2, 2);

INSERT INTO MundoParche(idMundo, idParche) values (3, 3);

INSERT INTO MundoParche(idMundo, idParche) values (4, 4);

INSERT INTO MundoParche(idMundo, idParche) values (5, 5);

INSERT INTO MundoParche(idMundo, idParche) values (6, 6);

INSERT INTO MundoParche(idMundo, idParche) values (7, 7);

INSERT INTO MundoParche(idMundo, idParche) values (8, 8);

INSERT INTO MundoParche(idMundo, idParche) values (9, 9);

INSERT INTO MundoParche(idMundo, idParche) values (10, 10);

--EncantamientoEfecto
INSERT INTO EncantamientoEfecto(idEncantamiento, idEfecto) values (1, 1);

INSERT INTO EncantamientoEfecto(idEncantamiento, idEfecto) values (2, 2);

INSERT INTO EncantamientoEfecto(idEncantamiento, idEfecto) values (3, 3);

INSERT INTO EncantamientoEfecto(idEncantamiento, idEfecto) values (4, 4);

INSERT INTO EncantamientoEfecto(idEncantamiento, idEfecto) values (5, 5);

INSERT INTO EncantamientoEfecto(idEncantamiento, idEfecto) values (6, 6);

INSERT INTO EncantamientoEfecto(idEncantamiento, idEfecto) values (7, 7);

INSERT INTO EncantamientoEfecto(idEncantamiento, idEfecto) values (8, 8);

INSERT INTO EncantamientoEfecto(idEncantamiento, idEfecto) values (9, 9);

INSERT INTO EncantamientoEfecto(idEncantamiento, idEfecto) values (10, 10);

--JugadorAmigo
INSERT INTO JugadorAmigo(idJugador, idAmigo) values (1, 1);

INSERT INTO JugadorAmigo(idJugador, idAmigo) values (2, 2);

INSERT INTO JugadorAmigo(idJugador, idAmigo) values (3, 3);

INSERT INTO JugadorAmigo(idJugador, idAmigo) values (4, 4);

INSERT INTO JugadorAmigo(idJugador, idAmigo) values (5, 5);

INSERT INTO JugadorAmigo(idJugador, idAmigo) values (6, 6);

INSERT INTO JugadorAmigo(idJugador, idAmigo) values (7, 7);

INSERT INTO JugadorAmigo(idJugador, idAmigo) values (8, 8);

INSERT INTO JugadorAmigo(idJugador, idAmigo) values (9, 9);

INSERT INTO JugadorAmigo(idJugador, idAmigo) values (10, 10);

--JugadorComercio
INSERT INTO JugadorComercio(idJugador, idComercio) values (1, 1);

INSERT INTO JugadorComercio(idJugador, idComercio) values (2, 2);

INSERT INTO JugadorComercio(idJugador, idComercio) values (3, 3);

INSERT INTO JugadorComercio(idJugador, idComercio) values (4, 4);

INSERT INTO JugadorComercio(idJugador, idComercio) values (5, 5);

INSERT INTO JugadorComercio(idJugador, idComercio) values (6, 6);

INSERT INTO JugadorComercio(idJugador, idComercio) values (7, 7);

INSERT INTO JugadorComercio(idJugador, idComercio) values (8, 8);

INSERT INTO JugadorComercio(idJugador, idComercio) values (9, 9);

INSERT INTO JugadorComercio(idJugador, idComercio) values (10, 10);

--JugadorItem
INSERT INTO JugadorComercio(idJugador, idComercio) values (1, 1);

INSERT INTO JugadorComercio(idJugador, idComercio) values (2, 2);

INSERT INTO JugadorComercio(idJugador, idComercio) values (3, 3);

INSERT INTO JugadorComercio(idJugador, idComercio) values (4, 4);

INSERT INTO JugadorComercio(idJugador, idComercio) values (5, 5);

INSERT INTO JugadorComercio(idJugador, idComercio) values (6, 6);

INSERT INTO JugadorComercio(idJugador, idComercio) values (7, 7);

INSERT INTO JugadorComercio(idJugador, idComercio) values (8, 8);

INSERT INTO JugadorComercio(idJugador, idComercio) values (9, 9);

INSERT INTO JugadorComercio(idJugador, idComercio) values (10, 10);

--JugadorServidor
INSERT INTO JugadorServidor(idJugador, idServidor) values (1, 1);

INSERT INTO JugadorServidor(idJugador, idServidor) values (2, 2);

INSERT INTO JugadorServidor(idJugador, idServidor) values (3, 3);

INSERT INTO JugadorServidor(idJugador, idServidor) values (4, 4);

INSERT INTO JugadorServidor(idJugador, idServidor) values (5, 5);

INSERT INTO JugadorServidor(idJugador, idServidor) values (6, 6);

INSERT INTO JugadorServidor(idJugador, idServidor) values (7, 7);

INSERT INTO JugadorServidor(idJugador, idServidor) values (8, 8);

INSERT INTO JugadorServidor(idJugador, idServidor) values (9, 9);

INSERT INTO JugadorServidor(idJugador, idServidor) values (10, 10);

--MesaTrabajoEncantamiento
INSERT INTO MesaTrabajoEncantamiento(idMesaTrabajo, idEncantamiento) values (1, 1);

INSERT INTO MesaTrabajoEncantamiento(idMesaTrabajo, idEncantamiento) values(2, 2);

INSERT INTO MesaTrabajoEncantamiento(idMesaTrabajo, idEncantamiento) values (3, 3);

INSERT INTO MesaTrabajoEncantamiento(idMesaTrabajo, idEncantamiento) values (4, 4);

INSERT INTO MesaTrabajoEncantamiento(idMesaTrabajo, idEncantamiento) values (5, 5);

INSERT INTO MesaTrabajoEncantamiento(idMesaTrabajo, idEncantamiento) values (6, 6);

INSERT INTO MesaTrabajoEncantamiento(idMesaTrabajo, idEncantamiento) values (7, 7);

INSERT INTO MesaTrabajoEncantamiento(idMesaTrabajo, idEncantamiento) values (8, 8);

INSERT INTO MesaTrabajoEncantamiento(idMesaTrabajo, idEncantamiento) values (9, 9);

INSERT INTO MesaTrabajoEncantamiento(idMesaTrabajo, idEncantamiento) values (10, 10);

--MundoAldea
INSERT INTO MundoAldea(idMundo, idAldea) values (1, 1);

INSERT INTO MundoAldea(idMundo, idAldea) values (2, 2);

INSERT INTO MundoAldea(idMundo, idAldea) values (3, 3);

INSERT INTO MundoAldea(idMundo, idAldea) values (4, 4);

INSERT INTO MundoAldea(idMundo, idAldea) values (5, 5);

INSERT INTO MundoAldea(idMundo, idAldea) values (6, 6);

INSERT INTO MundoAldea(idMundo, idAldea) values (7, 7);

INSERT INTO MundoAldea(idMundo, idAldea) values (8, 8);

INSERT INTO MundoAldea(idMundo, idAldea) values (9, 9);

INSERT INTO MundoAldea(idMundo, idAldea) values (10, 10);

--MundoBloque
INSERT INTO MundoBloque(idMundo, idBloque) values(1, 1);

INSERT INTO MundoBloque(idMundo, idBloque) values (2, 2);

INSERT INTO MundoBloque(idMundo, idBloque) values (3, 3);

INSERT INTO MundoBloque(idMundo, idBloque) values (4, 4);

INSERT INTO MundoBloque(idMundo, idBloque) values (5, 5);

INSERT INTO MundoBloque(idMundo, idBloque) values (6, 6);

INSERT INTO MundoBloque(idMundo, idBloque) values(7, 7);

INSERT INTO MundoBloque(idMundo, idBloque) values (8, 8);

INSERT INTO MundoBloque(idMundo, idBloque) values (9, 9);

INSERT INTO MundoBloque(idMundo, idBloque) values (10, 10);

--MundoDimension
INSERT INTO MundoDimension(idMundo, idDimension) values (1, 1);

INSERT INTO MundoDimension(idMundo, idDimension) values (2, 2);

INSERT INTO MundoDimension(idMundo, idDimension) values (3, 3);

INSERT INTO MundoDimension(idMundo, idDimension) values (4, 4);

INSERT INTO MundoDimension(idMundo, idDimension) values (5, 5);

INSERT INTO MundoDimension(idMundo, idDimension) values (6, 6);

INSERT INTO MundoDimension(idMundo, idDimension) values (7, 7);

INSERT INTO MundoDimension(idMundo, idDimension) values (8, 8);

INSERT INTO MundoDimension(idMundo, idDimension) values (9, 9);

INSERT INTO MundoDimension(idMundo, idDimension) values (10, 10);

--MundoEcosistema
INSERT INTO MundoEcosistema(idMundo, idEcosistema) values (1, 1);

INSERT INTO MundoEcosistema(idMundo, idEcosistema) values (2, 2);

INSERT INTO MundoEcosistema(idMundo, idEcosistema) values (3, 3);

INSERT INTO MundoEcosistema(idMundo, idEcosistema) values (4, 4);

INSERT INTO MundoEcosistema(idMundo, idEcosistema) values (5, 5);

INSERT INTO MundoEcosistema(idMundo, idEcosistema) values (6, 6);

INSERT INTO MundoEcosistema(idMundo, idEcosistema) values (7, 7);

INSERT INTO MundoEcosistema(idMundo, idEcosistema) values (8, 8);

INSERT INTO MundoEcosistema(idMundo, idEcosistema) values (9, 9);

INSERT INTO MundoEcosistema(idMundo, idEcosistema) values (10, 10);

--MundoEstructura
INSERT INTO MundoEstructura(idMundo, idEstructura) values (1, 1);

INSERT INTO MundoEstructura(idMundo, idEstructura) values (2, 2);

INSERT INTO MundoEstructura(idMundo, idEstructura) values (3, 3);

INSERT INTO MundoEstructura(idMundo, idEstructura) values (4, 4);

INSERT INTO MundoEstructura(idMundo, idEstructura) values (5, 5);

INSERT INTO MundoEstructura(idMundo, idEstructura) values (6, 6);

INSERT INTO MundoEstructura(idMundo, idEstructura) values (7, 7);

INSERT INTO MundoEstructura(idMundo, idEstructura) values (8, 8);

INSERT INTO MundoEstructura(idMundo, idEstructura) values (9, 9);

INSERT INTO MundoEstructura(idMundo, idEstructura) values (10, 10);

--MundoFluido
INSERT INTO MundoFluido(idMundo, idFluido) values (1, 1);

INSERT INTO MundoFluido(idMundo, idFluido) values (2, 2);

INSERT INTO MundoFluido(idMundo, idFluido) values (3, 3);

INSERT INTO MundoFluido(idMundo, idFluido) values (5, 5);

INSERT INTO MundoFluido(idMundo, idFluido) values (6, 6);

INSERT INTO MundoFluido(idMundo, idFluido) values (7, 7);

INSERT INTO MundoFluido(idMundo, idFluido) values (8, 8);

INSERT INTO MundoFluido(idMundo, idFluido) values (9, 9);

INSERT INTO MundoFluido(idMundo, idFluido) values (10, 10);

--MundoFortaleza 
INSERT INTO MundoFortaleza(idMundo, idFortaleza) values (1, 1);

INSERT INTO MundoFortaleza(idMundo, idFortaleza) values (2, 2);

INSERT INTO MundoFortaleza(idMundo, idFortaleza) values (3, 3);

INSERT INTO MundoFortaleza(idMundo, idFortaleza) values (4, 4);

INSERT INTO MundoFortaleza(idMundo, idFortaleza) values (5, 5);

INSERT INTO MundoFortaleza(idMundo, idFortaleza) values (6, 6);

INSERT INTO MundoFortaleza(idMundo, idFortaleza) values (7, 7);

INSERT INTO MundoFortaleza(idMundo, idFortaleza) values (8, 8);

INSERT INTO MundoFortaleza(idMundo, idFortaleza) values (9, 9);

INSERT INTO MundoFortaleza(idMundo, idFortaleza) values (10, 10);

--MundoGeneracion
INSERT INTO MundoGeneracion(idMundo, idGeneracion) values (1, 1);

INSERT INTO MundoGeneracion(idMundo, idGeneracion) values (2, 2);

INSERT INTO MundoGeneracion(idMundo, idGeneracion) values (3, 3);

INSERT INTO MundoGeneracion(idMundo, idGeneracion) values (4, 4);

INSERT INTO MundoGeneracion(idMundo, idGeneracion) values (5, 5);

INSERT INTO MundoGeneracion(idMundo, idGeneracion) values (6, 6);

INSERT INTO MundoGeneracion(idMundo, idGeneracion) values (7, 7);

INSERT INTO MundoGeneracion(idMundo, idGeneracion) values (8, 8);

INSERT INTO MundoGeneracion(idMundo, idGeneracion) values (9, 9);

INSERT INTO MundoGeneracion(idMundo, idGeneracion) values (10, 10);

--MundoJefe
INSERT INTO MundoJefe(idMundo, idJefe) values(1, 1);

INSERT INTO MundoJefe(idMundo, idJefe) values (2, 2);

INSERT INTO MundoJefe(idMundo, idJefe) values (3, 3);

INSERT INTO MundoJefe(idMundo, idJefe) values (4, 4);

INSERT INTO MundoJefe(idMundo, idJefe) values (5, 5);

INSERT INTO MundoJefe(idMundo, idJefe) values (6, 6);

INSERT INTO MundoJefe(idMundo, idJefe) values (7, 7);

INSERT INTO MundoJefe(idMundo, idJefe) values (8, 8);

INSERT INTO MundoJefe(idMundo, idJefe) values (9, 9);

INSERT INTO MundoJefe(idMundo, idJefe) values (10, 10);

--MundoJugador
INSERT INTO MundoJugador(idMundo, idJugador) values (1, 1);

INSERT INTO MundoJugador(idMundo, idJugador) values (2, 2);

INSERT INTO MundoJugador(idMundo, idJugador) values (3, 3);

INSERT INTO MundoJugador(idMundo, idJugador) values (4, 4);

INSERT INTO MundoJugador(idMundo, idJugador) values (5, 5);

INSERT INTO MundoJugador(idMundo, idJugador) values (6, 6);

INSERT INTO MundoJugador(idMundo, idJugador) values (7, 7);

INSERT INTO MundoJugador(idMundo, idJugador) values (8, 8);

INSERT INTO MundoJugador(idMundo, idJugador) values (9, 9);

INSERT INTO MundoJugador(idMundo, idJugador) values (10, 10);

--MundoMob
INSERT INTO MundoMob(idMundo, idMob) values (1, 1);

INSERT INTO MundoMob(idMundo, idMob) values (2, 2);

INSERT INTO MundoMob(idMundo, idMob) values (3, 3);

INSERT INTO MundoMob(idMundo, idMob) values (4, 4);

INSERT INTO MundoMob(idMundo, idMob) values (5, 5);

INSERT INTO MundoMob(idMundo, idMob) values (6, 6);

INSERT INTO MundoMob(idMundo, idMob) values (7, 7);

INSERT INTO MundoMob(idMundo, idMob) values (8, 8);

INSERT INTO MundoMob(idMundo, idMob) values (9, 9);

INSERT INTO MundoMob(idMundo, idMob) values (10, 10);

--MundoModd
INSERT INTO MundoModd(idMundo, idModd) values (1, 1);

INSERT INTO MundoModd(idMundo, idModd) values (2, 2);

INSERT INTO MundoModd(idMundo, idModd) values (3, 3);

INSERT INTO MundoModd(idMundo, idModd) values (4, 4);

INSERT INTO MundoModd(idMundo, idModd) values (5, 5);

INSERT INTO MundoModd(idMundo, idModd) values (6, 6);

INSERT INTO MundoModd(idMundo, idModd) values (7, 7);

INSERT INTO MundoModd(idMundo, idModd) values (8, 8);

INSERT INTO MundoModd(idMundo, idModd) values (9, 9);

INSERT INTO MundoModd(idMundo, idModd) values (10, 10);

--MundoPackRecurso
INSERT INTO MundoPackRecurso(idMundo, idPackRecurso) values (1, 1);

INSERT INTO MundoPackRecurso(idMundo, idPackRecurso) values (2, 2);

INSERT INTO MundoPackRecurso(idMundo, idPackRecurso) values (3, 3);

INSERT INTO MundoPackRecurso(idMundo, idPackRecurso) values (4, 4);

INSERT INTO MundoPackRecurso(idMundo, idPackRecurso) values (5, 5);

INSERT INTO MundoPackRecurso(idMundo, idPackRecurso) values (6, 6);

INSERT INTO MundoPackRecurso(idMundo, idPackRecurso) values (7, 7);

INSERT INTO MundoPackRecurso(idMundo, idPackRecurso) values (8, 8);

INSERT INTO MundoPackRecurso(idMundo, idPackRecurso) values (9, 9);

INSERT INTO MundoPackRecurso(idMundo, idPackRecurso) values (10, 10);

--MundoPackTextura
INSERT INTO MundoPackTextura(idMundo, idPackTextura) values (1, 1);

INSERT INTO MundoPackTextura(idMundo, idPackTextura) values (2, 2);

INSERT INTO MundoPackTextura(idMundo, idPackTextura) values (3, 3);

INSERT INTO MundoPackTextura(idMundo, idPackTextura) values (4, 4);

INSERT INTO MundoPackTextura(idMundo, idPackTextura) values (5, 5);

INSERT INTO MundoPackTextura(idMundo, idPackTextura) values (6, 6);

INSERT INTO MundoPackTextura(idMundo, idPackTextura) values (7, 7);

INSERT INTO MundoPackTextura(idMundo, idPackTextura) values (8, 8);

INSERT INTO MundoPackTextura(idMundo, idPackTextura) values (9, 9);

INSERT INTO MundoPackTextura(idMundo, idPackTextura) values (10, 10);

--MundoTemplo
INSERT INTO MundoTemplo(idMundo, idTemplo) values (1, 1);

INSERT INTO MundoTemplo(idMundo, idTemplo) values (2, 2);

INSERT INTO MundoTemplo(idMundo, idTemplo) values (3, 3);

INSERT INTO MundoTemplo(idMundo, idTemplo) values (4, 4);

INSERT INTO MundoTemplo(idMundo, idTemplo) values (5, 5);

INSERT INTO MundoTemplo(idMundo, idTemplo) values (6, 6);

INSERT INTO MundoTemplo(idMundo, idTemplo) values (7, 7);

INSERT INTO MundoTemplo(idMundo, idTemplo) values (8, 8);

INSERT INTO MundoTemplo(idMundo, idTemplo) values (9, 9);

INSERT INTO MundoTemplo(idMundo, idTemplo) values (10, 10);

--ServidorModoServidor
INSERT INTO ServidorModoServidor(idServidor, idModoServidor) values (1, 1);

INSERT INTO ServidorModoServidor(idServidor, idModoServidor) values (2, 2);

INSERT INTO ServidorModoServidor(idServidor, idModoServidor) values (3, 3);

INSERT INTO ServidorModoServidor(idServidor, idModoServidor) values (4, 4);

INSERT INTO ServidorModoServidor(idServidor, idModoServidor) values (5, 5);

INSERT INTO ServidorModoServidor(idServidor, idModoServidor) values (6, 6);

INSERT INTO ServidorModoServidor(idServidor, idModoServidor) values (7, 7);

INSERT INTO ServidorModoServidor(idServidor, idModoServidor) values (8, 8);

INSERT INTO ServidorModoServidor(idServidor, idModoServidor) values (9, 9);

INSERT INTO ServidorModoServidor(idServidor, idModoServidor) values (10, 10);

--MundoAldea
SELECT *FROM MundoAldea;
UPDATE MundoAldea SET idAldea = '1' WHERE idMundoAldea = 1;
SELECT *FROM MundoAldea;
DELETE FROM MundoAldea WHERE idMundoAldea = 1;
SELECT *FROM MundoAldea;

--Aldea
SELECT *FROM Aldea;
UPDATE Aldea SET estilo = 'Desierto' WHERE idAldea = 1;
SELECT *FROM Aldea;
DELETE FROM Aldea WHERE idAldea = 1;
SELECT *FROM Aldea;

--JugadorAmigo
SELECT *FROM Jugador;
UPDATE JugadorAmigo SET idAmigo = '3' WHERE idAmigo = 3;
SELECT *FROM JugadorAmigo;
DELETE FROM JugadorAmigo WHERE idJugadorAmigo = 3;
SELECT *FROM JugadorAmigo;

--Amigo
SELECT *FROM Amigo;
UPDATE Amigo SET gamertag = 'Rol' WHERE idAmigo = 3;
SELECT *FROM Amigo;
DELETE FROM Amigo WHERE idAmigo = 3;
SELECT *FROM Amigo;
