
/* TABLA: TABLA_PROGRAMA                                    */
create table TABLA_PROGRAMA (
   IDPROGRAMA           INT4                 not null,
   NOMBREPROGRAMA       VARCHAR(50)          not null,
   constraint PK_TABLA_PROGRAMA primary key (IDPROGRAMA)
);

/* TABLA: INSCRIPCION_NINO                                      */

create table INSCRIPCION_NINO (
   IDNINO               INT4                 not null,
   IDINSCRIPCION        INT4                 not null,
   constraint PK_INSCRIPCION_NINO primary key (IDNINO, IDINSCRIPCION)
);


/* TABLA: RENDIMIENTO_NINO                                      */

create table RENDIMIENTO_NINO (
   IDRENDIMIENTONINO    INT4                 not null,
   IDNINO               INT4                 not null,
   constraint PK_RENDIMIENTO_NINO primary key (IDRENDIMIENTONINO, IDNINO)
);


/* TABLA_ESCALA_RENDIMIENTO                              */

create table TABLA_ESCALA_RENDIMIENTO (
   IDESCALARENDIMIENTO  INT4                 not null,
   ESCALARENDIMIENTO    VARCHAR(20)          null,
   constraint PK_TABLA_ESCALA_RENDIMIENTO primary key (IDESCALARENDIMIENTO)
);


/* TABLA_ESTADOSOCIAL_SALUD                              */

create table TABLA_ESTADOSOCIAL_SALUD (
   IDESTADOSOCIALSALUD  INT4                 not null,
   IDNINO               INT4                 not null,
   TALLAVESTIMENTANINO  NUMERIC(2)           null,
   TALLA_ZAPATOSNINO    NUMERIC(2)           null,
   ALERGIASNINO         VARCHAR(400)         null,
   MEDICAMENTOSTOMAREGULARNINO VARCHAR(800)         null,
   ULTIMAFECHAENFERMEDADNINO DATE                 null,
   DIAGNOSTICONINO      VARCHAR(1000)        null,
   DOCTORTRATANTE       VARCHAR(40)          null,
   constraint PK_TABLA_ESTADOSOCIAL_SALUD primary key (IDESTADOSOCIALSALUD)
);

/* TABLA_GENERO                                          */

create table TABLA_GENERO (
   IDGENERO             INT4                 not null,
   GENERO               VARCHAR(40)          null,
   constraint PK_TABLA_GENERO primary key (IDGENERO)
);

/* TABLA_INSCRIPCION                                     */

create table TABLA_INSCRIPCION (
   IDINSCRIPCION        INT4                 not null,
   IDPROPUESTA          INT4                 not null,
   ANOLECTIVOINSCRIPCION NUMERIC(4)           null,
   FECHAINSCRIPCION     DATE                 null,
   constraint PK_TABLA_INSCRIPCION primary key (IDINSCRIPCION)
);


/* TABLA_TUTOR                                           */

create table TABLA_TUTOR (
   IDTUTOR              INT4                 not null,
   IDNACIONALIDAD       INT4                 not null,
   IDGENERO             INT4                 not null,
   C_I_TUTOR            VARCHAR(10)          null,
   NOMBRETUTOR          VARCHAR(40)          null,
   APELLIDOTUTOR        VARCHAR(40)          null,
   DIRECCIONTUTOR       VARCHAR(60)          null,
   TELEFONOTUTOR        VARCHAR(10)          null,
   PARENTESCOTUTOR      VARCHAR(40)          null,
   MOTIVOTUTELA         VARCHAR(400)         null,
   constraint PK_TABLA_TUTOR primary key (IDTUTOR)
);


/* TABLA_RENDIMIENTO_NINO                                */

create table TABLA_RENDIMIENTO_NINO (
   IDRENDIMIENTONINO    INT4                 not null,
   IDPROGRAMA           INT4                 not null,
   IDESCALARENDIMIENTO  INT4                 not null,
   constraint PK_TABLA_RENDIMIENTO_NINO primary key (IDRENDIMIENTONINO)
);


/* TABLA_PADRE                                           */

create table TABLA_PADRE (
   IDPADRE              INT4                 not null,
   IDNACIONALIDAD       INT4                 not null,
   IDGENERO             INT4                 not null,
   C_I_PADRE            VARCHAR(10)          null,
   NOMBREPADRE          VARCHAR(40)          null,
   APELLIDOPADRE        VARCHAR(40)          null,
   DIRECCIONPADRE       VARCHAR(60)          null,
   TELEFONOPADRE        VARCHAR(10)          null,
   constraint PK_TABLA_PADRE primary key (IDPADRE)
);


/* TABLA_NACIONALIDAD                                    */

create table TABLA_NACIONALIDAD (
   IDNACIONALIDAD       INT4                 not null,
   PAIS                 VARCHAR(40)          null,
   constraint PK_TABLA_NACIONALIDAD primary key (IDNACIONALIDAD)
);



/* TABLA_NINO                                            */

create table TABLA_NINO (
   IDNINO               INT4                 not null,
   IDPADRE              INT4                 null,
   IDTUTOR              INT4                 null,
   IDNACIONALIDAD       INT4                 not null,
   IDGENERO             INT4                 not null,
   C_I_NINO             VARCHAR(10)          null,
   NOMBRENINO           VARCHAR(40)          null,
   APELLIDONINO         VARCHAR(40)          null,
   FECHANACIMIENTONINO  DATE                 null,
   EDADNINO             INT4                 null,
   constraint PK_TABLA_NINO primary key (IDNINO)
);


/* TABLA_PROFESIONAL                                     */

create table TABLA_PROFESIONAL (
   IDPROFESIONAL        INT4                 not null,
   IDNACIONALIDAD       INT4                 not null,
   IDGENERO             INT4                 not null,
   C_I_PROFESIONAL      VARCHAR(10)          null,
   NOMBREPROFESIONAL    VARCHAR(40)          null,
   APELLIDOPROFESIONAL  VARCHAR(40)          null,
   DIRECCIONPROFESIONAL VARCHAR(60)          null,
   TELEFONOPROFESIONAL  VARCHAR(10)          null,
   NUMEROCERTIFICADOPROFESIONAL INT4                 null,
   constraint PK_TABLA_PROFESIONAL primary key (IDPROFESIONAL)
);


/* TABLA_PROPUESTA                                       */

create table TABLA_PROPUESTA (
   IDPROPUESTA          INT4                 not null,
   IDPROFESIONAL        INT4                 not null,
   IDPROGRAMA           INT4                 not null,
   DETALLEPROPUESTA     VARCHAR(2000)        null,
   MATERIALESAUSARPROGRAMA VARCHAR(2000)        null,
   MESESDURACIONPROGRAMA INT4                 null,
   constraint PK_TABLA_PROPUESTA primary key (IDPROPUESTA)
);
/*INDICES EN POSTGRESQL*/

/* Index: TABLA_ESCALA_RENDIMIENTO_PK                           */
create unique index TABLA_ESCALA_RENDIMIENTO_PK on TABLA_ESCALA_RENDIMIENTO (
IDESCALARENDIMIENTO
);
/* Index: TABLA_ESTADOSOCIAL_SALUD_PK                           */
create unique index TABLA_ESTADOSOCIAL_SALUD_PK on TABLA_ESTADOSOCIAL_SALUD (
IDESTADOSOCIALSALUD
);
/* Index: POSEE2_FK                                             */
create  index POSEE2_FK on TABLA_ESTADOSOCIAL_SALUD (
IDNINO
);
/* Index: TABLA_GENERO_PK                                       */
create unique index TABLA_GENERO_PK on TABLA_GENERO (
IDGENERO
);
/* Index: TABLA_INSCRIPCION_PK                                  */
create unique index TABLA_INSCRIPCION_PK on TABLA_INSCRIPCION (
IDINSCRIPCION
);
/* Index: TIENE13_FK                                            */
create  index TIENE13_FK on TABLA_INSCRIPCION (
IDPROPUESTA
);
/* Index: TABLA_NACIONALIDAD_PK                                 */
create unique index TABLA_NACIONALIDAD_PK on TABLA_NACIONALIDAD (
IDNACIONALIDAD
);
/* Index: TABLA_NINO_PK                                         */
create unique index TABLA_NINO_PK on TABLA_NINO (
IDNINO
);
/* Index: POSEE_FK                                              */
create  index POSEE_FK on TABLA_NINO (
IDPADRE
);
/* Index: TIENE9_FK                                             */
create  index TIENE9_FK on TABLA_NINO (
IDTUTOR
);
/* Index: TIENE7_FK                                             */
create  index TIENE7_FK on TABLA_NINO (
IDNACIONALIDAD
);
/* Index: TIENE10_FK                                            */
create  index TIENE10_FK on TABLA_NINO (
IDGENERO
);
/* Index: TABLA_PADRE_PK                                        */
create unique index TABLA_PADRE_PK on TABLA_PADRE (
IDPADRE
);
/* Index: TIENE11_FK                                            */
create  index TIENE11_FK on TABLA_PADRE (
IDNACIONALIDAD
);
/* Index: TIENE12_FK                                            */
create  index TIENE12_FK on TABLA_PADRE (
IDGENERO
);
/* Index: TABLA_PROFESIONAL_PK                                  */
create unique index TABLA_PROFESIONAL_PK on TABLA_PROFESIONAL (
IDPROFESIONAL
);
/* Index: TIENE6_FK                                             */
create  index TIENE6_FK on TABLA_PROFESIONAL (
IDNACIONALIDAD
);
/* Index: TIENE4_FK                                             */
create  index TIENE4_FK on TABLA_PROFESIONAL (
IDGENERO
);
/* Index: TABLA_PROPUESTA_PK                                    */
create unique index TABLA_PROPUESTA_PK on TABLA_PROPUESTA (
IDPROPUESTA
);
/* Index: TIENE3_FK                                             */
create  index TIENE3_FK on TABLA_PROPUESTA (
IDPROFESIONAL
);
/* Index: TABLA_RENDIMIENTO_NINO_PK                             */
create unique index TABLA_RENDIMIENTO_NINO_PK on TABLA_RENDIMIENTO_NINO (
IDRENDIMIENTONINO
);
/* Index: TIENE1_FK                                             */
create  index TIENE1_FK on TABLA_RENDIMIENTO_NINO (
IDESCALARENDIMIENTO
);
/* Index: TABLA_TUTOR_PK                                        */
create unique index TABLA_TUTOR_PK on TABLA_TUTOR (
IDTUTOR
);
/* Index: TIENE5_FK                                             */
create  index TIENE5_FK on TABLA_TUTOR (
IDNACIONALIDAD
);
/* Index: TIENE8_FK                                             */
create  index TIENE8_FK on TABLA_TUTOR (
IDGENERO
);



/*CLAVES FORÁNEAS						*/
alter table INSCRIPCION_NINO
   add constraint FK_INSCRIPC_INSCRIPCI_TABLA_NI foreign key (IDNINO)
      references TABLA_NINO (IDNINO)
      on delete restrict on update restrict;

alter table INSCRIPCION_NINO
   add constraint FK_INSCRIPC_INSCRIPCI_TABLA_IN foreign key (IDINSCRIPCION)
      references TABLA_INSCRIPCION (IDINSCRIPCION)
      on delete restrict on update restrict;

alter table RENDIMIENTO_NINO
   add constraint FK_RENDIMIE_RENDIMIEN_TABLA_RE foreign key (IDRENDIMIENTONINO)
      references TABLA_RENDIMIENTO_NINO (IDRENDIMIENTONINO)
      on delete restrict on update restrict;

alter table RENDIMIENTO_NINO
   add constraint FK_RENDIMIE_RENDIMIEN_TABLA_NI foreign key (IDNINO)
      references TABLA_NINO (IDNINO)
      on delete restrict on update restrict;

alter table TABLA_ESTADOSOCIAL_SALUD
   add constraint FK_TABLA_ES_POSEE2_TABLA_NI foreign key (IDNINO)
      references TABLA_NINO (IDNINO)
      on delete restrict on update restrict;

alter table TABLA_INSCRIPCION
   add constraint FK_TABLA_IN_TIENE13_TABLA_PR foreign key (IDPROPUESTA)
      references TABLA_PROPUESTA (IDPROPUESTA)
      on delete restrict on update restrict;

alter table TABLA_NINO
   add constraint FK_TABLA_NI_POSEE_TABLA_PA foreign key (IDPADRE)
      references TABLA_PADRE (IDPADRE)
      on delete restrict on update restrict;

alter table TABLA_NINO
   add constraint FK_TABLA_NI_TIENE10_TABLA_GE foreign key (IDGENERO)
      references TABLA_GENERO (IDGENERO)
      on delete restrict on update restrict;

alter table TABLA_NINO
   add constraint FK_TABLA_NI_TIENE7_TABLA_NA foreign key (IDNACIONALIDAD)
      references TABLA_NACIONALIDAD (IDNACIONALIDAD)
      on delete restrict on update restrict;

alter table TABLA_NINO
   add constraint FK_TABLA_NI_TIENE9_TABLA_TU foreign key (IDTUTOR)
      references TABLA_TUTOR (IDTUTOR)
      on delete restrict on update restrict;

alter table TABLA_PADRE
   add constraint FK_TABLA_PA_TIENE11_TABLA_NA foreign key (IDNACIONALIDAD)
      references TABLA_NACIONALIDAD (IDNACIONALIDAD)
      on delete restrict on update restrict;

alter table TABLA_PADRE
   add constraint FK_TABLA_PA_TIENE12_TABLA_GE foreign key (IDGENERO)
      references TABLA_GENERO (IDGENERO)
      on delete restrict on update restrict;

alter table TABLA_PROFESIONAL
   add constraint FK_TABLA_PR_TIENE4_TABLA_GE foreign key (IDGENERO)
      references TABLA_GENERO (IDGENERO)
      on delete restrict on update restrict;

alter table TABLA_PROFESIONAL
   add constraint FK_TABLA_PR_TIENE6_TABLA_NA foreign key (IDNACIONALIDAD)
      references TABLA_NACIONALIDAD (IDNACIONALIDAD)
      on delete restrict on update restrict;

alter table TABLA_PROPUESTA
   add constraint FK_TABLA_PR_TIENE3_TABLA_PR foreign key (IDPROFESIONAL)
      references TABLA_PROFESIONAL (IDPROFESIONAL)
      on delete restrict on update restrict;

alter table TABLA_RENDIMIENTO_NINO
   add constraint FK_TABLA_RE_TIENE1_TABLA_ES foreign key (IDESCALARENDIMIENTO)
      references TABLA_ESCALA_RENDIMIENTO (IDESCALARENDIMIENTO)
      on delete restrict on update restrict;

alter table TABLA_TUTOR
   add constraint FK_TABLA_TU_TIENE5_TABLA_NA foreign key (IDNACIONALIDAD)
      references TABLA_NACIONALIDAD (IDNACIONALIDAD)
      on delete restrict on update restrict;

alter table TABLA_TUTOR
   add constraint FK_TABLA_TU_TIENE8_TABLA_GE foreign key (IDGENERO)
      references TABLA_GENERO (IDGENERO)
      on delete restrict on update restrict;



/*INSERCCION TABLA_GENERO*/
INSERT INTO tabla_genero(idgenero, genero)
VALUES (1, 'Masculino');
INSERT INTO tabla_genero(idgenero, genero)
VALUES (2, 'Femenino');
/*INSERCCION TABLA_NACIONALIDAD  */
INSERT INTO tabla_nacionalidad(idnacionalidad, pais) VALUES (01, 'afgano/a');
INSERT INTO tabla_nacionalidad(idnacionalidad, pais) VALUES (02, 'alemán/a');
INSERT INTO tabla_nacionalidad(idnacionalidad, pais) VALUES (03, 'árabe');
INSERT INTO tabla_nacionalidad(idnacionalidad, pais) VALUES (04, 'argentino/a');
INSERT INTO tabla_nacionalidad(idnacionalidad, pais) VALUES (05, 'australiano/a');
INSERT INTO tabla_nacionalidad(idnacionalidad, pais) VALUES (06, 'belga');
INSERT INTO tabla_nacionalidad(idnacionalidad, pais) VALUES (07, 'boliviano/a');
INSERT INTO tabla_nacionalidad(idnacionalidad, pais) VALUES (08, 'brasileño/a');
INSERT INTO tabla_nacionalidad(idnacionalidad, pais) VALUES (09, 'camboyano/a');
INSERT INTO tabla_nacionalidad(idnacionalidad, pais) VALUES (10, 'canadiense');
INSERT INTO tabla_nacionalidad(idnacionalidad, pais) VALUES (11, 'chileno/a');
INSERT INTO tabla_nacionalidad(idnacionalidad, pais) VALUES (12, 'chino/a');
INSERT INTO tabla_nacionalidad(idnacionalidad, pais) VALUES (13, 'colombiano/a');
INSERT INTO tabla_nacionalidad(idnacionalidad, pais) VALUES (14, 'coreano/a');
INSERT INTO tabla_nacionalidad(idnacionalidad, pais) VALUES (15, 'costarricense');
INSERT INTO tabla_nacionalidad(idnacionalidad, pais) VALUES (16, 'cubano/a');
INSERT INTO tabla_nacionalidad(idnacionalidad, pais) VALUES (17, 'danes/a');
INSERT INTO tabla_nacionalidad(idnacionalidad, pais) VALUES (18, 'ecuatoriano/a');
INSERT INTO tabla_nacionalidad(idnacionalidad, pais) VALUES (19, 'egipcio/a');
INSERT INTO tabla_nacionalidad(idnacionalidad, pais) VALUES (20, 'salvadoreño/a');
INSERT INTO tabla_nacionalidad(idnacionalidad, pais) VALUES (21, 'escocés/a');
INSERT INTO tabla_nacionalidad(idnacionalidad, pais) VALUES (22, 'español/a');
INSERT INTO tabla_nacionalidad(idnacionalidad, pais) VALUES (23, 'estadounidense');
INSERT INTO tabla_nacionalidad(idnacionalidad, pais) VALUES (24, 'estonio/a');
INSERT INTO tabla_nacionalidad(idnacionalidad, pais) VALUES (25, 'etiope');
INSERT INTO tabla_nacionalidad(idnacionalidad, pais) VALUES (26, 'filipino/a');
INSERT INTO tabla_nacionalidad(idnacionalidad, pais) VALUES (27, 'finlandes/a');
INSERT INTO tabla_nacionalidad(idnacionalidad, pais) VALUES (28, 'frances/a');
INSERT INTO tabla_nacionalidad(idnacionalidad, pais) VALUES (29, 'gales/a');
INSERT INTO tabla_nacionalidad(idnacionalidad, pais) VALUES (30, 'griego/a');
INSERT INTO tabla_nacionalidad(idnacionalidad, pais) VALUES (31, 'guatemalteco/a');
INSERT INTO tabla_nacionalidad(idnacionalidad, pais) VALUES (32, 'haitiano/a');
/*INSERCCION TABLA_ESCALA_RENDIMIENTO */
INSERT INTO tabla_escala_rendimiento( idescalarendimiento, escalarendimiento) 
VALUES (1, 'Regular');
INSERT INTO tabla_escala_rendimiento(idescalarendimiento, escalarendimiento)
VALUES (2, 'Bueno');
INSERT INTO tabla_escala_rendimiento(idescalarendimiento, escalarendimiento)
VALUES (3, 'Excelente');
INSERT INTO tabla_programa(idprograma, nombreprograma)
VALUES (1, 'Desarrollo Intelectual');
INSERT INTO tabla_programa(idprograma, nombreprograma)
VALUES (2, 'Desarrollo Emocional');
INSERT INTO tabla_programa(idprograma, nombreprograma)
VALUES (3, 'Desarrollo Motriz');
/*INSERCCION TABLA_PADRE  */
INSERT INTO tabla_padre(idpadre, idnacionalidad, idgenero, c_i_padre, nombrepadre, apellidopadre, direccionpadre, telefonopadre)
VALUES (1, 18, 1, '1324352435', 'roberto jose', 'perez arteaga', 'calle 12', '0978675643');
INSERT INTO tabla_padre(idpadre, idnacionalidad, idgenero, c_i_padre, nombrepadre, apellidopadre, direccionpadre, telefonopadre)
VALUES (2, 18, 2, '1245767548', 'ana maria', 'lopez carrillo', 'calle 43',  '0984635689');
INSERT INTO tabla_padre(idpadre, idnacionalidad, idgenero, c_i_padre, nombrepadre, apellidopadre, direccionpadre, telefonopadre)
VALUES (3, 13, 2, '1123345567', 'tatiana lucia', 'zambrano julianes', 'calle 1', '0986573643');
INSERT INTO tabla_padre(idpadre, idnacionalidad, idgenero, c_i_padre, nombrepadre, apellidopadre, direccionpadre, telefonopadre)
VALUES (4, 32, 1, '1878769976', 'camilo andres', 'valverde delgado', 'calle 38', '098675241');
INSERT INTO tabla_padre(idpadre, idnacionalidad, idgenero, c_i_padre, nombrepadre, apellidopadre, direccionpadre, telefonopadre)
VALUES (5, 18, 1, '1865665679', 'ivan julian', 'mendoza robinson', 'calle 27', '097673655');
/*INSERCCION TABLA_TUTOR */
INSERT INTO tabla_tutor(idtutor, idnacionalidad, idgenero, c_i_tutor, nombretutor, apellidotutor, direcciontutor, telefonotutor, parentescotutor, motivotutela)
VALUES (1, 18, 1, '6789765438', 'manuel sebastian', 'baptist caceres', 'calle h67', '0857870568', 'tio', 'muerte padres');
/*INSERCCION TABLA_NINO*/
INSERT INTO tabla_nino(idnino, idnacionalidad, idgenero, idtutor, idpadre, c_i_nino, nombrenino, apellidonino, fechanacimientonino, edadnino)
VALUES (1, 18, 1, null, 1, '1312141534', 'mario alexander', 'perez macias', '27-06-2017', 4);
INSERT INTO tabla_nino(idnino, idnacionalidad, idgenero, idtutor, idpadre, c_i_nino, nombrenino, apellidonino, fechanacimientonino, edadnino)
VALUES (2, 18, 2, null , 2,'1234657658', 'ana martina', 'lopez quijije', '02-05-2017', 4);
INSERT INTO tabla_nino(idnino, idnacionalidad, idgenero, idtutor, idpadre, c_i_nino, nombrenino, apellidonino, fechanacimientonino, edadnino)
VALUES (3, 13, 1, null, 3, '1243456576', 'luis andres', 'zambrano calle', '14-4-2017', 4);
INSERT INTO tabla_nino(idnino, idnacionalidad, idgenero, idtutor, idpadre, c_i_nino, nombrenino, apellidonino, fechanacimientonino, edadnino)
VALUES (4, 19, 2, null , 4, '8987654554', 'jorge marcos ', 'valverde vitores', '9-08-2017', 4);
INSERT INTO tabla_nino(idnino, idnacionalidad, idgenero, idtutor, idpadre, c_i_nino, nombrenino, apellidonino, fechanacimientonino, edadnino)
VALUES (5, 18, 1, null, 5, '2464677689', 'daniel victor', 'mendoza ramonez', '5-03-2017', 4);
INSERT INTO tabla_nino(idnino, idnacionalidad, idgenero, idtutor, idpadre, c_i_nino, nombrenino, apellidonino, fechanacimientonino, edadnino)
VALUES (6, 18, 1, 1, null, '2246467768', 'erick randall', 'baptist charless', '5-03-2017', 4);
/*INSERCCION TABLA_PROFESIONAL */
INSERT INTO tabla_profesional(idprofesional, idnacionalidad, idgenero, c_i_profesional, nombreprofesional, apellidoprofesional, direccionprofesional, telefonoprofesional, numerocertificadoprofesional)
VALUES (1, 30, 2, '1815967068', 'alexandra soraya', 'valenzuela villaverde', 'calle 78', '0822922629', 196546575);
INSERT INTO tabla_profesional(idprofesional, idnacionalidad, idgenero, c_i_profesional, nombreprofesional, apellidoprofesional, direccionprofesional, telefonoprofesional, numerocertificadoprofesional)
VALUES (2, 23, 2, '1006605843', 'vanesa belen', 'bertrán maestre', 'calle 53', '0889498545', 234423026);
INSERT INTO tabla_profesional(idprofesional, idnacionalidad, idgenero, c_i_profesional, nombreprofesional, apellidoprofesional, direccionprofesional, telefonoprofesional, numerocertificadoprofesional)
VALUES (3, 16, 2, '1690894615', 'tatiana lucia', 'zambrano julianes', 'calle 81', '0825520354', 721494152);
INSERT INTO tabla_profesional(idprofesional, idnacionalidad, idgenero, c_i_profesional, nombreprofesional, apellidoprofesional, direccionprofesional, telefonoprofesional, numerocertificadoprofesional)
VALUES (4, 18, 1, '1782641935', 'camilo andres', 'valverde delgado', 'calle 98', '0958050380', 79925619);
INSERT INTO tabla_profesional(idprofesional, idnacionalidad, idgenero, c_i_profesional, nombreprofesional, apellidoprofesional, direccionprofesional, telefonoprofesional, numerocertificadoprofesional)
VALUES (5, 18, 1, '1366695096', 'ivan julian', 'mendoza robinson', 'calle 77', '0957162650', 981746660);
/*INSERCCION TABLA_PROPUESTA */
INSERT INTO tabla_propuesta(	idpropuesta, idprograma, idprofesional, detallepropuesta, 	materialesausarprograma, mesesduracionprograma)
VALUES (1, 1, 1, 'Crear una serie de actividades para mejorar las capacidades intelectuales', 'hojas, cuadernos, carpetas, lapices de colores, crayones, pinturas, legos, rompecabezas', 6);
INSERT INTO tabla_propuesta( idpropuesta, idprograma, idprofesional, detallepropuesta,  materialesausarprograma, mesesduracionprograma)
VALUES (2, 2, 3, 'Crear actividades recreativas que ayuden a mejorar las emociones del niño', 'lapices colores, hojas, juguetes', 5);
INSERT INTO tabla_propuesta( idpropuesta, idprograma, idprofesional, detallepropuesta,  materialesausarprograma, mesesduracionprograma)
VALUES (3, 3, 5, 'Implementar el uso de animales de ayuda como caballos, perros, ademas de actividades en la piscina', 'piscina, parque, animales, patio', 7);
INSERT INTO tabla_propuesta( idpropuesta, idprograma, idprofesional, detallepropuesta, materialesausarprograma, mesesduracionprograma)
VALUES (4, 1, 2, 'ir a la biblioteca', 'hojas, cuadernos, carpetas, lapices de colores, crayones, pinturas, legos, rompecabezas', 6);
INSERT INTO tabla_propuesta( idpropuesta, idprograma, idprofesional, detallepropuesta, materialesausarprograma, mesesduracionprograma)
VALUES (5, 3, 4, 'Salir de paseo', 'lapices colores, hojas, juguetes', 5);
/*INSERCCION TABLA_INSCRIPCION  */
INSERT INTO tabla_inscripcion(idinscripcion, idpropuesta, anolectivoinscripcion, fechainscripcion)
VALUES (1,  1, 2021, '4-2-2021');
INSERT INTO tabla_inscripcion(idinscripcion, idpropuesta, anolectivoinscripcion, fechainscripcion)
VALUES (2,  2, 2021, '5-2-2021');
INSERT INTO tabla_inscripcion(idinscripcion, idpropuesta, anolectivoinscripcion, fechainscripcion)
VALUES (3,  1, 2021, '4-2-2021');
INSERT INTO tabla_inscripcion(idinscripcion, idpropuesta, anolectivoinscripcion, fechainscripcion)
VALUES (4,  3, 2021, '5-2-2021');
INSERT INTO tabla_inscripcion(idinscripcion, idpropuesta, anolectivoinscripcion, fechainscripcion)
VALUES (5,  2, 2021, '5-2-2021');
INSERT INTO tabla_inscripcion(idinscripcion, idpropuesta, anolectivoinscripcion, fechainscripcion)
VALUES (6,  3, 2021, '6-2-2021');
/*INSERCCION TABLA_ESTADOSOCIAL */
INSERT INTO tabla_estadosocial_salud(idestadosocialsalud, tallavestimentanino, talla_zapatosnino, alergiasnino, medicamentostomaregularnino, ultimafechaenfermedadnino, diagnosticonino, doctortratante, idnino)
VALUES (1, 24, 21, 'perros', 'alergisist', '2-3-2021', 'alergia aguda mantener alejado de perros', 'dr. jose', 1);
INSERT INTO tabla_estadosocial_salud(idestadosocialsalud, tallavestimentanino, talla_zapatosnino, alergiasnino, medicamentostomaregularnino, ultimafechaenfermedadnino, diagnosticonino, doctortratante, idnino)
VALUES (2, 23, 22, 'nueces', 'antialergia', '6-6-2021', 'no comer nueces y tomar medicamento en caso de ser necesario', 'dr. ruben', 2);
INSERT INTO tabla_estadosocial_salud(idestadosocialsalud, tallavestimentanino, talla_zapatosnino, alergiasnino, medicamentostomaregularnino, ultimafechaenfermedadnino, diagnosticonino, doctortratante, idnino)
VALUES (3, 24, 23, 'ninguna', 'ninguna', '8-9-2020', 'ninguno', 'ninguno', 3);
INSERT INTO tabla_estadosocial_salud(idestadosocialsalud, tallavestimentanino, talla_zapatosnino, alergiasnino, medicamentostomaregularnino, ultimafechaenfermedadnino, diagnosticonino, doctortratante, idnino)
VALUES (4, 21, 23, 'ninguna', 'ninguna', '6-3-2020', 'ninguno', 'ninguno', 4);
INSERT INTO tabla_estadosocial_salud(idestadosocialsalud, tallavestimentanino, talla_zapatosnino, alergiasnino, medicamentostomaregularnino, ultimafechaenfermedadnino, diagnosticonino, doctortratante, idnino)
VALUES (5, 22, 20, 'ninguna', 'ninguna', '16-5-2021', 'ninguno', 'ninguno', 5);
INSERT INTO tabla_estadosocial_salud(idestadosocialsalud, tallavestimentanino, talla_zapatosnino, alergiasnino, medicamentostomaregularnino, ultimafechaenfermedadnino, diagnosticonino, doctortratante, idnino)
VALUES (6, 22, 20, 'ninguna', 'ninguna', '12-4-2020', 'ninguno', 'ninguno', 6);
/*INSERCCION TABLA_RENDIMIENTO*/
INSERT INTO tabla_rendimiento_nino(idrendimientonino,  idprograma, idescalarendimiento)
VALUES (1,   1, 2);
INSERT INTO tabla_rendimiento_nino(idrendimientonino,  idprograma, idescalarendimiento)
VALUES (2,   2, 3);
INSERT INTO tabla_rendimiento_nino(idrendimientonino,  idprograma, idescalarendimiento)
VALUES (3,   3, 2);
INSERT INTO tabla_rendimiento_nino(idrendimientonino,  idprograma, idescalarendimiento)
VALUES (4,  1, 3);
INSERT INTO tabla_rendimiento_nino(idrendimientonino,  idprograma, idescalarendimiento)
VALUES (5,  2, 3);
INSERT INTO tabla_rendimiento_nino(idrendimientonino,  idprograma, idescalarendimiento)
VALUES (6,  3, 2);
INSERT INTO tabla_rendimiento_nino(idrendimientonino,  idprograma, idescalarendimiento)
VALUES (7,  1, 2);
INSERT INTO tabla_rendimiento_nino(idrendimientonino,  idprograma, idescalarendimiento)
VALUES (8,  2, 1);
INSERT INTO tabla_rendimiento_nino(idrendimientonino,  idprograma, idescalarendimiento)
VALUES (9,  3, 3);
INSERT INTO tabla_rendimiento_nino(idrendimientonino,  idprograma, idescalarendimiento)
VALUES (10,  1, 1);
INSERT INTO tabla_rendimiento_nino(idrendimientonino,  idprograma, idescalarendimiento)
VALUES (11,  2, 2);
INSERT INTO tabla_rendimiento_nino(idrendimientonino,  idprograma, idescalarendimiento)
VALUES (12,  3, 2);
INSERT INTO tabla_rendimiento_nino(idrendimientonino,  idprograma, idescalarendimiento)
VALUES (13,  1, 3);
INSERT INTO tabla_rendimiento_nino(idrendimientonino,  idprograma, idescalarendimiento)
VALUES (14,  2, 3);
INSERT INTO tabla_rendimiento_nino(idrendimientonino,  idprograma, idescalarendimiento)
VALUES (15,  3, 1);
INSERT INTO tabla_rendimiento_nino(idrendimientonino,  idprograma, idescalarendimiento)
VALUES (16,  1, 3);
INSERT INTO tabla_rendimiento_nino(idrendimientonino,  idprograma, idescalarendimiento)
VALUES (17,  2, 2);
INSERT INTO tabla_rendimiento_nino(idrendimientonino,  idprograma, idescalarendimiento)
VALUES (18,  3, 2);
/*INSERCCION TABLA RENDIMIENTO del NINO*/
INSERT INTO rendimiento_nino(
idrendimientonino, idnino)
VALUES (1, 1);
INSERT INTO rendimiento_nino(
idrendimientonino, idnino)
VALUES (2, 1);
INSERT INTO rendimiento_nino(
idrendimientonino, idnino)
VALUES (3, 1);
INSERT INTO rendimiento_nino(
idrendimientonino, idnino)
VALUES (4, 2);
INSERT INTO rendimiento_nino(
idrendimientonino, idnino)
VALUES (5, 2);
INSERT INTO rendimiento_nino(
idrendimientonino, idnino)
VALUES (6, 2);
INSERT INTO rendimiento_nino(
idrendimientonino, idnino)
VALUES (7, 3);
INSERT INTO rendimiento_nino(
idrendimientonino, idnino)
VALUES (8, 3);
INSERT INTO rendimiento_nino(
idrendimientonino, idnino)
VALUES (9, 3);
INSERT INTO rendimiento_nino(
idrendimientonino, idnino)
VALUES (10, 4);
INSERT INTO rendimiento_nino(
idrendimientonino, idnino)
VALUES (11, 4);
INSERT INTO rendimiento_nino(
idrendimientonino, idnino)
VALUES (12, 4);
INSERT INTO rendimiento_nino(
idrendimientonino, idnino)
VALUES (13, 5);
INSERT INTO rendimiento_nino(
idrendimientonino, idnino)
VALUES (14, 5);
INSERT INTO rendimiento_nino(
idrendimientonino, idnino)
VALUES (15, 5);
INSERT INTO rendimiento_nino(
idrendimientonino, idnino)
VALUES (16, 6);
INSERT INTO rendimiento_nino(
idrendimientonino, idnino)
VALUES (17, 6);
INSERT INTO rendimiento_nino(
idrendimientonino, idnino)
VALUES (18, 6);

/*INSERCCION TABLA INSCRIPCION del NINO*/
INSERT INTO inscripcion_nino(
idnino, idinscripcion)
VALUES (1, 1);
INSERT INTO inscripcion_nino(
idnino, idinscripcion)
VALUES (2, 2);
INSERT INTO inscripcion_nino(
idnino, idinscripcion)
VALUES (3, 3);
INSERT INTO inscripcion_nino(
idnino, idinscripcion)
VALUES (4, 4);
INSERT INTO inscripcion_nino(
idnino, idinscripcion)
VALUES (5, 5);
INSERT INTO inscripcion_nino(
idnino, idinscripcion)
VALUES (6, 6);

/*CONSULTA 1*/
select tabla_nino.nombrenino, tabla_nino.apellidonino,
case
  when tabla_nino.idtutor is not null then 'no tiene de forma activa a sus padres' 
  when tabla_nino.idpadre  is not null and tabla_padre.idgenero=1  then 'no tiene de forma activa a su madre' 
  when tabla_nino.idpadre  is not null and tabla_padre.idgenero=2  then 'no tiene de forma activa a su padre' end 
as Situación, 
case
  when tabla_nino.idtutor is not null then 'tutor' 
  when tabla_nino.idpadre  is not null and tabla_padre.idgenero=1  then 'padre' 
  when tabla_nino.idpadre  is not null and tabla_padre.idgenero=2  then 'madre' end 
 as Representante 
from tabla_nino 
left join tabla_padre on tabla_nino.idpadre=tabla_padre.idpadre 
left join tabla_genero on tabla_padre.idgenero=tabla_genero.idgenero;


/*CONSULTA 2*/
select  tabla_programa.nombreprograma, count(*) as total, tabla_escala_rendimiento.escalarendimiento

 from  tabla_rendimiento_nino
inner join tabla_escala_rendimiento
on tabla_escala_rendimiento.idescalarendimiento = tabla_rendimiento_nino.idescalarendimiento
inner join tabla_programa
on tabla_programa.idprograma = tabla_rendimiento_nino.idprograma

group by tabla_programa.nombreprograma,  tabla_escala_rendimiento.idescalarendimiento
order by tabla_programa.nombreprograma;

/*CONSULTA 3*/
select tabla_programa.nombreprograma, 
count(*) as Total,
CASE
	WHEN tabla_genero.idgenero = 1 THEN 'Hombre'
WHEN tabla_genero.idgenero = 2 THEN 'Mujer'
END AS Tipo
from tabla_propuesta
inner join tabla_profesional
on tabla_propuesta.idprofesional = tabla_profesional.idprofesional
inner join tabla_genero
on tabla_profesional.idgenero = tabla_genero.idgenero
inner join tabla_programa
on tabla_programa.idprograma = tabla_propuesta.idprograma

group by tabla_genero.genero,
tabla_programa.nombreprograma,
tabla_profesional.idgenero,tabla_genero.idgenero
order by tabla_genero.genero ;
/*CONSULTA 4*/
select tabla_nino.nombrenino, tabla_nacionalidad.pais,tabla_nino.edadnino,
case
  when tabla_nino.idtutor is not null then tabla_tutor.nombretutor
  when tabla_nino.idpadre  is not null then tabla_padre.nombrepadre end 
as Nombre_Representante,
case
  when tabla_nino.idtutor is not null then tabla_tutor.parentescotutor
  when tabla_nino.idpadre  is not null and tabla_padre.idgenero=1  then 'padre' 
  when tabla_nino.idpadre  is not null and tabla_padre.idgenero=2  then 'madre' end 
 as parentesco 
from tabla_nino
left join tabla_nacionalidad
on tabla_nino.idnacionalidad = tabla_nacionalidad.idnacionalidad
left join tabla_padre
on tabla_padre.idpadre = tabla_nino.idpadre
left join tabla_tutor
on tabla_tutor.idtutor = tabla_nino.idtutor


/*CONSULTA 5*/
select tabla_profesional.nombreprofesional, tabla_nacionalidad.pais, tabla_propuesta.detallepropuesta
,tabla_programa.nombreprograma, count(*) as total_alumnos
from tabla_profesional
inner join tabla_nacionalidad
on tabla_profesional.idnacionalidad = tabla_nacionalidad.idnacionalidad
left join tabla_propuesta
on tabla_propuesta.idprofesional = tabla_profesional.idprofesional
left join tabla_inscripcion
on tabla_propuesta.idpropuesta = tabla_inscripcion.idpropuesta
left join tabla_programa
on tabla_propuesta.idprograma = tabla_programa.idprograma
group by tabla_profesional.nombreprofesional, tabla_nacionalidad.pais, tabla_propuesta.detallepropuesta
,tabla_programa.nombreprograma
order by tabla_programa.nombreprograma;
/*para comprobacion de que es valido el Script de consulta cambiamos de genero a uno de los profesionales para 
que se refleje que si hace la debida consulta detallando cuantos profesionales son hombres y mujeres en cada 
programa
update public.tabla_profesional
	set  idgenero=2
	where tabla_profesional.idprofesional=5;
		select * from tabla_profesional;
		
		*/
