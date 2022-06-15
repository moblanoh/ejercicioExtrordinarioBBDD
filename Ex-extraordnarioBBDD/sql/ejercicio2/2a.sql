DELIMITER $$
DROP FUNCTION IF EXISTS españa;
CREATE FUNCTION españa(Cliente VARCHAR(5)) RETURN CHAR(2)
BEGIN
	SET @pais =(SELECT Cliente.Pais FROM Cliente WHERE Proveedor.IdProveedor = Proveedor);
	SET @resultado = IF(@pais = 'España','NO','SI');
	RETURN resultado;
END;
$$
DELIMITER;

SELECT españa('ANATR'), españa('DUMON');