SELECT 
	series.titulo AS 'Título de la Serie',
    episodios.titulo AS 'Titulo del Episodio',
    episodios.duracion AS 'Duración'
FROM episodios 
RIGHT JOIN series 
ON episodios.serie_id = series.serie_id
WHERE episodios.duracion > 30
ORDER BY series.titulo