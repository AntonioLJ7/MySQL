/*
Escribe una consulta SQL que obtenga todas las filas y columnas de la tabla Series que pertenezcan 
a los géneros 'Ciencia ficción' y 'Drama'.
Idealmente querrás correr esta consulta utilizando UNION ALL para ponerlo en práctica
*/
SELECT * 
FROM series
WHERE genero = 'Ciencia ficción'

UNION ALL

SELECT * 
FROM series
WHERE genero = 'Drama'


