
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
VALUES (1, 18, 1, 1324352435, 'roberto jose', 'perez arteaga', 'calle 12', 0978675643);
INSERT INTO tabla_padre(idpadre, idnacionalidad, idgenero, c_i_padre, nombrepadre, apellidopadre, direccionpadre, telefonopadre)
VALUES (2, 18, 2, 1245767548, 'ana maria', 'lopez carrillo', 'calle 43', 09846356789);
INSERT INTO tabla_padre(idpadre, idnacionalidad, idgenero, c_i_padre, nombrepadre, apellidopadre, direccionpadre, telefonopadre)
VALUES (3, 13, 2, 1123345567, 'tatiana lucia', 'zambrano julianes', 'calle 1', 0978675643);
INSERT INTO tabla_padre(idpadre, idnacionalidad, idgenero, c_i_padre, nombrepadre, apellidopadre, direccionpadre, telefonopadre)
VALUES (4, 32, 1, 1878769976, 'camilo andres', 'valverde delgado', 'calle 38', 0978675643);
INSERT INTO tabla_padre(idpadre, idnacionalidad, idgenero, c_i_padre, nombrepadre, apellidopadre, direccionpadre, telefonopadre)
VALUES (5, 18, 1, 1865665679, 'ivan julian', 'mendoza robinson', 'calle 27', 0978675643);
/*INSERCCION TABLA_TUTOR */
INSERT INTO tabla_tutor(idtutor, idnacionalidad, idgenero, c_i_tutor, nombretutor, apellidotutor, direcciontutor, telefonotutor, parentescotutor, motivotutela)
VALUES (1, 18, 1, 678976543, 'manuel sebastian', 'baptist caceres', 'calle h67', 085787056, 'tio', 'muerte padres');
/*INSERCCION TABLA_NINO*/
INSERT INTO tabla_nino(idnino, idnacionalidad, idgenero, idtutor, idpadre, c_i_nino, nombrenino, apellidonino, fechanacimientonino, edadnino)
VALUES (1, 18, 1, null, 1, 1312141534, 'mario alexander', 'perez macias', '27-06-2017', 4);
INSERT INTO tabla_nino(idnino, idnacionalidad, idgenero, idtutor, idpadre, c_i_nino, nombrenino, apellidonino, fechanacimientonino, edadnino)
VALUES (2, 18, 2, null , 2, 123465765, 'ana martina', 'lopez quijije', '02-05-2017', 4);
INSERT INTO tabla_nino(idnino, idnacionalidad, idgenero, idtutor, idpadre, c_i_nino, nombrenino, apellidonino, fechanacimientonino, edadnino)
VALUES (3, 13, 1, null, 3, 124345657, 'luis andres', 'zambrano calle', '14-4-2017', 4);
INSERT INTO tabla_nino(idnino, idnacionalidad, idgenero, idtutor, idpadre, c_i_nino, nombrenino, apellidonino, fechanacimientonino, edadnino)
VALUES (4, 19, 2, null , 4, 987654554, 'jorge marcos ', 'valverde vitores', '9-08-2017', 4);
INSERT INTO tabla_nino(idnino, idnacionalidad, idgenero, idtutor, idpadre, c_i_nino, nombrenino, apellidonino, fechanacimientonino, edadnino)
VALUES (5, 18, 1, null, 5, 246467768, 'daniel victor', 'mendoza ramonez', '5-03-2017', 4);
INSERT INTO tabla_nino(idnino, idnacionalidad, idgenero, idtutor, idpadre, c_i_nino, nombrenino, apellidonino, fechanacimientonino, edadnino)
VALUES (6, 18, 1, 1, null, 246467768, 'erick randall', 'baptist charless', '5-03-2017', 4);
/*INSERCCION TABLA_PROFESIONAL */
INSERT INTO tabla_profesional(idprofesional, idnacionalidad, idgenero, c_i_profesional, nombreprofesional, apellidoprofesional, direccionprofesional, telefonoprofesional, numerocertificadoprofesional)
VALUES (1, 30, 2, 1815967068, 'alexandra soraya', 'valenzuela villaverde', 'calle 78', 0822922629, 196546575);
INSERT INTO tabla_profesional(idprofesional, idnacionalidad, idgenero, c_i_profesional, nombreprofesional, apellidoprofesional, direccionprofesional, telefonoprofesional, numerocertificadoprofesional)
VALUES (2, 23, 2, 1006605843, 'vanesa belen', 'bertrán maestre', 'calle 53', 0889498545, 234423026);
INSERT INTO tabla_profesional(idprofesional, idnacionalidad, idgenero, c_i_profesional, nombreprofesional, apellidoprofesional, direccionprofesional, telefonoprofesional, numerocertificadoprofesional)
VALUES (3, 16, 2, 1690894615, 'tatiana lucia', 'zambrano julianes', 'calle 81', 0825520354, 721494152);
INSERT INTO tabla_profesional(idprofesional, idnacionalidad, idgenero, c_i_profesional, nombreprofesional, apellidoprofesional, direccionprofesional, telefonoprofesional, numerocertificadoprofesional)
VALUES (4, 18, 1, 1782641935, 'camilo andres', 'valverde delgado', 'calle 98', 0958050380, 79925619);
INSERT INTO tabla_profesional(idprofesional, idnacionalidad, idgenero, c_i_profesional, nombreprofesional, apellidoprofesional, direccionprofesional, telefonoprofesional, numerocertificadoprofesional)
VALUES (5, 18, 1, 1366695096, 'ivan julian', 'mendoza robinson', 'calle 77', 0957162650, 981746660);
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
INSERT INTO tabla_inscripcion(idinscripcion, idnino, idpropuesta, anolectivoinscripcion, fechainscripcion)
VALUES (1, 1, 1, 2021, '4-2-2021');
INSERT INTO tabla_inscripcion(idinscripcion, idnino, idpropuesta, anolectivoinscripcion, fechainscripcion)
VALUES (2, 2, 2, 2021, '5-2-2021');
INSERT INTO tabla_inscripcion(idinscripcion, idnino, idpropuesta, anolectivoinscripcion, fechainscripcion)
VALUES (3, 3, 1, 2021, '4-2-2021');
INSERT INTO tabla_inscripcion(idinscripcion, idnino, idpropuesta, anolectivoinscripcion, fechainscripcion)
VALUES (4, 4, 3, 2021, '5-2-2021');
INSERT INTO tabla_inscripcion(idinscripcion, idnino, idpropuesta, anolectivoinscripcion, fechainscripcion)
VALUES (5, 5, 2, 2021, '5-2-2021');
INSERT INTO tabla_inscripcion(idinscripcion, idnino, idpropuesta, anolectivoinscripcion, fechainscripcion)
VALUES (6, 6, 3, 2021, '6-2-2021');
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
INSERT INTO tabla_rendimiento_nino(idrendimientonino, idnino, idprograma, idescalarendimiento)
VALUES (1, 1,  1, 2);
INSERT INTO tabla_rendimiento_nino(idrendimientonino, idnino, idprograma, idescalarendimiento)
VALUES (2, 1,  2, 3);
INSERT INTO tabla_rendimiento_nino(idrendimientonino, idnino, idprograma, idescalarendimiento)
VALUES (3, 1,  3, 2);
INSERT INTO tabla_rendimiento_nino(idrendimientonino, idnino, idprograma, idescalarendimiento)
VALUES (4, 2, 1, 3);
INSERT INTO tabla_rendimiento_nino(idrendimientonino, idnino, idprograma, idescalarendimiento)
VALUES (5, 2, 2, 3);
INSERT INTO tabla_rendimiento_nino(idrendimientonino, idnino, idprograma, idescalarendimiento)
VALUES (6, 2, 3, 2);
INSERT INTO tabla_rendimiento_nino(idrendimientonino, idnino, idprograma, idescalarendimiento)
VALUES (7, 3, 1, 2);
INSERT INTO tabla_rendimiento_nino(idrendimientonino, idnino, idprograma, idescalarendimiento)
VALUES (8, 3, 2, 1);
INSERT INTO tabla_rendimiento_nino(idrendimientonino, idnino, idprograma, idescalarendimiento)
VALUES (9, 3, 3, 3);
INSERT INTO tabla_rendimiento_nino(idrendimientonino, idnino, idprograma, idescalarendimiento)
VALUES (10, 4, 1, 1);
INSERT INTO tabla_rendimiento_nino(idrendimientonino, idnino, idprograma, idescalarendimiento)
VALUES (11, 4, 2, 2);
INSERT INTO tabla_rendimiento_nino(idrendimientonino, idnino, idprograma, idescalarendimiento)
VALUES (12, 4, 3, 2);
INSERT INTO tabla_rendimiento_nino(idrendimientonino, idnino, idprograma, idescalarendimiento)
VALUES (13, 5, 1, 3);
INSERT INTO tabla_rendimiento_nino(idrendimientonino, idnino, idprograma, idescalarendimiento)
VALUES (14, 5, 2, 3);
INSERT INTO tabla_rendimiento_nino(idrendimientonino, idnino, idprograma, idescalarendimiento)
VALUES (15, 5, 3, 1);
INSERT INTO tabla_rendimiento_nino(idrendimientonino, idnino, idprograma, idescalarendimiento)
VALUES (16, 6, 1, 3);
INSERT INTO tabla_rendimiento_nino(idrendimientonino, idnino, idprograma, idescalarendimiento)
VALUES (17, 6, 2, 2);
INSERT INTO tabla_rendimiento_nino(idrendimientonino, idnino, idprograma, idescalarendimiento)
VALUES (18, 6, 3, 2);