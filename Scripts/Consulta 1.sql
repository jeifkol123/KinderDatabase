select tabla_nino.nombrenino, tabla_nino.apellidonino,
case
  when tabla_nino.idtutor is not null then 'no tiene padres ' 
  when tabla_nino.idpadre  is not null and tabla_padre.idgenero=1  then 'no tiene de forma activa a su padre' 
  when tabla_nino.idpadre  is not null and tabla_padre.idgenero=2  then 'no tiene de forma activa a su madre' end 
as Situacion, 
case
  when tabla_nino.idtutor is not null then 'tutor' 
  when tabla_nino.idpadre  is not null and tabla_padre.idgenero=1  then 'madre' 
  when tabla_nino.idpadre  is not null and tabla_padre.idgenero=2  then 'padre' end 
 as Representante
from tabla_nino 
left join tabla_padre on tabla_nino.idnino=tabla_padre.idpadre 
left join tabla_genero on tabla_padre.idgenero=tabla_genero.idgenero;
