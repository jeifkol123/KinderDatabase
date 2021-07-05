alter table TABLA_ESTADOSOCIAL_SALUD
   add constraint FK_TABLA_ES_NIN_ESTSO_TABLA_NI foreign key (IDNINO)
      references TABLA_NINO (IDNINO)
      on delete restrict on update restrict;

alter table TABLA_INSCRIPCION
   add constraint FK_TABLA_IN_NIN_INSCR_TABLA_NI foreign key (IDNINO)
      references TABLA_NINO (IDNINO)
      on delete restrict on update restrict;

alter table TABLA_INSCRIPCION
   add constraint FK_TABLA_IN_PROP_INSC_TABLA_PR foreign key (IDPROPUESTA)
      references TABLA_PROPUESTA (IDPROPUESTA)
      on delete restrict on update restrict;

alter table TABLA_NINO
   add constraint FK_TABLA_NI_GEN_NIN_TABLA_GE foreign key (IDGENERO)
      references TABLA_GENERO (IDGENERO)
      on delete restrict on update restrict;

alter table TABLA_NINO
   add constraint FK_TABLA_NI_NAC_NIN_TABLA_NA foreign key (IDNACIONALIDAD)
      references TABLA_NACIONALIDAD (IDNACIONALIDAD)
      on delete restrict on update restrict;

alter table TABLA_NINO
   add constraint FK_TABLA_NI_PAD_NIN_TABLA_PA foreign key (IDPADRE)
      references TABLA_PADRE (IDPADRE)
      on delete restrict on update restrict;

alter table TABLA_NINO
   add constraint FK_TABLA_NI_TUT_NIN_TABLA_TU foreign key (IDTUTOR)
      references TABLA_TUTOR (IDTUTOR)
      on delete restrict on update restrict;

alter table TABLA_PADRE
   add constraint FK_TABLA_PA_GEN_PAD_TABLA_GE foreign key (IDGENERO)
      references TABLA_GENERO (IDGENERO)
      on delete restrict on update restrict;

alter table TABLA_PADRE
   add constraint FK_TABLA_PA_NAC_PAD_TABLA_NA foreign key (IDNACIONALIDAD)
      references TABLA_NACIONALIDAD (IDNACIONALIDAD)
      on delete restrict on update restrict;

alter table TABLA_PROFESIONAL
   add constraint FK_TABLA_PR_GEN_PROF_TABLA_GE foreign key (IDGENERO)
      references TABLA_GENERO (IDGENERO)
      on delete restrict on update restrict;

alter table TABLA_PROFESIONAL
   add constraint FK_TABLA_PR_NAC_PROF_TABLA_NA foreign key (IDNACIONALIDAD)
      references TABLA_NACIONALIDAD (IDNACIONALIDAD)
      on delete restrict on update restrict;

alter table TABLA_PROPUESTA
   add constraint FK_TABLA_PR_PROF_PROP_TABLA_PR foreign key (IDPROFESIONAL)
      references TABLA_PROFESIONAL (IDPROFESIONAL)
      on delete restrict on update restrict;

alter table TABLA_PROPUESTA
   add constraint FK_TABLA_PR_PROP_INSC_TABLA_PR foreign key (IDPROGRAMA)
      references TABLA_PROGRAMA (IDPROGRAMA)
      on delete restrict on update restrict;

alter table TABLA_RENDIMIENTO_NINO
   add constraint FK_TABLA_RE_ESCAL_REN_TABLA_ES foreign key (IDESCALARENDIMIENTO)
      references TABLA_ESCALA_RENDIMIENTO (IDESCALARENDIMIENTO)
      on delete restrict on update restrict;

alter table TABLA_RENDIMIENTO_NINO
   add constraint FK_TABLA_RE_NIN_RENDI_TABLA_NI foreign key (IDNINO)
      references TABLA_NINO (IDNINO)
      on delete restrict on update restrict;

alter table TABLA_RENDIMIENTO_NINO
   add constraint FK_TABLA_RE_PROP_INSC_TABLA_PR foreign key (IDPROGRAMA)
      references TABLA_PROGRAMA (IDPROGRAMA)
      on delete restrict on update restrict;

alter table TABLA_TUTOR
   add constraint FK_TABLA_TU_GEN_TUT_TABLA_GE foreign key (IDGENERO)
      references TABLA_GENERO (IDGENERO)
      on delete restrict on update restrict;

alter table TABLA_TUTOR
   add constraint FK_TABLA_TU_NAC_TUT_TABLA_NA foreign key (IDNACIONALIDAD)
      references TABLA_NACIONALIDAD (IDNACIONALIDAD)
      on delete restrict on update restrict;
