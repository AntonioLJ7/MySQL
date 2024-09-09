/*
Escribe una consulta SQL que devuelva, para cada serie, su título, el título de cada episodio asociado (si hay alguno),
 y el rating de IMDb.
Los alias exactos que debes aplicar son: Título de la Serie, Título del Episodio, Rating IMDB
Ordena los resultados por el título de la serie de forma ascendente
*/
SELECT series.titulo AS 'Título de la Serie', episodios.titulo AS 'Título del Episodio',episodios.rating_imdb AS 'Rating IMDB'
FROM series 
LEFT JOIN episodios
ON series.serie_id = episodios.serie_id
ORDER BY series.titulo ASC