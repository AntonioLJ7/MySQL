/*
Consulta SQL: Escribe una consulta SQL que seleccione el nombre y apellido de cada empleado,
 junto con el nombre del proyecto y las horas asignadas a ese proyecto.

Orden de Resultados: Los resultados deben estar ordenados primero por empleado 
y luego por las horas asignadas de manera descendente.

Presentación de Datos: Asegúrate de que cada línea del reporte muestre claramente el nombre del empleado, 
el nombre del proyecto, y las horas asignadas a ese proyecto.
*/
SELECT  e.nombre AS 'Nombre Empleado',
		e.apellido AS 'Apellido',
        p.nombre AS 'Nombre del Proyecto',
        a.horas_asignadas AS 'Horas Asignadas'
FROM empleados AS e
INNER JOIN asignacionesdeproyectos AS a
ON e.empleado_id = a.empleado_id
INNER JOIN proyectos AS p
ON p.proyecto_id = a.proyecto_id

