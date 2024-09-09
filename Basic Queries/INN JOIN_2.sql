/*
Escribe una consulta SQL que te permita obtener el título de la serie, el título de cada episodio y su duración de la serie 'Stranger Things'.
El resultado final debe contar con los siguientes nombres de columnas: titulo_serie, titulo_episodio, duracion.
*/

SELECT series.titulo AS titulo_serie, episodios.titulo AS titulo_episodio, duracion
FROM series 
INNER JOIN episodios 
ON series.serie_id = episodios.serie_id
WHERE series.titulo = 'Stranger Things'

