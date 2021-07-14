
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
