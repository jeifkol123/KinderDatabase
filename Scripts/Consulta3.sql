
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
/*para comprobacion de que es valido el Script de consulta cambiamos de genero a uno de los profesionales para 
que se refleje que si hace la debida consulta detallando cuantos profesionales son hombres y mujeres en cada 
programa

update public.tabla_profesional
	set  idgenero=2
	where tabla_profesional.idprofesional=5;
		select * from tabla_profesional;
		
		*/
