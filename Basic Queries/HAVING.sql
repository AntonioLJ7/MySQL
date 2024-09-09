/*
Escribe una consulta SQL que sume la duración total de todos los episodios de la serie con serie_id = 2 por temporada desde la tabla Episodios
Aplica un filtro con HAVING sobre la suma agregada, solo incluir temporadas cuya duración total sea mayor a 400 minutos.
Agrupara los resultados por temporada.
Tu resultado debe mostrar dos columnas: temporada y duracion_total.
*/

SELECT temporada, SUM(duracion) AS duracion_total
FROM episodios
WHERE serie_id = 2
GROUP BY temporada
HAVING SUM(duracion) > 400
