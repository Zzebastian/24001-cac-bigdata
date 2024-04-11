-- Para reducir la deserción en el nivel 1A, se solicita una lista con:
--  nombres y apellidos para contactar
-- vía mail a los alumnos que no se han presentado al examen final.
USE colegio;
SELECT a. id_alumno, a.nombre, a.apellido, a.email, 
concat(a.nombre, " ", a.apellido, " presentate por favor a rendir el examen") as correo

FROM modelado AS m
LEFT JOIN alumno AS a
ON m.id_alumno = a.id_alumno
LEFT JOIN nivel AS n
ON m.id_nivel = n.id_nivel
WHERE a.nota_final IS NULL
AND n.nivel = "1A"

