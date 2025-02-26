INSERT INTO Activities (description) VALUES ('Visita');
INSERT INTO Activities (description) VALUES ('Comida');


INSERT INTO Drivers (dni, name, phone, address) VALUES ('123456', 'Gustavo Lavadenz', '73499222', 'Av. San Martin');
INSERT INTO Drivers (dni, name, phone, address) VALUES ('123457', 'Rafael Sanchez', '73455222', 'Av. America');
INSERT INTO Drivers (dni, name, phone, address) VALUES ('123458', 'Carlos Martinez', '73477123', 'Av. Ayacucho');
INSERT INTO Drivers (dni, name, phone, address) VALUES ('123459', 'Dante Reynaga', '72255163', 'Av. Blanco Galindo');
INSERT INTO Drivers (dni, name, phone, address) VALUES ('123460', 'Alex Arevalo', '72288883', 'Av. Colon');
--=======
INSERT INTO Routes (name, description, distance, price) VALUES 
('Ruta del Sol', 'Explora las hermosas playas', 100.50, 150.00),
('Aventura en la Montaña', 'Un recorrido emocionante por las montañas', 80.75, 120.00),
('Tour Gastronómico', 'Descubre los sabores locales', 50.30, 100.00);

INSERT INTO Passengers (dni, name, phone) VALUES
('56789012D', 'Jorge Pérez', '852963741'),
('67890123E', 'María Fernández', '963852741'),
('78901234F', 'José Ramírez', '741852963'),
('89012345G', 'Ana Morales', '852963147'),
('90123456H', 'Luis Torres', '123456789'),
('01234567I', 'Sofía Sánchez', '234567890'),
('12345678J', 'Daniela Ruiz', '345678901'),
('23456789K', 'Carlos Méndez', '456789012'),
('34567890L', 'Valeria Díaz', '567890123'),
('45678901M', 'Fernando Castillo', '678901234'),
('56789012N', 'Isabela Ríos', '789012345'),
('67890123O', 'Ricardo Romero', '890123456'),
('78901234P', 'Gabriela Vargas', '901234567'),
('89012345Q', 'Miguel Herrera', '012345678'),
('90123456R', 'Adriana Gutiérrez', '123567890'),
('01234567S', 'Martín Peña', '234678901'),
('12345678T', 'Lorena Aguilar', '345789012'),
('23456789U', 'Francisco Miranda', '456890123'),
('34567890V', 'Claudia Ortiz', '567901234'),
('45678901W', 'Patricia Jiménez', '678912345');
