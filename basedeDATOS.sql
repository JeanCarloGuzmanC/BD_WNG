create table usuario(
usuario varchar (30),
id_Usuario int not null auto_increment,
correo varchar (100),
primary key (usuario),
foreign key (id_Usuario) references register (idUsuario)
);


create table upload (
idTrabajo int not null auto_increment,
usuari_o varchar (30),
tituloTrabajo varchar(50),
decripcion varchar (100),
leguanjeProg varchar(30),
filtroEdad int,
precio float,
primary key (idTrabajo),
foreign key (usuari_o) references usuario (usuario)
);


create table register(
idUsuario INT NOT NULL AUTO_INCREMENT,
usuario varchar(30) NOT NULL,
contrasena varchar(50) NOT NULL,
nombre varchar(30) NOT NULL,
apellido varchar(30) NOT NULL,
edad int NOT NULL,
correo varchar(100) NOT NULL,
primary key (idUsuario)
);

create table chatPrivate(
idChatPrivate int NOT NULL AUTO_INCREMENT,
idUsuario int NOT NULL,
toIdUsuario int NOT NULL,
primary key (idChatPrivate),
foreign key (idUsuario) references usuario (id_Usuario)
);

create table chat(
idChat int NOT NULL AUTO_INCREMENT,
idRoom int NOT NULL,
idUsuario int NOT NULL,
toIdUsuario int NOT NULL,
texto varchar(250) NOT NULL,
tiempo time(6),
primary key (idChat),
foreign key (idUsuario) references usuario (id_Usuario)
);

create table loggedInUsuario(
loggedUsuario int NOT NULL AUTO_INCREMENT,
id_Usuario int NOT NULL,
idUsuario int NOT NULL,
id_Room int,
primary key (loggedUsuario),
foreign key (id_Usuario) references usuario (id_Usuario)
);

create table room(
idRoom int NOT NULL AUTO_INCREMENT,
nombre varchar(30),
primary key (idRoom)
);