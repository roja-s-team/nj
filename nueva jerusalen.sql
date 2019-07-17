
drop schema if exists `Nueva_Jerusalem`;

create schema if not exists `Nueva_Jerusalen` default character set utf8;
use `Nueva_Jerusalen`;

-- ---------------------------------------------------------------------------------
-- Tabla Personas
-- ---------------------------------------------------------------------------------
drop table if exists `Nueva_Jerusalen`.`Persona`;

create table if not exists `Nueva_Jerusalen`.`Persona`
(
`id_persona` int primary key auto_increment,
`nombre` nvarchar (22) not null,
`Aparterno` nvarchar (22) not null,
`Amaterno` nvarchar (22) not null
) engine InnoDB;

-- -------------------------------------------------------------------------------
-- Tabla Monto
-- --------------------------------------------------------------------------------
drop table if exists `Nueva_Jerusalen`.`Monto`;

create table if not exists `Nueva_Jerusalen`.`Monto`
(
`id_monto` int primary key,
`cantidad` float,
`id_persona` int,
  constraint fk_id_persona foreign key (id_persona) REFERENCES Persona (id_persona)
) engine InnoDB;

-- ------------------------------------------------------------------------------------------
-- Tabla Persona-Monto
-- -------------------------------------------------------------------------------------------


-- --------------------------------------------------------------------------------------------
-- Tabla Ofrendas
-- --------------------------------------------------------------------------------------------
drop table if exists `Nueva_Jerusalen`.`Ofrendas`;

create table if not exists `Nueva_Jerusalen`.`Ofrendas`
(
`id_ofrenda` int primary key,
`fecha` datetime not null,
`cantidad` float
)engine InnoDB;

-- ---------------------------------------------------------------------------------------------
-- Tabla Eventos
-- ---------------------------------------------------------------------------------------------
drop table if exists `Nueva_Jersusalen`.`Eventos`;

create table if not exists `Nueva_Jerusalen`.`Eventos`
(
`id_eventos` int primary key,
`nombre` nvarchar (30) not null,
`T_evento` nvarchar (35) not null,
  constraint chk_seccion check (T_evento in (`Jovenes`, `Mujeres`, `Matrimonios`, `Familias`, `Concierto`))
)engine InnoDB;

-- ---------------------------------------------------------------------------------------------------------
-- Tabla Detalle Usuario
-- -----------------------------------------------------------------------------------------------------------
drop table if exists `Nueva_Jersusalen`.`Usuario`;

create table if not exists `Nueva_Jerusalen`.`Usuario`
(
`id_usuario` int primary key,
`usuario` nvarchar (50) not null,
`contraseña` nvarchar (50) not null
)engine InnoDB;

-- ---------------------------------------------------------------------------------------------------------
-- Tabla Comentarios
-- -----------------------------------------------------------------------------------------------------------
drop table if exists `Nueva_Jersusalen`.`Comentarios`;

create table if not exists `Nueva_Jerusalen`.`Comentarios`
(
`id_coment` int primary key,
`texto` nvarchar (200) not null
)engine InnoDB;

-- ---------------------------------------------------------------------------------------------------------
-- Tabla Usuario-Coment
-- -----------------------------------------------------------------------------------------------------------
drop table if exists `Nueva_Jersusalen`.`Usuario_Coment`;

create table if not exists `Nueva_Jerusalen`.`Usuario_Coment`
(
`id_usuario` int,
 constraint fk_id_usuario FOREIGN KEY (id_usuario) references Usuario (id_usuario),
 `id_coment` int,
 constraint fk_id_coment FOREIGN KEY (id_coment) references Comentarios (id_coment)
 )engine InnoDB;

-- ---------------------------------------------------------------------------------------------------------
-- Tabla Detalle Evento
-- -----------------------------------------------------------------------------------------------------------
drop table if exists `Nueva_Jersusalen`.`Detalle Evento`;

create table if not exists `Nueva_Jerusalen`.`Detalle Evento`
(
id_eventos int,
 constraint fk_id_eventos FOREIGN KEY (id_eventos) references Eventos (id_eventos),
 `id_detalle` int primary key,
 `fecha` datetime
 )engine InnoDB;
 
-- ---------------------------------------------------------------------------------------------
-- Tabla Ayuda
-- ---------------------------------------------------------------------------------------------
drop table if exists `Nueva_Jerusalen`.`Ayuda`;

create table if not exists `Nueva_Jerusalen`.`Ayuda`
(
`id_ayuda` int primary key,
`monto` float not null,
`fecha` datetime not null,
`destina` nvarchar (100) not null
)engine InnoDB;

-- ---------------------------------------------------------------------------------------------
-- Tabla Primicias
-- ---------------------------------------------------------------------------------------------
drop table if exists `Nueva_Jerusalen`.`Primicias`;

create table if not exists `Nueva_Jerusalen`.`Primicias`
(
`id_primicias` int primary key,
`fecha` datetime not null,
`cantidad` float
)engine  InnoDB;

-- ---------------------------------------------------------------------------------------------
-- Tabla Misiones 
-- ---------------------------------------------------------------------------------------------

drop table if exists `Nueva_Jerusalen`.`Misiones`;

create table if not exists `Nueva_Jerusalen`.`Misiones`
(
`id_misiones` int primary key,
`cantidad` float,
`fecha` datetime
)engine InnoDB;

-- -----------------------------------------------------------------------------------------------
-- Tabla Multimedia-------------------------------------------------------------------------------

drop table if exists `Nueva_Jerusalen`.`Multimadia`;

create table if not exists `Nueva_Jerusalen`.`Multimedia`
(
`id_multi` int primary key,
`descripcion` nvarchar (100) not null,
`texto` nvarchar (100) not null
)engine InnoDB;

-- ------------------------------------------------------------------------------------------------
-- Tabla Secciones
-- ---------------------------------------------------------------------------------------------

drop table if exists `Nueva_Jerusalen`.`Secciones`;

create table if not exists `Nueva_Jerusalen`.`Secciones`
(
`id_seccion` int primary key,
`nom_seccion` nvarchar (35) not null,
  constraint chk_seccion check (nom_seccion in (`Jovenes`, `Mujeres`, `Matrimonios`, `Familias`, `enseña`, `testimonio`, `seminario`)),
   `texto` nvarchar (100)
)engine InnoDB;

-- ----------------------------------------------------------------------------------------------------
-- Tabla Matrimonios
-- ------------------------------------------------------------------------------------------------------

drop table if exists `Nueva_Jerusalen`.`Matrimonios`;

create table if not exists `Nueva_Jerusalen`.`Matrimonios`
(
`id_matrimonios` int primary key,
`H_nombre` nvarchar (40) not null,
`M_nombre` nvarchar (40) not null,
`fecha` datetime
)engine InnoDB;

-- -----------------------------------------------------------------------------------------------------------
-- Tabla Presentaciones
-- -----------------------------------------------------------------------------------------------------------

drop table if exists `Nueva_Jerusalen`.`Presentaciones`;

create table if not exists `Nueva_Jerusalen`.`Presentaciones`
(
`id_present` int primary key,
`N_padre` nvarchar (40) not null,
`N_madre` nvarchar (40) not null,
`fecha` datetime
)engine InnoDB;

-- ------------------------------------------------------------------------------------------------------------
-- Tabla Bautismos
-- -----------------------------------------------------------------------------------------------------------

drop table if exists `Nueva_Jerusalen`.`Bautismos`;

create table if not exists `Nueva_Jerusalen`.`Bautismos`
(
`id_bautismos` int primary key,
`nombre` nvarchar(45) not null,
`cuidad` nvarchar (30) not null,
`fevha` datetime
)engine InnoDB;

















