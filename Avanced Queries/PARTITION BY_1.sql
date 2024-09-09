/*
Escribe una consulta SQL que seleccione la temporada, el título del episodio, la fecha de estreno y utilice ROW_NUMBER() 
en combinación con PARTITION BY para asignar un ranking de episodios basado en su fecha de estreno (de más reciente a más antiguo DESC), 
está nueva columna deberá tener el nombre: ranking_temporada
*/

SELECT temporada,
		titulo,
        fecha_estreno,
        ROW_NUMBER() OVER(PARTITION BY temporada ORDER BY fecha_estreno DESC) AS ranking_temporada
FROM episodios