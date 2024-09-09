-- Redondeamos un numero
SELECT titulo, 
	duracion/60.0 AS Hora_Completa, 
	ROUND(duracion/60.0,0) AS Hora_Redondeado
FROM episodios;

-- Redondea un numero hacia arriba, hasta el entero mas cercano
SELECT titulo,
		duracion,
        CEILING(duracion/60.0) AS Hora_Completas
FROM episodios;

-- Redondea el numero hacia abajo (lo contraio a CEILING)
SELECT titulo
		duracion,
        FLOOR(duracion/60) AS Horas_Completas 
FROM episodios;