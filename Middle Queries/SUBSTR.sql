/*
Escribe una consulta SQL que utilice la función SUBSTR para extraer los primeros 5 caracteres del título de cada episodio 
en la tabla Episodios.
Asigna un alias primeros_cinco_caracteres al resultado.
*/

SELECT SUBSTR(titulo,1,5) AS primeros_cinco_caracteres
FROM episodios