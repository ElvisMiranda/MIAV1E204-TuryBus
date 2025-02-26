-- Eliminar datos previos
DELETE FROM Repairs;
DELETE FROM Inspections;
DELETE FROM Tickets;
DELETE FROM Passengers;
DELETE FROM Stops;
DELETE FROM Activities;
DELETE FROM Places;
DELETE FROM DailyServices;
DELETE FROM Busses;
DELETE FROM Drivers;
DELETE FROM Routes;

-- Resetear el IDENTITY de cada tabla
DBCC CHECKIDENT ('Routes', RESEED, 0);
DBCC CHECKIDENT ('Drivers', RESEED, 0);
DBCC CHECKIDENT ('Busses', RESEED, 0);
DBCC CHECKIDENT ('DailyServices', RESEED, 0);
DBCC CHECKIDENT ('Places', RESEED, 0);
DBCC CHECKIDENT ('Activities', RESEED, 0);
DBCC CHECKIDENT ('Stops', RESEED, 0);
DBCC CHECKIDENT ('Passengers', RESEED, 0);
DBCC CHECKIDENT ('Tickets', RESEED, 0);
DBCC CHECKIDENT ('Inspections', RESEED, 0);
DBCC CHECKIDENT ('Repairs', RESEED, 0);

-- Insertar rutas turísticas
INSERT INTO Routes (name, description, distance, price) VALUES
('Ruta del Sol', 'Viaje escénico por la costa', 150.5, 30.00),
('Montaña Aventura', 'Excursión a la montaña', 200.0, 45.50),
('Ruta del Valle', 'Recorrido por el valle', 120.0, 25.00),
('Selva Mística', 'Exploración en la selva', 180.0, 35.00),
('Lago Azul', 'Viaje a un hermoso lago', 140.0, 28.00),
('Ciudad Histórica', 'Tour por la ciudad', 90.0, 20.00),
('Volcán Activo', 'Aventura cerca del volcán', 210.0, 50.00),
('Desierto Dorado', 'Expedición en el desierto', 170.0, 40.00),
('Cataratas del Este', 'Visita a las cascadas', 130.0, 27.00),
('Reserva Natural', 'Tour ecológico', 160.0, 32.00);

select * from Routes;

-- Insertar conductores
INSERT INTO Drivers (dni, name, phone, address) VALUES
('12345678A', 'Juan Pérez', '123456789', 'Calle Falsa 123'),
('87654321B', 'Luis Gómez', '987654321', 'Av. Principal 456'),
('65498732C', 'María Rojas', '741258963', 'Calle Secundaria 789'),
('95175368D', 'Carlos López', '852963741', 'Av. Central 852'),
('85236974E', 'Ana Ramírez', '963852741', 'Calle Norte 159'),
('75395146F', 'Pedro Torres', '159753852', 'Calle Sur 753'),
('95148627G', 'Sofía Méndez', '357159486', 'Av. Este 468'),
('12378945H', 'Javier Morales', '753468159', 'Av. Oeste 357'),
('15975326I', 'Laura Fernández', '159357852', 'Calle Nueva 951'),
('45632178J', 'Fernando Herrera', '321654987', 'Calle Antigua 753');

select * from Drivers;

-- Insertar buses
INSERT INTO Busses (driver_id, license_plate, model, manufacturer, seat_count) VALUES
(1, '1984IUR', 'Sprinter', 'Mercedes-Benz', 20),
(2, '0501ABA', 'Coaster', 'Toyota', 25),
(3, '1234BCD', 'Daily', 'Iveco', 30),
(4, '5678EFG', 'Tourismo', 'Mercedes-Benz', 40),
(5, '9012HIJ', 'Citaro', 'Mercedes-Benz', 35),
(6, '3456KLM', 'Urvan', 'Nissan', 22),
(7, '7890NOP', 'Marcopolo', 'Volvo', 50),
(8, '2345QRS', 'Ducato', 'Fiat', 18),
(9, '6789TUV', 'Explorer', 'Ford', 28),
(10, '1123WXY', 'Volare', 'Agrale', 45);

select * from Busses;

-- Insertar servicios diarios
INSERT INTO DailyServices (route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES
(1, 1, '08:00:00', '12:00:00', 0),
(2, 2, '09:30:00', '14:00:00', 1),
(3, 3, '07:45:00', '11:15:00', 0),
(4, 4, '10:00:00', '13:30:00', 0),
(5, 5, '11:15:00', '15:45:00', 1),
(6, 6, '06:30:00', '10:30:00', 0),
(7, 7, '12:00:00', '17:00:00', 1),
(8, 8, '14:30:00', '19:00:00', 0),
(9, 9, '16:00:00', '20:30:00', 1),
(10, 10, '18:00:00', '23:00:00', 0);

select * from DailyServices;

-- Insertar lugares turísticos
INSERT INTO Places (name) VALUES
('Playa Paraíso'),
('Mirador de la Montaña'),
('Cascada Esmeralda'),
('Santuario Natural'),
('Pueblo Encantado'),
('Parque Nacional'),
('Bosque Nuboso'),
('Río Cristalino'),
('Cueva Misteriosa'),
('Duna Gigante');

select * from Places;

-- Insertar actividades
INSERT INTO Activities (description) VALUES
('Fotografía'),
('Senderismo'),
('Natación'),
('Observación de fauna'),
('Camping'),
('Paseo en bote'),
('Pesca deportiva'),
('Ciclismo de montaña'),
('Escalada'),
('Exploración de cuevas');

select * from Activities;

-- Insertar paradas en la ruta
INSERT INTO Stops (service_id, place_id, activity_id, arrival_time, stop_duration) VALUES
(1, 1, 3, '2024-02-24 09:00:00', 30),
(2, 2, 1, '2024-02-24 10:30:00', 45),
(3, 3, 2, '2024-02-24 11:15:00', 60),
(4, 4, 4, '2024-02-24 12:45:00', 40),
(5, 5, 5, '2024-02-24 13:30:00', 50),
(6, 6, 6, '2024-02-24 14:15:00', 35),
(7, 7, 7, '2024-02-24 15:00:00', 55),
(8, 8, 8, '2024-02-24 16:30:00', 60),
(9, 9, 9, '2024-02-24 17:45:00', 45),
(10, 10, 10, '2024-02-24 18:15:00', 30);

select * from Stops;

-- Insertar pasajeros
INSERT INTO Passengers (dni, name, phone) VALUES
('555444333A', 'Ana Ramírez', '71222333'),
('999888777B', 'Carlos Méndez', '74555666'),
('222111000C', 'Elena Flores', '77888999'),
('333222111D', 'Tomás García', '66777888'),
('444333222E', 'Lucía Fernández', '65666777'),
('555444333F', 'Miguel Torres', '64555666'),
('666555444G', 'Clara Rojas', '73444555'),
('777666555H', 'Gabriel Medina', '72333444'),
('888777666I', 'Raquel Sánchez', '61222333'),
('999888777J', 'Daniel Vargas', '65811122');

select * from Passengers;

-- Insertar boletos
INSERT INTO Tickets (passenger_id, service_id, travel_date) VALUES
(1, 1, '2024-03-01'),
(2, 2, '2024-03-02'),
(3, 3, '2024-03-03'),
(4, 4, '2024-03-04'),
(5, 5, '2024-03-05'),
(6, 6, '2024-03-06'),
(7, 7, '2024-03-07'),
(8, 8, '2024-03-08'),
(9, 9, '2024-03-09'),
(10, 10, '2024-03-10');

select * from Tickets;

-- Insertar inspecciones de buses
INSERT INTO Inspections (bus_id, [date], diagnosis) VALUES
(1, '2024-02-01', 'Sin novedades'),
(2, '2024-02-02', 'Frenos desgastados'),
(3, '2024-02-03', 'Aceite bajo'),
(4, '2024-02-04', 'Neumáticos en mal estado'),
(5, '2024-02-05', 'Sistema eléctrico revisado'),
(6, '2024-02-06', 'Luces traseras defectuosas'),
(7, '2024-02-07', 'Motor con vibraciones'),
(8, '2024-02-08', 'Todo en orden'),
(9, '2024-02-09', 'Revisión de frenos completada'),
(10, '2024-02-10', 'Sistema de suspensión necesita ajuste'),
(1, '2024-02-11', 'Luces revisadas'),
(2, '2024-02-12', 'Filtro de aire sucio'),
(3, '2024-02-13', 'Cambio de aceite necesario'),
(4, '2024-02-14', 'Sistema de frenos necesita revisión'),
(5, '2024-02-15', 'Todo en orden');

select * from Inspections;

-- Insertar reparaciones de buses
INSERT INTO Repairs (inspection_id, type, time_spent, comment) VALUES
(1, 'Cambio de frenos', 90, 'Frenos desgastados'),
(2, 'Cambio de neumáticos', 120, 'Neumáticos en mal estado'),
(3, 'Reparación de luces', 60, 'Luces traseras defectuosas'),
(4, 'Ajuste de motor', 75, 'Motor con vibraciones'),
(5, 'Ajuste de suspensión', 110, 'Sistema de suspensión necesita ajuste'),
(6, 'Revisión de filtro de aire', 45, 'Filtro de aire sucio'),
(7, 'Cambio de aceite', 50, 'Cambio de aceite necesario'),
(8, 'Revisión de frenos', 80, 'Sistema de frenos necesita revisión'),
(9, 'Revisión del sistema eléctrico', 70, 'Sistema eléctrico revisado'),
(10, 'Reemplazo de batería', 95, 'Batería en mal estado'),
(11, 'Ajuste general', 100, 'Mantenimiento de rutina'),
(12, 'Revisión de luces', 40, 'Luces revisadas'),
(13, 'Cambio de amortiguadores', 130, 'Suspensión con problemas'),
(14, 'Diagnóstico de motor', 55, 'Revisión de vibraciones en motor'),
(1, 'Mantenimiento general', 150, 'Chequeo completo del bus'),
(2, 'Cambio de bujías', 65, 'Mejorar combustión'),
(3, 'Limpieza de inyectores', 85, 'Optimizar consumo de combustible'),
(4, 'Cambio de correas', 90, 'Correas desgastadas'),
(5, 'Revisión de transmisión', 120, 'Posible desgaste en caja de cambios'),
(6, 'Revisión de aire acondicionado', 60, 'Sistema de climatización con fallas');

SELECT * FROM Repairs;