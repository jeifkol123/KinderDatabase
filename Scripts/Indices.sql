/*INDICES EN POSTGRESQL*/
/* Index: TABLA_ESCALA_RENDIMIENTO_PK                           */
create unique index TABLA_ESCALA_RENDIMIENTO_PK on TABLA_ESCALA_RENDIMIENTO (
IDESCALARENDIMIENTO
);
/* Index: TABLA_ESTADOSOCIAL_SALUD_PK                           */

create unique index TABLA_ESTADOSOCIAL_SALUD_PK on TABLA_ESTADOSOCIAL_SALUD (
IDESTADOSOCIALSALUD
);
/* Index: NIN_ESTSOC_FK                                         */
create  index NIN_ESTSOC_FK on TABLA_ESTADOSOCIAL_SALUD (
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
/* Index: NIN_INSCRIP_FK                                        */
create  index NIN_INSCRIP_FK on TABLA_INSCRIPCION (
IDNINO
);
/* Index: PROP_INSCRIP_FK                                       */
create  index PROP_INSCRIP_FK on TABLA_INSCRIPCION (
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
/* Index: GEN_NIN_FK                                            */
create  index GEN_NIN_FK on TABLA_NINO (
IDGENERO
);
/* Index: NAC_NIN_FK                                            */
create  index NAC_NIN_FK on TABLA_NINO (
IDNACIONALIDAD
);
/* Index: TUT_NIN_FK                                            */

create  index TUT_NIN_FK on TABLA_NINO (
IDTUTOR
);
/* Index: PAD_NIN_FK                                            */
create  index PAD_NIN_FK on TABLA_NINO (
IDPADRE
);
/* Index: TABLA_PADRE_PK                                        */
create unique index TABLA_PADRE_PK on TABLA_PADRE (
IDPADRE
);
/* Index: GEN_PAD_FK                                            */
create  index GEN_PAD_FK on TABLA_PADRE (
IDGENERO
);
/* Index: NAC_PAD_FK                                            */
create  index NAC_PAD_FK on TABLA_PADRE (
IDNACIONALIDAD
);
/* Index: TABLA_PROFESIONAL_PK                                  */
create unique index TABLA_PROFESIONAL_PK on TABLA_PROFESIONAL (
IDPROFESIONAL
);
/* Index: GEN_PROF_FK                                           */
create  index GEN_PROF_FK on TABLA_PROFESIONAL (
IDGENERO
);
/* Index: NAC_PROF_FK                                           */
create  index NAC_PROF_FK on TABLA_PROFESIONAL (
IDNACIONALIDAD
);
/* Index: TABLA_PROPUESTA_PK                                    */
create unique index TABLA_PROPUESTA_PK on TABLA_PROPUESTA (
IDPROPUESTA
);
/* Index: PROF_PROP_FK                                          */
create  index PROF_PROP_FK on TABLA_PROPUESTA (
IDPROFESIONAL
);
/* Index: TABLA_RENDIMIENTO_NINO_PK                             */
create unique index TABLA_RENDIMIENTO_NINO_PK on TABLA_RENDIMIENTO_NINO (
IDRENDIMIENTONINO
);
/* Index: NIN_RENDIM_FK                                         */
create  index NIN_RENDIM_FK on TABLA_RENDIMIENTO_NINO (
IDNINO
);
/* Index: ESCAL_RENDIM_FK                                       */
create  index ESCAL_RENDIM_FK on TABLA_RENDIMIENTO_NINO (
IDESCALARENDIMIENTO
);
/* Index: TABLA_TUTOR_PK                                        */
create unique index TABLA_TUTOR_PK on TABLA_TUTOR (
IDTUTOR
);
/* Index: GEN_TUT_FK                                            */
create  index GEN_TUT_FK on TABLA_TUTOR (
IDGENERO
);
/* Index: NAC_TUT_FK                                            */
create  index NAC_TUT_FK on TABLA_TUTOR (
IDNACIONALIDAD
);
