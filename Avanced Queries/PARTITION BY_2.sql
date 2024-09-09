/*
Escribe una consulta SQL que asigne un rango a cada episodio, 
donde episodios con la misma calificación compartan el mismo rango.

Ordena los episodios desde el más alto hasta el  más bajo, según su calificación, 
asegurándote de gestionar correctamente los empates.

El resultado deberá mostrar el titulo, su rating_imdb y su rango de popularidad, 
está última columna deberá tener el siguiente alias: ranking_imdb
*/
SELECT 
		temporada,
		titulo,
        rating_imdb,
        ROW_NUMBER() OVER(PARTITION BY temporada ORDER BY rating_imdb DESC) AS 'Ranking IMDb'
FROM episodios
WHERE serie_id = 2