/*
Escribe una consulta SQL empleando una CTE para determinar la fecha del primer episodio transmitido de cada serie.

Debes seleccionar el título de cada serie y la fecha del primer episodio, presentando estos datos en dos columnas finales 
llamadas 'Titulo de la Serie' y 'Fecha del Primer Episodio'.

Ordena los resultados por la fecha del primer episodio de forma ascendente.
*/

WITH FechaPrimerEpisodio AS (
	SELECT serie_id,
			MIN(fecha_estreno) AS fecha_primer_episodio
    FROM episodios
    GROUP BY serie_id
)

SELECT series.titulo AS 'Titulo de la Serie',
		fecha_primer_episodio
FROM series
INNER JOIN FechaPrimerEpisodio 
ON series.serie_id = FechaPrimerEpisodio.serie_id
ORDER BY FechaPrimerEpisodio.fecha_primer_episodio 


