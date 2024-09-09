/*
Escribe una consulta SQL para seleccionar el título de las series y el año de lanzamiento.
Sin embargo, en esta ocasión, debes convertir el año de lanzamiento de un número entero a texto (cadena de caracteres) 
usando la función CAST.
*/

SELECT titulo, año_lanzamiento AS 'Año de Lanzamiento'
from series
WHERE CAST(año_lanzamiento AS CHARACTER)