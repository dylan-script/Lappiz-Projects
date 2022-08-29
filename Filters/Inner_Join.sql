SELECT detalle.CENombre, detalle.Cargo, detalle.Id
FROM Kuiper_Lappiz_DetalleOrganigrama AS detalle
INNER JOIN Kuiper_Lappiz_Organigramas AS org
  ON org.Id = detalle.Organigrama
INNER JOIN Kuiper_Lappiz_Clientes AS cliente
  ON cliente.Id = org.ClienteFK
WHERE cliente.Id = 'A221F9CF-B5C9-4EDB-9E55-3DC0815B514D';

SELECT prov.CEProvClave AS ProveedorClave, prov.Servicio, c.Id AS ClienteID
FROM Kuiper_Lappiz_Proveedor AS prov
INNER JOIN Kuiper_Lappiz_DetalleProductoServicios AS dps
  ON prov.DetalleProdServFK = dps.Id
INNER JOIN Kuiper_Lappiz_ProductoServicios AS ps
  ON dps.ProductoServicioFK = ps.Id
INNER JOIN Kuiper_Lappiz_Clientes AS c
  ON ps.ClienteFK = c.Id
WHERE c.Id = 'd8cc5481-b7c6-4832-a88b-51945a14b562';

SELECT * FROM Kuiper_Lappiz_Clientes WHERE Id = 'd8cc5481-b7c6-4832-a88b-51945a14b562'; 
SELECT * FROM Kuiper_Lappiz_Clientes