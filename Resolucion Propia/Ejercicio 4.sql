-- Obtener de los alumnos inscriptos, la cantidad de aprobados, 
-- desaprobados y ausentes por nivel.
USE colegio;
SELECT  n.nivel, count(a.id_alumno) AS inscriptos, 
count(CASE WHEN a.nota_final >= 7 THEN 1 END) AS aprobados,
count(CASE WHEN a.nota_final < 7 THEN 1 END) AS desaprobados,
count(CASE WHEN a.nota_final IS NULL THEN 1 END) AS ausentes
FROM modelado as m
LEFT JOIN alumno as a
ON m.id_alumno = a.id_alumno
LEFT JOIN nivel as n
ON m.id_nivel = n.id_nivel
GROUP BY n.nivel
