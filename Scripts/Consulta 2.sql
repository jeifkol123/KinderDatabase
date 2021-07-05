select  tabla_programa.nombreprograma, count(*) as total, tabla_escala_rendimiento.escalarendimiento

 from  tabla_rendimiento_nino
inner join tabla_escala_rendimiento
on tabla_escala_rendimiento.idescalarendimiento = tabla_rendimiento_nino.idescalarendimiento
inner join tabla_programa
on tabla_programa.idprograma = tabla_rendimiento_nino.idprograma

group by tabla_programa.nombreprograma,  tabla_escala_rendimiento.idescalarendimiento
order by tabla_programa.nombreprograma;
