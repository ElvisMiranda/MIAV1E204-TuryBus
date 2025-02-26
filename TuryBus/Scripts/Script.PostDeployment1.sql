INSERT INTO Activities (description) VALUES ('Visita');
INSERT INTO Activities (description) VALUES ('Comida');


INSERT INTO Drivers (dni, name, phone, address) VALUES ('123456', 'Gustavo Lavadenz', '73499222', 'Av. San Martin');
INSERT INTO Drivers (dni, name, phone, address) VALUES ('123457', 'Rafael Sanchez', '73455222', 'Av. America');
INSERT INTO Drivers (dni, name, phone, address) VALUES ('123458', 'Carlos Martinez', '73477123', 'Av. Ayacucho');
INSERT INTO Drivers (dni, name, phone, address) VALUES ('123459', 'Dante Reynaga', '72255163', 'Av. Blanco Galindo');
INSERT INTO Drivers (dni, name, phone, address) VALUES ('123460', 'Alex Arevalo', '72288883', 'Av. Colon');

INSERT INTO Routes (name, description, distance, price) VALUES 
('Ruta del Sol', 'Explora las hermosas playas', 100.50, 150.00),
('Aventura en la Montaña', 'Un recorrido emocionante por las montañas', 80.75, 120.00),
('Tour Gastronómico', 'Descubre los sabores locales', 50.30, 100.00);

INSERT INTO Passengers (dni, name, phone) VALUES
('56789012D', 'Jorge Pérez', '852963741'),
('67890123E', 'María Fernández', '963852741'),
('78901234F', 'José Ramírez', '741852963'),
('89012345G', 'Ana Morales', '852963147');

INSERT INTO Busses (driver_id, license_plate, model, manufacturer, seat_count) VALUES ('123456', 4725YDL, K400, Scania, 45 )
INSERT INTO Busses (driver_id, license_plate, model, manufacturer, seat_count) VALUES ('123457', 2574FDS, 9700, Volvo, 50 )
INSERT INTO Busses (driver_id, license_plate, model, manufacturer, seat_count) VALUES ('123458', 3647GAY, K500, Scania, 45 )
INSERT INTO Busses (driver_id, license_plate, model, manufacturer, seat_count) VALUES ('123459', 5001YOL, K400, Scania, 55 )
INSERT INTO Busses (driver_id, license_plate, model, manufacturer, seat_count) VALUES ('123460', 4795REA, Coaster, Toyota, 50 )
