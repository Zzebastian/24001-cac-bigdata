-- ¿Cuántos alumnos aprobaron el examen final?
USE colegio;
SELECT count(id_alumno) FROM alumno
WHERE nota_final > 7;


-- Esto es lo que hizo el docente
-- SELECT
--     COUNT(a.id_alumno) AS total_aprobados
-- FROM modelado AS m
-- LEFT JOIN alumno  AS a
--     ON m.id_alumno = a.id_alumno
-- WHERE 1=1
--     AND a.nota_final IS NOT NULL
--     AND a.nota_final > 7
--     ;