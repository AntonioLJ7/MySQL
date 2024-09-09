-- Corre una subconsulta de SQL
-- Utiliza una subconsulta para identificar los tres géneros  más 
-- populares (en función de la cantidad de series)
-- Para cada género, identifica titulo de la serie, año de lanzamiento 
-- y rating de imdb promedio

-- Subconsulta 
SELECT  genero,
		COUNT(*) AS cantidad_series
FROM series
GROUP BY genero
ORDER BY COUNT(genero) DESC
LIMIT 3;

SELECT 
		series.titulo AS 'Titulo de la Serie',
        series.año_lanzamiento AS 'Año de Lanzamiento',
        series.genero AS 'Genero',
        AVG(episodios.rating_imdb) AS 'Rating Promedio IMDb'
FROM series
JOIN episodios ON series.serie_id = episodios.serie_id
WHERE series.genero IN (SELECT genero FROM (SELECT  genero,
							COUNT(*) AS cantidad_series
				FROM series
				GROUP BY genero
				ORDER BY cantidad_series DESC
				LIMIT 3) AS Top3)
GROUP BY series.serie_id
ORDER BY 'Rating Promedio IMDb' DESC;