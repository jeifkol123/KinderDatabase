
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

