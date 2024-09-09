/*
Escribe una consulta SQL que seleccione el titulo de todas las series y una nueva columna llamada 'Categoría de Género'
Esta columna debe reflejar si el género de la serie es 'Drama' o 'Comedia',
 clasificándolas como 'Dramático' o 'Divertido', respectivamente.
Para cualquier otro género, la clasificación debe ser 'Otro'.
Usa la sentencia CASE para asignar estas categorías.
*/
SELECT
	titulo,
    CASE
		WHEN genero = 'Drama' THEN 'Dramático'
        WHEN genero = 'Comedia' THEN 'Divertido'
        ELSE 'Otro'
        END AS 'Categoría de Género'
FROM series