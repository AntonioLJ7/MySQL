 -- Buscamos una palabra en textos 
 -- (?i) hace que no distingamos entre mayusculas y minusculas 
SELECT
	titulo,
	descripcion
FROM series
WHERE descripcion REGEXP '(?i)londres'