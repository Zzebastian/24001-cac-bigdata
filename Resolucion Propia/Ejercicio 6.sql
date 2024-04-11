-- El instructor designado para tomar examen final a los alumnos de último nivel que tienen apellidos
-- que comienzan con M,N,O y P, solicita una lista de los alumnos a examinar, ordenada
-- alfabéticamente.
USE colegio;
SELECT i.id_instructor AS id_I,i.apellido_instructor AS Ap_instructor, i.nombre_instructor AS N_instructor, 
a.nombre, a.apellido, n.nivel, a.email
FROM modelado as m
LEFT JOIN alumno AS a
ON m.id_alumno = a.id_alumno
LEFT JOIN nivel as n
ON m.id_nivel = n.id_nivel
LEFT JOIN instructor as i
USING (id_instructor)
WHERE n.nivel = 4 AND 
(a.apellido LIKE "M%" 
OR a.apellido LIKE "N%" 
OR a.apellido LIKE "O%"
OR a.apellido LIKE "P%" )
ORDER BY i.apellido_instructor, i.nombre_instructor, a.apellido, a.nombre

