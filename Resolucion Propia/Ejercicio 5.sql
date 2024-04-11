-- El alumno Uta Domanek requiere revisión de su examen final 
-- y debemos contactar por email a su instructor. 
-- Obtener su nombre, apellido y email.
USE colegio;
SELECT m.id_alumno, a.nombre, a.apellido, i.id_instructor, i.nombre_instructor, 
i.apellido_instructor, i.email_instructor
FROM modelado AS m
LEFT JOIN instructor AS i
ON m.id_instructor = i.id_instructor
LEFT JOIN alumno AS a
on m.id_alumno = a.id_alumno
WHERE a.nombre LIKE "%Uta%" AND a.apellido LIKE "%Domanek"
