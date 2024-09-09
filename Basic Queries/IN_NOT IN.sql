/*
Escribe una consulta SQL que seleccione todas las columnas de todas las series en la tabla Series ,
 excluyendo aquellas cuyo género sea 'Drama' o 'Drama histórico'
*/

SELECT * FROM series  
WHERE genero NOT IN ('Drama','Drama histórico')