-- El instructor que obtuvo mayor cantidad de alumnos con puntaje > 9 
-- en el examen final recibirá un premio en la entrega de diplomas. 
-- ¿Quién es el instructor y cuántos alumnos distinguidos tuvo en
-- sus clases?
USE colegio;
select nombre_instructor, apellido_instructor, count(CASE WHEN a.nota_final > 9 THEN 1 END) AS cantidad
FROM modelado as m
LEFT JOIN instructor AS i
USING (id_instructor)
LEFT JOIN alumno as a
USING (id_alumno)
-- LEFT JOIN nivel as n
-- USING (id_nivel)
-- WHERE n.nivel = 4
GROUP BY i.id_instructor
ORDER BY cantidad DESC
LIMIT 3


