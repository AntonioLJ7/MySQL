/*
Escribe una consulta SQL que seleccione solo la columna titulo de la tabla Series 
y solo las series que posean la palabra 'The' en su titulo.
*/
SELECT titulo FROM series 
WHERE titulo LIKE '%the%'