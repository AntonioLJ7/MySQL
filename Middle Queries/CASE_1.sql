/*
Escribe una consulta SQL que seleccione el titulo de todas las series de la tabla Series 
junto con una nueva columna denominada 'Antigüedad'.

Esta columna debe mostrar 'Antigua' para las series lanzadas antes del año 2010 y 'Reciente' para las series lanzadas en 2010 o después,
puedes utilizar el campo año_lanzamiento para realizar dicha clasificación.

*/
SELECT
	titulo,
    CASE
		WHEN año_lanzamiento >= 2010 THEN 'Reciente'
        ELSE 'Antigua'
        END AS Antigüedad
FROM series