/*
Escribe una consulta SQL que seleccione todos los años de lanzamiento únicos de la tabla Series
Los resultados deben estar ordenados de forma descendente, es decir, del más reciente al más antiguo.
Ordenar por el campo año_lanzamiento de forma descendente (DESC).
Seleccionar únicamente valores de año_lanzamiento únicos.
*/

SELECT DISTINCT año_lanzamiento FROM series ORDER BY año_lanzamiento DESC