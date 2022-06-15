SELECT Cliente.NombreEmpresa, Cliente.NombreContacto, Cliente.Telefono, Cliente.Ciudad, Cliente.Pais 
FROM Cliente, Pedido 
WHERE Cliente.Pais ='Estados Unidos',
WHERE Pedido.Cargo ='%ventas';