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