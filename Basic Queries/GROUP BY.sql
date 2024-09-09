/*
Escribe una consulta SQL que seleccione el año de lanzamiento de las series en la tabla Series,
 y cuenta el número de series lanzadas en cada año
*/

SELECT año_lanzamiento, COUNT(serie_id) as cantidad_de_series FROM series GROUP BY año_lanzamiento