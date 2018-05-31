/*==============================================================*/
/* DBMS name:      ORACLE Version 10gR2                         */
/* Created on:     29/05/2018 5:15:33 p. m.                     */
/*==============================================================*/


alter table ARBITRO
   drop constraint FK_ARBITRO_RELATIONS_ORGANIZA;

alter table ARBITRO
   drop constraint FK_ARBITRO_RELATIONS_LUGAR;

alter table ENCUENTRO
   drop constraint FK_ENCUENTR_PROG_ENCU_PROGRAMA;

alter table ENCUENTRO
   drop constraint FK_ENCUENTR_VENCEDOR_EQUIPO;

alter table ENCUENTROARBITRO
   drop constraint FK_ENCUENTR_RELATIONS_ENCUENTR;

alter table ENCUENTROARBITRO
   drop constraint FK_ENCUENTR_RELATIONS_ARBITRO;

alter table ENCUENTROARBITRO
   drop constraint FK_ENCUENTR_RELATIONS_POSCICIO;

alter table EQUIPO
   drop constraint FK_EQUIPO_DELEGACIO_LUGAR;

alter table EQUIPO
   drop constraint FK_EQUIPO_GRUPO2_GRUPO;

alter table EQUIPO
   drop constraint FK_EQUIPO_SEDE_LUGAR;

alter table ESTADISTICAAR
   drop constraint FK_ESTADIST_RELATIONS_TIPOESTA;

alter table ESTADISTICAAR
   drop constraint FK_ESTADIST_RELATIONS_ENCUENTR;

alter table ESTADISTICAAR
   drop constraint FK_ESTADIST_RELATIONS_ARBITRO;

alter table ESTADISTICA_EN
   drop constraint FK_ESTADIST_ESTADIS_ENCUENTR;

alter table ESTADISTICA_EN
   drop constraint FK_ESTADIST_ESTADIS_P_PERSONAJ;

alter table ESTADISTICA_EN
   drop constraint FK_ESTADIST_TIPO_ES_TIPOESTA;

alter table EVENTOARBITRO
   drop constraint FK_EVENTOAR_RELATIONS_TIPOEVEN;

alter table EVENTOARBITRO
   drop constraint FK_EVENTOAR_RELATIONS_ENCUENTR;

alter table EVENTOS
   drop constraint FK_EVENTOS_RELATIONS_POSCICIO;

alter table EVENTOS
   drop constraint FK_EVENTOS_RELATIONS_TIPOEVEN;

alter table EVENTOS
   drop constraint FK_EVENTOS_RELATIONS_ENCUENTR;

alter table GRUPO
   drop constraint FK_GRUPO_GRUPO_EQUIPO;

alter table LUGAR
   drop constraint FK_LUGAR_ESTA_EN_LUGAR;

alter table LUGAR
   drop constraint FK_LUGAR_TIPO_LUGA_TIPOLUGA;

alter table OBSERVACION
   drop constraint FK_OBSERVAC_CARACTERI_PERSONAJ;

alter table OBSERVACION
   drop constraint FK_OBSERVAC_TIPO_TIPO_OBS;

alter table OBSERVACIONLUGAR
   drop constraint FK_OBSERVAC_OBSERVACI_LUGAR;

alter table OBSERVACIONLUGAR
   drop constraint FK_OBSERVAC_TIPOOBSER_TIPOOBSE;

alter table PERSONAJE
   drop constraint FK_PERSONAJ_PERTENECE_EQUIPO;

alter table PERSONAJE
   drop constraint FK_PERSONAJ_TIENE_ROL;

alter table PROGRAMACION
   drop constraint FK_PROGRAMA_EQUIPO_1_EQUIPO;

alter table PROGRAMACION
   drop constraint FK_PROGRAMA_EQUIPO_2_EQUIPO;

alter table PROGRAMACION
   drop constraint FK_PROGRAMA_ESTADIO_LUGAR;

alter table PROGRAMACION
   drop constraint FK_PROGRAMA_FASE_FASE;

alter table PROGRAMACION
   drop constraint FK_PROGRAMA_VENCEDOR_1;

alter table PROGRAMACION
   drop constraint FK_PROGRAMA_VENCEDOR_2;

drop index RELATIONSHIP_37_FK;

drop index RELATIONSHIP_31_FK;

drop table ARBITRO cascade constraints;

drop index VENCEDOR_FK;

drop index PROG_ENCU_FK;

drop table ENCUENTRO cascade constraints;

drop index RELATIONSHIP_33_FK;

drop index RELATIONSHIP_30_FK;

drop index RELATIONSHIP_28_FK;

drop table ENCUENTROARBITRO cascade constraints;

drop index GRUPO2_FK;

drop index DELEGACION_FK;

drop index SEDE_FK;

drop table EQUIPO cascade constraints;

drop index RELATIONSHIP_36_FK;

drop index RELATIONSHIP_35_FK;

drop index RELATIONSHIP_32_FK;

drop table ESTADISTICAAR cascade constraints;

drop index ESTADIS_FK;

drop index ESTADIS_PER_FK;

drop index TIPO_ES_FK;

drop table ESTADISTICA_EN cascade constraints;

drop index RELATIONSHIP_29_FK;

drop index RELATIONSHIP_25_FK;

drop table EVENTOARBITRO cascade constraints;

drop index RELATIONSHIP_24_FK;

drop index RELATIONSHIP_23_FK;

drop table EVENTOS cascade constraints;

drop table FASE cascade constraints;

drop index GRUPO_FK;

drop table GRUPO cascade constraints;

drop index ESTA_EN_FK;

drop index TIPO_LUGAR_FK;

drop table LUGAR cascade constraints;

drop index TIPO_FK;

drop index CARACTERISTICA_FK;

drop table OBSERVACION cascade constraints;

drop index TIPOOBSERVACION_FK;

drop index OBSERVACION_FK;

drop table OBSERVACIONLUGAR cascade constraints;

drop table ORGANIZACION cascade constraints;

drop index TIENE_FK;

drop index PERTENECE_FK;

drop table PERSONAJE cascade constraints;

drop table POSCICION cascade constraints;

drop index RELATIONSHIP_13_FK;

drop index RELATIONSHIP_12_FK;

drop index FASE_FK;

drop index ESTADIO_FK;

drop index EQUIPO_2_FK;

drop index EQUIPO_1_FK;

drop table PROGRAMACION cascade constraints;

drop table ROL cascade constraints;

drop table TIPOESTADISTICA cascade constraints;

drop table TIPOEVENTO cascade constraints;

drop table TIPOLUGAR cascade constraints;

drop table TIPOOBSERVACION cascade constraints;

drop table TIPO_OBSERVACION cascade constraints;

/*==============================================================*/
/* Table: ARBITRO                                               */
/*==============================================================*/
create table ARBITRO  (
   ID_ARBITRO           VARCHAR2(3)                     not null,
   ID_LUGAR             VARCHAR2(3),
   ID_ORGANIZACION      VARCHAR2(3),
   NOMBRE               VARCHAR2(50),
   APELLIDO             VARCHAR2(50),
   constraint PK_ARBITRO primary key (ID_ARBITRO)
);

/*==============================================================*/
/* Index: RELATIONSHIP_31_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_31_FK on ARBITRO (
   ID_ORGANIZACION ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_37_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_37_FK on ARBITRO (
   ID_LUGAR ASC
);

/*==============================================================*/
/* Table: ENCUENTRO                                             */
/*==============================================================*/
create table ENCUENTRO  (
   ID_ENCUENTRO         VARCHAR2(3)                     not null,
   NUMPARTIDO           VARCHAR2(3)                     not null,
   HORA_INICIO          DATE,
   HORA_FIN             DATE,
   ID_LUGAR             VARCHAR2(3),
   ID_GRUPO             VARCHAR2(2),
   ID_EQUIPO            VARCHAR2(3),
   constraint PK_ENCUENTRO primary key (NUMPARTIDO, ID_ENCUENTRO)
);

/*==============================================================*/
/* Index: PROG_ENCU_FK                                          */
/*==============================================================*/
create index PROG_ENCU_FK on ENCUENTRO (
   NUMPARTIDO ASC
);

/*==============================================================*/
/* Index: VENCEDOR_FK                                           */
/*==============================================================*/
create index VENCEDOR_FK on ENCUENTRO (
   ID_LUGAR ASC,
   ID_GRUPO ASC,
   ID_EQUIPO ASC
);

/*==============================================================*/
/* Table: ENCUENTROARBITRO                                      */
/*==============================================================*/
create table ENCUENTROARBITRO  (
   ID_ECUENTA           VARCHAR2(200)                   not null,
   ID_ARBITRO           VARCHAR2(3),
   ID_POS               VARCHAR2(2),
   NUMPARTIDO           VARCHAR2(3),
   ID_ENCUENTRO         VARCHAR2(3),
   constraint PK_ENCUENTROARBITRO primary key (ID_ECUENTA)
);

/*==============================================================*/
/* Index: RELATIONSHIP_28_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_28_FK on ENCUENTROARBITRO (
   NUMPARTIDO ASC,
   ID_ENCUENTRO ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_30_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_30_FK on ENCUENTROARBITRO (
   ID_ARBITRO ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_33_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_33_FK on ENCUENTROARBITRO (
   ID_POS ASC
);

/*==============================================================*/
/* Table: EQUIPO                                                */
/*==============================================================*/
create table EQUIPO  (
   ID_EQUIPO            VARCHAR2(3)                     not null,
   UNIFORME_LOCAL       VARCHAR2(200),
   UNIFORME_VISITANTE   VARCHAR2(200),
   ANO_FUNDACION        DATE,
   TROFEOS              NUMBER(2,0),
   PUNTOS_GRUPO         NUMBER(2,0),
   LUG_ID_LUGAR         VARCHAR2(3),
   ID_LUGAR             VARCHAR2(3)                     not null,
   ID_GRUPO             VARCHAR2(2)                     not null,
   constraint PK_EQUIPO primary key (ID_LUGAR, ID_GRUPO, ID_EQUIPO)
);

/*==============================================================*/
/* Index: SEDE_FK                                               */
/*==============================================================*/
create index SEDE_FK on EQUIPO (
   LUG_ID_LUGAR ASC
);

/*==============================================================*/
/* Index: DELEGACION_FK                                         */
/*==============================================================*/
create index DELEGACION_FK on EQUIPO (
   ID_LUGAR ASC
);

/*==============================================================*/
/* Index: GRUPO2_FK                                             */
/*==============================================================*/
create index GRUPO2_FK on EQUIPO (
   ID_GRUPO ASC
);

/*==============================================================*/
/* Table: ESTADISTICAAR                                         */
/*==============================================================*/
create table ESTADISTICAAR  (
   ID_ARBITRO           VARCHAR2(3)                     not null,
   ID_TIPO              VARCHAR2(3)                     not null,
   NUMPARTIDO           VARCHAR2(3),
   ID_ENCUENTRO         VARCHAR2(3),
   DESCRIPCION          VARCHAR2(200)                   not null,
   constraint PK_ESTADISTICAAR primary key (ID_ARBITRO, ID_TIPO)
);

/*==============================================================*/
/* Index: RELATIONSHIP_32_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_32_FK on ESTADISTICAAR (
   ID_TIPO ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_35_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_35_FK on ESTADISTICAAR (
   NUMPARTIDO ASC,
   ID_ENCUENTRO ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_36_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_36_FK on ESTADISTICAAR (
   ID_ARBITRO ASC
);

/*==============================================================*/
/* Table: ESTADISTICA_EN                                        */
/*==============================================================*/
create table ESTADISTICA_EN  (
   ID_ENCUENTRO         VARCHAR2(3)                     not null,
   ID_TIPO              VARCHAR2(3)                     not null,
   NUMPARTIDO           VARCHAR2(3),
   ID_PERSONA           VARCHAR2(4),
   DESCRIPCION          VARCHAR2(200)                   not null,
   constraint PK_ESTADISTICA_EN primary key (ID_ENCUENTRO, ID_TIPO)
);

/*==============================================================*/
/* Index: TIPO_ES_FK                                            */
/*==============================================================*/
create index TIPO_ES_FK on ESTADISTICA_EN (
   ID_TIPO ASC
);

/*==============================================================*/
/* Index: ESTADIS_PER_FK                                        */
/*==============================================================*/
create index ESTADIS_PER_FK on ESTADISTICA_EN (
   ID_PERSONA ASC
);

/*==============================================================*/
/* Index: ESTADIS_FK                                            */
/*==============================================================*/
create index ESTADIS_FK on ESTADISTICA_EN (
   NUMPARTIDO ASC,
   ID_ENCUENTRO ASC
);

/*==============================================================*/
/* Table: EVENTOARBITRO                                         */
/*==============================================================*/
create table EVENTOARBITRO  (
   ID_TIPOE             VARCHAR2(3)                     not null,
   ID_ECUENTA           VARCHAR2(200)                   not null,
   DESCRIPCION          VARCHAR2(200)                   not null,
   constraint PK_EVENTOARBITRO primary key (ID_TIPOE, ID_ECUENTA)
);

/*==============================================================*/
/* Index: RELATIONSHIP_25_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_25_FK on EVENTOARBITRO (
   ID_TIPOE ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_29_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_29_FK on EVENTOARBITRO (
   ID_ECUENTA ASC
);

/*==============================================================*/
/* Table: EVENTOS                                               */
/*==============================================================*/
create table EVENTOS  (
   NUMPARTIDO           VARCHAR2(3)                     not null,
   ID_ENCUENTRO         VARCHAR2(3)                     not null,
   ID_TIPOE             VARCHAR2(3),
   ID_POS               VARCHAR2(2),
   ID_OB_PER            VARCHAR2(3),
   ID_PERSONA           VARCHAR2(4),
   ID_EVENTO            VARCHAR2(3),
   MINUTO               DATE,
   DESCRIPCION          VARCHAR2(200),
   constraint PK_EVENTOS primary key (NUMPARTIDO, ID_ENCUENTRO)
);

/*==============================================================*/
/* Index: RELATIONSHIP_23_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_23_FK on EVENTOS (
   ID_POS ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_24_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_24_FK on EVENTOS (
   ID_TIPOE ASC
);

/*==============================================================*/
/* Table: FASE                                                  */
/*==============================================================*/
create table FASE  (
   ID_FASE              VARCHAR2(3)                     not null,
   NOM_FASE             VARCHAR2(60),
   constraint PK_FASE primary key (ID_FASE)
);

/*==============================================================*/
/* Table: GRUPO                                                 */
/*==============================================================*/
create table GRUPO  (
   ID_GRUPO             VARCHAR2(2)                     not null,
   NOMBRE_GRUPO         VARCHAR2(30),
   ID_LUGAR             VARCHAR2(3),
   EQU_ID_GRUPO         VARCHAR2(2),
   ID_EQUIPO            VARCHAR2(3),
   constraint PK_GRUPO primary key (ID_GRUPO)
);

/*==============================================================*/
/* Index: GRUPO_FK                                              */
/*==============================================================*/
create index GRUPO_FK on GRUPO (
   ID_LUGAR ASC,
   EQU_ID_GRUPO ASC,
   ID_EQUIPO ASC
);

/*==============================================================*/
/* Table: LUGAR                                                 */
/*==============================================================*/
create table LUGAR  (
   ID_LUGAR             VARCHAR2(3)                     not null,
   ID_TLUGAR            VARCHAR2(1),
   LUG_ID_LUGAR         VARCHAR2(3),
   constraint PK_LUGAR primary key (ID_LUGAR)
);

/*==============================================================*/
/* Index: TIPO_LUGAR_FK                                         */
/*==============================================================*/
create index TIPO_LUGAR_FK on LUGAR (
   ID_TLUGAR ASC
);

/*==============================================================*/
/* Index: ESTA_EN_FK                                            */
/*==============================================================*/
create index ESTA_EN_FK on LUGAR (
   LUG_ID_LUGAR ASC
);

/*==============================================================*/
/* Table: OBSERVACION                                           */
/*==============================================================*/
create table OBSERVACION  (
   ID_OB_PER            VARCHAR2(3)                     not null,
   ID_PERSONA           VARCHAR2(4)                     not null,
   DESC_OBSER           VARCHAR2(200)                   not null,
   constraint PK_OBSERVACION primary key (ID_OB_PER, ID_PERSONA)
);

/*==============================================================*/
/* Index: CARACTERISTICA_FK                                     */
/*==============================================================*/
create index CARACTERISTICA_FK on OBSERVACION (
   ID_PERSONA ASC
);

/*==============================================================*/
/* Index: TIPO_FK                                               */
/*==============================================================*/
create index TIPO_FK on OBSERVACION (
   ID_OB_PER ASC
);

/*==============================================================*/
/* Table: OBSERVACIONLUGAR                                      */
/*==============================================================*/
create table OBSERVACIONLUGAR  (
   ID_TOBSER            VARCHAR2(3)                     not null,
   ID_LUGAR             VARCHAR2(3)                     not null,
   DES_LUGAR            VARCHAR2(200)                   not null,
   constraint PK_OBSERVACIONLUGAR primary key (ID_TOBSER, ID_LUGAR)
);

/*==============================================================*/
/* Index: OBSERVACION_FK                                        */
/*==============================================================*/
create index OBSERVACION_FK on OBSERVACIONLUGAR (
   ID_LUGAR ASC
);

/*==============================================================*/
/* Index: TIPOOBSERVACION_FK                                    */
/*==============================================================*/
create index TIPOOBSERVACION_FK on OBSERVACIONLUGAR (
   ID_TOBSER ASC
);

/*==============================================================*/
/* Table: ORGANIZACION                                          */
/*==============================================================*/
create table ORGANIZACION  (
   ID_ORGANIZACION      VARCHAR2(3)                     not null,
   NOMBRE               VARCHAR2(50)                    not null,
   constraint PK_ORGANIZACION primary key (ID_ORGANIZACION)
);

/*==============================================================*/
/* Table: PERSONAJE                                             */
/*==============================================================*/
create table PERSONAJE  (
   ID_PERSONA           VARCHAR2(4)                     not null,
   NOMBRE               VARCHAR2(50),
   NUMEROC              VARCHAR2(2),
   ID_EQUIPO            VARCHAR2(3),
   ID_LUGAR             VARCHAR2(3),
   ID_GRUPO             VARCHAR2(2),
   ID_ROL               VARCHAR2(2),
   constraint PK_PERSONAJE primary key (ID_PERSONA)
);

/*==============================================================*/
/* Index: PERTENECE_FK                                          */
/*==============================================================*/
create index PERTENECE_FK on PERSONAJE (
   ID_LUGAR ASC,
   ID_GRUPO ASC,
   ID_EQUIPO ASC
);

/*==============================================================*/
/* Index: TIENE_FK                                              */
/*==============================================================*/
create index TIENE_FK on PERSONAJE (
   ID_ROL ASC
);

/*==============================================================*/
/* Table: POSCICION                                             */
/*==============================================================*/
create table POSCICION  (
   ID_POS               VARCHAR2(2)                     not null,
   NOMBRE_POS           VARCHAR2(120),
   constraint PK_POSCICION primary key (ID_POS)
);

/*==============================================================*/
/* Table: PROGRAMACION                                          */
/*==============================================================*/
create table PROGRAMACION  (
   NUMPARTIDO           VARCHAR2(3)                     not null,
   FECHA                DATE,
   HORA_INIICIO         DATE,
   HORA_FIN             DATE,
   ID_LUGAR             VARCHAR2(3),
   ID_FASE              VARCHAR2(3),
   PRO_NUMPARTIDO       VARCHAR2(3),
   PRO_NUMPARTIDO2      VARCHAR2(3),
   EQU_ID_LUGAR         VARCHAR2(3),
   ID_GRUPO             VARCHAR2(2),
   ID_EQUIPO            VARCHAR2(3),
   EQU_ID_LUGAR2        VARCHAR2(3),
   EQU_ID_GRUPO         VARCHAR2(2),
   EQU_ID_EQUIPO        VARCHAR2(3),
   constraint PK_PROGRAMACION primary key (NUMPARTIDO)
);

/*==============================================================*/
/* Index: EQUIPO_1_FK                                           */
/*==============================================================*/
create index EQUIPO_1_FK on PROGRAMACION (
   EQU_ID_LUGAR ASC,
   ID_GRUPO ASC,
   ID_EQUIPO ASC
);

/*==============================================================*/
/* Index: EQUIPO_2_FK                                           */
/*==============================================================*/
create index EQUIPO_2_FK on PROGRAMACION (
   EQU_ID_LUGAR2 ASC,
   EQU_ID_GRUPO ASC,
   EQU_ID_EQUIPO ASC
);

/*==============================================================*/
/* Index: ESTADIO_FK                                            */
/*==============================================================*/
create index ESTADIO_FK on PROGRAMACION (
   ID_LUGAR ASC
);

/*==============================================================*/
/* Index: FASE_FK                                               */
/*==============================================================*/
create index FASE_FK on PROGRAMACION (
   ID_FASE ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_12_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_12_FK on PROGRAMACION (
   PRO_NUMPARTIDO2 ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_13_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_13_FK on PROGRAMACION (
   PRO_NUMPARTIDO ASC
);

/*==============================================================*/
/* Table: ROL                                                   */
/*==============================================================*/
create table ROL  (
   ID_ROL               VARCHAR2(2)                     not null,
   NOM_ROL              VARCHAR2(100)                   not null,
   constraint PK_ROL primary key (ID_ROL)
);

/*==============================================================*/
/* Table: TIPOESTADISTICA                                       */
/*==============================================================*/
create table TIPOESTADISTICA  (
   ID_TIPO              VARCHAR2(3)                     not null,
   NOM_TIPO             VARCHAR2(100),
   constraint PK_TIPOESTADISTICA primary key (ID_TIPO)
);

/*==============================================================*/
/* Table: TIPOEVENTO                                            */
/*==============================================================*/
create table TIPOEVENTO  (
   ID_TIPOE             VARCHAR2(3)                     not null,
   NOM_EVENT            VARCHAR2(70),
   constraint PK_TIPOEVENTO primary key (ID_TIPOE)
);

/*==============================================================*/
/* Table: TIPOLUGAR                                             */
/*==============================================================*/
create table TIPOLUGAR  (
   ID_TLUGAR            VARCHAR2(1)                     not null,
   NOMBRE               VARCHAR2(50),
   constraint PK_TIPOLUGAR primary key (ID_TLUGAR)
);

/*==============================================================*/
/* Table: TIPOOBSERVACION                                       */
/*==============================================================*/
create table TIPOOBSERVACION  (
   ID_TOBSER            VARCHAR2(3)                     not null,
   NOM_OBSER            VARCHAR2(100),
   constraint PK_TIPOOBSERVACION primary key (ID_TOBSER)
);

/*==============================================================*/
/* Table: TIPO_OBSERVACION                                      */
/*==============================================================*/
create table TIPO_OBSERVACION  (
   ID_OB_PER            VARCHAR2(3)                     not null,
   NOM_TIPO             VARCHAR2(100),
   constraint PK_TIPO_OBSERVACION primary key (ID_OB_PER)
);

alter table ARBITRO
   add constraint FK_ARBITRO_RELATIONS_ORGANIZA foreign key (ID_ORGANIZACION)
      references ORGANIZACION (ID_ORGANIZACION);

alter table ARBITRO
   add constraint FK_ARBITRO_RELATIONS_LUGAR foreign key (ID_LUGAR)
      references LUGAR (ID_LUGAR);

alter table ENCUENTRO
   add constraint FK_ENCUENTR_PROG_ENCU_PROGRAMA foreign key (NUMPARTIDO)
      references PROGRAMACION (NUMPARTIDO);

alter table ENCUENTRO
   add constraint FK_ENCUENTR_VENCEDOR_EQUIPO foreign key (ID_LUGAR, ID_GRUPO, ID_EQUIPO)
      references EQUIPO (ID_LUGAR, ID_GRUPO, ID_EQUIPO);

alter table ENCUENTROARBITRO
   add constraint FK_ENCUENTR_RELATIONS_ENCUENTR foreign key (NUMPARTIDO, ID_ENCUENTRO)
      references ENCUENTRO (NUMPARTIDO, ID_ENCUENTRO);

alter table ENCUENTROARBITRO
   add constraint FK_ENCUENTR_RELATIONS_ARBITRO foreign key (ID_ARBITRO)
      references ARBITRO (ID_ARBITRO);

alter table ENCUENTROARBITRO
   add constraint FK_ENCUENTR_RELATIONS_POSCICIO foreign key (ID_POS)
      references POSCICION (ID_POS);

alter table EQUIPO
   add constraint FK_EQUIPO_DELEGACIO_LUGAR foreign key (ID_LUGAR)
      references LUGAR (ID_LUGAR);

alter table EQUIPO
   add constraint FK_EQUIPO_GRUPO2_GRUPO foreign key (ID_GRUPO)
      references GRUPO (ID_GRUPO);

alter table EQUIPO
   add constraint FK_EQUIPO_SEDE_LUGAR foreign key (LUG_ID_LUGAR)
      references LUGAR (ID_LUGAR);

alter table ESTADISTICAAR
   add constraint FK_ESTADIST_RELATIONS_TIPOESTA foreign key (ID_TIPO)
      references TIPOESTADISTICA (ID_TIPO);

alter table ESTADISTICAAR
   add constraint FK_ESTADIST_RELATIONS_ENCUENTR foreign key (NUMPARTIDO, ID_ENCUENTRO)
      references ENCUENTRO (NUMPARTIDO, ID_ENCUENTRO);

alter table ESTADISTICAAR
   add constraint FK_ESTADIST_RELATIONS_ARBITRO foreign key (ID_ARBITRO)
      references ARBITRO (ID_ARBITRO);

alter table ESTADISTICA_EN
   add constraint FK_ESTADIST_ESTADIS_ENCUENTR foreign key (NUMPARTIDO, ID_ENCUENTRO)
      references ENCUENTRO (NUMPARTIDO, ID_ENCUENTRO);

alter table ESTADISTICA_EN
   add constraint FK_ESTADIST_ESTADIS_P_PERSONAJ foreign key (ID_PERSONA)
      references PERSONAJE (ID_PERSONA);

alter table ESTADISTICA_EN
   add constraint FK_ESTADIST_TIPO_ES_TIPOESTA foreign key (ID_TIPO)
      references TIPOESTADISTICA (ID_TIPO);

alter table EVENTOARBITRO
   add constraint FK_EVENTOAR_RELATIONS_TIPOEVEN foreign key (ID_TIPOE)
      references TIPOEVENTO (ID_TIPOE);

alter table EVENTOARBITRO
   add constraint FK_EVENTOAR_RELATIONS_ENCUENTR foreign key (ID_ECUENTA)
      references ENCUENTROARBITRO (ID_ECUENTA);

alter table EVENTOS
   add constraint FK_EVENTOS_RELATIONS_POSCICIO foreign key (ID_POS)
      references POSCICION (ID_POS);

alter table EVENTOS
   add constraint FK_EVENTOS_RELATIONS_TIPOEVEN foreign key (ID_TIPOE)
      references TIPOEVENTO (ID_TIPOE);

alter table EVENTOS
   add constraint FK_EVENTOS_RELATIONS_ENCUENTR foreign key (NUMPARTIDO, ID_ENCUENTRO)
      references ENCUENTRO (NUMPARTIDO, ID_ENCUENTRO);

alter table GRUPO
   add constraint FK_GRUPO_GRUPO_EQUIPO foreign key (ID_LUGAR, EQU_ID_GRUPO, ID_EQUIPO)
      references EQUIPO (ID_LUGAR, ID_GRUPO, ID_EQUIPO);

alter table LUGAR
   add constraint FK_LUGAR_ESTA_EN_LUGAR foreign key (LUG_ID_LUGAR)
      references LUGAR (ID_LUGAR);

alter table LUGAR
   add constraint FK_LUGAR_TIPO_LUGA_TIPOLUGA foreign key (ID_TLUGAR)
      references TIPOLUGAR (ID_TLUGAR);

alter table OBSERVACION
   add constraint FK_OBSERVAC_CARACTERI_PERSONAJ foreign key (ID_PERSONA)
      references PERSONAJE (ID_PERSONA);

alter table OBSERVACION
   add constraint FK_OBSERVAC_TIPO_TIPO_OBS foreign key (ID_OB_PER)
      references TIPO_OBSERVACION (ID_OB_PER);

alter table OBSERVACIONLUGAR
   add constraint FK_OBSERVAC_OBSERVACI_LUGAR foreign key (ID_LUGAR)
      references LUGAR (ID_LUGAR);

alter table OBSERVACIONLUGAR
   add constraint FK_OBSERVAC_TIPOOBSER_TIPOOBSE foreign key (ID_TOBSER)
      references TIPOOBSERVACION (ID_TOBSER);

alter table PERSONAJE
   add constraint FK_PERSONAJ_PERTENECE_EQUIPO foreign key (ID_LUGAR, ID_GRUPO, ID_EQUIPO)
      references EQUIPO (ID_LUGAR, ID_GRUPO, ID_EQUIPO);

alter table PERSONAJE
   add constraint FK_PERSONAJ_TIENE_ROL foreign key (ID_ROL)
      references ROL (ID_ROL);

alter table PROGRAMACION
   add constraint FK_PROGRAMA_EQUIPO_1_EQUIPO foreign key (EQU_ID_LUGAR, ID_GRUPO, ID_EQUIPO)
      references EQUIPO (ID_LUGAR, ID_GRUPO, ID_EQUIPO);

alter table PROGRAMACION
   add constraint FK_PROGRAMA_EQUIPO_2_EQUIPO foreign key (EQU_ID_LUGAR2, EQU_ID_GRUPO, EQU_ID_EQUIPO)
      references EQUIPO (ID_LUGAR, ID_GRUPO, ID_EQUIPO);

alter table PROGRAMACION
   add constraint FK_PROGRAMA_ESTADIO_LUGAR foreign key (ID_LUGAR)
      references LUGAR (ID_LUGAR);

alter table PROGRAMACION
   add constraint FK_PROGRAMA_FASE_FASE foreign key (ID_FASE)
      references FASE (ID_FASE);

alter table PROGRAMACION
   add constraint FK_PROGRAMA_VENCEDOR_1 foreign key (PRO_NUMPARTIDO2)
      references PROGRAMACION (NUMPARTIDO);

alter table PROGRAMACION
   add constraint FK_PROGRAMA_VENCEDOR_2 foreign key (PRO_NUMPARTIDO)
      references PROGRAMACION (NUMPARTIDO);

