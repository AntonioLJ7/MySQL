/*
Identificar las series mas exitosas en la base de datos NetFlixDB.
Las series más exitos se defienen por la cantidad de episodios y rating promedio de IMDB.
El resultado es una tabla con tres columnas: Titulo de la serie, cantidad de episodios y rating promedio de imdb.
Utilizar CTEs.
*/

WITH SeriesExitosas AS (
SELECT 
	serie_id,
	COUNT(episodio_id) AS cantidad_episodios,
	AVG(rating_imdb) AS rating_promedio
FROM episodios
GROUP BY serie_id
)

SELECT series.titulo AS 'Titulo de la Serie',
		cantidad_episodios AS 'Cantidad de Episodios',
        rating_promedio AS 'Rating Promedio'
FROM series
INNER JOIN SeriesExitosas
ON series.serie_id = SeriesExitosas.serie_id
ORDER BY rating_promedio DESC


