/*
Escribe una consulta SQL que seleccione los nombres (nombre)
 y las fechas de nacimiento (fecha_nacimiento) de todos los actores desde la tabla Actores

Ordena los resultados de manera descendente (DESC) por la fecha de nacimiento,
 lo que significa que los actores más jóvenes aparecerán primero en tu lista.
*/

SELECT nombre, fecha_nacimiento FROM actores ORDER BY fecha_nacimiento DESC