/*
Consulta SQL: Escribe una consulta SQL que seleccione el nombre del departamento 
y la suma total de horas asignadas a los proyectos por los empleados de ese departamento.

Agrupación de Resultados: Los resultados deben estar agrupados por departamento.

Orden de Resultados: Los resultados deben estar ordenados por el total de horas de mayor a menor.
*/

SELECT d.nombre AS 'Nombre Departamento',
		SUM(a.horas_asignadas) AS 'Total Horas Asignadas'
FROM departamentos AS d
INNER JOIN empleados AS e 
ON e.depto_id = d.depto_id
INNER JOIN asignacionesdeproyectos AS a
ON a.empleado_id = e.empleado_id
GROUP BY d.nombre
ORDER BY SUM(a.horas_asignadas)  DESC
