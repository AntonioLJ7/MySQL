
/*
Escribe una consulta SQL que utilice una CTE para seleccionar el número total de series 
lanzadas por año para un género específico, digamos "Ciencia ficción".

Ordena los resultados por año de lanzamiento
*/
WITH SeriesLanzadasAño AS (
SELECT  año_lanzamiento,
		COUNT(*) AS total_series
FROM series
WHERE genero = 'Ciencia ficcion'
GROUP BY año_lanzamiento
)

SELECT * FROM SeriesLanzadasAño
ORDER BY año_lanzamiento ASC