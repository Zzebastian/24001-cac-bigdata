-- Se envían a imprimir los diplomas de los alumnos que aprobaron el último nivel. 
-- En el diploma figuran el nombre, apellido y la nota final del alumno.
-- Generar la lista para la impresión.
-- El nivel es el 4, y la nota final debe ser mayor que 7
USE colegio;
SELECT a.nombre, a.apellido, a.email, nota_final, 
concat("Felicidades ", a.nombre, " ", a.apellido, " has aprovado el examen final")
FROM modelado AS m
LEFT JOIN alumno as a
ON m.id_alumno = a.id_alumno
LEFT JOIN nivel as n
on m.id_nivel = n.id_nivel

WHERE n.nivel = 4
and nota_final >= 7
