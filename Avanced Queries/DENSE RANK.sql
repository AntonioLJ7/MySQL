/*
Escribe una consulta SQL utilizando la función DENSE_RANK() 
para clasificar los episodios por su duración utilizando la tabla Episodios.

Deberás asegurarte de que los episodios con la misma duración reciban el mismo rango, y los rangos sigan una secuencia continua, 
sin huecos entre ellos, independientemente de los empates.

El objetivo es identificar cuáles son los episodios más largos de la base de datos y cómo se comparan entre sí en términos de duración.

El resultado deberá mostrar el titulo, su duracion y la nueva columna generada ranking_por_duracion
*/
-- DENSE_RANK() Asegura que no haya espacios 
SELECT
	titulo,
	duracion,
	DENSE_RANK() OVER(ORDER BY duracion DESC) AS ranking_por_duracion
FROM episodios