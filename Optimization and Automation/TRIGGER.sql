DELIMITER $$

CREATE TRIGGER RegistrarNuevoEmpleado
AFTER INSERT ON Empleados
FOR EACH ROW
BEGIN 
	INSERT INTO LogEmpleados (emplado_id, fecha_registro) VALUES (NEW.empleado_id, NOW());
END$$

DELIMITER ;
