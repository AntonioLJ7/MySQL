/*
Escribe una consulta SQL que genere una lista de titulo de series cuyos episodios tienen un rating de IMDb superior a 8.
Utiliza una subconsulta para seleccionar todos los serie_id que cumplen con esta condición.
*/
SELECT titulo
FROM series
WHERE serie_id IN (SELECT serie_id FROM episodios WHERE episodios.rating_imdb > 8)

