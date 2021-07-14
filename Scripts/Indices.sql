
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
