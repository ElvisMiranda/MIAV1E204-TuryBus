# MIAV1E204-TuryBus
1.2 Tarea: Modelo Entidad-Relacion
## Grupo: Deep BI
1. Yesika Luna Robles
2. Karem Huacota Saavedra
3. Karen Torrico Vargas
4. Elvis Miranda
5. Ivan Mamani Condori

---
# Diseño e Implemento un modelo de base de datos

![alt text](TuryBus-Diagram.png)

## Tablas:

- **Routes**: Define las rutas turísticas.
- **DailyServices**: Representa los servicios diarios programados.
- **Places**: Lugares turísticos visitados en cada ruta.
- **Stops**: Relación entre rutas y lugares con información de llegada y actividades.
- **Passengers**: Clientes que compran boletos.
- **Tickets**: Registro de cada compra de boleto.
- **Busses**: Información de los vehículos.
- **Drivers**: Información de los choferes.
- **Inspections**: Registro de mantenimiento de los autobuses.
- **Repairs**: Detalles de reparaciones en inspecciones.

## Problema:
Con el fin de mejorar la calidad del servicio, la compañía desea poder conocer en cada momento la media de viajeros de cada ruta y de cada servicio diario, así como los km. diarios realizados por cada autobús y cada conductor.
Además, para premiar a los mejores usuarios, también desea conocer el total de horas de viaje realizados por cada usuario.

✅ **Media de viajeros por ruta y servicio diario**
```
SELECT 
    ds.route_id,
    r.name AS route_name,
    COUNT(t.id) / COUNT(DISTINCT ds.id) AS avg_passengers
FROM DailyServices ds
JOIN Routes r ON ds.route_id = r.id
JOIN Tickets t ON ds.id = t.service_id
GROUP BY ds.route_id, r.name;
```
✅ **Kilómetros diarios por autobús y conductor**
```
SELECT 
    ds.bus_id,
    b.driver_id,
    SUM(r.distance) AS total_km
FROM DailyServices ds
JOIN Busses b ON ds.bus_id = b.id
JOIN Routes r ON ds.route_id = r.id
GROUP BY ds.bus_id, b.driver_id;
```
✅ **Total de horas de viaje por usuario**
```
SELECT 
    t.passenger_id,
    SUM(DATEDIFF(MINUTE, ds.departure_time, ds.arrival_time)) / 60 AS total_hours
FROM Tickets t
JOIN DailyServices ds ON t.service_id = ds.id
GROUP BY t.passenger_id;
```
