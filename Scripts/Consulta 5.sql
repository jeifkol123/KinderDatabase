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