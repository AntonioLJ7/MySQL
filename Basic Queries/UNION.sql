/*
Escribe una consulta SQL que genere una lista unificada de títulos de episodios que cumplan al menos una de las siguientes condiciones:
Tener una duración > 20 minutos o un rating en IMDb > 9
Te recomiendo utilizar la cláusula UNION para combinar los resultados de dos consultas separadas basadas en estas condiciones.
 Una consulta puede contener la primera condición, y la segunda consulta contener la segunda condición.
Recuerda solo debes seleccionar el campo titulo en ambos SELECT bajo las condiciones establecidas.
*/

SELECT titulo
FROM episodios
WHERE duracion > 20 OR rating_imdb > 9

UNION 

SELECT titulo
FROM episodios
WHERE duracion > 20 OR rating_imdb > 9