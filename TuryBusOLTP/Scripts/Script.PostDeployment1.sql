/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

-- Clean-up tables
DELETE FROM Repairs;
DELETE FROM Inspections;
DELETE FROM Tickets;
DELETE FROM Stops;
DELETE FROM DailyServices;
DELETE FROM Busses;
DELETE FROM Passengers;
DELETE FROM Activities;
DELETE FROM Places;
DELETE FROM Drivers;
DELETE FROM Routes;
GO

-- Populate Tables.
-- Insertar rutas turísticas
SET IDENTITY_INSERT Routes ON;
INSERT INTO Routes (id, name, description, distance, price) VALUES
(1, 'Cataratas del Este', 'Ascenso a las cumbres más altas', 205.11, 78.66),
(2, 'Cumbre del Cóndor', 'Experiencia cultural en pueblos indígenas', 158.13, 115.44),
(3, 'Ruta del Sol', 'Recorrido por montañas impresionantes', 273.64, 138.26),
(4, 'Ciudad Histórica', 'Ruta gastronómica con degustaciones', 201.48, 49.52),
(5, 'Cascadas Gemelas', 'Recorrido en tren por paisajes inolvidables', 290.54, 32.9),
(6, 'Reserva Natural', 'Ruta vinícola con catas incluidas', 99.94, 112.95),
(7, 'Selva Mística', 'Recorrido por montañas impresionantes', 54.49, 100.3),
(8, 'Mar de Dunas', 'Expedición en el desierto más cálido', 143.84, 66.4),
(9, 'Sendero del Puma', 'Tour arqueológico en tierras ancestrales', 117.97, 56.6),
(10, 'El Camino del Dragón', 'Senderismo en parques nacionales', 116.74, 31.6),
(11, 'Valle de las Maravillas', 'Experiencia cultural en pueblos indígenas', 196.06, 134.19),
(12, 'Cueva de Cristal', 'Aventura en la selva tropical', 115.34, 97.99),
(13, 'Bahía Esmeralda', 'Caminata por senderos místicos', 255.72, 144.88),
(14, 'Horizontes Verdes', 'Experiencia cultural en pueblos indígenas', 174.64, 44.68),
(15, 'Parque de los Milagros', 'Tour arqueológico en tierras ancestrales', 241.54, 134.68),
(16, 'Paso de los Vientos', 'Viaje escénico por la costa', 215.1, 51.57),
(17, 'Cascadas Gemelas', 'Ruta vinícola con catas incluidas', 124.15, 125.29),
(18, 'Sendero del Jaguar', 'Viaje escénico por la costa', 164.31, 131.36),
(19, 'Laguna de los Sueños', 'Exploración en un entorno natural único', 170.97, 74.51),
(20, 'Ruta de la Cerveza', 'Tour arqueológico en tierras ancestrales', 238.07, 143.05),
(21, 'Sendero de los Andes', 'Experiencia cultural en pueblos indígenas', 131.36, 67.94),
(22, 'Ruta del Valle', 'Tour arqueológico en tierras ancestrales', 133.82, 32.4),
(23, 'Reserva de los Tiempos', 'Aventura en la selva tropical', 91.93, 60.82),
(24, 'Bahía Azul', 'Experiencia cultural en pueblos indígenas', 233.85, 96.2),
(25, 'Puente del Cielo', 'Ruta vinícola con catas incluidas', 262.2, 95.24),
(26, 'Bahía Azul', 'Navegación por un lago cristalino', 204.23, 97.3),
(27, 'Río Escondido', 'Visita a antiguas ciudades coloniales', 101.71, 43.91),
(28, 'Sendero del Puma', 'Ascenso a las cumbres más altas', 157.16, 63.68),
(29, 'Sendero del Puma', 'Ruta gastronómica con degustaciones', 209.63, 142.63),
(30, 'Paso de los Vientos', 'Ascenso a las cumbres más altas', 183.49, 27.54),
(31, 'Isla del Tesoro', 'Senderismo en parques nacionales', 237.46, 131.28),
(32, 'Cumbre del Cóndor', 'Ruta vinícola con catas incluidas', 226.76, 95.44),
(33, 'Laguna de los Sueños', 'Ruta vinícola con catas incluidas', 192.0, 101.2),
(34, 'Pico Nevado', 'Ascenso a las cumbres más altas', 275.2, 24.62),
(35, 'Pueblo Fantasma', 'Senderismo en parques nacionales', 149.2, 103.01),
(36, 'Cataratas del Este', 'Navegación por un lago cristalino', 298.91, 139.02),
(37, 'Pueblo Fantasma', 'Exploración en un entorno natural único', 164.0, 102.46),
(38, 'Isla del Tesoro', 'Recorrido por montañas impresionantes', 138.22, 28.01),
(39, 'Bahía Esmeralda', 'Navegación por un lago cristalino', 118.78, 115.93),
(40, 'Montaña Aventura', 'Tour arqueológico en tierras ancestrales', 201.39, 118.92),
(41, 'Parque de los Milagros', 'Ruta gastronómica con degustaciones', 108.72, 109.22),
(42, 'Lago Azul', 'Ruta gastronómica con degustaciones', 70.34, 66.86),
(43, 'Cumbre del Cóndor', 'Exploración de cavernas subterráneas', 282.61, 58.84),
(44, 'Cumbre del Cóndor', 'Recorrido por montañas impresionantes', 123.42, 142.92),
(45, 'Misterios de la Selva', 'Experiencia cultural en pueblos indígenas', 262.11, 96.69),
(46, 'Costa Dorada', 'Navegación por un lago cristalino', 297.23, 35.08),
(47, 'Arrecife Perdido', 'Recorrido en tren por paisajes inolvidables', 106.46, 123.77),
(48, 'Arrecife Perdido', 'Expedición en el desierto más cálido', 163.6, 61.25),
(49, 'Selva Mística', 'Exploración en un entorno natural único', 85.71, 67.43),
(50, 'Lago Azul', 'Ascenso a las cumbres más altas', 65.43, 58.35),
(51, 'Montaña Aventura', 'Exploración en un entorno natural único', 129.42, 134.87),
(52, 'Cataratas del Este', 'Experiencia cultural en pueblos indígenas', 104.15, 20.87),
(53, 'Grutas del Tiempo', 'Exploración en un entorno natural único', 271.47, 73.54),
(54, 'Parque de los Milagros', 'Exploración en un entorno natural único', 277.01, 27.05),
(55, 'Valle de las Maravillas', 'Viaje escénico por la costa', 177.78, 88.08),
(56, 'El Camino del Dragón', 'Expedición en el desierto más cálido', 223.34, 113.94),
(57, 'Arrecife Perdido', 'Caminata por senderos místicos', 164.32, 56.53),
(58, 'Raíces Ancestrales', 'Viaje escénico por la costa', 103.28, 20.47),
(59, 'Llanuras del Alba', 'Caminata por senderos místicos', 125.48, 106.66),
(60, 'Pico Nevado', 'Senderismo en parques nacionales', 51.23, 68.07),
(61, 'Parque de los Milagros', 'Recorrido en tren por paisajes inolvidables', 196.14, 101.63),
(62, 'Grutas del Tiempo', 'Exploración de cavernas subterráneas', 169.69, 146.92),
(63, 'Lago Azul', 'Senderismo en parques nacionales', 131.22, 79.91),
(64, 'Bosque Encantado', 'Fotografía de vida salvaje en su hábitat', 95.9, 41.08),
(65, 'Camino del Inca', 'Caminata por senderos místicos', 238.67, 101.26),
(66, 'Bahía Azul', 'Exploración de cavernas subterráneas', 285.43, 111.45),
(67, 'Raíces Ancestrales', 'Aventura en la selva tropical', 133.59, 36.65),
(68, 'Sierra Verde', 'Travesía en bicicleta por paisajes épicos', 287.87, 132.56),
(69, 'Grutas del Tiempo', 'Recorrido en tren por paisajes inolvidables', 203.49, 50.03),
(70, 'Monte Sagrado', 'Aventura en la selva tropical', 194.09, 78.27),
(71, 'Lago Azul', 'Ruta vinícola con catas incluidas', 105.48, 94.23),
(72, 'Parque de los Milagros', 'Ruta gastronómica con degustaciones', 251.21, 29.95),
(73, 'Horizontes Verdes', 'Exploración en un entorno natural único', 132.8, 124.56),
(74, 'Montaña Aventura', 'Navegación por un lago cristalino', 222.88, 127.21),
(75, 'Desierto Dorado', 'Ascenso a las cumbres más altas', 74.53, 84.47),
(76, 'Camino del Inca', 'Tour en barco por ríos majestuosos', 124.83, 131.47),
(77, 'Río Escondido', 'Caminata por senderos místicos', 148.9, 76.2),
(78, 'Bosque Encantado', 'Navegación por un lago cristalino', 164.71, 26.8),
(79, 'Cascadas Gemelas', 'Experiencia cultural en pueblos indígenas', 140.24, 65.39),
(80, 'Ruta del Valle', 'Exploración en un entorno natural único', 89.21, 142.18),
(81, 'Llanuras del Alba', 'Navegación por un lago cristalino', 63.27, 72.18),
(82, 'Estrella del Norte', 'Circuito de cascadas escondidas', 198.85, 133.02),
(83, 'Bahía Azul', 'Recorrido por montañas impresionantes', 173.54, 25.14),
(84, 'Cañón del Trueno', 'Experiencia cultural en pueblos indígenas', 235.9, 72.67),
(85, 'Cueva de Cristal', 'Circuito de cascadas escondidas', 262.26, 83.16),
(86, 'Mar de Dunas', 'Caminata por senderos místicos', 271.21, 70.82),
(87, 'Desierto Dorado', 'Experiencia cultural en pueblos indígenas', 108.21, 120.03),
(88, 'Raíces Ancestrales', 'Experiencia cultural en pueblos indígenas', 169.43, 107.56),
(89, 'Cascadas Gemelas', 'Tour en barco por ríos majestuosos', 260.63, 74.63),
(90, 'Volcán Activo', 'Senderismo en parques nacionales', 293.92, 58.06),
(91, 'Sierra Verde', 'Tour arqueológico en tierras ancestrales', 123.55, 71.87),
(92, 'Cascadas Gemelas', 'Senderismo en parques nacionales', 226.99, 42.3),
(93, 'Raíces Ancestrales', 'Navegación por un lago cristalino', 260.31, 103.98),
(94, 'Sendero del Jaguar', 'Aventura en la selva tropical', 152.43, 88.74),
(95, 'Raíces Ancestrales', 'Tour arqueológico en tierras ancestrales', 250.43, 123.41),
(96, 'Cañón del Trueno', 'Experiencia cultural en pueblos indígenas', 258.2, 50.7),
(97, 'Bahía Esmeralda', 'Ascenso a las cumbres más altas', 224.29, 32.02),
(98, 'Selva Mística', 'Recorrido en tren por paisajes inolvidables', 281.36, 83.5),
(99, 'Ruta de la Cerveza', 'Visita a antiguas ciudades coloniales', 189.73, 81.79),
(100, 'Volcán Activo', 'Aventura en la selva tropical', 210.37, 134.18),
(101, 'Arrecife Perdido', 'Recorrido en tren por paisajes inolvidables', 220.28, 76.19),
(102, 'Ciudad Histórica', 'Tour en barco por ríos majestuosos', 78.33, 32.17),
(103, 'Misterios de la Selva', 'Exploración de cavernas subterráneas', 58.79, 35.18),
(104, 'Desierto Dorado', 'Exploración en un entorno natural único', 71.1, 73.99),
(105, 'Bahía Azul', 'Viaje escénico por la costa', 219.27, 46.36),
(106, 'Estrella del Norte', 'Exploración de cavernas subterráneas', 85.2, 68.39),
(107, 'Paso de los Vientos', 'Ruta gastronómica con degustaciones', 177.67, 32.08),
(108, 'Sierra Verde', 'Navegación por un lago cristalino', 199.02, 37.57),
(109, 'Grutas del Tiempo', 'Ruta vinícola con catas incluidas', 142.65, 29.58),
(110, 'Horizontes Verdes', 'Expedición en el desierto más cálido', 95.44, 48.02),
(111, 'Estrella del Norte', 'Aventura en la selva tropical', 170.88, 48.33),
(112, 'Ruta del Sol', 'Ascenso a las cumbres más altas', 128.91, 133.05),
(113, 'Desierto Dorado', 'Fotografía de vida salvaje en su hábitat', 138.32, 138.87),
(114, 'Ciudad Histórica', 'Travesía en bicicleta por paisajes épicos', 92.25, 102.18),
(115, 'Sendero de los Andes', 'Ascenso a las cumbres más altas', 238.7, 88.44),
(116, 'Reserva de los Tiempos', 'Travesía en bicicleta por paisajes épicos', 254.32, 132.09),
(117, 'Desierto Dorado', 'Navegación por un lago cristalino', 293.63, 63.39),
(118, 'Arrecife Perdido', 'Caminata por senderos místicos', 197.41, 143.82),
(119, 'Valle de las Maravillas', 'Experiencia cultural en pueblos indígenas', 155.15, 74.55),
(120, 'El Camino del Dragón', 'Experiencia cultural en pueblos indígenas', 109.39, 59.57),
(121, 'Isla del Tesoro', 'Experiencia cultural en pueblos indígenas', 269.47, 77.57),
(122, 'Grutas del Tiempo', 'Recorrido por montañas impresionantes', 287.86, 144.55),
(123, 'Bahía Azul', 'Ascenso a las cumbres más altas', 222.4, 100.18),
(124, 'Cataratas del Este', 'Exploración en un entorno natural único', 199.55, 96.13),
(125, 'Costa Dorada', 'Ruta vinícola con catas incluidas', 60.89, 82.1),
(126, 'Montaña Aventura', 'Visita a antiguas ciudades coloniales', 278.55, 123.38),
(127, 'Misterios de la Selva', 'Expedición en el desierto más cálido', 292.12, 26.48),
(128, 'Estrella del Norte', 'Circuito de cascadas escondidas', 287.85, 114.94),
(129, 'Cascadas Gemelas', 'Senderismo en parques nacionales', 53.4, 41.07),
(130, 'Paso de los Vientos', 'Exploración en un entorno natural único', 58.68, 28.11),
(131, 'Misterios de la Selva', 'Experiencia cultural en pueblos indígenas', 130.31, 76.89),
(132, 'Cascadas Gemelas', 'Experiencia cultural en pueblos indígenas', 205.0, 43.45),
(133, 'Puente del Cielo', 'Recorrido en tren por paisajes inolvidables', 239.32, 102.81),
(134, 'Raíces Ancestrales', 'Recorrido por montañas impresionantes', 173.86, 40.07),
(135, 'Parque de los Milagros', 'Fotografía de vida salvaje en su hábitat', 102.89, 25.22),
(136, 'Camino del Inca', 'Visita a antiguas ciudades coloniales', 95.13, 120.93),
(137, 'Reserva Natural', 'Experiencia cultural en pueblos indígenas', 172.2, 81.73),
(138, 'Pico Nevado', 'Travesía en bicicleta por paisajes épicos', 89.09, 32.77),
(139, 'Cañón del Trueno', 'Exploración de cavernas subterráneas', 285.24, 65.35),
(140, 'Camino del Inca', 'Viaje escénico por la costa', 253.75, 55.99),
(141, 'Arrecife Perdido', 'Senderismo en parques nacionales', 178.97, 58.61),
(142, 'Sierra Verde', 'Senderismo en parques nacionales', 203.13, 36.19),
(143, 'Lago Azul', 'Navegación por un lago cristalino', 151.99, 83.09),
(144, 'Mar de Dunas', 'Expedición en el desierto más cálido', 123.22, 51.88),
(145, 'Parque de los Milagros', 'Circuito de cascadas escondidas', 247.11, 96.37),
(146, 'Lago Azul', 'Fotografía de vida salvaje en su hábitat', 134.13, 67.08),
(147, 'Bahía Azul', 'Senderismo en parques nacionales', 231.44, 112.47),
(148, 'Sendero del Puma', 'Navegación por un lago cristalino', 124.1, 109.01),
(149, 'Cumbre del Cóndor', 'Ruta vinícola con catas incluidas', 83.54, 123.61),
(150, 'Pueblo Fantasma', 'Travesía en bicicleta por paisajes épicos', 96.73, 61.31),
(151, 'Isla del Tesoro', 'Visita a antiguas ciudades coloniales', 183.33, 105.5),
(152, 'Costa Dorada', 'Exploración en un entorno natural único', 265.01, 86.53),
(153, 'Lago Azul', 'Exploración en un entorno natural único', 150.83, 76.79),
(154, 'Raíces Ancestrales', 'Circuito de cascadas escondidas', 170.98, 29.23),
(155, 'Camino del Inca', 'Experiencia cultural en pueblos indígenas', 289.95, 93.57),
(156, 'Cascadas Gemelas', 'Tour arqueológico en tierras ancestrales', 278.72, 33.28),
(157, 'Bahía Esmeralda', 'Circuito de cascadas escondidas', 162.56, 98.0),
(158, 'Pico Nevado', 'Exploración en un entorno natural único', 211.93, 37.91),
(159, 'Bosque Encantado', 'Experiencia cultural en pueblos indígenas', 85.66, 104.26),
(160, 'Reserva de los Tiempos', 'Circuito de cascadas escondidas', 247.84, 34.22),
(161, 'Desierto Dorado', 'Navegación por un lago cristalino', 141.04, 107.51),
(162, 'Parque de los Milagros', 'Experiencia cultural en pueblos indígenas', 238.64, 118.1),
(163, 'Cumbre del Cóndor', 'Visita a antiguas ciudades coloniales', 89.61, 34.09),
(164, 'Mar de Dunas', 'Caminata por senderos místicos', 253.7, 67.38),
(165, 'Cueva de Cristal', 'Travesía en bicicleta por paisajes épicos', 97.43, 124.48),
(166, 'Costa Brava', 'Recorrido en tren por paisajes inolvidables', 184.54, 130.05),
(167, 'Reserva Natural', 'Recorrido por montañas impresionantes', 55.08, 32.53),
(168, 'Parque de los Milagros', 'Travesía en bicicleta por paisajes épicos', 112.22, 112.45),
(169, 'Camino del Inca', 'Viaje escénico por la costa', 232.85, 90.66),
(170, 'Ruta del Sol', 'Tour arqueológico en tierras ancestrales', 294.57, 66.18),
(171, 'Camino del Inca', 'Aventura en la selva tropical', 251.86, 127.01),
(172, 'Sendero del Puma', 'Navegación por un lago cristalino', 145.38, 34.72),
(173, 'Pico Nevado', 'Ruta gastronómica con degustaciones', 175.87, 100.23),
(174, 'Costa Brava', 'Recorrido en tren por paisajes inolvidables', 73.65, 52.13),
(175, 'Reserva Natural', 'Experiencia cultural en pueblos indígenas', 282.37, 83.14),
(176, 'Estrella del Norte', 'Navegación por un lago cristalino', 198.63, 48.05),
(177, 'Montaña Aventura', 'Ruta gastronómica con degustaciones', 242.47, 38.64),
(178, 'Bosque Encantado', 'Experiencia cultural en pueblos indígenas', 60.1, 44.79),
(179, 'Montaña Aventura', 'Tour en barco por ríos majestuosos', 275.99, 51.97),
(180, 'Costa Dorada', 'Tour en barco por ríos majestuosos', 181.73, 124.66),
(181, 'Montaña Aventura', 'Tour arqueológico en tierras ancestrales', 137.76, 100.7),
(182, 'Bosque Encantado', 'Navegación por un lago cristalino', 159.21, 100.89),
(183, 'Reserva de los Tiempos', 'Recorrido por montañas impresionantes', 125.68, 74.04),
(184, 'Camino del Inca', 'Ascenso a las cumbres más altas', 79.33, 125.79),
(185, 'Camino del Inca', 'Viaje escénico por la costa', 192.15, 117.39),
(186, 'Sendero del Jaguar', 'Exploración en un entorno natural único', 230.87, 74.19),
(187, 'Montaña Aventura', 'Travesía en bicicleta por paisajes épicos', 229.87, 114.41),
(188, 'Puente del Cielo', 'Ruta vinícola con catas incluidas', 71.41, 74.08),
(189, 'Cataratas del Este', 'Experiencia cultural en pueblos indígenas', 147.16, 54.64),
(190, 'Ruta del Valle', 'Caminata por senderos místicos', 168.45, 128.9),
(191, 'Mar de Dunas', 'Ruta gastronómica con degustaciones', 84.85, 131.31),
(192, 'Arrecife Perdido', 'Senderismo en parques nacionales', 134.8, 69.27),
(193, 'Bahía Azul', 'Ascenso a las cumbres más altas', 198.47, 125.06),
(194, 'Ruta del Sol', 'Experiencia cultural en pueblos indígenas', 120.29, 49.55),
(195, 'Bahía Azul', 'Ruta gastronómica con degustaciones', 121.4, 105.03),
(196, 'Pueblo Fantasma', 'Circuito de cascadas escondidas', 83.74, 85.18),
(197, 'Monte Sagrado', 'Ascenso a las cumbres más altas', 113.54, 128.52),
(198, 'Ruta de la Cerveza', 'Visita a antiguas ciudades coloniales', 71.69, 116.82),
(199, 'Cascadas Gemelas', 'Tour arqueológico en tierras ancestrales', 139.6, 51.04),
(200, 'Ruta de la Cerveza', 'Viaje escénico por la costa', 131.99, 145.19),
(201, 'Monte Sagrado', 'Recorrido en tren por paisajes inolvidables', 238.25, 125.28),
(202, 'Horizontes Verdes', 'Ruta gastronómica con degustaciones', 251.91, 138.17),
(203, 'Raíces Ancestrales', 'Senderismo en parques nacionales', 63.01, 31.33),
(204, 'Bahía Azul', 'Viaje escénico por la costa', 135.89, 85.74),
(205, 'Cataratas del Este', 'Viaje escénico por la costa', 107.61, 97.38),
(206, 'Isla del Tesoro', 'Tour arqueológico en tierras ancestrales', 183.62, 38.21),
(207, 'Costa Brava', 'Aventura en la selva tropical', 189.61, 115.71),
(208, 'Cañón del Trueno', 'Viaje escénico por la costa', 194.91, 63.97),
(209, 'Volcán Activo', 'Ruta vinícola con catas incluidas', 267.62, 109.46),
(210, 'Costa Dorada', 'Ruta gastronómica con degustaciones', 232.08, 39.27),
(211, 'El Camino del Dragón', 'Recorrido por montañas impresionantes', 287.17, 126.1),
(212, 'Volcán Activo', 'Experiencia cultural en pueblos indígenas', 208.0, 41.63),
(213, 'Arrecife Perdido', 'Navegación por un lago cristalino', 59.54, 37.24),
(214, 'Raíces Ancestrales', 'Exploración en un entorno natural único', 229.05, 105.93),
(215, 'Paso de los Vientos', 'Exploración de cavernas subterráneas', 238.93, 30.32),
(216, 'Valle de las Maravillas', 'Exploración de cavernas subterráneas', 58.01, 114.82),
(217, 'Reserva Natural', 'Recorrido por montañas impresionantes', 217.26, 121.99),
(218, 'Cumbre del Cóndor', 'Fotografía de vida salvaje en su hábitat', 227.82, 122.19),
(219, 'Parque de los Milagros', 'Ruta vinícola con catas incluidas', 70.05, 46.18),
(220, 'Desierto Dorado', 'Senderismo en parques nacionales', 261.4, 44.29),
(221, 'Selva Mística', 'Ruta gastronómica con degustaciones', 59.45, 63.99),
(222, 'Cañón del Trueno', 'Ruta gastronómica con degustaciones', 161.21, 91.21),
(223, 'Sendero del Jaguar', 'Recorrido por montañas impresionantes', 60.94, 117.3),
(224, 'Ruta del Sol', 'Senderismo en parques nacionales', 251.08, 38.72),
(225, 'Desierto Dorado', 'Recorrido en tren por paisajes inolvidables', 75.9, 34.21),
(226, 'Cumbre del Cóndor', 'Viaje escénico por la costa', 50.79, 41.58),
(227, 'Montaña Aventura', 'Expedición en el desierto más cálido', 248.9, 118.54),
(228, 'Bahía Esmeralda', 'Visita a antiguas ciudades coloniales', 84.49, 87.05),
(229, 'Costa Brava', 'Recorrido por montañas impresionantes', 73.82, 143.61),
(230, 'Pueblo Fantasma', 'Exploración de cavernas subterráneas', 169.95, 20.58),
(231, 'Lago Azul', 'Exploración de cavernas subterráneas', 196.34, 95.21),
(232, 'Sendero de los Andes', 'Travesía en bicicleta por paisajes épicos', 197.13, 138.05),
(233, 'Cueva de Cristal', 'Ruta gastronómica con degustaciones', 153.83, 75.94),
(234, 'Estrella del Norte', 'Visita a antiguas ciudades coloniales', 278.94, 114.65),
(235, 'Ciudad Histórica', 'Viaje escénico por la costa', 114.4, 33.46),
(236, 'Isla del Tesoro', 'Exploración en un entorno natural único', 158.88, 97.64),
(237, 'Cumbre del Cóndor', 'Caminata por senderos místicos', 294.28, 23.9),
(238, 'Cascadas Gemelas', 'Viaje escénico por la costa', 231.13, 66.96),
(239, 'Monte Sagrado', 'Senderismo en parques nacionales', 291.43, 46.91),
(240, 'Misterios de la Selva', 'Senderismo en parques nacionales', 54.75, 40.01),
(241, 'Camino del Inca', 'Circuito de cascadas escondidas', 222.74, 65.78),
(242, 'Isla del Tesoro', 'Expedición en el desierto más cálido', 130.35, 100.83),
(243, 'Cueva de Cristal', 'Tour arqueológico en tierras ancestrales', 245.97, 104.71),
(244, 'Raíces Ancestrales', 'Expedición en el desierto más cálido', 190.97, 131.23),
(245, 'Cascadas Gemelas', 'Recorrido en tren por paisajes inolvidables', 125.85, 99.49),
(246, 'Bahía Esmeralda', 'Exploración en un entorno natural único', 112.36, 97.74),
(247, 'Montaña Aventura', 'Viaje escénico por la costa', 100.19, 74.54),
(248, 'Parque de los Milagros', 'Visita a antiguas ciudades coloniales', 191.27, 138.83),
(249, 'Estrella del Norte', 'Expedición en el desierto más cálido', 161.3, 133.88),
(250, 'Ruta del Sol', 'Ascenso a las cumbres más altas', 102.97, 142.54),
(251, 'Montaña Aventura', 'Navegación por un lago cristalino', 157.18, 50.89),
(252, 'Volcán Activo', 'Experiencia cultural en pueblos indígenas', 291.18, 47.26),
(253, 'Sendero de los Andes', 'Senderismo en parques nacionales', 283.31, 105.31),
(254, 'Río Escondido', 'Travesía en bicicleta por paisajes épicos', 209.67, 39.78),
(255, 'Volcán Activo', 'Exploración de cavernas subterráneas', 152.45, 42.56),
(256, 'Llanuras del Alba', 'Senderismo en parques nacionales', 262.32, 67.83),
(257, 'Ruta del Valle', 'Experiencia cultural en pueblos indígenas', 133.13, 76.65),
(258, 'Puente del Cielo', 'Travesía en bicicleta por paisajes épicos', 150.22, 20.36),
(259, 'Cañón del Trueno', 'Fotografía de vida salvaje en su hábitat', 226.57, 93.01),
(260, 'Laguna de los Sueños', 'Expedición en el desierto más cálido', 223.85, 102.59),
(261, 'Costa Dorada', 'Ruta vinícola con catas incluidas', 187.31, 71.22),
(262, 'Llanuras del Alba', 'Ascenso a las cumbres más altas', 135.16, 42.66),
(263, 'Paso de los Vientos', 'Travesía en bicicleta por paisajes épicos', 63.78, 65.87),
(264, 'Costa Dorada', 'Aventura en la selva tropical', 291.89, 122.03),
(265, 'Llanuras del Alba', 'Aventura en la selva tropical', 204.17, 126.69),
(266, 'Sierra Verde', 'Tour arqueológico en tierras ancestrales', 121.62, 63.21),
(267, 'Reserva de los Tiempos', 'Ascenso a las cumbres más altas', 85.87, 130.16),
(268, 'Bosque Encantado', 'Expedición en el desierto más cálido', 173.65, 120.88),
(269, 'El Camino del Dragón', 'Ruta vinícola con catas incluidas', 57.13, 83.44),
(270, 'Ciudad Histórica', 'Ascenso a las cumbres más altas', 124.41, 73.19),
(271, 'Reserva Natural', 'Ruta gastronómica con degustaciones', 175.73, 64.2),
(272, 'Raíces Ancestrales', 'Fotografía de vida salvaje en su hábitat', 284.31, 36.29),
(273, 'Grutas del Tiempo', 'Visita a antiguas ciudades coloniales', 130.05, 34.32),
(274, 'Desierto Dorado', 'Travesía en bicicleta por paisajes épicos', 221.87, 61.89),
(275, 'Isla del Tesoro', 'Recorrido por montañas impresionantes', 193.24, 119.67),
(276, 'Horizontes Verdes', 'Aventura en la selva tropical', 191.93, 76.24),
(277, 'Monte Sagrado', 'Ruta vinícola con catas incluidas', 208.13, 122.01),
(278, 'Llanuras del Alba', 'Aventura en la selva tropical', 93.16, 122.6),
(279, 'Arrecife Perdido', 'Travesía en bicicleta por paisajes épicos', 208.71, 37.8),
(280, 'Ruta del Sol', 'Caminata por senderos místicos', 71.61, 90.23),
(281, 'Valle de las Maravillas', 'Recorrido por montañas impresionantes', 118.78, 29.49),
(282, 'Pico Nevado', 'Experiencia cultural en pueblos indígenas', 73.93, 141.06),
(283, 'Laguna de los Sueños', 'Exploración en un entorno natural único', 273.46, 43.17),
(284, 'Cumbre del Cóndor', 'Travesía en bicicleta por paisajes épicos', 95.05, 112.98),
(285, 'Ruta del Valle', 'Visita a antiguas ciudades coloniales', 192.81, 51.85),
(286, 'Desierto Dorado', 'Navegación por un lago cristalino', 161.37, 84.15),
(287, 'Misterios de la Selva', 'Senderismo en parques nacionales', 182.18, 80.54),
(288, 'Sierra Verde', 'Navegación por un lago cristalino', 71.71, 37.32),
(289, 'Valle de las Maravillas', 'Exploración en un entorno natural único', 259.62, 38.57),
(290, 'Reserva Natural', 'Caminata por senderos místicos', 153.22, 57.01),
(291, 'Bahía Azul', 'Tour arqueológico en tierras ancestrales', 104.26, 54.74),
(292, 'Laguna de los Sueños', 'Exploración en un entorno natural único', 162.83, 136.11),
(293, 'Volcán Activo', 'Experiencia cultural en pueblos indígenas', 82.4, 57.2),
(294, 'Ciudad Histórica', 'Ascenso a las cumbres más altas', 186.73, 31.48),
(295, 'Sendero del Jaguar', 'Exploración de cavernas subterráneas', 96.12, 52.32),
(296, 'Lago Azul', 'Senderismo en parques nacionales', 236.51, 71.84),
(297, 'Monte Sagrado', 'Tour en barco por ríos majestuosos', 119.32, 99.46),
(298, 'Desierto Dorado', 'Tour en barco por ríos majestuosos', 171.39, 38.56),
(299, 'Valle de las Maravillas', 'Aventura en la selva tropical', 169.95, 21.57),
(300, 'Reserva Natural', 'Aventura en la selva tropical', 271.7, 49.05);
SET IDENTITY_INSERT Routes OFF;

-- Insertar conductores
SET IDENTITY_INSERT Drivers ON;
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (1, '7154956OR', 'Juan Díaz', '746024665', 'Calle Falsa 123');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (2, '8700456PN', 'José Fernández', '744998101', 'Calle Falsa 123');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (3, '4171987OR', 'Miguel Gómez', '679035072', 'Av. Independencia 357');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (4, '5862527QR', 'Carlos Gómez', '780488465', 'Av. Independencia 357');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (5, '9282023QR', 'Ana Pérez', '622262990', 'Av. Libertador 963');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (6, '2519400SC', 'Sofía Fernández', '656566008', 'Av. Independencia 357');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (7, '2330440SC', 'Juan Pérez', '608460983', 'Av. Principal 456');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (8, '4416770CB', 'Pedro Pérez', '624948430', 'Av. Independencia 357');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (9, '9029896OR', 'Laura Vargas', '641429674', 'Calle Secundaria 789');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (10, '4274612CB', 'Ana Torres', '790039314', 'Av. Libertador 963');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (11, '1965457OR', 'Ana Fernández', '700042688', 'Calle Falsa 123');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (12, '6661208BN', 'Juan Torres', '741344308', 'Calle Falsa 123');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (13, '1772770PT', 'Pedro Vargas', '703051698', 'Av. Bolívar 258');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (14, '8917735PN', 'María López', '707262254', 'Av. Independencia 357');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (15, '7945753QR', 'Pedro Vargas', '720168447', 'Av. Central 852');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (16, '7860336TJ', 'Ana Castro', '628922927', 'Calle Secundaria 789');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (17, '4914192OR', 'Laura Rojas', '772451412', 'Calle Arce 741');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (18, '3095388QR', 'Sofía Torres', '742689215', 'Av. Independencia 357');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (19, '6886002TJ', 'Juan Fernández', '794950902', 'Av. Principal 456');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (20, '9791585PT', 'Carlos Pérez', '784155000', 'Calle Secundaria 789');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (21, '6697688TJ', 'Sofía López', '612023357', 'Calle Falsa 123');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (22, '3336077LP', 'José Torres', '796960472', 'Av. Principal 456');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (23, '5576971PN', 'Ana López', '605829752', 'Calle Sucre 159');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (24, '9011353OR', 'Miguel López', '786046229', 'Av. Central 852');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (25, '5324542OR', 'Juan Díaz', '746863166', 'Av. Independencia 357');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (26, '5663306PN', 'Miguel Díaz', '749688944', 'Calle Sucre 159');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (27, '1232184CB', 'Carlos Castro', '664064875', 'Calle Secundaria 789');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (28, '1012581LP', 'Miguel López', '629524302', 'Calle Falsa 123');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (29, '9124454PN', 'Ana Gómez', '742942832', 'Calle Arce 741');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (30, '4264701LP', 'Pedro Pérez', '796084385', 'Av. Central 852');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (31, '9790902PT', 'Miguel Fernández', '737640825', 'Av. Independencia 357');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (32, '3293571SC', 'Carlos Gómez', '641916730', 'Calle Sucre 159');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (33, '1093344CH', 'Ana López', '735920295', 'Calle Los Pinos 321');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (34, '6444095TJ', 'Miguel Díaz', '728591062', 'Av. Principal 456');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (35, '1305747CB', 'Juan Díaz', '662763283', 'Calle Secundaria 789');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (36, '4796957CH', 'Sofía Pérez', '744053356', 'Av. Principal 456');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (37, '3797458CB', 'Pedro López', '658849327', 'Av. Central 852');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (38, '7208861TJ', 'María Rojas', '720636787', 'Calle Falsa 123');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (39, '2117308PT', 'Laura Pérez', '601958346', 'Av. Libertador 963');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (40, '5276754CB', 'Luis Fernández', '628238566', 'Av. Independencia 357');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (41, '1901860CB', 'Sofía López', '725151543', 'Av. Central 852');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (42, '9444621QR', 'Pedro Torres', '731361916', 'Calle Los Pinos 321');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (43, '3147513BN', 'Miguel Fernández', '669721531', 'Av. Bolívar 258');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (44, '9926552QR', 'Luis Fernández', '673063187', 'Calle Los Pinos 321');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (45, '9711789PT', 'María Díaz', '790582655', 'Calle Sucre 159');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (46, '3078910PT', 'Juan López', '798952295', 'Calle Los Pinos 321');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (47, '4099552SC', 'José Torres', '626623652', 'Calle Sucre 159');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (48, '5480103PT', 'Laura Gómez', '692781299', 'Calle Sucre 159');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (49, '1041243QR', 'Juan Vargas', '690500783', 'Av. Independencia 357');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (50, '5030920LP', 'José López', '641688278', 'Av. Bolívar 258');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (51, '3526009QR', 'Luis Torres', '728481049', 'Av. Independencia 357');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (52, '6536295CH', 'Miguel Castro', '669671183', 'Calle Sucre 159');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (53, '3033774PT', 'Sofía Gómez', '610871015', 'Av. Independencia 357');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (54, '7776343TJ', 'Miguel Pérez', '772628868', 'Calle Los Pinos 321');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (55, '3192065OR', 'María Pérez', '655944944', 'Av. Principal 456');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (56, '8817094LP', 'Ana Rojas', '743830287', 'Av. Central 852');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (57, '6272197PN', 'José Rojas', '681101597', 'Calle Secundaria 789');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (58, '7372618QR', 'María Díaz', '686716766', 'Av. Independencia 357');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (59, '3648189LP', 'Luis Rojas', '720161459', 'Av. Principal 456');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (60, '6920757OR', 'José López', '692557067', 'Av. Independencia 357');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (61, '4612441LP', 'Miguel Gómez', '673941644', 'Calle Arce 741');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (62, '7692357OR', 'Pedro López', '629541836', 'Av. Libertador 963');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (63, '8353835CH', 'Ana Pérez', '676044702', 'Calle Los Pinos 321');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (64, '9138741PT', 'Carlos Pérez', '723682484', 'Av. Independencia 357');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (65, '6980767TJ', 'Miguel Ramírez', '738469703', 'Calle Sucre 159');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (66, '9261223LP', 'María López', '638785464', 'Calle Arce 741');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (67, '7187692OR', 'Ana Torres', '701003720', 'Calle Los Pinos 321');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (68, '6550950PT', 'Juan Torres', '707017203', 'Av. Libertador 963');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (69, '8528774TJ', 'María Gómez', '700141127', 'Calle Los Pinos 321');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (70, '5646310CB', 'Luis Rojas', '687270296', 'Av. Libertador 963');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (71, '6500666CB', 'Carlos López', '694964721', 'Av. Bolívar 258');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (72, '6806171CH', 'José Fernández', '776606976', 'Av. Bolívar 258');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (73, '9749982SC', 'Sofía Pérez', '687164609', 'Av. Principal 456');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (74, '3603004PN', 'Ana Gómez', '685401433', 'Calle Secundaria 789');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (75, '5886436CB', 'Luis Rojas', '772503044', 'Av. Central 852');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (76, '5205471QR', 'Miguel Castro', '640753779', 'Calle Los Pinos 321');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (77, '7865777PN', 'Pedro Fernández', '631130740', 'Calle Arce 741');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (78, '6468174BN', 'María Vargas', '795607165', 'Calle Los Pinos 321');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (79, '6254523QR', 'Ana Torres', '783112980', 'Calle Sucre 159');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (80, '5509650OR', 'Miguel Torres', '644604938', 'Calle Sucre 159');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (81, '2209704BN', 'Pedro Ramírez', '634423909', 'Calle Falsa 123');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (82, '3096948LP', 'Juan Fernández', '683389453', 'Av. Libertador 963');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (83, '1401357PT', 'Luis Vargas', '752058470', 'Av. Independencia 357');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (84, '2645209CB', 'Sofía Ramírez', '659889137', 'Calle Los Pinos 321');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (85, '5885213QR', 'Laura Castro', '626040969', 'Av. Principal 456');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (86, '8161415CB', 'Sofía Díaz', '714292015', 'Av. Central 852');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (87, '7173701CB', 'Miguel Castro', '667767348', 'Av. Bolívar 258');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (88, '7422014TJ', 'Laura Rojas', '638102238', 'Av. Bolívar 258');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (89, '1117969SC', 'Juan Castro', '715992703', 'Calle Los Pinos 321');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (90, '2976603LP', 'Sofía Fernández', '675678112', 'Av. Principal 456');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (91, '1027466SC', 'Miguel López', '739271143', 'Av. Independencia 357');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (92, '3418371SC', 'Miguel Rojas', '663722100', 'Calle Secundaria 789');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (93, '6878984BN', 'Carlos Fernández', '697425585', 'Calle Secundaria 789');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (94, '8196423PN', 'María Gómez', '653126265', 'Av. Principal 456');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (95, '1954351SC', 'Luis López', '766560806', 'Av. Bolívar 258');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (96, '3450654CH', 'Laura Fernández', '653384901', 'Calle Secundaria 789');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (97, '6821399OR', 'María Fernández', '757599938', 'Calle Arce 741');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (98, '7207818QR', 'Sofía Díaz', '642654358', 'Av. Principal 456');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (99, '3707137OR', 'Laura Fernández', '794699613', 'Av. Bolívar 258');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (100, '9597845BN', 'Laura Díaz', '727123400', 'Calle Sucre 159');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (101, '3100152CH', 'Juan Torres', '674547307', 'Av. Independencia 357');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (102, '8785024TJ', 'Sofía Ramírez', '709359095', 'Av. Independencia 357');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (103, '1203762LP', 'Ana Vargas', '678387690', 'Av. Libertador 963');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (104, '7333164OR', 'Sofía Fernández', '652798196', 'Av. Independencia 357');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (105, '6306300SC', 'Miguel López', '754319163', 'Av. Central 852');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (106, '7597510SC', 'Ana Ramírez', '630647956', 'Av. Principal 456');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (107, '8516574SC', 'Ana Vargas', '707173601', 'Av. Central 852');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (108, '4155993CB', 'Carlos Vargas', '717742740', 'Calle Sucre 159');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (109, '7065643QR', 'Laura Gómez', '721738675', 'Calle Secundaria 789');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (110, '8466160QR', 'Laura Ramírez', '628723769', 'Av. Independencia 357');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (111, '5676011SC', 'Carlos Vargas', '602177852', 'Av. Independencia 357');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (112, '2921529PN', 'Carlos Castro', '696621939', 'Av. Independencia 357');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (113, '8746679OR', 'Carlos Díaz', '664441431', 'Av. Libertador 963');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (114, '1362381PN', 'Pedro Rojas', '736707071', 'Calle Sucre 159');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (115, '8587620QR', 'Miguel Vargas', '683049189', 'Av. Independencia 357');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (116, '3181765PT', 'Miguel Vargas', '677959498', 'Av. Central 852');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (117, '7039189CB', 'Laura Ramírez', '791418737', 'Av. Central 852');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (118, '7386068OR', 'Miguel Pérez', '628964210', 'Calle Arce 741');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (119, '6687369CB', 'Laura Díaz', '645048317', 'Av. Libertador 963');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (120, '1117264QR', 'María Vargas', '749025015', 'Av. Central 852');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (121, '8182573QR', 'María Ramírez', '615803484', 'Av. Independencia 357');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (122, '8727766TJ', 'Miguel Vargas', '605533584', 'Calle Falsa 123');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (123, '6240176LP', 'Luis Vargas', '723164600', 'Av. Bolívar 258');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (124, '7069822PT', 'María Ramírez', '782481215', 'Calle Arce 741');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (125, '8838552SC', 'Laura Castro', '636094158', 'Calle Falsa 123');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (126, '3260919BN', 'Laura Vargas', '692898392', 'Calle Sucre 159');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (127, '2822536BN', 'Carlos Díaz', '706195121', 'Calle Arce 741');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (128, '7072476PT', 'José Rojas', '685847766', 'Calle Falsa 123');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (129, '5439758LP', 'Pedro Rojas', '751705151', 'Calle Sucre 159');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (130, '8056453OR', 'José López', '698789436', 'Av. Principal 456');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (131, '5358951PN', 'Pedro Castro', '708806968', 'Calle Secundaria 789');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (132, '5316672TJ', 'Laura Castro', '754845990', 'Calle Secundaria 789');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (133, '7970775CH', 'Miguel Rojas', '646102701', 'Calle Los Pinos 321');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (134, '9061755BN', 'Luis Díaz', '740228288', 'Calle Los Pinos 321');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (135, '1031779PN', 'Pedro Castro', '792718341', 'Av. Libertador 963');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (136, '4752959TJ', 'Laura Fernández', '794207740', 'Av. Independencia 357');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (137, '3598392BN', 'Ana Castro', '794904759', 'Av. Principal 456');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (138, '3072629OR', 'Pedro Castro', '611542474', 'Calle Sucre 159');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (139, '6628107TJ', 'Pedro López', '695877593', 'Av. Principal 456');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (140, '8281769BN', 'Luis Gómez', '778055400', 'Calle Falsa 123');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (141, '2922839CH', 'José López', '654621552', 'Calle Secundaria 789');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (142, '3891841SC', 'José Díaz', '692711765', 'Calle Los Pinos 321');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (143, '2989494OR', 'José Fernández', '710744049', 'Av. Principal 456');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (144, '2910555BN', 'Ana Ramírez', '784592790', 'Av. Central 852');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (145, '1694927OR', 'Juan Ramírez', '773910281', 'Calle Arce 741');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (146, '6471498PN', 'Luis Pérez', '662968700', 'Av. Bolívar 258');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (147, '3894878PT', 'Miguel López', '632804875', 'Av. Independencia 357');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (148, '5113333LP', 'Pedro Rojas', '701944232', 'Av. Central 852');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (149, '5209518LP', 'Laura López', '779339507', 'Av. Bolívar 258');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (150, '6493581CB', 'Carlos Pérez', '679272041', 'Av. Central 852');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (151, '7957727PT', 'Laura López', '786143651', 'Av. Bolívar 258');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (152, '2150387PN', 'Ana Gómez', '731045675', 'Av. Principal 456');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (153, '3078186CB', 'Carlos Torres', '616442760', 'Av. Principal 456');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (154, '9698107PT', 'Sofía Ramírez', '645731901', 'Av. Bolívar 258');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (155, '9058785BN', 'Miguel Gómez', '669466254', 'Av. Central 852');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (156, '1800052PN', 'Miguel Pérez', '798642329', 'Av. Bolívar 258');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (157, '2355229QR', 'Luis Pérez', '728322640', 'Calle Secundaria 789');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (158, '1969076BN', 'Juan Gómez', '696261352', 'Calle Arce 741');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (159, '6013978PN', 'Carlos Pérez', '666864798', 'Calle Falsa 123');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (160, '2230515PN', 'Carlos Pérez', '620787989', 'Calle Los Pinos 321');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (161, '2284220QR', 'María Castro', '712625645', 'Calle Sucre 159');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (162, '4650310PT', 'Sofía Ramírez', '635742866', 'Av. Bolívar 258');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (163, '8001761PT', 'Carlos Ramírez', '653780284', 'Calle Sucre 159');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (164, '7956995LP', 'Luis Díaz', '609507681', 'Calle Arce 741');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (165, '3476306BN', 'Ana Torres', '604188362', 'Av. Independencia 357');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (166, '8068534PT', 'Ana Fernández', '754361440', 'Av. Independencia 357');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (167, '7976972LP', 'Laura Fernández', '642863339', 'Av. Principal 456');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (168, '6403687TJ', 'Miguel Torres', '733159024', 'Av. Independencia 357');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (169, '5974087BN', 'José Pérez', '658525831', 'Calle Secundaria 789');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (170, '3926313PT', 'Pedro Fernández', '753846484', 'Calle Sucre 159');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (171, '9371166LP', 'Carlos Fernández', '654034285', 'Av. Bolívar 258');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (172, '4096357LP', 'Ana Pérez', '754828183', 'Calle Falsa 123');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (173, '8150444SC', 'Luis Pérez', '654331229', 'Av. Central 852');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (174, '3434560OR', 'Carlos Díaz', '792676238', 'Calle Los Pinos 321');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (175, '8791606CH', 'Carlos Pérez', '623436264', 'Av. Bolívar 258');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (176, '6434681OR', 'María Díaz', '681503155', 'Av. Libertador 963');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (177, '9353557PN', 'José Ramírez', '761171626', 'Calle Arce 741');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (178, '4596566TJ', 'Ana Ramírez', '601351987', 'Av. Libertador 963');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (179, '6690521PT', 'Sofía Díaz', '670712868', 'Calle Los Pinos 321');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (180, '5219644BN', 'Carlos Gómez', '682310368', 'Calle Secundaria 789');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (181, '6834907LP', 'Miguel Vargas', '767243021', 'Calle Sucre 159');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (182, '9727787CB', 'Miguel Ramírez', '684799890', 'Av. Central 852');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (183, '4773324SC', 'Miguel Rojas', '795092600', 'Calle Falsa 123');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (184, '1823989PT', 'Miguel Díaz', '712820017', 'Av. Principal 456');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (185, '9315123TJ', 'José Vargas', '739517659', 'Av. Bolívar 258');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (186, '8349892BN', 'María Ramírez', '664858557', 'Calle Arce 741');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (187, '6690097CB', 'José Pérez', '705523745', 'Av. Libertador 963');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (188, '6250043SC', 'Juan Torres', '786363430', 'Av. Libertador 963');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (189, '9236344TJ', 'Miguel López', '641737645', 'Calle Secundaria 789');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (190, '6127595QR', 'José Pérez', '755956209', 'Calle Falsa 123');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (191, '1178452CB', 'Carlos Pérez', '638162413', 'Av. Central 852');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (192, '9674433OR', 'José Castro', '650792532', 'Av. Libertador 963');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (193, '1703465QR', 'Pedro Ramírez', '615178512', 'Av. Libertador 963');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (194, '7114676PT', 'María Gómez', '727108813', 'Calle Falsa 123');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (195, '7732835BN', 'Ana Rojas', '638566321', 'Calle Sucre 159');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (196, '8225738SC', 'Sofía Castro', '709061261', 'Calle Secundaria 789');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (197, '7227927CH', 'José Castro', '603968468', 'Calle Arce 741');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (198, '9072575TJ', 'Sofía Rojas', '614195947', 'Av. Bolívar 258');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (199, '1934739OR', 'María Torres', '745831975', 'Calle Los Pinos 321');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (200, '1476104SC', 'Juan Gómez', '695369883', 'Av. Central 852');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (201, '3905424QR', 'Sofía Pérez', '764903693', 'Calle Falsa 123');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (202, '7087872TJ', 'Sofía Vargas', '621106848', 'Calle Sucre 159');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (203, '6236117CH', 'Ana Gómez', '795571230', 'Calle Sucre 159');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (204, '7132947QR', 'Pedro Gómez', '710152147', 'Av. Libertador 963');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (205, '4311398PN', 'Miguel Fernández', '662199297', 'Av. Libertador 963');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (206, '5808100QR', 'Laura Torres', '774452170', 'Calle Arce 741');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (207, '2792392CH', 'José Torres', '635676521', 'Av. Bolívar 258');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (208, '3643594CH', 'José Díaz', '707820997', 'Av. Principal 456');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (209, '9073831CH', 'José Vargas', '633184771', 'Av. Bolívar 258');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (210, '2201264CH', 'Sofía Vargas', '609209640', 'Calle Los Pinos 321');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (211, '3449698SC', 'Pedro Castro', '756441342', 'Calle Falsa 123');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (212, '8661901SC', 'Ana Castro', '698111333', 'Av. Bolívar 258');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (213, '4311177OR', 'Carlos Ramírez', '643917216', 'Calle Falsa 123');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (214, '9329300CB', 'Pedro Ramírez', '625445737', 'Calle Falsa 123');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (215, '6107113CB', 'Miguel Vargas', '683261539', 'Calle Sucre 159');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (216, '8482187LP', 'Luis Gómez', '758323665', 'Av. Central 852');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (217, '5069664PN', 'María Fernández', '744943817', 'Av. Independencia 357');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (218, '4392403BN', 'José Fernández', '791548453', 'Calle Falsa 123');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (219, '5326899CB', 'Juan Torres', '705869924', 'Av. Libertador 963');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (220, '8648095LP', 'Ana Castro', '693409932', 'Av. Principal 456');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (221, '3202595CB', 'José Castro', '734893703', 'Calle Falsa 123');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (222, '6512041LP', 'Juan Fernández', '697618205', 'Av. Central 852');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (223, '5130315SC', 'Ana Vargas', '712626024', 'Av. Bolívar 258');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (224, '1100735SC', 'Pedro Fernández', '730856998', 'Av. Libertador 963');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (225, '9315817OR', 'Luis Torres', '790248048', 'Calle Secundaria 789');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (226, '6575961PN', 'Carlos Castro', '745377116', 'Av. Independencia 357');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (227, '1513063PT', 'Pedro Fernández', '762783173', 'Av. Bolívar 258');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (228, '3240452PN', 'Laura Rojas', '641657815', 'Calle Falsa 123');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (229, '5787613TJ', 'María Fernández', '695420317', 'Av. Principal 456');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (230, '3213580PN', 'Sofía Vargas', '656282941', 'Calle Los Pinos 321');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (231, '7466879CH', 'Sofía Rojas', '725145305', 'Calle Los Pinos 321');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (232, '3085535PT', 'Carlos Ramírez', '757506486', 'Av. Principal 456');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (233, '3703821CH', 'Laura Pérez', '700345823', 'Av. Bolívar 258');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (234, '5084041OR', 'Luis Torres', '613054264', 'Av. Bolívar 258');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (235, '1991312CH', 'José Díaz', '616873463', 'Av. Principal 456');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (236, '4825321CH', 'Ana Díaz', '641965006', 'Av. Principal 456');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (237, '3785716LP', 'Carlos Vargas', '621712279', 'Av. Independencia 357');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (238, '2444603CB', 'José Fernández', '771626368', 'Av. Independencia 357');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (239, '4965783SC', 'Carlos Torres', '664847907', 'Av. Bolívar 258');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (240, '1142388TJ', 'Laura Díaz', '761355271', 'Av. Libertador 963');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (241, '6971954BN', 'Ana Rojas', '768535980', 'Av. Central 852');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (242, '6951911TJ', 'Miguel Rojas', '610529697', 'Av. Principal 456');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (243, '6621241LP', 'José Pérez', '695852989', 'Calle Falsa 123');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (244, '9523821PT', 'Laura Rojas', '606942054', 'Calle Secundaria 789');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (245, '4612857CB', 'Juan Torres', '718738489', 'Av. Principal 456');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (246, '8718755CH', 'Laura Torres', '773191199', 'Calle Falsa 123');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (247, '1792947CB', 'Luis Pérez', '750161292', 'Calle Secundaria 789');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (248, '3660598BN', 'Juan Fernández', '690939500', 'Calle Arce 741');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (249, '2593401CB', 'Miguel Gómez', '766592494', 'Calle Arce 741');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (250, '9206244BN', 'Carlos Ramírez', '777828633', 'Calle Arce 741');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (251, '4764268SC', 'María Vargas', '648142754', 'Av. Bolívar 258');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (252, '7436525BN', 'Sofía Castro', '781454379', 'Calle Sucre 159');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (253, '8124187PN', 'Carlos López', '669203409', 'Calle Arce 741');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (254, '2638452QR', 'Ana Torres', '666335105', 'Calle Secundaria 789');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (255, '4953295PT', 'Juan Pérez', '766563646', 'Av. Central 852');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (256, '5761016CB', 'María Rojas', '771816115', 'Calle Sucre 159');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (257, '3769426OR', 'Ana Gómez', '616824362', 'Calle Los Pinos 321');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (258, '6076945CH', 'Pedro Rojas', '655300881', 'Calle Sucre 159');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (259, '5598632CB', 'Laura Torres', '648247884', 'Calle Sucre 159');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (260, '7807856LP', 'Luis Castro', '681313785', 'Av. Principal 456');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (261, '2831373BN', 'María Gómez', '774649621', 'Av. Libertador 963');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (262, '7205906PT', 'Luis Rojas', '700669318', 'Calle Sucre 159');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (263, '9576104CH', 'Laura Gómez', '732093431', 'Calle Sucre 159');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (264, '4837626LP', 'María Díaz', '744168157', 'Calle Sucre 159');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (265, '4160346SC', 'José Rojas', '634764891', 'Av. Bolívar 258');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (266, '9562204LP', 'Juan Díaz', '791409031', 'Calle Los Pinos 321');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (267, '9740348TJ', 'Luis Rojas', '629853597', 'Av. Libertador 963');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (268, '8700610CH', 'Carlos Castro', '705004841', 'Av. Central 852');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (269, '8611592SC', 'Sofía Díaz', '712504754', 'Calle Sucre 159');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (270, '6564654CH', 'Juan Fernández', '612872594', 'Calle Secundaria 789');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (271, '7419586LP', 'Carlos Castro', '615569640', 'Av. Bolívar 258');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (272, '4451530PN', 'Luis Torres', '792476510', 'Av. Independencia 357');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (273, '2795415QR', 'María Gómez', '772525082', 'Calle Sucre 159');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (274, '8748030PN', 'José Pérez', '785200764', 'Av. Bolívar 258');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (275, '4132653PN', 'Carlos Rojas', '728526120', 'Calle Falsa 123');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (276, '7560738PT', 'Laura Castro', '609528167', 'Av. Independencia 357');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (277, '1886528CH', 'Luis Pérez', '616938067', 'Calle Secundaria 789');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (278, '7870812LP', 'José Vargas', '795193770', 'Calle Arce 741');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (279, '2443721BN', 'Ana Díaz', '638131487', 'Calle Secundaria 789');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (280, '4098861OR', 'José Castro', '632682364', 'Calle Sucre 159');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (281, '9056208CB', 'Pedro Rojas', '601968306', 'Calle Los Pinos 321');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (282, '7328248OR', 'Ana Díaz', '633431084', 'Calle Sucre 159');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (283, '2562972QR', 'Pedro Torres', '708558630', 'Calle Los Pinos 321');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (284, '3289209QR', 'Juan Ramírez', '757184090', 'Calle Los Pinos 321');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (285, '4619935TJ', 'Pedro Rojas', '616894677', 'Av. Libertador 963');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (286, '6939116OR', 'Luis López', '629218415', 'Av. Libertador 963');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (287, '2652318CH', 'Laura Torres', '612935367', 'Av. Libertador 963');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (288, '6559085PT', 'Miguel López', '622117673', 'Calle Falsa 123');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (289, '7826906LP', 'Juan Gómez', '775440896', 'Calle Arce 741');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (290, '6738402BN', 'José López', '721917133', 'Av. Principal 456');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (291, '1088922BN', 'José Rojas', '664776198', 'Calle Los Pinos 321');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (292, '5235749QR', 'Pedro Díaz', '652954703', 'Calle Los Pinos 321');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (293, '4205557SC', 'Sofía Vargas', '658568768', 'Calle Arce 741');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (294, '3465866QR', 'Laura López', '648423605', 'Av. Bolívar 258');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (295, '9294462OR', 'Carlos Ramírez', '637679059', 'Calle Los Pinos 321');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (296, '3984035PT', 'Pedro Castro', '657172120', 'Av. Principal 456');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (297, '4412537OR', 'Ana Fernández', '721553513', 'Av. Libertador 963');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (298, '5094261PT', 'Carlos Fernández', '776464296', 'Calle Secundaria 789');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (299, '5412683LP', 'Sofía Pérez', '754583464', 'Calle Falsa 123');
INSERT INTO Drivers (id, dni, name, phone, address) VALUES (300, '8070917CB', 'José Ramírez', '684779018', 'Av. Independencia 357');
SET IDENTITY_INSERT Drivers OFF;

-- Insertar lugares turísticos
SET IDENTITY_INSERT Places ON;
INSERT INTO Places (id, name) VALUES (1, 'Salar de Uyuni');
INSERT INTO Places (id, name) VALUES (2, 'Laguna Colorada');
INSERT INTO Places (id, name) VALUES (3, 'Isla del Sol');
INSERT INTO Places (id, name) VALUES (4, 'Valle de la Luna');
INSERT INTO Places (id, name) VALUES (5, 'Parque Nacional Madidi');
INSERT INTO Places (id, name) VALUES (6, 'Tiwanaku');
INSERT INTO Places (id, name) VALUES (7, 'Cerro Rico de Potosí');
INSERT INTO Places (id, name) VALUES (8, 'Misión Jesuítica de San José de Chiquitos');
INSERT INTO Places (id, name) VALUES (9, 'Cristo de la Concordia');
INSERT INTO Places (id, name) VALUES (10, 'Yungas Road');
INSERT INTO Places (id, name) VALUES (11, 'Parque Nacional Noel Kempff Mercado');
INSERT INTO Places (id, name) VALUES (12, 'Laguna Verde');
INSERT INTO Places (id, name) VALUES (13, 'Reserva Eduardo Avaroa');
INSERT INTO Places (id, name) VALUES (14, 'Cascadas de Cuevas');
INSERT INTO Places (id, name) VALUES (15, 'Cavernas de Umajalanta');
INSERT INTO Places (id, name) VALUES (16, 'Fortaleza de Samaipata');
INSERT INTO Places (id, name) VALUES (17, 'Laguna Celeste');
INSERT INTO Places (id, name) VALUES (18, 'Lomas de Arena');
INSERT INTO Places (id, name) VALUES (19, 'Puerta del Sol');
INSERT INTO Places (id, name) VALUES (20, 'Palacio de Sal');
INSERT INTO Places (id, name) VALUES (21, 'Mirador Laikakota');
INSERT INTO Places (id, name) VALUES (22, 'Río Yacuma');
INSERT INTO Places (id, name) VALUES (23, 'Lago Titicaca');
INSERT INTO Places (id, name) VALUES (24, 'Cataratas Arco Iris');
INSERT INTO Places (id, name) VALUES (25, 'Piedra de los Apóstoles');
INSERT INTO Places (id, name) VALUES (26, 'Potosí Casa de la Moneda');
INSERT INTO Places (id, name) VALUES (27, 'Mercado de las Brujas');
INSERT INTO Places (id, name) VALUES (28, 'Samaipata');
INSERT INTO Places (id, name) VALUES (29, 'Parque Amboró');
INSERT INTO Places (id, name) VALUES (30, 'Mirador Killi Killi');
INSERT INTO Places (id, name) VALUES (31, 'San Javier Misiones Jesuíticas');
INSERT INTO Places (id, name) VALUES (32, 'Cascadas Espejillos');
INSERT INTO Places (id, name) VALUES (33, 'Templo de Kalasasaya');
INSERT INTO Places (id, name) VALUES (34, 'Cueva del Diablo');
INSERT INTO Places (id, name) VALUES (35, 'Bosque de Piedras de Paquío');
INSERT INTO Places (id, name) VALUES (36, 'Chiquitania');
INSERT INTO Places (id, name) VALUES (37, 'Parque Nacional Torotoro');
INSERT INTO Places (id, name) VALUES (38, 'Ciudad de Piedra');
INSERT INTO Places (id, name) VALUES (39, 'Laguna Suárez');
INSERT INTO Places (id, name) VALUES (40, 'Aguas Termales de Polques');
INSERT INTO Places (id, name) VALUES (41, 'Puente Colgante de Sorata');
INSERT INTO Places (id, name) VALUES (42, 'Dunas de arena de San José');
INSERT INTO Places (id, name) VALUES (43, 'Trufis del Desierto');
INSERT INTO Places (id, name) VALUES (44, 'Santuario de Cotoca');
INSERT INTO Places (id, name) VALUES (45, 'Valle de los Cóndores');
INSERT INTO Places (id, name) VALUES (46, 'Pueblo Fantasma de Potosí');
INSERT INTO Places (id, name) VALUES (47, 'Fuerte de Samaipata');
INSERT INTO Places (id, name) VALUES (48, 'Pinturas Rupestres de Calamarca');
INSERT INTO Places (id, name) VALUES (49, 'Oasis de Lipez');
INSERT INTO Places (id, name) VALUES (50, 'Río Chapare');
INSERT INTO Places (id, name) VALUES (51, 'Cataratas del Jukumari');
INSERT INTO Places (id, name) VALUES (52, 'Pico Austria');
INSERT INTO Places (id, name) VALUES (53, 'Reserva de Tariquía');
INSERT INTO Places (id, name) VALUES (54, 'Los Frailes');
INSERT INTO Places (id, name) VALUES (55, 'Lomas de Yunga Cruz');
INSERT INTO Places (id, name) VALUES (56, 'Quebrada de Palala');
INSERT INTO Places (id, name) VALUES (57, 'Aguas Calientes de Roboré');
INSERT INTO Places (id, name) VALUES (58, 'Termas de Urmiri');
INSERT INTO Places (id, name) VALUES (59, 'Caminos del Inca en Bolivia');
INSERT INTO Places (id, name) VALUES (60, 'Reserva El Palmar');
INSERT INTO Places (id, name) VALUES (61, 'Cerro de Chataquila');
INSERT INTO Places (id, name) VALUES (62, 'Muelle de Puerto Quijarro');
INSERT INTO Places (id, name) VALUES (63, 'Laguna Mandioré');
INSERT INTO Places (id, name) VALUES (64, 'Ruinas de Incallajta');
INSERT INTO Places (id, name) VALUES (65, 'Parque Nacional Cotapata');
INSERT INTO Places (id, name) VALUES (66, 'Las Pampas del Yacuma');
INSERT INTO Places (id, name) VALUES (67, 'Puente Sucre');
INSERT INTO Places (id, name) VALUES (68, 'Chullpas de Sillustani');
INSERT INTO Places (id, name) VALUES (69, 'Valle de Tucavaca');
INSERT INTO Places (id, name) VALUES (70, 'Refugio Los Volcanes');
INSERT INTO Places (id, name) VALUES (71, 'Trinidad y sus estancias');
INSERT INTO Places (id, name) VALUES (72, 'Laguna San Luis');
INSERT INTO Places (id, name) VALUES (73, 'El Vergel');
INSERT INTO Places (id, name) VALUES (74, 'Cataratas de Arcoiris');
INSERT INTO Places (id, name) VALUES (75, 'Reserva Manuripi');
INSERT INTO Places (id, name) VALUES (76, 'Reserva Biológica Cordillera de Sama');
INSERT INTO Places (id, name) VALUES (77, 'Misiones de Chiquitos');
INSERT INTO Places (id, name) VALUES (78, 'El Pantanal Boliviano');
INSERT INTO Places (id, name) VALUES (79, 'Laguna Concepción');
INSERT INTO Places (id, name) VALUES (80, 'Río Mamoré');
INSERT INTO Places (id, name) VALUES (81, 'Mina San José');
INSERT INTO Places (id, name) VALUES (82, 'Camino de los Libertadores');
INSERT INTO Places (id, name) VALUES (83, 'Cueva de los Murciélagos');
INSERT INTO Places (id, name) VALUES (84, 'Bosques de Polylepis');
INSERT INTO Places (id, name) VALUES (85, 'Parque Ecológico Machía');
INSERT INTO Places (id, name) VALUES (86, 'El Choro Trek');
INSERT INTO Places (id, name) VALUES (87, 'Parque Nacional Apolobamba');
INSERT INTO Places (id, name) VALUES (88, 'Reserva de la Biosfera Pilón Lajas');
INSERT INTO Places (id, name) VALUES (89, 'Las Cuevas de San Pedro');
INSERT INTO Places (id, name) VALUES (90, 'Parque Nacional Otuquis');
INSERT INTO Places (id, name) VALUES (91, 'Laguna Chiar Khota');
INSERT INTO Places (id, name) VALUES (92, 'El Sajama');
INSERT INTO Places (id, name) VALUES (93, 'Geysers de Sol de Mañana');
INSERT INTO Places (id, name) VALUES (94, 'Puente de la Amistad');
INSERT INTO Places (id, name) VALUES (95, 'Bosques de Toborochi');
INSERT INTO Places (id, name) VALUES (96, 'Cerro Uchumachi');
INSERT INTO Places (id, name) VALUES (97, 'Pueblo de Sorata');
INSERT INTO Places (id, name) VALUES (98, 'Cataratas de Coroico');
INSERT INTO Places (id, name) VALUES (99, 'Templo del Gran Poder');
INSERT INTO Places (id, name) VALUES (100, 'Laguna Larga');
INSERT INTO Places (id, name) VALUES (101, 'Balneario de Tarata');
INSERT INTO Places (id, name) VALUES (102, 'Cataratas de Pailón');
INSERT INTO Places (id, name) VALUES (103, 'Chiquitano Lodge');
INSERT INTO Places (id, name) VALUES (104, 'Pico Illimani');
INSERT INTO Places (id, name) VALUES (105, 'Paredón de Tupiza');
INSERT INTO Places (id, name) VALUES (106, 'Cataratas de Jorochito');
INSERT INTO Places (id, name) VALUES (107, 'Laguna de Pampalarama');
INSERT INTO Places (id, name) VALUES (108, 'Ruinas de Pucara de Tilcara');
INSERT INTO Places (id, name) VALUES (109, 'Laguna Chulluncani');
INSERT INTO Places (id, name) VALUES (110, 'Serranías de Santiago de Chiquitos');
INSERT INTO Places (id, name) VALUES (111, 'El Desierto de Dalí');
INSERT INTO Places (id, name) VALUES (112, 'Cerro del Elefante');
INSERT INTO Places (id, name) VALUES (113, 'Mirador de Incachaca');
INSERT INTO Places (id, name) VALUES (114, 'Parque Nacional Kaa-Iya');
INSERT INTO Places (id, name) VALUES (115, 'Cerro Kari Kari');
INSERT INTO Places (id, name) VALUES (116, 'Ruinas de Iskanwaya');
INSERT INTO Places (id, name) VALUES (117, 'Aguas termales de Sajama');
INSERT INTO Places (id, name) VALUES (118, 'Parque Natural Serranía Sararenda');
INSERT INTO Places (id, name) VALUES (119, 'Bosque de los Helechos Gigantes');
INSERT INTO Places (id, name) VALUES (120, 'Pueblo de Villa Abecia');
INSERT INTO Places (id, name) VALUES (121, 'Ruinas de Presto');
INSERT INTO Places (id, name) VALUES (122, 'Balneario de Mizque');
INSERT INTO Places (id, name) VALUES (123, 'Mirador de Tupiza');
INSERT INTO Places (id, name) VALUES (124, 'San Ignacio de Velasco');
INSERT INTO Places (id, name) VALUES (125, 'Parque Nacional Aguaragüe');
INSERT INTO Places (id, name) VALUES (126, 'Túneles de Socopó');
INSERT INTO Places (id, name) VALUES (127, 'Ruinas de Inkallajta');
INSERT INTO Places (id, name) VALUES (128, 'Cerro Mutún');
INSERT INTO Places (id, name) VALUES (129, 'San Rafael de Velasco');
INSERT INTO Places (id, name) VALUES (130, 'Cueva de La Felicidad');
INSERT INTO Places (id, name) VALUES (131, 'Reserva Tahuamanu');
INSERT INTO Places (id, name) VALUES (132, 'Cueva de los Helechos');
INSERT INTO Places (id, name) VALUES (133, 'Truchas de Sicasica');
INSERT INTO Places (id, name) VALUES (134, 'Laguna Alalay');
INSERT INTO Places (id, name) VALUES (135, 'Cerro de la Silla');
INSERT INTO Places (id, name) VALUES (136, 'Reserva Ecológica El Tatarenda');
INSERT INTO Places (id, name) VALUES (137, 'Refugio del Pájaro Bufeo');
INSERT INTO Places (id, name) VALUES (138, 'El Paredón de Tiquipaya');
INSERT INTO Places (id, name) VALUES (139, 'Mirador de Bella Vista');
INSERT INTO Places (id, name) VALUES (140, 'Parque Nacional Carrasco');
INSERT INTO Places (id, name) VALUES (141, 'Cascadas de Quirusillas');
INSERT INTO Places (id, name) VALUES (142, 'Serranía del Iñao');
INSERT INTO Places (id, name) VALUES (143, 'Reserva de Samaipata');
INSERT INTO Places (id, name) VALUES (144, 'Volcán Tunupa');
INSERT INTO Places (id, name) VALUES (145, 'Playa del río Parapetí');
INSERT INTO Places (id, name) VALUES (146, 'Cataratas de Charobamba');
INSERT INTO Places (id, name) VALUES (147, 'La Higuera');
INSERT INTO Places (id, name) VALUES (148, 'Camino del Che');
INSERT INTO Places (id, name) VALUES (149, 'Laguna Juatiña');
INSERT INTO Places (id, name) VALUES (150, 'Laguna Pastos Grandes');
INSERT INTO Places (id, name) VALUES (151, 'Ruinas de Tumichucua');
INSERT INTO Places (id, name) VALUES (152, 'Valle de la Luna en Potosí');
INSERT INTO Places (id, name) VALUES (153, 'Reserva Biológica Estación Biológica del Beni');
INSERT INTO Places (id, name) VALUES (154, 'Reserva Biológica El Refugio');
INSERT INTO Places (id, name) VALUES (155, 'Bosque Encantado de Chiquitos');
INSERT INTO Places (id, name) VALUES (156, 'Cataratas del Urubó');
INSERT INTO Places (id, name) VALUES (157, 'Río Grande');
INSERT INTO Places (id, name) VALUES (158, 'Parque Nacional Cotacajes');
INSERT INTO Places (id, name) VALUES (159, 'Cataratas de Luribay');
INSERT INTO Places (id, name) VALUES (160, 'Las Torres del Paquió');
INSERT INTO Places (id, name) VALUES (161, 'Laguna Huayñakota');
INSERT INTO Places (id, name) VALUES (162, 'Las Cavernas de Repechón');
INSERT INTO Places (id, name) VALUES (163, 'Mirador del Río Rocha');
INSERT INTO Places (id, name) VALUES (164, 'Aguas Termales de Totora');
INSERT INTO Places (id, name) VALUES (165, 'Reserva de Kaa-Iya');
INSERT INTO Places (id, name) VALUES (166, 'Mirador del Valle de los Cóndores');
INSERT INTO Places (id, name) VALUES (167, 'Río Ichilo');
INSERT INTO Places (id, name) VALUES (168, 'Ruinas de Santa Ana de Velasco');
INSERT INTO Places (id, name) VALUES (169, 'Piedra de los 12 ángulos de Potosí');
INSERT INTO Places (id, name) VALUES (170, 'Camino del Yungas');
INSERT INTO Places (id, name) VALUES (171, 'Parque Nacional Isiboro Sécure');
INSERT INTO Places (id, name) VALUES (172, 'Laguna Caquingora');
INSERT INTO Places (id, name) VALUES (173, 'Laguna Castrillo');
INSERT INTO Places (id, name) VALUES (174, 'Reserva Natural del Bosque de Tarumá');
INSERT INTO Places (id, name) VALUES (175, 'Los Toboganes de Toro Toro');
INSERT INTO Places (id, name) VALUES (176, 'Mirador de Villa Montes');
INSERT INTO Places (id, name) VALUES (177, 'Las Serranías del Pilcomayo');
INSERT INTO Places (id, name) VALUES (178, 'Reserva de Vida Silvestre Bruno Racua');
INSERT INTO Places (id, name) VALUES (179, 'Puente del Inca');
INSERT INTO Places (id, name) VALUES (180, 'Serranías del Aguaragüe');
INSERT INTO Places (id, name) VALUES (181, 'Laguna Jatuncocha');
INSERT INTO Places (id, name) VALUES (182, 'Reserva de Vida Silvestre Ríos Blanco y Negro');
INSERT INTO Places (id, name) VALUES (183, 'Campos do Jordão');
INSERT INTO Places (id, name) VALUES (184, 'Serra do Rio do Rastro');
INSERT INTO Places (id, name) VALUES (185, 'Porto Seguro');
INSERT INTO Places (id, name) VALUES (186, 'Barra Grande');
INSERT INTO Places (id, name) VALUES (187, 'Ilha do Mel');
INSERT INTO Places (id, name) VALUES (188, 'Petrópolis');
INSERT INTO Places (id, name) VALUES (189, 'Angra dos Reis');
INSERT INTO Places (id, name) VALUES (190, 'Chapada dos Guimarães');
INSERT INTO Places (id, name) VALUES (191, 'Lençóis Bahianos');
INSERT INTO Places (id, name) VALUES (192, 'Tamandaré');
INSERT INTO Places (id, name) VALUES (193, 'Morro de São Paulo');
INSERT INTO Places (id, name) VALUES (194, 'Chapada das Mesas');
INSERT INTO Places (id, name) VALUES (195, 'Gruta do Lago Azul');
INSERT INTO Places (id, name) VALUES (196, 'Jalapão');
INSERT INTO Places (id, name) VALUES (197, 'Ilha do Cardoso');
INSERT INTO Places (id, name) VALUES (198, 'Santana de Parnaíba');
INSERT INTO Places (id, name) VALUES (199, 'Poços de Caldas');
INSERT INTO Places (id, name) VALUES (200, 'São Roque');
SET IDENTITY_INSERT Places OFF;

-- Insertar actividades
SET IDENTITY_INSERT Activities ON;
INSERT INTO Activities (id, description) VALUES (1, 'Fotografía');
INSERT INTO Activities (id, description) VALUES (2, 'Senderismo');
INSERT INTO Activities (id, description) VALUES (3, 'Natación');
INSERT INTO Activities (id, description) VALUES (4, 'Observación de fauna');
INSERT INTO Activities (id, description) VALUES (5, 'Camping');
INSERT INTO Activities (id, description) VALUES (6, 'Paseo en bote');
INSERT INTO Activities (id, description) VALUES (7, 'Pesca recreativa');
INSERT INTO Activities (id, description) VALUES (8, 'Picnic');
INSERT INTO Activities (id, description) VALUES (9, 'Ciclismo de montaña');
INSERT INTO Activities (id, description) VALUES (10, 'Exploración de cuevas');
INSERT INTO Activities (id, description) VALUES (11, 'Escalada en roca');
INSERT INTO Activities (id, description) VALUES (12, 'Paseo en kayak');
INSERT INTO Activities (id, description) VALUES (13, 'Avistamiento de aves');
INSERT INTO Activities (id, description) VALUES (14, 'Visita a museos');
INSERT INTO Activities (id, description) VALUES (15, 'Tour gastronómico');
INSERT INTO Activities (id, description) VALUES (16, 'Cabalgata');
INSERT INTO Activities (id, description) VALUES (17, 'Visita a ruinas arqueológicas');
INSERT INTO Activities (id, description) VALUES (18, 'Tour en 4x4');
INSERT INTO Activities (id, description) VALUES (19, 'Surfing');
INSERT INTO Activities (id, description) VALUES (20, 'Paddleboarding');
INSERT INTO Activities (id, description) VALUES (21, 'Visita a viñedos');
INSERT INTO Activities (id, description) VALUES (22, 'Paseo en globo aerostático');
INSERT INTO Activities (id, description) VALUES (23, 'Observación astronómica');
INSERT INTO Activities (id, description) VALUES (24, 'Descenso en rappel');
INSERT INTO Activities (id, description) VALUES (25, 'Visita a cascadas');
INSERT INTO Activities (id, description) VALUES (26, 'Esquí acuático');
INSERT INTO Activities (id, description) VALUES (27, 'Tirolesa');
INSERT INTO Activities (id, description) VALUES (28, 'Visita a santuarios naturales');
INSERT INTO Activities (id, description) VALUES (29, 'Nado con delfines');
INSERT INTO Activities (id, description) VALUES (30, 'Paseo en tren turístico');
INSERT INTO Activities (id, description) VALUES (31, 'Excursión en motocicleta');
INSERT INTO Activities (id, description) VALUES (32, 'Parapente');
INSERT INTO Activities (id, description) VALUES (33, 'Paseo en teleférico');
INSERT INTO Activities (id, description) VALUES (34, 'Baño en aguas termales');
INSERT INTO Activities (id, description) VALUES (35, 'Pesca con mosca');
INSERT INTO Activities (id, description) VALUES (36, 'Trekking en nevados');
INSERT INTO Activities (id, description) VALUES (37, 'Yoga en la naturaleza');
INSERT INTO Activities (id, description) VALUES (38, 'Exploración de manglares');
INSERT INTO Activities (id, description) VALUES (39, 'Visita a jardines botánicos');
INSERT INTO Activities (id, description) VALUES (40, 'Caminata por dunas');
INSERT INTO Activities (id, description) VALUES (41, 'Tour en bicicleta eléctrica');
INSERT INTO Activities (id, description) VALUES (42, 'Tour de café');
INSERT INTO Activities (id, description) VALUES (43, 'Buceo en arrecifes');
INSERT INTO Activities (id, description) VALUES (44, 'Snorkel en cenotes');
INSERT INTO Activities (id, description) VALUES (45, 'Clases de cocina regional');
INSERT INTO Activities (id, description) VALUES (46, 'Caminata nocturna');
INSERT INTO Activities (id, description) VALUES (47, 'Exploración de cañones');
INSERT INTO Activities (id, description) VALUES (48, 'Tour de mitos y leyendas');
INSERT INTO Activities (id, description) VALUES (49, 'Vuelo en parapente');
INSERT INTO Activities (id, description) VALUES (50, 'Tiro con arco');
INSERT INTO Activities (id, description) VALUES (51, 'Juegos tradicionales locales');
INSERT INTO Activities (id, description) VALUES (52, 'Patinaje sobre hielo');
INSERT INTO Activities (id, description) VALUES (53, 'Observación de tortugas marinas');
INSERT INTO Activities (id, description) VALUES (54, 'Excursión a islas');
INSERT INTO Activities (id, description) VALUES (55, 'Recorrido por mercados locales');
INSERT INTO Activities (id, description) VALUES (56, 'Baño en ríos cristalinos');
INSERT INTO Activities (id, description) VALUES (57, 'Visita a fábricas de chocolate');
INSERT INTO Activities (id, description) VALUES (58, 'Visita a talleres de artesanía');
INSERT INTO Activities (id, description) VALUES (59, 'Tour fotográfico');
INSERT INTO Activities (id, description) VALUES (60, 'Vuelo en ultraligero');
INSERT INTO Activities (id, description) VALUES (61, 'Nado en lagunas escondidas');
INSERT INTO Activities (id, description) VALUES (62, 'Exploración de minas antiguas');
INSERT INTO Activities (id, description) VALUES (63, 'Rutas de vino y queso');
INSERT INTO Activities (id, description) VALUES (64, 'Visita a represas');
INSERT INTO Activities (id, description) VALUES (65, 'Tour en tranvía turístico');
INSERT INTO Activities (id, description) VALUES (66, 'Experiencia de reforestación');
INSERT INTO Activities (id, description) VALUES (67, 'Recolección de frutas en huertos');
INSERT INTO Activities (id, description) VALUES (68, 'Clase de cerámica');
INSERT INTO Activities (id, description) VALUES (69, 'Paseo en barco pirata');
INSERT INTO Activities (id, description) VALUES (70, 'Escalada en árboles');
INSERT INTO Activities (id, description) VALUES (71, 'Exploración de acantilados');
INSERT INTO Activities (id, description) VALUES (72, 'Manejo de vehículos todoterreno');
INSERT INTO Activities (id, description) VALUES (73, 'Tour de mariposas');
INSERT INTO Activities (id, description) VALUES (74, 'Carrera de orientación');
INSERT INTO Activities (id, description) VALUES (75, 'Construcción de balsas');
INSERT INTO Activities (id, description) VALUES (76, 'Caminata en bosques de niebla');
INSERT INTO Activities (id, description) VALUES (77, 'Paseo en carruaje');
INSERT INTO Activities (id, description) VALUES (78, 'Pintura en paisajes naturales');
INSERT INTO Activities (id, description) VALUES (79, 'Espeleología');
INSERT INTO Activities (id, description) VALUES (80, 'Clases de danza tradicional');
INSERT INTO Activities (id, description) VALUES (81, 'Tour de leyendas urbanas');
INSERT INTO Activities (id, description) VALUES (82, 'Visita a plantaciones de té');
INSERT INTO Activities (id, description) VALUES (83, 'Demostración de técnicas de pesca local');
INSERT INTO Activities (id, description) VALUES (84, 'Paseo en trineo');
INSERT INTO Activities (id, description) VALUES (85, 'Participación en festivales culturales');
INSERT INTO Activities (id, description) VALUES (86, 'Tour nocturno en la selva');
INSERT INTO Activities (id, description) VALUES (87, 'Taller de grabado en madera');
INSERT INTO Activities (id, description) VALUES (88, 'Rappel en cascadas');
INSERT INTO Activities (id, description) VALUES (89, 'Exploración de arrecifes artificiales');
INSERT INTO Activities (id, description) VALUES (90, 'Observación de ballenas');
INSERT INTO Activities (id, description) VALUES (91, 'Tour en góndolas');
INSERT INTO Activities (id, description) VALUES (92, 'Avistamiento de luciérnagas');
INSERT INTO Activities (id, description) VALUES (93, 'Recolección de sal en salinas');
INSERT INTO Activities (id, description) VALUES (94, 'Vuelo en dirigible');
INSERT INTO Activities (id, description) VALUES (95, 'Participación en ceremonias ancestrales');
INSERT INTO Activities (id, description) VALUES (96, 'Caminata por viñedos');
INSERT INTO Activities (id, description) VALUES (97, 'Tour en buggy por el desierto');
INSERT INTO Activities (id, description) VALUES (98, 'Paseo en bicicleta por senderos históricos');
INSERT INTO Activities (id, description) VALUES (99, 'Demostración de cocina prehispánica');
INSERT INTO Activities (id, description) VALUES (100, 'Exploración de pueblos fantasmas');
INSERT INTO Activities (id, description) VALUES (101, 'Paseo en bicicleta');
INSERT INTO Activities (id, description) VALUES (102, 'Escalada en roca');
INSERT INTO Activities (id, description) VALUES (103, 'Rafting');
INSERT INTO Activities (id, description) VALUES (104, 'Tour en barco');
INSERT INTO Activities (id, description) VALUES (105, 'Paseo en kayak');
INSERT INTO Activities (id, description) VALUES (106, 'Esquí acuático');
INSERT INTO Activities (id, description) VALUES (107, 'Snorkel');
INSERT INTO Activities (id, description) VALUES (108, 'Buceo');
INSERT INTO Activities (id, description) VALUES (109, 'Pesca deportiva');
INSERT INTO Activities (id, description) VALUES (110, 'Tour en cuatrimoto');
INSERT INTO Activities (id, description) VALUES (111, 'Paseo a caballo');
INSERT INTO Activities (id, description) VALUES (112, 'Parapente');
INSERT INTO Activities (id, description) VALUES (113, 'Vuelo en globo aerostático');
INSERT INTO Activities (id, description) VALUES (114, 'Surf');
INSERT INTO Activities (id, description) VALUES (115, 'Sandboarding');
INSERT INTO Activities (id, description) VALUES (116, 'Yoga al aire libre');
INSERT INTO Activities (id, description) VALUES (117, 'Tirolesa');
INSERT INTO Activities (id, description) VALUES (118, 'Caminata nocturna');
INSERT INTO Activities (id, description) VALUES (119, 'Visita a reservas naturales');
INSERT INTO Activities (id, description) VALUES (120, 'Tour en jeep');
INSERT INTO Activities (id, description) VALUES (121, 'Observación de estrellas');
INSERT INTO Activities (id, description) VALUES (122, 'Paseo en góndola');
INSERT INTO Activities (id, description) VALUES (123, 'Exploración de cuevas');
INSERT INTO Activities (id, description) VALUES (124, 'Degustación de vinos');
INSERT INTO Activities (id, description) VALUES (125, 'Visita a cafetales');
INSERT INTO Activities (id, description) VALUES (126, 'Paseo en helicóptero');
INSERT INTO Activities (id, description) VALUES (127, 'Festival cultural');
INSERT INTO Activities (id, description) VALUES (128, 'Visita a sitios arqueológicos');
INSERT INTO Activities (id, description) VALUES (129, 'Ruta gastronómica');
INSERT INTO Activities (id, description) VALUES (130, 'Artesanías y manualidades');
INSERT INTO Activities (id, description) VALUES (131, 'Avistamiento de ballenas');
INSERT INTO Activities (id, description) VALUES (132, 'Navegación en velero');
INSERT INTO Activities (id, description) VALUES (133, 'Safari fotográfico');
INSERT INTO Activities (id, description) VALUES (134, 'Esquí en arena');
INSERT INTO Activities (id, description) VALUES (135, 'Raquetas de nieve');
INSERT INTO Activities (id, description) VALUES (136, 'Ciclismo de montaña');
INSERT INTO Activities (id, description) VALUES (137, 'Espeleología');
INSERT INTO Activities (id, description) VALUES (138, 'Escalada de árboles');
INSERT INTO Activities (id, description) VALUES (139, 'Parques de aventura');
INSERT INTO Activities (id, description) VALUES (140, 'Paseo en burro');
INSERT INTO Activities (id, description) VALUES (141, 'Carrera de karting');
INSERT INTO Activities (id, description) VALUES (142, 'Tour de graffiti y arte urbano');
INSERT INTO Activities (id, description) VALUES (143, 'Festival de globos aerostáticos');
INSERT INTO Activities (id, description) VALUES (144, 'Buceo con tiburones');
INSERT INTO Activities (id, description) VALUES (145, 'Clases de cocina local');
INSERT INTO Activities (id, description) VALUES (146, 'Viaje en tren panorámico');
INSERT INTO Activities (id, description) VALUES (147, 'Visita a islas vírgenes');
INSERT INTO Activities (id, description) VALUES (148, 'Aventura en tirolinas');
INSERT INTO Activities (id, description) VALUES (149, 'Baños en aguas termales');
INSERT INTO Activities (id, description) VALUES (150, 'Senderismo en volcanes');
INSERT INTO Activities (id, description) VALUES (151, 'Bungee jumping');
INSERT INTO Activities (id, description) VALUES (152, 'Descenso en rapel');
INSERT INTO Activities (id, description) VALUES (153, 'Tour de mitos y leyendas');
INSERT INTO Activities (id, description) VALUES (154, 'Noche de fogata');
INSERT INTO Activities (id, description) VALUES (155, 'Observación de luciérnagas');
INSERT INTO Activities (id, description) VALUES (156, 'Paddle surf');
INSERT INTO Activities (id, description) VALUES (157, 'Barranquismo');
INSERT INTO Activities (id, description) VALUES (158, 'Exploración de ruinas antiguas');
INSERT INTO Activities (id, description) VALUES (159, 'Festival de danza');
INSERT INTO Activities (id, description) VALUES (160, 'Fiesta de carnaval');
INSERT INTO Activities (id, description) VALUES (161, 'Rally de orientación');
INSERT INTO Activities (id, description) VALUES (162, 'Caza fotográfica');
INSERT INTO Activities (id, description) VALUES (163, 'Día de spa en la naturaleza');
INSERT INTO Activities (id, description) VALUES (164, 'Senderismo entre cascadas');
INSERT INTO Activities (id, description) VALUES (165, 'Pesca artesanal');
INSERT INTO Activities (id, description) VALUES (166, 'Esquí alpino');
INSERT INTO Activities (id, description) VALUES (167, 'Visita a santuarios de animales');
INSERT INTO Activities (id, description) VALUES (168, 'Recorridos en segway');
INSERT INTO Activities (id, description) VALUES (169, 'Buceo nocturno');
INSERT INTO Activities (id, description) VALUES (170, 'Excursión en bote');
INSERT INTO Activities (id, description) VALUES (171, 'Recorridos en globo aerostático');
INSERT INTO Activities (id, description) VALUES (172, 'Exploración de desiertos');
INSERT INTO Activities (id, description) VALUES (173, 'Festival de luces');
INSERT INTO Activities (id, description) VALUES (174, 'Ciclismo urbano');
INSERT INTO Activities (id, description) VALUES (175, 'Picnic en parques naturales');
INSERT INTO Activities (id, description) VALUES (176, 'Surf de remo');
INSERT INTO Activities (id, description) VALUES (177, 'Día de pintura al aire libre');
INSERT INTO Activities (id, description) VALUES (178, 'Caminata sobre puentes colgantes');
INSERT INTO Activities (id, description) VALUES (179, 'Turismo en fábricas de chocolate');
INSERT INTO Activities (id, description) VALUES (180, 'Concierto al aire libre');
INSERT INTO Activities (id, description) VALUES (181, 'Exploración de cenotes');
INSERT INTO Activities (id, description) VALUES (182, 'Tour de cervecerías artesanales');
INSERT INTO Activities (id, description) VALUES (183, 'Exploración de glaciares');
INSERT INTO Activities (id, description) VALUES (184, 'Tour en motocicleta');
INSERT INTO Activities (id, description) VALUES (185, 'Tour de viñedos');
INSERT INTO Activities (id, description) VALUES (186, 'Carrera de orientación');
INSERT INTO Activities (id, description) VALUES (187, 'Pesca en hielo');
INSERT INTO Activities (id, description) VALUES (188, 'Camping en la playa');
INSERT INTO Activities (id, description) VALUES (189, 'Escalada en hielo');
INSERT INTO Activities (id, description) VALUES (190, 'Día de playa con deportes acuáticos');
INSERT INTO Activities (id, description) VALUES (191, 'Excursión a cañones');
INSERT INTO Activities (id, description) VALUES (192, 'Visita a fábricas de queso');
INSERT INTO Activities (id, description) VALUES (193, 'Tour en balsa');
INSERT INTO Activities (id, description) VALUES (194, 'Excursión a lagunas escondidas');
INSERT INTO Activities (id, description) VALUES (195, 'Expedición en la selva');
INSERT INTO Activities (id, description) VALUES (196, 'Tour de iglesias coloniales');
INSERT INTO Activities (id, description) VALUES (197, 'Caminata por dunas');
INSERT INTO Activities (id, description) VALUES (198, 'Paseo en telesilla');
INSERT INTO Activities (id, description) VALUES (199, 'Recorrido en tranvía turístico');
INSERT INTO Activities (id, description) VALUES (200, 'Visita a minas de sal');
SET IDENTITY_INSERT Activities OFF;

-- Insertar buses
SET IDENTITY_INSERT Busses ON;
INSERT INTO Busses (id, driver_id, license_plate, model, manufacturer, seat_count) VALUES
(1, 1, 'MOT-356', 'Urvan', 'Mercedes', 60),
(2, 2, 'NHJ-930', 'Sprinter', 'Scania', 50),
(3, 3, 'BVJ-363', 'Marcopolo', 'Mercedes', 40),
(4, 4, 'RTY-886', 'Coaster', 'Volvo', 30),
(5, 5, 'RMU-320', 'Sprinter', 'Iveco', 40),
(6, 6, 'SRW-284', 'Explorer', 'Mercedes', 40),
(7, 7, 'ZNR-850', 'Coaster', 'Scania', 30),
(8, 8, 'NNE-550', 'Marcopolo', 'Volvo', 70),
(9, 9, 'VGL-563', 'Ducato', 'Volvo', 40),
(10, 10, 'BCZ-888', 'Marcopolo', 'Scania', 70),
(11, 11, 'MKS-227', 'Daily', 'Mercedes', 40),
(12, 12, 'LNR-850', 'Marcopolo', 'Iveco', 40),
(13, 13, 'WXF-906', 'Daily', 'Volvo', 40),
(14, 14, 'OLO-623', 'Urvan', 'Mercedes', 70),
(15, 15, 'IIU-913', 'Urvan', 'Mercedes', 50),
(16, 16, 'PKO-373', 'Volare', 'Iveco', 50),
(17, 17, 'FZW-162', 'Citaro', 'MAN', 30),
(18, 18, 'EMO-921', 'Tourismo', 'Volvo', 30),
(19, 19, 'NTU-876', 'Explorer', 'Mercedes', 50),
(20, 20, 'DUV-406', 'Coaster', 'Mercedes', 70),
(21, 21, 'PTU-015', 'Ducato', 'Iveco', 70),
(22, 22, 'CXM-940', 'Volare', 'Scania', 70),
(23, 23, 'CUW-033', 'Volare', 'MAN', 50),
(24, 24, 'BWZ-413', 'Ducato', 'Iveco', 50),
(25, 25, 'PCO-641', 'Volare', 'Volvo', 50),
(26, 26, 'BSH-338', 'Sprinter', 'Mercedes', 50),
(27, 27, 'NTP-399', 'Ducato', 'MAN', 70),
(28, 28, 'QSH-338', 'Explorer', 'Mercedes', 50),
(29, 29, 'QOC-456', 'Sprinter', 'MAN', 30),
(30, 30, 'ZQR-815', 'Sprinter', 'MAN', 40),
(31, 31, 'MBJ-877', 'Daily', 'Mercedes', 60),
(32, 32, 'ZRC-039', 'Citaro', 'MAN', 60),
(33, 33, 'DLM-652', 'Citaro', 'Volvo', 30),
(34, 34, 'OVK-341', 'Citaro', 'MAN', 60),
(35, 35, 'FFY-616', 'Explorer', 'MAN', 40),
(36, 36, 'ZIV-834', 'Ducato', 'Mercedes', 50),
(37, 37, 'JJG-839', 'Coaster', 'MAN', 60),
(38, 38, 'WEY-210', 'Sprinter', 'Mercedes', 30),
(39, 39, 'OCH-373', 'Citaro', 'Mercedes', 60),
(40, 40, 'FUD-554', 'Tourismo', 'Iveco', 40),
(41, 41, 'UUG-347', 'Daily', 'Mercedes', 40),
(42, 42, 'DCP-205', 'Tourismo', 'Iveco', 30),
(43, 43, 'FTK-508', 'Urvan', 'Volvo', 30),
(44, 44, 'DGC-426', 'Citaro', 'Volvo', 30),
(45, 45, 'KKG-839', 'Explorer', 'Iveco', 50),
(46, 46, 'RHW-523', 'Marcopolo', 'MAN', 50),
(47, 47, 'NTP-99', 'Citaro', 'Volvo', 70),
(48, 48, 'EQA-459', 'Volare', 'Scania', 50),
(49, 49, 'GKS-849', 'Daily', 'Mercedes', 60),
(50, 50, 'UZN-056', 'Explorer', 'Mercedes', 30),
(51, 51, 'YSH-338', 'Volare', 'Volvo', 40),
(52, 52, 'PTQ-371', 'Daily', 'Volvo', 60),
(53, 53, 'SSS-630', 'Citaro', 'Volvo', 70),
(54, 54, 'ZRW-329', 'Tourismo', 'MAN', 70),
(55, 55, 'QZC-456', 'Explorer', 'MAN', 40),
(56, 56, 'XOM-331', 'Volare', 'Mercedes', 40),
(57, 57, 'BPD-650', 'Daily', 'Mercedes', 30),
(58, 58, 'DSM-616', 'Volare', 'Mercedes', 50),
(59, 59, 'ZSX-713', 'Marcopolo', 'MAN', 30),
(60, 60, 'CKA-902', 'Volare', 'Scania', 60),
(61, 61, 'OQU-425', 'Sprinter', 'Iveco', 70),
(62, 62, 'MEY-259', 'Citaro', 'MAN', 30),
(63, 63, 'ECM-842', 'Daily', 'MAN', 30),
(64, 64, 'XWX-176', 'Urvan', 'Mercedes', 40),
(65, 65, 'UIS-696', 'Explorer', 'Volvo', 40),
(66, 66, 'TEQ-072', 'Tourismo', 'Volvo', 50),
(67, 67, 'GBC-226', 'Citaro', 'Mercedes', 50),
(68, 68, 'DNW-129', 'Tourismo', 'Iveco', 60),
(69, 69, 'NHI-044', 'Ducato', 'Scania', 40),
(70, 70, 'WIW-613', 'Sprinter', 'Iveco', 40),
(71, 71, 'NHJ-910', 'Ducato', 'Iveco', 50),
(72, 72, 'RPS-955', 'Volare', 'Iveco', 70),
(73, 73, 'JOT-341', 'Explorer', 'Iveco', 30),
(74, 74, 'PPT-703', 'Daily', 'Scania', 40),
(75, 75, 'TKF-680', 'Daily', 'Mercedes', 50),
(76, 76, 'WPK-585', 'Volare', 'MAN', 30),
(77, 77, 'NMA-360', 'Tourismo', 'Scania', 50),
(78, 78, 'GBC-206', 'Volare', 'Iveco', 50),
(79, 79, 'BPH-068', 'Coaster', 'Mercedes', 60),
(80, 80, 'BVJ-360', 'Ducato', 'Iveco', 30),
(81, 81, 'VGL-503', 'Citaro', 'Volvo', 50),
(82, 82, 'UZE-594', 'Marcopolo', 'MAN', 70),
(83, 83, 'BJZ-744', 'Coaster', 'Mercedes', 70),
(84, 84, 'ZDV-345', 'Citaro', 'Mercedes', 30),
(85, 85, 'UZE-544', 'Sprinter', 'Volvo', 60),
(86, 86, 'JXQ-218', 'Tourismo', 'Iveco', 50),
(87, 87, 'OZR-685', 'Urvan', 'MAN', 70),
(88, 88, 'TKF-080', 'Sprinter', 'Volvo', 30),
(89, 89, 'OIJ-533', 'Coaster', 'Iveco', 60),
(90, 90, 'JOT-041', 'Ducato', 'Mercedes', 40),
(91, 91, 'EBH-964', 'Marcopolo', 'Scania', 50),
(92, 92, 'DNW-199', 'Ducato', 'MAN', 40),
(93, 93, 'JTD-289', 'Coaster', 'Mercedes', 40),
(94, 94, 'CSX-024', 'Daily', 'Scania', 40),
(95, 95, 'ECM-042', 'Volare', 'Volvo', 50),
(96, 96, 'RHW-503', 'Sprinter', 'Mercedes', 70),
(97, 97, 'ZIS-389', 'Tourismo', 'Mercedes', 50),
(98, 98, 'WDS-229', 'Ducato', 'Volvo', 70),
(99, 99, 'WLB-676', 'Marcopolo', 'Volvo', 50),
(100, 100, 'JXX-218', 'Ducato', 'Volvo', 60),
(101, 101, 'XNM-311', 'Volare', 'Volvo', 30),
(102, 102, 'BVJ-163', 'Sprinter', 'Volvo', 40),
(103, 103, 'GVP-628', 'Sprinter', 'MAN', 70),
(104, 104, 'ENT-392', 'Citaro', 'MAN', 70),
(105, 105, 'PPO-641', 'Daily', 'MAN', 50),
(106, 106, 'GWL-222', 'Citaro', 'MAN', 50),
(107, 107, 'EOX-165', 'Urvan', 'Volvo', 50),
(108, 108, 'WYR-379', 'Tourismo', 'Iveco', 40),
(109, 109, 'ZAI-773', 'Tourismo', 'Mercedes', 60),
(110, 110, 'IFE-942', 'Urvan', 'MAN', 50),
(111, 111, 'XNO-167', 'Urvan', 'Scania', 60),
(112, 112, 'WOH-984', 'Tourismo', 'Iveco', 70),
(113, 113, 'XFS-391', 'Daily', 'Iveco', 40),
(114, 114, 'JOT-311', 'Sprinter', 'Iveco', 30),
(115, 115, 'XNK-217', 'Sprinter', 'Volvo', 50),
(116, 116, 'MKS-222', 'Daily', 'Iveco', 30),
(117, 117, 'TML-615', 'Ducato', 'Scania', 30),
(118, 118, 'LSB-595', 'Explorer', 'Volvo', 60),
(119, 119, 'GWL-202', 'Ducato', 'Scania', 40),
(120, 120, 'FIU-585', 'Citaro', 'Iveco', 40),
(121, 121, 'ZQN-200', 'Explorer', 'MAN', 40),
(122, 122, 'PIT-703', 'Ducato', 'Iveco', 40),
(123, 123, 'PIT-903', 'Coaster', 'MAN', 30),
(124, 124, 'WXF-936', 'Explorer', 'Mercedes', 70),
(125, 125, 'MOR-931', 'Marcopolo', 'Mercedes', 70),
(126, 126, 'NNE-551', 'Volare', 'Scania', 40),
(127, 127, 'MHX-278', 'Citaro', 'Volvo', 70),
(128, 128, 'ZOH-469', 'Volare', 'Iveco', 30),
(129, 129, 'HEL-349', 'Marcopolo', 'Scania', 40),
(130, 130, 'MWT-258', 'Sprinter', 'Mercedes', 50),
(131, 131, 'HVN-758', 'Urvan', 'Scania', 50),
(132, 132, 'GWW-222', 'Tourismo', 'Mercedes', 60),
(133, 133, 'OGS-032', 'Marcopolo', 'Iveco', 60),
(134, 134, 'FCF-671', 'Marcopolo', 'Scania', 40),
(135, 135, 'JFT-807', 'Coaster', 'Mercedes', 50),
(136, 136, 'ZSS-630', 'Urvan', 'Volvo', 60),
(137, 137, 'KXG-839', 'Tourismo', 'Scania', 30),
(138, 138, 'QHE-319', 'Explorer', 'Mercedes', 30),
(139, 139, 'ZTK-365', 'Volare', 'Iveco', 60),
(140, 140, 'FOX-165', 'Daily', 'Iveco', 60),
(141, 141, 'EUO-881', 'Ducato', 'Scania', 70),
(142, 142, 'QFY-583', 'Sprinter', 'Mercedes', 50),
(143, 143, 'PFJ-829', 'Urvan', 'Volvo', 70),
(144, 144, 'SIJ-533', 'Marcopolo', 'Iveco', 60),
(145, 145, 'ERM-532', 'Volare', 'MAN', 30),
(146, 146, 'JTP-374', 'Volare', 'Scania', 60),
(147, 147, 'ZYT-354', 'Marcopolo', 'MAN', 30),
(148, 148, 'JEB-945', 'Urvan', 'Mercedes', 60),
(149, 149, 'CSX-224', 'Marcopolo', 'Volvo', 40),
(150, 150, 'VDH-942', 'Explorer', 'Iveco', 30),
(151, 151, 'TLU-680', 'Sprinter', 'Mercedes', 50),
(152, 152, 'AHX-913', 'Coaster', 'Volvo', 40),
(153, 153, 'HLL-349', 'Tourismo', 'Iveco', 50),
(154, 154, 'ZRC-239', 'Tourismo', 'Volvo', 50),
(155, 155, 'FTU-585', 'Daily', 'Volvo', 70),
(156, 156, 'YKO-481', 'Daily', 'Iveco', 30),
(157, 157, 'ESN-724', 'Daily', 'MAN', 70),
(158, 158, 'OVI-640', 'Marcopolo', 'Volvo', 30),
(159, 159, 'VTQ-371', 'Coaster', 'Scania', 30),
(160, 160, 'TXR-944', 'Citaro', 'Iveco', 70),
(161, 161, 'PGM-069', 'Daily', 'MAN', 40),
(162, 162, 'BBR-589', 'Sprinter', 'MAN', 40),
(163, 163, 'HGZ-656', 'Ducato', 'Mercedes', 70),
(164, 164, 'HSV-924', 'Urvan', 'Scania', 60),
(165, 165, 'GAY-131', 'Tourismo', 'Iveco', 40),
(166, 166, 'XNM-331', 'Tourismo', 'Mercedes', 50),
(167, 167, 'OLN-623', 'Urvan', 'Iveco', 70),
(168, 168, 'EEM-532', 'Citaro', 'Iveco', 40),
(169, 169, 'GBC-126', 'Citaro', 'Scania', 30),
(170, 170, 'RGU-320', 'Tourismo', 'Scania', 50),
(171, 171, 'ZSS-142', 'Marcopolo', 'Scania', 50),
(172, 172, 'UNW-693', 'Daily', 'Volvo', 60),
(173, 173, 'WMY-515', 'Explorer', 'Iveco', 50),
(174, 174, 'KRV-282', 'Urvan', 'Mercedes', 50),
(175, 175, 'DLQ-105', 'Daily', 'Mercedes', 70),
(176, 176, 'DID-808', 'Explorer', 'Mercedes', 60),
(177, 177, 'VGL-53', 'Ducato', 'Scania', 40),
(178, 178, 'TOT-356', 'Sprinter', 'Volvo', 70),
(179, 179, 'VIH-856', 'Tourismo', 'Iveco', 70),
(180, 180, 'PDJ-283', 'Coaster', 'Iveco', 30),
(181, 181, 'XFS-301', 'Urvan', 'Scania', 50),
(182, 182, 'EXD-333', 'Volare', 'Iveco', 30),
(183, 183, 'YUC-458', 'Marcopolo', 'Mercedes', 70),
(184, 184, 'HNB-030', 'Marcopolo', 'Iveco', 50),
(185, 185, 'WCJ-990', 'Sprinter', 'MAN', 40),
(186, 186, 'VHP-662', 'Daily', 'Volvo', 40),
(187, 187, 'FXD-554', 'Ducato', 'Volvo', 60),
(188, 188, 'WUA-183', 'Sprinter', 'Iveco', 60),
(189, 189, 'DPD-808', 'Citaro', 'Volvo', 50),
(190, 190, 'XEB-945', 'Sprinter', 'Mercedes', 50),
(191, 191, 'PPO-671', 'Volare', 'Scania', 60),
(192, 192, 'CHH-764', 'Tourismo', 'Iveco', 40),
(193, 193, 'GNL-195', 'Urvan', 'Mercedes', 40),
(194, 194, 'VMH-856', 'Marcopolo', 'MAN', 70),
(195, 195, 'BVJ-333', 'Explorer', 'Iveco', 60),
(196, 196, 'NLA-360', 'Explorer', 'Scania', 60),
(197, 197, 'ZWS-142', 'Marcopolo', 'Iveco', 40),
(198, 198, 'RPC-318', 'Marcopolo', 'Mercedes', 70),
(199, 199, 'EAY-492', 'Volare', 'Scania', 40),
(200, 200, 'TOU-680', 'Ducato', 'Scania', 60),
(201, 201, 'HED-469', 'Urvan', 'Mercedes', 60),
(202, 202, 'ZBY-985', 'Sprinter', 'Scania', 50),
(203, 203, 'JZT-341', 'Marcopolo', 'Mercedes', 40),
(204, 204, 'WCW-696', 'Coaster', 'Volvo', 30),
(205, 205, 'DLY-652', 'Sprinter', 'Iveco', 40),
(206, 206, 'QOC-450', 'Explorer', 'Mercedes', 40),
(207, 207, 'PTJ-829', 'Coaster', 'Scania', 30),
(208, 208, 'ERG-532', 'Marcopolo', 'Volvo', 70),
(209, 209, 'ZOO-469', 'Ducato', 'Volvo', 40),
(210, 210, 'XSJ-125', 'Marcopolo', 'Scania', 70),
(211, 211, 'FTK-558', 'Daily', 'Mercedes', 40),
(212, 212, 'PML-615', 'Marcopolo', 'Iveco', 40),
(213, 213, 'VTO-154', 'Daily', 'Volvo', 40),
(214, 214, 'YOO-177', 'Urvan', 'Mercedes', 70),
(215, 215, 'ZTK-305', 'Urvan', 'Mercedes', 50),
(216, 216, 'DCP-235', 'Volare', 'Iveco', 50),
(217, 217, 'DNM-351', 'Citaro', 'MAN', 30),
(218, 218, 'XTA-939', 'Tourismo', 'Volvo', 30),
(219, 219, 'SNM-351', 'Explorer', 'Mercedes', 50),
(220, 220, 'CUW-533', 'Coaster', 'Mercedes', 70),
(221, 221, 'RWE-406', 'Ducato', 'Iveco', 70),
(222, 222, 'OZR-675', 'Volare', 'Scania', 70),
(223, 223, 'XQH-232', 'Volare', 'MAN', 50),
(224, 224, 'YGS-128', 'Ducato', 'Iveco', 50),
(225, 225, 'CBX-211', 'Volare', 'Volvo', 50),
(226, 226, 'XCE-355', 'Sprinter', 'Mercedes', 50),
(227, 227, 'ZFX-713', 'Ducato', 'MAN', 70),
(228, 228, 'NHI-744', 'Explorer', 'Mercedes', 50),
(229, 229, 'HHT-940', 'Sprinter', 'MAN', 30),
(230, 230, 'HVN-798', 'Sprinter', 'MAN', 40),
(231, 231, 'TEQ-272', 'Daily', 'Mercedes', 60),
(232, 232, 'YJI-794', 'Citaro', 'MAN', 60),
(233, 233, 'OSS-632', 'Citaro', 'Volvo', 30),
(234, 234, 'IVB-774', 'Citaro', 'MAN', 60),
(235, 235, 'BWR-589', 'Explorer', 'MAN', 40),
(236, 236, 'WKP-962', 'Ducato', 'Mercedes', 50),
(237, 237, 'XHX-278', 'Coaster', 'MAN', 60),
(238, 238, 'PTU-315', 'Sprinter', 'Mercedes', 30),
(239, 239, 'ZRC-209', 'Citaro', 'Mercedes', 60),
(240, 240, 'VEY-931', 'Tourismo', 'Iveco', 40),
(241, 241, 'ESL-280', 'Daily', 'Mercedes', 40),
(242, 242, 'ECC-842', 'Tourismo', 'Iveco', 30),
(243, 243, 'GBC-220', 'Urvan', 'Volvo', 30),
(244, 244, 'VTQ-301', 'Citaro', 'Volvo', 30),
(245, 245, 'HBB-756', 'Explorer', 'Iveco', 50),
(246, 246, 'NTZ-973', 'Marcopolo', 'MAN', 50),
(247, 247, 'WXH-984', 'Citaro', 'Volvo', 70),
(248, 248, 'KEX-367', 'Volare', 'Scania', 50),
(249, 249, 'PGJ-665', 'Daily', 'Mercedes', 60),
(250, 250, 'VGG-682', 'Explorer', 'Mercedes', 30),
(251, 251, 'UZE-554', 'Volare', 'Volvo', 40),
(252, 252, 'QNA-432', 'Daily', 'Volvo', 60),
(253, 253, 'IVB-724', 'Citaro', 'Volvo', 70),
(254, 254, 'YGS-138', 'Tourismo', 'MAN', 70),
(255, 255, 'ZQN-280', 'Explorer', 'MAN', 40),
(256, 256, 'WKC-930', 'Volare', 'Mercedes', 40),
(257, 257, 'ZOX-469', 'Daily', 'Mercedes', 30),
(258, 258, 'FRV-695', 'Volare', 'Mercedes', 50),
(259, 259, 'KAY-482', 'Marcopolo', 'MAN', 30),
(260, 260, 'YYO-177', 'Volare', 'Scania', 60),
(261, 261, 'HED-460', 'Sprinter', 'Iveco', 70),
(262, 262, 'KBY-985', 'Citaro', 'MAN', 30),
(263, 263, 'VVD-792', 'Daily', 'MAN', 30),
(264, 264, 'KEL-214', 'Urvan', 'Mercedes', 40),
(265, 265, 'ZAH-672', 'Explorer', 'Volvo', 40),
(266, 266, 'USS-571', 'Tourismo', 'Volvo', 50),
(267, 267, 'XQV-313', 'Citaro', 'Mercedes', 50),
(268, 268, 'ZOT-341', 'Tourismo', 'Iveco', 60),
(269, 269, 'ANO-818', 'Ducato', 'Scania', 40),
(270, 270, 'YQA-718', 'Sprinter', 'Iveco', 40),
(271, 271, 'SDO-899', 'Ducato', 'Iveco', 50),
(272, 272, 'OTB-434', 'Volare', 'Iveco', 70),
(273, 273, 'NTN-876', 'Explorer', 'Iveco', 30),
(274, 274, 'PKJ-368', 'Daily', 'Scania', 40),
(275, 275, 'BPH-868', 'Daily', 'Mercedes', 50),
(276, 276, 'BBJ-363', 'Volare', 'MAN', 30),
(277, 277, 'KKT-610', 'Tourismo', 'Scania', 50),
(278, 278, 'LUO-280', 'Volare', 'Iveco', 50),
(279, 279, 'JUZ-756', 'Coaster', 'Mercedes', 60),
(280, 280, 'HOB-730', 'Ducato', 'Iveco', 30),
(281, 281, 'EAW-492', 'Citaro', 'Volvo', 50),
(282, 282, 'NTN-076', 'Marcopolo', 'MAN', 70),
(283, 283, 'FWR-767', 'Coaster', 'Mercedes', 70),
(284, 284, 'VIH-806', 'Citaro', 'Mercedes', 30),
(285, 285, 'EUX-384', 'Sprinter', 'Volvo', 60),
(286, 286, 'PHB-551', 'Tourismo', 'Iveco', 50),
(287, 287, 'JFT-847', 'Urvan', 'MAN', 70),
(288, 288, 'IWK-561', 'Sprinter', 'Volvo', 30),
(289, 289, 'WGC-426', 'Coaster', 'Iveco', 60),
(290, 290, 'BYA-214', 'Ducato', 'Mercedes', 40),
(291, 291, 'GBZ-226', 'Marcopolo', 'Scania', 50),
(292, 292, 'BOO-594', 'Ducato', 'MAN', 40),
(293, 293, 'EAY-432', 'Coaster', 'Mercedes', 40),
(294, 294, 'HSR-903', 'Daily', 'Scania', 40),
(295, 295, 'PGM-769', 'Volare', 'Volvo', 50),
(296, 296, 'UZN-956', 'Sprinter', 'Mercedes', 70),
(297, 297, 'ZOU-790', 'Tourismo', 'Mercedes', 50),
(298, 298, 'SRF-848', 'Ducato', 'Volvo', 70),
(299, 299, 'GMK-233', 'Marcopolo', 'Volvo', 50),
(300, 300, 'FSO-702', 'Ducato', 'Volvo', 60);
SET IDENTITY_INSERT Busses OFF;

-- Insertar servicios diarios
SET IDENTITY_INSERT DailyServices ON;
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (1, 191, 52, '23:36:46', '23:49:02', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (2, 235, 52, '21:40:38', '22:53:28', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (3, 39, 10, '04:45:08', '13:21:12', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (4, 220, 95, '23:01:40', '23:19:08', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (5, 211, 8, '02:04:28', '20:58:38', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (6, 218, 51, '16:27:46', '17:58:30', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (7, 59, 7, '18:27:44', '18:35:25', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (8, 277, 81, '00:28:20', '12:32:01', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (9, 225, 147, '09:58:21', '20:35:52', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (10, 195, 13, '09:03:42', '12:49:51', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (11, 35, 78, '10:48:16', '16:38:22', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (12, 277, 26, '23:28:44', '23:41:41', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (13, 286, 47, '06:04:23', '12:34:19', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (14, 93, 16, '08:06:05', '22:08:45', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (15, 115, 51, '17:58:37', '18:01:20', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (16, 102, 24, '20:01:12', '21:03:03', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (17, 32, 67, '13:07:49', '20:45:29', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (18, 39, 95, '12:36:20', '15:53:01', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (19, 48, 154, '16:21:57', '17:24:10', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (20, 228, 115, '03:23:14', '10:24:13', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (21, 103, 188, '23:02:00', '23:34:40', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (22, 177, 125, '22:14:18', '22:59:19', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (23, 13, 107, '12:34:54', '12:50:06', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (24, 203, 196, '16:52:07', '22:03:07', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (25, 21, 11, '17:01:56', '17:59:27', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (26, 208, 78, '05:53:48', '15:12:41', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (27, 239, 196, '08:30:14', '18:03:28', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (28, 22, 68, '22:13:27', '22:39:57', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (29, 73, 44, '21:33:04', '22:17:03', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (30, 298, 71, '01:00:39', '08:01:27', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (31, 179, 176, '08:47:26', '18:57:26', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (32, 257, 138, '05:06:24', '20:21:50', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (33, 40, 93, '02:22:20', '10:25:13', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (34, 36, 40, '20:54:27', '22:01:56', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (35, 47, 191, '02:47:52', '10:56:54', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (36, 25, 62, '21:04:27', '21:49:17', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (37, 267, 64, '22:34:33', '22:55:30', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (38, 207, 6, '18:06:56', '23:47:12', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (39, 97, 133, '09:32:44', '20:08:01', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (40, 166, 76, '18:13:40', '21:19:12', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (41, 44, 120, '08:10:53', '22:57:43', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (42, 272, 25, '13:08:46', '20:44:29', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (43, 179, 163, '05:46:50', '12:15:48', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (44, 48, 143, '07:15:50', '11:14:20', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (45, 278, 74, '17:12:47', '20:17:30', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (46, 154, 69, '17:14:13', '18:37:51', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (47, 54, 186, '09:09:42', '18:27:35', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (48, 248, 85, '16:25:31', '19:37:04', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (49, 157, 23, '21:36:51', '23:14:25', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (50, 119, 176, '19:43:09', '23:38:10', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (51, 18, 159, '13:06:05', '20:09:06', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (52, 257, 175, '14:40:51', '19:51:56', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (53, 177, 9, '05:14:42', '11:33:00', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (54, 267, 92, '09:45:31', '22:31:11', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (55, 236, 131, '18:53:55', '18:55:22', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (56, 263, 125, '22:19:31', '23:36:49', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (57, 218, 59, '20:34:16', '23:14:19', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (58, 102, 79, '12:18:09', '15:02:06', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (59, 66, 73, '23:43:34', '23:46:00', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (60, 238, 178, '04:45:57', '04:52:27', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (61, 66, 66, '13:01:09', '23:09:40', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (62, 106, 1, '05:22:03', '08:35:54', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (63, 14, 66, '11:49:44', '21:39:28', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (64, 210, 200, '02:48:58', '09:08:21', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (65, 150, 44, '00:49:55', '18:41:46', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (66, 37, 50, '04:38:23', '13:46:58', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (67, 37, 46, '17:04:43', '17:52:14', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (68, 15, 144, '00:37:26', '20:52:45', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (69, 216, 138, '12:18:49', '16:13:41', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (70, 196, 35, '16:45:38', '18:36:03', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (71, 170, 180, '02:43:35', '22:27:53', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (72, 261, 150, '07:49:13', '13:25:46', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (73, 94, 102, '19:36:08', '19:42:08', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (74, 33, 145, '08:45:53', '10:58:45', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (75, 20, 7, '20:55:41', '22:22:25', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (76, 109, 18, '07:24:25', '17:06:52', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (77, 73, 85, '17:07:03', '21:20:39', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (78, 279, 121, '02:57:00', '23:20:31', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (79, 73, 188, '02:24:42', '16:47:57', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (80, 273, 123, '13:32:31', '13:42:35', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (81, 34, 33, '00:45:40', '23:46:43', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (82, 94, 186, '18:07:43', '23:23:00', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (83, 161, 183, '02:16:45', '14:21:18', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (84, 88, 59, '13:15:19', '15:40:51', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (85, 18, 44, '07:46:16', '12:51:23', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (86, 29, 81, '13:36:57', '21:53:31', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (87, 104, 159, '13:47:56', '19:24:01', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (88, 184, 146, '03:18:54', '06:15:33', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (89, 173, 198, '14:18:43', '14:23:03', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (90, 38, 32, '07:29:58', '22:02:43', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (91, 270, 166, '17:22:16', '17:50:46', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (92, 276, 20, '15:28:57', '16:02:55', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (93, 197, 45, '01:47:05', '09:36:48', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (94, 162, 150, '00:12:04', '07:30:16', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (95, 62, 63, '23:42:49', '23:44:11', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (96, 187, 182, '18:30:24', '22:42:56', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (97, 162, 186, '15:26:28', '16:53:05', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (98, 223, 135, '21:37:42', '23:35:29', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (99, 37, 117, '10:03:42', '17:17:32', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (100, 95, 200, '11:21:31', '12:43:22', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (101, 273, 81, '11:21:31', '16:12:17', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (102, 217, 155, '12:16:02', '21:37:19', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (103, 212, 107, '10:41:13', '15:23:27', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (104, 281, 133, '01:50:52', '22:09:50', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (105, 293, 181, '02:10:12', '12:09:44', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (106, 45, 158, '19:56:48', '21:32:37', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (107, 297, 105, '22:52:20', '22:53:53', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (108, 164, 176, '14:11:39', '15:45:34', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (109, 199, 94, '20:40:32', '22:20:15', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (110, 215, 78, '21:24:21', '22:58:02', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (111, 291, 68, '20:28:46', '20:58:05', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (112, 99, 27, '10:52:58', '23:52:55', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (113, 75, 164, '07:35:36', '08:54:57', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (114, 95, 82, '17:09:18', '17:40:58', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (115, 225, 158, '04:46:16', '05:36:42', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (116, 99, 44, '08:54:14', '14:12:04', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (117, 254, 15, '17:30:42', '17:37:17', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (118, 209, 130, '06:03:51', '22:59:46', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (119, 123, 23, '16:50:46', '18:39:08', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (120, 1, 41, '17:29:27', '17:43:47', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (121, 36, 147, '10:39:03', '10:59:16', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (122, 39, 54, '06:50:09', '07:00:59', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (123, 6, 146, '04:45:38', '16:51:52', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (124, 300, 41, '13:50:30', '22:10:57', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (125, 165, 145, '20:55:15', '23:57:17', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (126, 129, 162, '01:45:29', '07:39:50', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (127, 184, 123, '13:28:43', '21:35:28', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (128, 292, 101, '08:31:12', '19:38:49', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (129, 118, 133, '11:55:56', '15:24:29', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (130, 66, 118, '19:33:47', '20:07:18', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (131, 233, 170, '19:35:03', '22:38:16', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (132, 252, 140, '06:53:02', '17:06:26', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (133, 32, 177, '10:22:53', '22:55:45', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (134, 234, 168, '01:42:45', '12:12:28', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (135, 96, 185, '01:03:58', '15:02:32', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (136, 11, 83, '15:24:47', '21:37:41', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (137, 43, 17, '15:00:55', '17:51:10', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (138, 172, 50, '15:03:42', '23:13:46', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (139, 261, 54, '09:12:32', '12:41:23', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (140, 130, 44, '14:55:27', '15:11:03', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (141, 120, 47, '09:51:21', '20:13:20', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (142, 45, 140, '02:41:38', '23:05:09', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (143, 59, 46, '11:05:58', '11:50:39', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (144, 71, 157, '01:44:02', '16:20:32', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (145, 273, 118, '19:12:30', '19:15:40', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (146, 226, 67, '23:30:04', '23:36:39', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (147, 283, 187, '23:09:20', '23:29:55', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (148, 40, 96, '15:24:14', '20:26:27', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (149, 216, 120, '11:50:01', '12:19:33', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (150, 223, 94, '13:32:23', '22:15:50', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (151, 260, 164, '22:44:26', '23:28:36', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (152, 177, 48, '22:06:26', '22:40:58', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (153, 17, 59, '03:33:50', '15:21:54', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (154, 77, 196, '05:51:03', '20:34:17', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (155, 224, 101, '07:21:55', '16:54:43', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (156, 158, 58, '12:29:56', '21:14:22', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (157, 254, 139, '16:19:25', '18:16:54', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (158, 213, 87, '19:49:52', '20:31:15', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (159, 55, 187, '00:24:29', '18:36:36', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (160, 69, 42, '08:29:08', '22:16:16', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (161, 239, 164, '00:29:36', '21:11:21', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (162, 61, 23, '13:13:35', '14:14:43', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (163, 254, 192, '16:54:36', '22:53:54', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (164, 192, 39, '03:29:48', '11:33:43', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (165, 39, 132, '12:33:52', '18:56:09', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (166, 120, 69, '15:32:05', '16:04:27', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (167, 296, 159, '10:30:25', '17:01:04', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (168, 62, 102, '02:44:04', '02:48:52', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (169, 13, 101, '12:13:51', '14:13:35', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (170, 260, 198, '10:02:57', '12:12:35', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (171, 209, 162, '15:11:59', '22:22:06', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (172, 203, 195, '04:58:39', '15:31:51', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (173, 138, 26, '23:20:23', '23:29:17', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (174, 165, 190, '07:50:03', '15:19:07', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (175, 121, 68, '03:41:03', '20:00:24', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (176, 35, 146, '05:50:29', '13:48:24', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (177, 46, 168, '17:29:21', '19:17:02', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (178, 279, 131, '10:47:40', '11:53:02', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (179, 76, 83, '19:52:23', '20:45:53', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (180, 214, 21, '14:02:21', '17:44:15', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (181, 214, 104, '18:35:21', '22:05:44', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (182, 266, 80, '04:54:21', '12:03:19', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (183, 80, 143, '06:55:53', '21:22:13', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (184, 206, 63, '19:48:12', '23:46:06', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (185, 85, 2, '03:58:09', '17:36:20', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (186, 298, 59, '14:23:27', '15:16:14', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (187, 84, 180, '23:17:39', '23:49:04', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (188, 172, 44, '20:01:35', '21:37:16', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (189, 34, 154, '07:24:25', '10:57:17', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (190, 275, 63, '14:55:14', '14:56:37', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (191, 146, 124, '00:22:27', '01:37:23', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (192, 244, 105, '02:50:13', '05:45:41', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (193, 238, 80, '22:50:16', '22:55:23', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (194, 294, 51, '12:40:19', '17:13:00', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (195, 204, 91, '21:45:30', '22:34:03', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (196, 127, 120, '09:55:35', '10:41:21', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (197, 26, 188, '05:57:39', '15:09:52', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (198, 41, 92, '21:12:03', '23:32:44', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (199, 70, 94, '15:53:38', '20:51:07', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (200, 41, 75, '06:36:09', '23:30:12', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (201, 147, 126, '07:26:46', '08:08:26', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (202, 23, 13, '07:57:02', '13:12:34', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (203, 291, 20, '00:25:54', '10:42:19', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (204, 147, 112, '05:42:10', '09:34:45', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (205, 129, 59, '20:04:34', '20:55:13', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (206, 85, 197, '11:29:45', '18:55:12', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (207, 78, 173, '04:42:21', '16:26:16', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (208, 278, 36, '17:26:07', '18:21:10', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (209, 144, 69, '07:45:25', '08:12:44', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (210, 277, 126, '09:37:04', '19:28:15', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (211, 95, 5, '07:02:50', '10:48:33', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (212, 154, 185, '02:02:59', '03:38:30', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (213, 145, 143, '06:05:48', '23:31:17', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (214, 272, 87, '09:52:08', '13:50:22', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (215, 80, 42, '15:20:31', '18:38:53', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (216, 121, 137, '12:48:53', '17:39:55', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (217, 263, 54, '13:28:50', '13:40:59', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (218, 191, 132, '17:18:47', '23:53:39', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (219, 41, 183, '09:12:50', '15:05:46', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (220, 242, 8, '11:58:24', '17:38:22', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (221, 219, 198, '14:13:59', '17:22:06', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (222, 269, 39, '09:02:13', '20:38:30', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (223, 231, 65, '09:56:47', '18:26:51', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (224, 118, 142, '17:00:07', '22:10:29', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (225, 150, 132, '16:05:40', '22:22:31', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (226, 181, 58, '14:17:09', '22:07:06', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (227, 281, 92, '05:11:16', '10:13:50', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (228, 83, 53, '15:52:01', '17:07:01', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (229, 122, 99, '13:12:44', '20:46:22', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (230, 221, 140, '21:43:12', '22:52:30', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (231, 247, 121, '12:34:13', '21:41:43', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (232, 238, 100, '20:19:58', '23:26:34', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (233, 107, 48, '19:07:50', '23:27:21', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (234, 112, 159, '10:56:39', '22:36:55', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (235, 166, 22, '23:54:46', '23:59:31', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (236, 146, 83, '08:54:27', '16:40:44', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (237, 111, 33, '18:39:04', '23:35:40', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (238, 34, 101, '14:08:34', '15:21:11', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (239, 48, 7, '04:05:17', '11:35:38', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (240, 203, 20, '06:20:26', '09:27:43', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (241, 280, 167, '12:00:35', '14:40:32', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (242, 39, 72, '05:20:34', '18:38:05', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (243, 201, 148, '06:38:47', '18:39:33', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (244, 180, 61, '07:15:41', '21:50:06', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (245, 280, 71, '05:21:02', '07:08:44', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (246, 100, 103, '10:10:59', '10:26:55', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (247, 227, 68, '20:38:22', '23:12:47', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (248, 176, 133, '07:04:52', '11:24:31', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (249, 233, 169, '21:15:52', '21:50:04', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (250, 18, 171, '08:09:35', '16:27:20', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (251, 52, 58, '08:04:48', '13:11:59', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (252, 41, 104, '13:11:15', '20:05:02', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (253, 13, 93, '07:25:29', '14:25:29', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (254, 202, 12, '15:39:01', '17:01:40', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (255, 150, 93, '22:31:23', '23:27:13', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (256, 1, 131, '19:16:38', '22:33:25', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (257, 6, 29, '03:56:47', '23:39:31', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (258, 174, 6, '10:11:36', '11:42:46', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (259, 226, 190, '14:07:51', '21:44:55', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (260, 168, 167, '18:24:45', '21:53:36', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (261, 140, 193, '01:23:59', '18:50:03', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (262, 34, 6, '02:07:22', '06:47:34', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (263, 13, 140, '07:50:13', '20:59:33', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (264, 1, 88, '23:48:18', '23:49:47', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (265, 299, 21, '20:18:26', '20:36:56', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (266, 50, 100, '00:10:25', '20:00:32', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (267, 119, 62, '00:50:59', '04:46:00', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (268, 134, 9, '08:33:59', '20:16:32', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (269, 23, 50, '01:15:28', '16:06:41', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (270, 141, 186, '20:34:06', '21:48:14', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (271, 58, 114, '23:58:27', '23:59:54', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (272, 179, 102, '05:53:03', '14:51:43', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (273, 188, 107, '04:06:28', '20:11:41', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (274, 19, 96, '00:35:18', '08:25:10', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (275, 146, 98, '12:51:27', '16:35:41', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (276, 258, 5, '21:29:53', '22:54:12', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (277, 64, 182, '20:10:44', '22:49:04', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (278, 61, 88, '18:21:44', '19:43:37', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (279, 291, 138, '09:56:59', '12:04:24', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (280, 123, 6, '02:29:01', '04:33:07', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (281, 162, 102, '23:33:03', '23:45:20', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (282, 169, 76, '11:10:20', '18:07:54', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (283, 130, 113, '18:19:28', '18:33:54', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (284, 275, 160, '19:45:47', '23:36:32', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (285, 80, 34, '04:44:54', '21:37:34', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (286, 293, 28, '03:21:59', '21:50:12', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (287, 260, 42, '17:49:44', '20:49:23', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (288, 23, 124, '23:26:59', '23:28:28', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (289, 222, 182, '14:31:41', '17:20:46', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (290, 182, 87, '15:52:50', '21:32:08', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (291, 170, 160, '10:12:11', '17:09:19', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (292, 144, 78, '09:40:46', '17:44:21', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (293, 236, 23, '13:01:41', '16:09:21', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (294, 186, 109, '23:05:22', '23:49:28', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (295, 251, 77, '15:27:57', '23:41:02', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (296, 260, 45, '19:53:01', '22:24:08', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (297, 52, 11, '13:58:26', '19:02:30', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (298, 80, 162, '14:30:28', '14:36:05', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (299, 136, 192, '12:21:34', '22:47:22', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (300, 38, 169, '19:11:45', '23:37:45', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (301, 129, 171, '20:28:29', '22:39:15', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (302, 59, 155, '22:30:14', '23:34:41', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (303, 129, 54, '04:08:45', '12:20:15', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (304, 67, 197, '03:52:37', '22:14:27', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (305, 166, 73, '21:26:35', '23:14:45', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (306, 206, 67, '08:55:17', '15:08:24', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (307, 53, 51, '12:40:57', '12:41:12', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (308, 153, 185, '18:10:39', '23:25:23', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (309, 185, 177, '19:56:45', '19:58:45', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (310, 264, 123, '02:45:01', '16:25:17', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (311, 273, 89, '03:06:01', '17:05:40', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (312, 268, 50, '17:03:38', '17:48:13', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (313, 86, 11, '02:36:28', '06:45:38', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (314, 59, 118, '14:40:37', '21:55:18', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (315, 31, 55, '06:28:51', '10:52:57', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (316, 140, 53, '10:30:08', '21:50:04', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (317, 200, 99, '15:19:06', '20:45:00', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (318, 89, 59, '14:24:10', '16:45:26', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (319, 26, 65, '07:27:57', '12:49:04', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (320, 178, 75, '08:29:21', '19:09:59', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (321, 24, 106, '18:04:42', '23:24:52', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (322, 151, 169, '02:29:39', '09:06:16', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (323, 55, 125, '17:23:37', '21:33:42', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (324, 278, 29, '22:45:47', '23:49:12', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (325, 298, 141, '05:42:30', '06:29:55', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (326, 239, 43, '15:23:18', '23:40:41', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (327, 131, 58, '23:34:52', '23:58:21', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (328, 220, 190, '02:21:41', '06:39:34', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (329, 282, 94, '08:01:08', '20:44:30', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (330, 263, 165, '19:34:51', '20:27:09', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (331, 229, 10, '11:42:18', '22:42:59', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (332, 244, 191, '07:58:09', '07:59:42', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (333, 257, 29, '06:44:22', '23:15:23', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (334, 223, 52, '08:21:07', '11:39:52', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (335, 84, 190, '15:05:51', '19:40:13', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (336, 300, 199, '12:48:25', '14:44:26', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (337, 160, 80, '12:24:33', '20:58:05', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (338, 54, 182, '10:17:54', '23:21:31', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (339, 108, 169, '12:45:11', '23:35:17', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (340, 188, 180, '12:44:48', '14:03:46', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (341, 129, 111, '02:26:06', '05:52:35', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (342, 202, 101, '03:16:18', '17:17:29', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (343, 113, 143, '01:05:24', '20:34:32', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (344, 174, 21, '19:00:39', '23:48:14', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (345, 56, 178, '06:07:56', '23:35:03', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (346, 97, 65, '17:22:21', '17:31:24', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (347, 296, 25, '06:31:44', '11:19:48', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (348, 62, 42, '01:01:21', '07:00:25', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (349, 176, 135, '12:12:42', '12:57:57', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (350, 191, 150, '23:19:07', '23:54:20', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (351, 191, 16, '16:45:14', '21:23:58', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (352, 74, 51, '06:40:48', '08:49:54', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (353, 209, 75, '06:02:03', '06:19:57', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (354, 281, 9, '19:17:05', '22:27:49', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (355, 102, 181, '09:28:30', '09:52:03', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (356, 190, 136, '21:11:03', '23:22:02', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (357, 193, 78, '12:21:34', '23:32:02', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (358, 20, 122, '23:00:46', '23:26:54', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (359, 243, 162, '11:57:24', '17:35:59', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (360, 40, 62, '20:40:41', '20:55:48', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (361, 296, 44, '14:16:20', '18:02:48', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (362, 91, 33, '00:32:12', '06:37:20', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (363, 142, 133, '04:08:16', '20:56:16', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (364, 228, 65, '08:13:09', '19:25:39', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (365, 86, 175, '17:27:43', '20:07:55', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (366, 159, 172, '22:57:23', '23:47:57', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (367, 164, 59, '00:40:25', '17:40:52', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (368, 159, 78, '13:09:53', '19:41:40', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (369, 101, 5, '20:03:51', '20:17:54', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (370, 77, 11, '17:44:14', '21:49:48', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (371, 68, 57, '05:53:27', '16:45:06', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (372, 244, 127, '15:00:11', '23:05:26', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (373, 241, 106, '01:47:09', '21:11:11', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (374, 136, 28, '19:45:49', '20:57:23', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (375, 271, 7, '03:36:05', '08:07:54', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (376, 97, 166, '20:23:18', '22:53:09', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (377, 100, 67, '14:45:48', '15:35:58', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (378, 22, 167, '21:45:42', '21:53:22', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (379, 80, 143, '17:53:32', '17:56:52', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (380, 254, 100, '19:02:08', '20:09:38', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (381, 216, 160, '15:43:25', '18:03:52', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (382, 60, 189, '16:01:17', '23:21:46', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (383, 16, 182, '18:45:17', '18:49:34', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (384, 146, 178, '23:53:30', '23:56:03', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (385, 221, 43, '01:47:37', '23:14:07', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (386, 213, 30, '22:15:02', '23:22:12', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (387, 297, 66, '10:45:39', '14:40:28', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (388, 217, 191, '04:52:43', '11:44:41', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (389, 187, 75, '12:57:06', '13:37:00', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (390, 118, 196, '01:22:58', '17:54:47', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (391, 209, 89, '20:58:45', '23:57:32', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (392, 139, 139, '06:58:45', '08:20:32', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (393, 126, 82, '15:57:15', '18:36:53', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (394, 194, 164, '01:49:21', '23:07:23', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (395, 153, 39, '15:40:27', '20:15:57', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (396, 244, 108, '05:21:04', '13:24:47', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (397, 106, 190, '00:03:26', '11:58:14', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (398, 88, 28, '17:17:12', '18:42:01', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (399, 299, 112, '23:19:02', '23:39:37', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (400, 108, 88, '18:41:58', '22:56:44', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (401, 212, 185, '18:48:46', '18:49:08', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (402, 197, 86, '23:13:55', '23:27:24', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (403, 105, 124, '02:39:05', '09:35:15', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (404, 245, 124, '20:25:12', '22:25:33', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (405, 151, 190, '10:54:23', '16:25:24', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (406, 34, 149, '19:28:47', '21:36:23', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (407, 207, 88, '15:46:53', '15:56:17', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (408, 181, 168, '04:03:14', '12:06:46', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (409, 297, 161, '19:03:07', '23:56:01', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (410, 168, 9, '12:47:20', '13:51:14', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (411, 214, 141, '21:34:20', '21:44:06', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (412, 175, 167, '05:20:23', '10:24:52', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (413, 187, 56, '22:02:11', '23:25:41', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (414, 297, 47, '04:17:11', '21:29:37', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (415, 262, 111, '22:58:28', '23:58:53', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (416, 138, 154, '09:37:58', '10:11:56', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (417, 253, 103, '04:01:19', '06:41:13', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (418, 249, 120, '12:17:04', '22:06:01', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (419, 280, 153, '13:55:45', '13:59:56', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (420, 167, 94, '23:49:58', '23:55:25', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (421, 216, 140, '03:14:59', '20:43:39', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (422, 38, 47, '18:41:11', '20:52:31', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (423, 11, 81, '20:04:53', '22:04:16', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (424, 21, 33, '00:38:37', '01:52:33', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (425, 71, 49, '15:13:13', '21:15:50', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (426, 135, 87, '11:36:18', '12:29:42', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (427, 123, 165, '20:09:56', '23:06:43', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (428, 71, 99, '17:14:03', '23:06:22', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (429, 164, 191, '00:19:58', '09:38:10', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (430, 167, 15, '22:36:24', '23:36:56', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (431, 258, 95, '04:12:24', '14:08:35', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (432, 214, 173, '11:52:08', '20:07:20', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (433, 11, 73, '11:02:12', '19:04:30', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (434, 9, 92, '16:09:16', '20:52:44', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (435, 270, 158, '02:53:31', '12:00:23', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (436, 112, 62, '04:01:39', '15:47:43', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (437, 290, 130, '02:52:26', '12:29:10', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (438, 264, 127, '15:05:23', '21:29:54', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (439, 261, 111, '14:13:37', '16:06:15', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (440, 249, 132, '14:39:54', '22:48:15', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (441, 98, 90, '00:28:57', '19:21:04', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (442, 145, 196, '16:53:18', '16:57:10', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (443, 277, 86, '22:04:40', '22:14:54', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (444, 186, 72, '17:43:17', '21:14:02', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (445, 238, 168, '22:30:07', '23:37:13', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (446, 288, 78, '15:14:54', '19:44:00', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (447, 60, 163, '22:09:47', '23:37:40', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (448, 12, 104, '04:43:21', '10:35:47', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (449, 270, 107, '14:12:55', '14:32:39', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (450, 275, 35, '06:10:36', '13:12:37', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (451, 166, 145, '22:11:41', '22:22:21', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (452, 218, 70, '18:30:20', '22:06:50', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (453, 260, 174, '21:06:02', '22:43:19', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (454, 15, 84, '16:30:34', '19:41:44', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (455, 291, 15, '09:07:40', '09:47:29', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (456, 224, 118, '15:14:03', '20:34:49', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (457, 38, 27, '14:42:52', '23:29:38', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (458, 154, 47, '18:17:46', '18:28:58', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (459, 212, 94, '15:37:58', '19:41:16', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (460, 176, 75, '05:24:12', '07:47:04', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (461, 55, 162, '07:28:55', '17:18:51', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (462, 7, 162, '07:58:22', '12:42:19', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (463, 64, 154, '16:36:11', '17:19:06', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (464, 2, 28, '20:41:44', '23:35:48', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (465, 22, 94, '16:00:06', '20:52:32', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (466, 81, 34, '13:09:16', '13:40:21', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (467, 118, 35, '12:51:30', '15:08:55', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (468, 163, 26, '00:02:24', '02:35:15', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (469, 208, 9, '04:39:13', '05:47:19', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (470, 154, 115, '13:32:32', '16:29:06', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (471, 94, 21, '00:27:09', '10:15:13', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (472, 232, 39, '11:36:51', '17:46:37', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (473, 46, 141, '06:56:26', '23:13:17', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (474, 191, 115, '00:27:06', '15:46:13', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (475, 245, 111, '06:04:47', '22:11:24', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (476, 279, 50, '15:27:10', '15:59:23', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (477, 241, 57, '03:08:51', '19:42:03', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (478, 87, 99, '03:23:11', '20:26:39', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (479, 156, 89, '08:09:52', '17:31:14', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (480, 281, 151, '01:35:45', '18:32:51', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (481, 143, 79, '10:22:46', '23:07:13', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (482, 151, 169, '20:44:49', '23:08:04', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (483, 81, 64, '02:38:10', '03:01:25', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (484, 26, 167, '17:13:32', '22:28:32', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (485, 111, 126, '14:57:03', '21:25:26', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (486, 18, 180, '01:24:12', '05:40:06', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (487, 148, 14, '01:38:38', '11:07:07', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (488, 14, 86, '15:42:13', '18:03:20', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (489, 241, 20, '02:17:48', '07:22:59', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (490, 173, 61, '10:02:44', '12:29:31', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (491, 65, 150, '01:50:12', '16:25:20', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (492, 88, 126, '17:33:33', '19:51:15', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (493, 168, 76, '06:56:44', '08:14:55', 0);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (494, 300, 110, '23:12:01', '23:44:22', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (495, 60, 71, '05:15:00', '11:31:45', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (496, 75, 41, '22:37:59', '23:13:13', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (497, 231, 29, '02:23:20', '06:47:20', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (498, 204, 34, '07:11:04', '16:26:46', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (499, 119, 161, '14:07:11', '19:41:28', 1);
INSERT INTO DailyServices (id, route_id, bus_id, departure_time, arrival_time, is_holiday) VALUES (500, 155, 79, '00:08:08', '09:57:06', 0);
SET IDENTITY_INSERT DailyServices OFF;

-- Insertar paradas en la ruta
SET IDENTITY_INSERT Stops ON;
INSERT INTO Stops (id, service_id, place_id, activity_id, arrival_time, stop_duration) VALUES
(1, 202, 183, 69, '2024-08-19 07:57:15', 1081),
(2, 192, 116, 94, '2024-10-23 22:51:09', 337),
(3, 480, 185, 41, '2024-09-06 07:07:09', 311),
(4, 159, 21, 32, '2024-04-14 08:52:18', 1106),
(5, 80, 47, 55, '2024-03-15 11:50:03', 1001),
(6, 98, 36, 49, '2024-05-18 15:37:25', 70),
(7, 165, 154, 46, '2024-12-22 12:17:45', 171),
(8, 452, 193, 192, '2024-05-19 11:08:47', 365),
(9, 29, 159, 79, '2024-03-10 14:36:02', 862),
(10, 43, 160, 15, '2024-02-16 04:11:04', 657),
(11, 338, 81, 191, '2024-08-16 20:50:52', 319),
(12, 2, 6, 181, '2024-08-08 21:44:03', 738),
(13, 447, 194, 85, '2024-08-08 15:47:04', 844),
(14, 202, 88, 48, '2024-06-25 06:13:34', 886),
(15, 14, 169, 126, '2024-02-11 02:09:57', 1118),
(16, 245, 103, 183, '2024-11-15 16:15:27', 41),
(17, 286, 119, 13, '2024-06-19 16:47:51', 1391),
(18, 495, 60, 140, '2024-01-06 00:58:45', 578),
(19, 23, 15, 20, '2024-10-06 09:22:16', 83),
(20, 90, 34, 111, '2024-10-28 11:45:25', 986),
(21, 489, 13, 176, '2024-04-11 15:18:15', 1024),
(22, 228, 155, 95, '2024-07-27 15:51:27', 1219),
(23, 237, 97, 55, '2024-02-11 09:26:30', 59),
(24, 494, 68, 27, '2024-01-18 01:04:01', 164),
(25, 218, 138, 39, '2024-05-09 07:03:37', 946),
(26, 328, 21, 169, '2024-02-20 17:16:37', 1353),
(27, 441, 175, 66, '2024-10-10 01:41:54', 1102),
(28, 452, 141, 183, '2024-12-28 13:34:08', 751),
(29, 80, 87, 80, '2024-04-06 20:02:48', 640),
(30, 474, 135, 33, '2024-02-05 09:04:04', 322),
(31, 283, 183, 147, '2024-12-14 17:48:20', 1262),
(32, 53, 106, 140, '2024-01-31 15:47:09', 777),
(33, 53, 43, 166, '2024-10-26 03:03:08', 667),
(34, 210, 165, 178, '2024-04-30 23:17:26', 894),
(35, 294, 15, 133, '2024-11-13 03:53:46', 796),
(36, 272, 9, 194, '2024-03-18 00:10:43', 1186),
(37, 365, 87, 152, '2024-05-23 13:51:36', 583),
(38, 392, 114, 149, '2024-09-25 21:58:39', 108),
(39, 132, 136, 86, '2024-06-25 19:22:34', 1405),
(40, 31, 38, 60, '2024-08-28 18:19:36', 1139),
(41, 262, 43, 93, '2024-11-24 13:27:04', 504),
(42, 456, 55, 54, '2024-07-13 18:18:23', 220),
(43, 270, 19, 157, '2024-10-17 06:51:51', 942),
(44, 56, 184, 64, '2024-04-09 09:26:15', 1227),
(45, 36, 177, 40, '2024-11-24 10:36:04', 1193),
(46, 377, 23, 67, '2024-08-12 09:51:00', 320),
(47, 285, 87, 117, '2024-04-16 00:22:21', 1119),
(48, 293, 36, 97, '2024-11-27 00:32:39', 1092),
(49, 156, 52, 33, '2024-08-04 05:43:08', 1381),
(50, 328, 113, 136, '2024-09-06 08:31:19', 1407),
(51, 481, 13, 106, '2024-03-02 22:00:59', 719),
(52, 45, 91, 8, '2024-03-10 06:47:40', 1176),
(53, 229, 175, 19, '2024-11-22 22:23:56', 106),
(54, 444, 193, 113, '2024-09-30 20:24:17', 100),
(55, 40, 109, 104, '2024-11-10 10:46:34', 819),
(56, 184, 161, 145, '2024-05-03 13:40:01', 1057),
(57, 181, 170, 22, '2024-01-13 19:28:42', 600),
(58, 196, 105, 168, '2024-03-10 03:44:16', 127),
(59, 402, 165, 1, '2024-12-14 02:35:18', 65),
(60, 91, 72, 16, '2024-08-09 15:37:56', 303),
(61, 408, 37, 44, '2024-03-24 19:56:39', 1097),
(62, 329, 113, 130, '2024-06-10 18:44:51', 959),
(63, 204, 55, 109, '2024-12-27 23:23:35', 706),
(64, 351, 192, 51, '2024-09-09 10:13:24', 46),
(65, 241, 32, 191, '2024-10-27 00:37:33', 434),
(66, 397, 29, 60, '2024-10-25 10:36:57', 608),
(67, 93, 3, 77, '2024-05-24 02:31:04', 273),
(68, 62, 179, 70, '2024-07-21 05:01:50', 57),
(69, 334, 135, 40, '2024-10-19 06:58:34', 573),
(70, 229, 183, 74, '2024-02-23 06:20:00', 796),
(71, 63, 61, 82, '2024-01-24 22:06:35', 1014),
(72, 354, 18, 152, '2024-11-04 00:30:15', 715),
(73, 25, 178, 38, '2024-12-10 16:38:40', 1205),
(74, 98, 179, 27, '2024-12-24 20:07:36', 63),
(75, 379, 91, 174, '2024-11-09 21:57:04', 1220),
(76, 172, 88, 89, '2024-05-18 00:46:23', 1248),
(77, 450, 186, 3, '2024-11-12 23:32:08', 271),
(78, 344, 170, 46, '2024-09-23 10:56:16', 1213),
(79, 492, 176, 108, '2024-05-07 03:32:25', 462),
(80, 233, 13, 34, '2024-09-29 09:01:29', 754),
(81, 44, 124, 139, '2024-02-13 19:35:46', 134),
(82, 175, 130, 195, '2024-08-11 04:55:27', 232),
(83, 158, 128, 4, '2024-08-25 07:19:05', 615),
(84, 213, 134, 192, '2024-02-18 06:09:20', 1033),
(85, 161, 80, 1, '2024-05-13 21:20:54', 772),
(86, 362, 140, 6, '2024-11-20 01:46:24', 319),
(87, 481, 25, 145, '2024-11-03 09:36:28', 114),
(88, 378, 161, 61, '2024-12-04 06:56:50', 1056),
(89, 385, 27, 10, '2024-08-17 11:32:38', 795),
(90, 255, 69, 134, '2024-06-13 21:25:00', 190),
(91, 198, 26, 7, '2024-01-01 10:26:43', 1268),
(92, 53, 130, 133, '2024-11-17 13:03:55', 340),
(93, 212, 21, 136, '2024-01-15 03:58:20', 1192),
(94, 341, 149, 68, '2024-02-06 15:24:44', 268),
(95, 159, 45, 10, '2024-10-24 22:25:02', 339),
(96, 139, 3, 162, '2024-10-01 13:44:14', 397),
(97, 5, 52, 150, '2024-02-14 12:21:19', 1195),
(98, 137, 159, 166, '2024-11-19 05:55:45', 449),
(99, 497, 137, 32, '2024-09-24 20:14:45', 366),
(100, 129, 67, 124, '2024-05-26 14:10:15', 584),
(101, 306, 177, 95, '2024-02-12 17:10:16', 1130),
(102, 222, 95, 46, '2024-03-08 07:04:41', 1328),
(103, 422, 190, 141, '2024-03-21 13:42:13', 532),
(104, 81, 112, 138, '2024-10-09 08:06:07', 88),
(105, 272, 83, 163, '2024-02-21 11:56:48', 58),
(106, 156, 167, 190, '2024-05-03 23:02:13', 266),
(107, 95, 60, 12, '2024-09-07 06:17:36', 511),
(108, 495, 9, 11, '2024-02-07 21:36:01', 651),
(109, 51, 76, 161, '2024-11-02 20:44:34', 202),
(110, 184, 154, 19, '2024-02-22 23:18:42', 848),
(111, 10, 155, 88, '2024-11-05 12:07:08', 1336),
(112, 25, 7, 94, '2024-01-09 20:01:17', 533),
(113, 61, 16, 97, '2024-11-15 13:23:40', 1340),
(114, 19, 20, 159, '2024-09-21 04:57:37', 905),
(115, 243, 139, 90, '2024-06-04 00:40:46', 1131),
(116, 468, 113, 81, '2024-08-12 17:56:07', 325),
(117, 23, 15, 69, '2024-12-30 13:54:10', 1341),
(118, 350, 9, 161, '2024-03-31 08:20:25', 884),
(119, 214, 76, 147, '2024-10-13 01:49:09', 173),
(120, 484, 112, 131, '2024-09-27 01:00:11', 277),
(121, 221, 14, 44, '2024-11-17 06:49:54', 1025),
(122, 335, 196, 178, '2024-03-30 06:44:54', 565),
(123, 235, 188, 81, '2024-05-10 06:53:35', 1213),
(124, 405, 50, 53, '2024-01-27 22:32:53', 280),
(125, 20, 65, 196, '2024-04-13 00:58:18', 490),
(126, 182, 47, 141, '2024-09-25 19:53:55', 289),
(127, 40, 35, 42, '2024-12-09 20:32:35', 19),
(128, 275, 114, 97, '2024-10-17 18:29:06', 1120),
(129, 420, 109, 68, '2024-08-01 06:24:28', 527),
(130, 257, 198, 76, '2024-08-27 05:39:11', 559),
(131, 321, 10, 170, '2024-11-12 04:26:50', 939),
(132, 237, 23, 27, '2024-05-09 08:20:15', 674),
(133, 276, 151, 105, '2024-03-21 13:58:47', 405),
(134, 493, 176, 27, '2024-10-22 18:02:11', 1091),
(135, 341, 21, 175, '2024-12-09 19:14:50', 245),
(136, 433, 133, 6, '2024-12-05 03:26:17', 1210),
(137, 241, 113, 90, '2024-01-08 06:19:43', 360),
(138, 13, 74, 144, '2024-08-27 16:00:49', 1053),
(139, 342, 126, 142, '2024-06-19 21:12:17', 718),
(140, 467, 112, 165, '2024-04-30 02:01:35', 394),
(141, 427, 123, 5, '2024-06-18 13:18:05', 63),
(142, 332, 31, 93, '2024-02-17 18:18:57', 913),
(143, 124, 51, 138, '2024-02-10 00:12:52', 558),
(144, 281, 183, 149, '2024-06-19 03:46:15', 1250),
(145, 213, 120, 61, '2024-05-18 15:41:49', 1081),
(146, 281, 173, 180, '2024-07-31 07:19:48', 297),
(147, 111, 1, 184, '2024-09-22 00:23:39', 763),
(148, 227, 174, 143, '2024-07-01 23:54:26', 337),
(149, 225, 39, 19, '2024-09-11 07:58:05', 1304),
(150, 197, 18, 29, '2024-02-18 22:47:11', 393),
(151, 76, 136, 61, '2024-06-30 17:02:17', 725),
(152, 50, 187, 192, '2024-03-11 13:47:40', 1180),
(153, 202, 21, 138, '2024-12-01 02:00:06', 64),
(154, 150, 180, 25, '2024-06-02 01:12:01', 435),
(155, 20, 183, 171, '2024-12-10 20:36:54', 822),
(156, 332, 171, 134, '2024-01-21 12:09:28', 79),
(157, 137, 192, 84, '2024-01-04 09:54:10', 622),
(158, 17, 20, 171, '2024-12-20 01:46:17', 1291),
(159, 191, 49, 68, '2024-07-09 07:31:50', 1027),
(160, 315, 198, 148, '2024-10-14 00:05:09', 166),
(161, 495, 78, 92, '2024-05-11 17:26:38', 1279),
(162, 326, 30, 163, '2024-10-22 11:58:51', 187),
(163, 35, 178, 10, '2024-01-06 03:13:04', 127),
(164, 4, 109, 46, '2024-07-11 08:56:48', 596),
(165, 20, 198, 12, '2024-04-04 03:55:55', 955),
(166, 391, 110, 185, '2024-05-14 05:10:43', 1049),
(167, 197, 111, 125, '2024-09-19 18:40:28', 440),
(168, 224, 178, 153, '2024-07-07 05:36:10', 202),
(169, 394, 103, 44, '2024-08-12 10:52:56', 281),
(170, 133, 66, 199, '2024-12-25 02:57:13', 559),
(171, 435, 185, 118, '2024-06-16 05:44:33', 529),
(172, 3, 19, 80, '2024-10-20 05:30:24', 162),
(173, 276, 129, 10, '2024-11-14 02:50:35', 251),
(174, 434, 173, 27, '2024-10-23 22:00:38', 129),
(175, 70, 103, 51, '2024-04-27 14:31:22', 164),
(176, 389, 16, 141, '2024-01-13 14:57:10', 119),
(177, 269, 54, 30, '2024-09-05 07:45:58', 269),
(178, 299, 75, 147, '2024-08-26 03:18:12', 44),
(179, 127, 59, 126, '2024-10-26 16:56:02', 878),
(180, 57, 23, 95, '2024-05-02 13:42:26', 139),
(181, 476, 90, 195, '2024-02-06 08:21:02', 1388),
(182, 128, 180, 200, '2024-08-06 16:21:35', 249),
(183, 353, 111, 167, '2024-02-14 04:28:51', 1241),
(184, 328, 104, 8, '2024-05-28 21:20:03', 404),
(185, 206, 57, 19, '2024-01-27 05:07:25', 649),
(186, 364, 155, 52, '2024-05-24 10:42:55', 390),
(187, 308, 53, 71, '2024-09-14 22:16:02', 620),
(188, 272, 45, 61, '2024-03-11 17:06:42', 977),
(189, 248, 66, 86, '2024-10-06 07:03:44', 12),
(190, 260, 40, 167, '2024-09-21 23:55:05', 869),
(191, 128, 118, 136, '2024-06-26 15:06:56', 962),
(192, 307, 188, 184, '2024-04-15 15:41:40', 199),
(193, 391, 34, 105, '2024-04-30 06:43:16', 127),
(194, 106, 42, 25, '2024-06-19 17:35:42', 858),
(195, 71, 132, 173, '2024-11-16 03:34:36', 228),
(196, 485, 189, 83, '2024-10-07 15:16:10', 1092),
(197, 373, 70, 120, '2024-04-19 20:36:37', 220),
(198, 457, 78, 125, '2024-12-13 06:26:48', 1300),
(199, 197, 54, 122, '2024-03-19 08:24:45', 754),
(200, 295, 59, 130, '2024-09-19 03:23:41', 744),
(201, 207, 101, 61, '2024-06-05 14:43:03', 78),
(202, 336, 11, 99, '2024-04-14 23:11:10', 904),
(203, 228, 192, 18, '2024-05-22 03:26:56', 1379),
(204, 269, 17, 67, '2024-06-06 10:07:34', 712),
(205, 475, 72, 107, '2024-02-16 20:58:37', 1275),
(206, 154, 118, 1, '2024-01-29 06:27:52', 970),
(207, 306, 3, 52, '2024-10-23 00:02:08', 1015),
(208, 346, 117, 41, '2024-10-05 15:02:53', 946),
(209, 219, 181, 98, '2024-10-27 19:49:37', 349),
(210, 430, 193, 166, '2024-04-06 21:47:04', 1434),
(211, 285, 35, 52, '2024-04-18 21:02:21', 280),
(212, 183, 13, 129, '2024-06-16 08:38:53', 467),
(213, 46, 104, 9, '2024-09-11 10:48:08', 427),
(214, 486, 127, 153, '2024-10-09 00:22:02', 27),
(215, 213, 63, 36, '2024-02-10 04:41:44', 1286),
(216, 456, 161, 152, '2024-08-11 20:45:00', 347),
(217, 64, 194, 52, '2024-04-17 06:54:47', 1051),
(218, 279, 32, 53, '2024-04-29 05:43:26', 1318),
(219, 265, 55, 16, '2024-04-15 23:52:28', 1324),
(220, 214, 85, 122, '2024-01-15 15:10:19', 1184),
(221, 324, 75, 188, '2024-05-23 21:13:20', 248),
(222, 46, 13, 160, '2024-10-31 17:38:52', 569),
(223, 497, 9, 14, '2024-03-04 16:28:41', 844),
(224, 248, 93, 130, '2024-08-14 14:22:37', 728),
(225, 183, 30, 103, '2024-01-07 19:05:36', 761),
(226, 4, 82, 59, '2024-06-24 17:16:31', 1241),
(227, 244, 13, 195, '2024-05-03 19:07:52', 532),
(228, 211, 75, 20, '2024-11-02 23:56:54', 140),
(229, 195, 38, 184, '2024-01-11 11:43:40', 511),
(230, 500, 49, 11, '2024-08-24 10:22:56', 266),
(231, 79, 162, 26, '2024-10-01 19:51:29', 1218),
(232, 378, 160, 143, '2024-07-16 16:32:12', 311),
(233, 406, 81, 77, '2024-05-12 14:31:00', 1093),
(234, 470, 177, 77, '2024-05-09 14:42:51', 35),
(235, 419, 41, 130, '2024-10-23 03:10:27', 1264),
(236, 499, 29, 57, '2024-03-10 06:10:56', 29),
(237, 432, 97, 40, '2024-07-10 18:31:20', 592),
(238, 499, 64, 144, '2024-08-25 05:27:34', 165),
(239, 124, 154, 124, '2024-02-01 10:57:21', 1241),
(240, 407, 114, 115, '2024-06-04 15:40:55', 103),
(241, 460, 193, 200, '2024-10-07 13:01:38', 478),
(242, 47, 130, 10, '2024-07-16 05:42:52', 50),
(243, 153, 35, 6, '2024-01-14 18:53:11', 1202),
(244, 414, 69, 62, '2024-09-08 09:04:54', 40),
(245, 229, 34, 142, '2024-12-30 16:26:15', 1298),
(246, 198, 67, 86, '2024-08-23 16:23:09', 1259),
(247, 350, 152, 96, '2024-05-29 23:28:32', 404),
(248, 317, 182, 105, '2024-05-03 07:50:22', 531),
(249, 73, 91, 31, '2024-03-14 21:53:09', 506),
(250, 357, 128, 164, '2024-07-07 13:25:58', 48),
(251, 368, 91, 98, '2024-10-27 06:11:14', 1086),
(252, 346, 70, 142, '2024-12-25 11:53:51', 506),
(253, 417, 53, 186, '2024-05-17 23:33:53', 711),
(254, 489, 149, 45, '2024-10-23 07:44:21', 28),
(255, 500, 4, 26, '2024-03-09 16:43:18', 815),
(256, 473, 161, 47, '2024-03-24 06:14:23', 490),
(257, 482, 143, 136, '2024-06-17 07:08:12', 1144),
(258, 368, 142, 186, '2024-05-27 02:51:30', 503),
(259, 68, 86, 77, '2024-05-18 09:12:03', 907),
(260, 98, 90, 86, '2024-07-11 04:15:13', 839),
(261, 4, 200, 34, '2024-06-14 06:54:01', 486),
(262, 111, 5, 171, '2024-04-01 16:48:53', 233),
(263, 297, 167, 11, '2024-02-28 21:45:10', 423),
(264, 361, 53, 89, '2024-08-05 04:46:05', 1436),
(265, 446, 21, 141, '2024-02-16 18:49:11', 572),
(266, 387, 55, 106, '2024-07-30 08:36:57', 366),
(267, 488, 9, 170, '2024-09-25 02:41:20', 326),
(268, 481, 120, 184, '2024-04-29 16:21:24', 524),
(269, 497, 9, 140, '2024-10-09 02:25:42', 1402),
(270, 456, 94, 41, '2024-12-10 16:09:54', 580),
(271, 47, 151, 109, '2024-05-18 09:04:36', 39),
(272, 53, 70, 122, '2024-06-21 22:08:56', 570),
(273, 39, 188, 13, '2024-04-17 11:11:16', 1373),
(274, 2, 14, 123, '2024-01-05 03:28:54', 485),
(275, 54, 45, 6, '2024-03-14 07:22:48', 60),
(276, 81, 24, 121, '2024-05-17 12:12:25', 326),
(277, 34, 7, 121, '2024-10-15 17:24:12', 1398),
(278, 487, 113, 79, '2024-01-30 01:53:20', 795),
(279, 273, 115, 135, '2024-12-19 07:11:16', 831),
(280, 133, 1, 103, '2024-05-16 19:47:14', 967),
(281, 495, 13, 199, '2024-09-22 19:14:16', 1010),
(282, 158, 23, 11, '2024-07-30 15:58:42', 2),
(283, 453, 91, 148, '2024-05-28 11:44:31', 1123),
(284, 248, 39, 165, '2024-04-13 17:15:38', 881),
(285, 380, 3, 60, '2024-01-19 00:42:38', 302),
(286, 420, 160, 86, '2024-08-19 16:35:52', 214),
(287, 345, 7, 176, '2024-07-14 21:50:44', 968),
(288, 152, 109, 55, '2024-03-26 14:09:34', 497),
(289, 151, 107, 1, '2024-07-05 00:37:42', 705),
(290, 326, 44, 45, '2024-11-23 12:44:48', 1018),
(291, 427, 147, 131, '2024-12-03 23:13:36', 640),
(292, 87, 153, 159, '2024-08-01 03:50:22', 216),
(293, 386, 136, 124, '2024-06-20 21:21:00', 190),
(294, 461, 192, 29, '2024-07-04 22:30:14', 1382),
(295, 408, 3, 85, '2024-04-27 21:20:16', 860),
(296, 78, 43, 58, '2024-08-09 20:57:57', 307),
(297, 249, 119, 184, '2024-11-08 11:21:49', 558),
(298, 40, 11, 3, '2024-05-03 18:56:25', 402),
(299, 266, 153, 105, '2024-11-21 21:02:15', 412),
(300, 81, 195, 33, '2024-03-07 04:09:12', 708),
(301, 363, 18, 147, '2024-09-09 12:48:17', 796),
(302, 261, 160, 100, '2024-08-19 11:10:45', 494),
(303, 194, 70, 139, '2024-06-15 21:56:02', 1281),
(304, 280, 85, 191, '2024-10-31 11:48:10', 1181),
(305, 237, 97, 149, '2024-01-24 13:44:39', 1028),
(306, 150, 35, 187, '2024-10-14 09:23:16', 712),
(307, 63, 102, 161, '2024-01-21 23:50:17', 321),
(308, 248, 92, 42, '2024-01-25 00:03:25', 1184),
(309, 117, 77, 2, '2024-08-06 00:57:13', 451),
(310, 257, 188, 5, '2024-10-09 05:14:20', 1010),
(311, 66, 18, 53, '2024-12-03 00:38:13', 1290),
(312, 362, 142, 156, '2024-10-20 01:27:24', 282),
(313, 419, 188, 140, '2024-10-20 22:26:43', 424),
(314, 196, 37, 73, '2024-11-11 11:51:05', 981),
(315, 367, 179, 199, '2024-02-15 23:14:41', 1056),
(316, 435, 132, 129, '2024-05-04 04:42:22', 821),
(317, 37, 98, 39, '2024-03-19 09:10:10', 728),
(318, 37, 45, 75, '2024-07-15 03:08:41', 1359),
(319, 375, 115, 99, '2024-12-31 19:40:17', 676),
(320, 318, 99, 95, '2024-10-23 20:03:16', 1086),
(321, 152, 59, 107, '2024-07-30 19:54:30', 1088),
(322, 212, 73, 143, '2024-08-15 11:51:36', 536),
(323, 74, 188, 117, '2024-02-28 12:52:08', 615),
(324, 335, 104, 130, '2024-08-15 05:53:17', 418),
(325, 295, 165, 117, '2024-10-14 10:13:08', 701),
(326, 218, 18, 81, '2024-04-02 20:16:21', 312),
(327, 33, 39, 101, '2024-07-24 01:26:03', 798),
(328, 242, 24, 6, '2024-09-02 18:33:30', 1239),
(329, 460, 60, 165, '2024-04-15 11:44:14', 889),
(330, 369, 109, 166, '2024-07-21 12:12:03', 1204),
(331, 357, 151, 104, '2024-07-07 19:48:29', 150),
(332, 211, 39, 8, '2024-02-20 18:41:02', 1228),
(333, 79, 74, 25, '2024-01-15 09:51:41', 257),
(334, 266, 142, 104, '2024-02-25 02:11:06', 213),
(335, 191, 182, 146, '2024-11-23 17:57:20', 793),
(336, 296, 148, 164, '2024-01-24 11:43:31', 270),
(337, 291, 81, 151, '2024-01-03 23:34:32', 100),
(338, 255, 161, 5, '2024-07-25 02:33:50', 438),
(339, 257, 56, 98, '2024-10-20 19:19:04', 671),
(340, 102, 88, 6, '2024-05-04 09:21:04', 95),
(341, 441, 46, 24, '2024-11-28 11:51:39', 881),
(342, 445, 50, 174, '2024-02-11 21:49:27', 781),
(343, 277, 124, 168, '2024-03-02 02:43:02', 1288),
(344, 289, 37, 167, '2024-11-06 09:01:51', 43),
(345, 324, 33, 137, '2024-09-30 05:39:54', 1296),
(346, 172, 149, 120, '2024-02-19 03:15:38', 519),
(347, 86, 107, 165, '2024-01-19 01:50:50', 898),
(348, 231, 14, 195, '2024-02-13 00:08:06', 65),
(349, 382, 106, 84, '2024-08-24 11:24:03', 15),
(350, 294, 69, 131, '2024-01-10 18:06:31', 1348),
(351, 42, 64, 173, '2024-02-15 08:04:50', 621),
(352, 12, 116, 154, '2024-10-21 18:04:07', 277),
(353, 176, 72, 5, '2024-12-26 06:09:50', 333),
(354, 68, 103, 199, '2024-05-24 08:22:02', 1155),
(355, 282, 194, 181, '2024-06-17 18:22:22', 950),
(356, 46, 98, 135, '2024-11-12 16:07:41', 897),
(357, 471, 129, 10, '2024-08-19 20:12:01', 631),
(358, 400, 143, 148, '2024-07-15 22:48:27', 689),
(359, 158, 149, 167, '2024-10-31 04:39:35', 1009),
(360, 497, 114, 160, '2024-05-30 07:52:27', 155),
(361, 14, 46, 158, '2024-05-08 11:58:34', 1315),
(362, 167, 35, 111, '2024-01-13 13:16:00', 472),
(363, 381, 49, 63, '2024-03-18 04:36:43', 599),
(364, 401, 144, 40, '2024-01-04 20:54:21', 899),
(365, 294, 73, 96, '2024-08-21 01:40:20', 1150),
(366, 41, 104, 102, '2024-04-13 15:03:42', 1187),
(367, 312, 26, 100, '2024-12-07 04:51:04', 1233),
(368, 376, 82, 84, '2024-10-27 03:28:35', 153),
(369, 342, 19, 124, '2024-08-31 02:20:15', 932),
(370, 395, 64, 6, '2024-11-18 04:51:00', 1359),
(371, 121, 52, 44, '2024-10-30 04:58:10', 1377),
(372, 498, 127, 54, '2024-03-26 08:13:25', 41),
(373, 80, 19, 111, '2024-06-06 17:31:24', 1219),
(374, 201, 196, 56, '2024-01-26 07:56:59', 1110),
(375, 457, 145, 77, '2024-01-17 07:57:42', 683),
(376, 11, 110, 40, '2024-06-14 23:37:10', 969),
(377, 36, 25, 91, '2024-04-17 00:51:42', 303),
(378, 223, 177, 41, '2024-10-10 22:44:49', 1323),
(379, 345, 176, 151, '2024-10-17 17:35:24', 1179),
(380, 4, 90, 131, '2024-06-03 17:15:46', 1343),
(381, 301, 17, 31, '2024-09-28 01:13:45', 144),
(382, 8, 101, 31, '2024-11-01 11:24:52', 958),
(383, 318, 17, 4, '2024-05-25 20:44:31', 386),
(384, 271, 144, 69, '2024-06-24 11:38:13', 452),
(385, 221, 163, 29, '2024-11-01 10:06:13', 1343),
(386, 398, 159, 71, '2024-03-21 18:52:49', 87),
(387, 176, 144, 188, '2024-09-23 21:00:10', 272),
(388, 321, 135, 58, '2024-09-12 01:38:53', 1270),
(389, 100, 150, 112, '2024-11-29 17:59:11', 362),
(390, 434, 121, 62, '2024-01-07 10:30:48', 89),
(391, 273, 82, 23, '2024-02-22 12:18:50', 56),
(392, 164, 26, 111, '2024-09-27 23:31:09', 754),
(393, 436, 42, 119, '2024-02-21 17:36:04', 836),
(394, 418, 193, 9, '2024-12-20 20:02:36', 566),
(395, 407, 24, 42, '2024-05-13 19:26:52', 886),
(396, 468, 195, 67, '2024-05-14 02:10:06', 335),
(397, 410, 106, 97, '2024-11-07 15:57:17', 1236),
(398, 195, 30, 142, '2024-05-09 07:37:39', 894),
(399, 407, 127, 182, '2024-05-29 05:31:32', 800),
(400, 203, 152, 61, '2024-05-17 04:15:17', 972),
(401, 95, 130, 7, '2024-03-23 04:55:19', 1057),
(402, 379, 85, 154, '2024-10-25 12:56:17', 0),
(403, 425, 135, 95, '2024-03-15 04:47:12', 342),
(404, 339, 79, 110, '2024-08-09 22:38:51', 351),
(405, 149, 91, 187, '2024-09-06 23:04:56', 307),
(406, 134, 57, 38, '2024-06-22 00:36:54', 796),
(407, 320, 54, 113, '2024-06-08 01:32:01', 547),
(408, 74, 158, 72, '2024-03-15 18:42:51', 1097),
(409, 39, 50, 7, '2024-06-25 01:56:01', 603),
(410, 3, 181, 177, '2024-11-15 16:40:14', 924),
(411, 283, 79, 36, '2024-02-29 13:53:12', 602),
(412, 19, 45, 93, '2024-04-03 21:03:16', 1313),
(413, 407, 169, 150, '2024-09-09 09:28:21', 905),
(414, 355, 133, 125, '2024-05-04 12:36:05', 726),
(415, 364, 189, 146, '2024-08-02 13:43:32', 863),
(416, 448, 136, 131, '2024-09-13 17:10:20', 758),
(417, 334, 59, 197, '2024-03-17 16:03:37', 181),
(418, 476, 185, 4, '2024-01-08 04:16:36', 270),
(419, 32, 13, 16, '2024-03-19 19:37:04', 476),
(420, 137, 79, 171, '2024-08-29 20:10:09', 109),
(421, 483, 127, 96, '2024-01-11 19:33:58', 502),
(422, 270, 200, 26, '2024-06-18 14:00:33', 8),
(423, 26, 71, 97, '2024-07-13 23:52:37', 1382),
(424, 51, 135, 14, '2024-09-20 05:06:20', 995),
(425, 6, 151, 122, '2024-12-14 10:45:16', 1176),
(426, 141, 27, 17, '2024-12-03 10:07:31', 41),
(427, 9, 147, 188, '2024-12-11 08:22:05', 541),
(428, 335, 123, 65, '2024-10-28 02:55:44', 1268),
(429, 427, 176, 95, '2024-12-18 02:09:49', 743),
(430, 82, 109, 51, '2024-08-28 17:18:41', 835),
(431, 30, 132, 140, '2024-03-29 16:44:32', 430),
(432, 285, 81, 13, '2024-10-19 11:25:28', 1263),
(433, 324, 198, 64, '2024-12-08 01:15:17', 56),
(434, 16, 28, 19, '2024-11-18 08:25:27', 313),
(435, 91, 90, 148, '2024-06-27 21:20:06', 58),
(436, 360, 3, 80, '2024-09-24 10:45:04', 1339),
(437, 322, 7, 110, '2024-11-20 13:24:29', 778),
(438, 329, 68, 31, '2024-08-16 08:43:37', 1296),
(439, 312, 151, 89, '2024-09-09 22:59:13', 1385),
(440, 177, 105, 23, '2024-03-02 10:15:53', 871),
(441, 422, 69, 126, '2024-09-04 16:06:22', 1054),
(442, 324, 130, 77, '2024-01-24 15:48:24', 490),
(443, 432, 169, 128, '2024-05-29 13:31:43', 1230),
(444, 391, 194, 66, '2024-12-15 12:04:42', 72),
(445, 167, 105, 46, '2024-07-23 08:21:33', 243),
(446, 209, 8, 187, '2024-03-03 03:59:27', 355),
(447, 318, 129, 151, '2024-01-05 09:50:32', 954),
(448, 15, 106, 55, '2024-11-27 06:34:37', 606),
(449, 22, 114, 128, '2024-07-23 15:14:30', 1152),
(450, 450, 120, 8, '2024-08-17 21:47:40', 1161),
(451, 228, 39, 164, '2024-09-05 13:57:48', 119),
(452, 265, 82, 152, '2024-06-21 04:01:27', 525),
(453, 46, 146, 7, '2024-06-13 10:11:16', 871),
(454, 330, 55, 121, '2024-09-27 07:24:49', 24),
(455, 160, 161, 183, '2024-05-22 03:36:47', 877),
(456, 355, 60, 181, '2024-10-01 06:06:09', 709),
(457, 118, 195, 40, '2024-06-19 01:35:49', 165),
(458, 203, 120, 147, '2024-10-04 09:52:43', 1325),
(459, 28, 70, 174, '2024-08-21 18:56:43', 224),
(460, 269, 83, 44, '2024-04-06 04:47:51', 1145),
(461, 488, 45, 130, '2024-12-02 13:57:01', 1400),
(462, 118, 155, 21, '2024-04-22 16:40:57', 1238),
(463, 456, 183, 27, '2024-03-15 23:27:56', 245),
(464, 337, 68, 96, '2024-07-04 10:22:33', 580),
(465, 493, 177, 94, '2024-01-28 20:56:16', 881),
(466, 465, 131, 112, '2024-06-11 20:28:05', 832),
(467, 3, 106, 164, '2024-08-03 10:45:27', 356),
(468, 161, 155, 1, '2024-08-29 01:01:41', 112),
(469, 297, 77, 39, '2024-03-23 12:01:11', 1286),
(470, 25, 5, 81, '2024-07-08 23:41:39', 337),
(471, 490, 98, 78, '2024-08-16 05:45:28', 214),
(472, 47, 174, 124, '2024-09-01 20:03:06', 293),
(473, 250, 80, 193, '2024-08-15 07:44:24', 669),
(474, 239, 56, 70, '2024-01-20 12:46:15', 873),
(475, 63, 37, 31, '2024-04-13 14:06:04', 708),
(476, 260, 133, 126, '2024-05-24 04:41:05', 1030),
(477, 420, 26, 110, '2024-04-22 07:57:07', 324),
(478, 477, 122, 176, '2024-05-19 04:14:49', 841),
(479, 484, 59, 140, '2024-10-26 01:25:36', 894),
(480, 389, 165, 23, '2024-10-31 09:08:53', 207),
(481, 69, 132, 75, '2024-03-30 16:39:39', 1348),
(482, 86, 18, 159, '2024-07-16 06:24:25', 1029),
(483, 97, 161, 20, '2024-04-17 20:17:00', 54),
(484, 378, 90, 143, '2024-02-06 10:42:13', 718),
(485, 389, 32, 136, '2024-10-25 18:10:25', 686),
(486, 28, 194, 105, '2024-08-31 10:45:25', 492),
(487, 84, 87, 169, '2024-12-06 15:51:17', 243),
(488, 378, 190, 199, '2024-02-02 17:25:41', 798),
(489, 365, 170, 120, '2024-07-25 21:49:19', 685),
(490, 401, 6, 32, '2024-04-24 09:33:49', 389),
(491, 90, 100, 65, '2024-08-13 06:38:00', 1023),
(492, 497, 55, 105, '2024-09-20 10:32:39', 848),
(493, 231, 195, 169, '2024-02-27 02:02:59', 57),
(494, 327, 49, 85, '2024-05-09 12:47:33', 318),
(495, 184, 158, 143, '2024-12-24 22:08:04', 201),
(496, 494, 175, 200, '2024-02-23 11:33:59', 188),
(497, 254, 143, 94, '2024-06-03 16:31:30', 672),
(498, 308, 35, 182, '2024-11-22 05:07:03', 1224),
(499, 173, 137, 88, '2024-03-15 02:59:06', 654),
(500, 328, 188, 133, '2024-09-14 07:48:53', 41),
(501, 71, 103, 10, '2024-09-28 18:57:02', 471),
(502, 283, 165, 93, '2024-05-08 02:40:59', 1066),
(503, 389, 75, 176, '2024-11-07 11:10:35', 1096),
(504, 167, 39, 152, '2024-12-14 10:02:50', 357),
(505, 297, 14, 61, '2024-05-22 01:32:53', 577),
(506, 285, 60, 137, '2024-12-23 05:39:07', 1419),
(507, 104, 189, 70, '2024-02-10 01:13:45', 796),
(508, 248, 93, 96, '2024-03-11 20:28:37', 1341),
(509, 129, 149, 92, '2024-05-01 08:11:58', 166),
(510, 164, 178, 120, '2024-03-14 15:08:56', 42),
(511, 246, 135, 196, '2024-06-19 01:41:31', 1295),
(512, 40, 13, 66, '2024-04-16 20:45:56', 1409),
(513, 489, 171, 47, '2024-10-30 21:00:59', 364),
(514, 254, 77, 91, '2024-12-03 05:13:22', 954),
(515, 255, 107, 17, '2024-03-08 03:57:34', 1347),
(516, 214, 8, 125, '2024-01-07 09:07:58', 1281),
(517, 400, 143, 45, '2024-05-26 08:50:16', 98),
(518, 333, 53, 188, '2024-04-27 21:24:59', 494),
(519, 283, 61, 191, '2024-11-10 19:57:24', 1277),
(520, 81, 90, 12, '2024-06-08 10:14:26', 546),
(521, 56, 44, 120, '2024-04-13 10:04:37', 894),
(522, 288, 52, 1, '2024-01-13 22:17:43', 1138),
(523, 75, 103, 148, '2024-01-03 20:57:50', 68),
(524, 307, 110, 174, '2024-08-25 14:43:03', 58),
(525, 434, 115, 130, '2024-09-27 15:42:17', 532),
(526, 206, 187, 145, '2024-05-23 06:19:04', 678),
(527, 356, 183, 32, '2024-11-12 21:24:03', 1105),
(528, 405, 64, 85, '2024-11-15 10:05:23', 188),
(529, 121, 13, 102, '2024-10-22 22:19:19', 804),
(530, 351, 170, 129, '2024-10-27 06:36:55', 300),
(531, 443, 192, 67, '2024-08-27 09:44:42', 1416),
(532, 1, 86, 114, '2024-05-29 05:05:03', 343),
(533, 330, 24, 98, '2024-05-31 17:54:00', 1039),
(534, 383, 143, 9, '2024-09-08 09:59:39', 192),
(535, 294, 189, 102, '2024-04-10 23:02:31', 40),
(536, 122, 106, 159, '2024-04-17 17:09:48', 203),
(537, 82, 189, 50, '2024-05-23 06:53:14', 266),
(538, 142, 122, 125, '2024-04-16 14:10:20', 933),
(539, 208, 143, 42, '2024-02-23 09:16:14', 359),
(540, 488, 5, 85, '2024-01-28 16:45:55', 808),
(541, 165, 115, 105, '2024-06-20 21:14:46', 1160),
(542, 284, 183, 135, '2024-04-16 07:27:50', 544),
(543, 16, 40, 174, '2024-05-18 07:00:25', 173),
(544, 250, 106, 77, '2024-10-05 19:18:50', 205),
(545, 284, 54, 119, '2024-10-01 16:35:16', 333),
(546, 484, 188, 10, '2024-11-20 12:02:54', 1311),
(547, 201, 161, 181, '2024-11-14 21:12:00', 1347),
(548, 380, 26, 165, '2024-10-16 16:35:07', 1246),
(549, 35, 96, 147, '2024-12-10 04:52:08', 235),
(550, 353, 111, 82, '2024-09-24 23:23:05', 28),
(551, 91, 94, 162, '2024-05-01 11:10:24', 708),
(552, 471, 128, 81, '2024-12-08 00:02:12', 1264),
(553, 74, 96, 2, '2024-06-05 18:04:39', 312),
(554, 200, 170, 30, '2024-01-12 04:53:46', 1077),
(555, 449, 180, 141, '2024-05-31 10:34:09', 1184),
(556, 467, 199, 193, '2024-03-11 09:40:33', 973),
(557, 409, 40, 15, '2024-06-17 20:59:13', 382),
(558, 446, 157, 173, '2024-01-07 07:25:04', 663),
(559, 270, 162, 55, '2024-08-07 13:03:13', 609),
(560, 483, 146, 136, '2024-07-05 18:44:48', 1295),
(561, 262, 155, 92, '2024-02-04 17:53:04', 485),
(562, 45, 1, 40, '2024-05-18 05:08:42', 1013),
(563, 481, 15, 184, '2024-11-03 07:58:20', 1071),
(564, 16, 9, 152, '2024-11-11 01:42:11', 527),
(565, 48, 95, 176, '2024-04-04 16:47:29', 463),
(566, 337, 180, 113, '2024-10-22 17:40:37', 508),
(567, 101, 108, 32, '2024-11-06 16:36:05', 78),
(568, 202, 187, 193, '2024-10-05 11:07:29', 503),
(569, 387, 101, 2, '2024-12-02 05:03:12', 1196),
(570, 88, 182, 30, '2024-07-01 12:01:25', 620),
(571, 442, 139, 23, '2024-07-31 13:41:54', 863),
(572, 327, 158, 114, '2024-11-11 08:16:47', 1065),
(573, 157, 14, 198, '2024-10-18 05:45:42', 819),
(574, 152, 130, 2, '2024-08-05 09:19:46', 1167),
(575, 344, 73, 148, '2024-07-26 18:51:51', 1137),
(576, 472, 65, 28, '2024-08-13 02:17:01', 1254),
(577, 462, 152, 39, '2024-10-31 07:03:40', 687),
(578, 345, 78, 195, '2024-06-04 21:53:49', 1317),
(579, 468, 150, 74, '2024-05-06 06:03:38', 1187),
(580, 388, 104, 51, '2024-10-15 11:10:23', 834),
(581, 155, 130, 195, '2024-01-14 23:20:34', 1312),
(582, 1, 193, 9, '2024-01-13 08:24:09', 245),
(583, 496, 118, 104, '2024-08-06 10:07:12', 741),
(584, 39, 52, 63, '2024-08-05 00:03:16', 783),
(585, 296, 139, 111, '2024-06-23 01:16:50', 984),
(586, 187, 163, 79, '2024-01-13 05:59:13', 750),
(587, 203, 77, 175, '2024-02-25 21:26:24', 1194),
(588, 321, 133, 9, '2024-07-21 17:53:47', 606),
(589, 480, 50, 132, '2024-11-20 15:32:51', 1069),
(590, 104, 53, 41, '2024-05-25 07:54:08', 1426),
(591, 171, 67, 153, '2024-06-08 04:53:05', 838),
(592, 493, 176, 23, '2024-01-08 15:31:56', 11),
(593, 490, 111, 13, '2024-05-10 12:16:42', 444),
(594, 172, 120, 151, '2024-10-13 09:22:15', 1023),
(595, 114, 128, 199, '2024-03-08 20:53:23', 1377),
(596, 282, 177, 192, '2024-06-23 07:15:53', 32),
(597, 404, 73, 148, '2024-07-17 15:58:59', 1276),
(598, 428, 39, 194, '2024-09-14 20:45:53', 57),
(599, 151, 98, 36, '2024-01-24 06:17:05', 1056),
(600, 377, 133, 161, '2024-12-26 18:02:28', 1426);
SET IDENTITY_INSERT Stops OFF;

-- Insertar pasajeros
SET IDENTITY_INSERT Passengers ON;
INSERT INTO Passengers (id, dni, name, phone) VALUES
(1, '4173512LP', 'Sofía Herrera', '71102943'),
(2, '92980766BN', 'Diego Medina', '66719853'),
(3, '52472613SC', 'Hugo Castillo', '75892782'),
(4, '14077809SC', 'Javier Torres', '76829260'),
(5, '27389609CB', 'Ricardo Ramírez', '64946501'),
(6, '40922070PT', 'Diego Medina', '77331757'),
(7, '24655421QR', 'Sofía Herrera', '77266069'),
(8, '15141737BN', 'Hugo Castillo', '64400348'),
(9, '53990459CB', 'Tomás García', '66512357'),
(10, '71056482QR', 'Carlos Méndez', '60346445'),
(11, '6285668CB', 'Elena Flores', '73164242'),
(12, '40368386CB', 'Tomás García', '75618960'),
(13, '70081707CB', 'Paola Fernández', '78330502'),
(14, '52080259PT', 'Ana Ramírez', '64981562'),
(15, '58928118QR', 'Andrés Molina', '77836075'),
(16, '80015418OR', 'Carlos Méndez', '63142849'),
(17, '61353419SC', 'Sofía Herrera', '63438091'),
(18, '47419030PT', 'Ana Ramírez', '72980058'),
(19, '5192565QR', 'Fernando López', '78000214'),
(20, '22827290BN', 'Carlos Méndez', '62536557'),
(21, '71423879SC', 'Carlos Méndez', '65609511'),
(22, '18111811TJ', 'Tomás García', '69924698'),
(23, '4664741CB', 'Sofía Herrera', '64621058'),
(24, '85019370QR', 'Sofía Herrera', '61436388'),
(25, '80362849BN', 'Paola Fernández', '71717565'),
(26, '24127161TJ', 'Diego Medina', '78763474'),
(27, '66157584LP', 'Ricardo Ramírez', '79137492'),
(28, '93340101LP', 'Miguel Rojas', '72357568'),
(29, '88891912PN', 'Tomás García', '74039940'),
(30, '20333408CB', 'Sofía Herrera', '62620834'),
(31, '19475655TJ', 'Javier Torres', '78975120'),
(32, '31435811TJ', 'Lucía Pérez', '68354694'),
(33, '78446625SC', 'Miguel Rojas', '61336152'),
(34, '77717348OR', 'Diego Medina', '73586916'),
(35, '43575914PT', 'Gabriela Vargas', '70371230'),
(36, '31624753PN', 'Lucía Pérez', '76115354'),
(37, '48511805TJ', 'Andrés Molina', '70094476'),
(38, '66967417PN', 'Lucía Pérez', '67398731'),
(39, '60037981PT', 'Miguel Rojas', '75497453'),
(40, '79102312CB', 'Diego Medina', '79446202'),
(41, '95016753PT', 'Valeria Castro', '79342399'),
(42, '77041648BN', 'Paola Fernández', '76997735'),
(43, '57014126LP', 'Paola Fernández', '76437008'),
(44, '3059158SC', 'Lucía Pérez', '79409680'),
(45, '61970071QR', 'Tomás García', '76508329'),
(46, '22998824QR', 'Elena Flores', '73139350'),
(47, '34237405PT', 'Carlos Méndez', '69209374'),
(48, '78655073QR', 'Carmen Silva', '79660124'),
(49, '81603672OR', 'Fernando López', '72874671'),
(50, '14275312LP', 'Gabriela Vargas', '74796140'),
(51, '28331595TJ', 'Lucía Pérez', '79397730'),
(52, '81011838PT', 'Hugo Castillo', '78966783'),
(53, '40336946OR', 'Carlos Méndez', '73006982'),
(54, '51666672OR', 'Fernando López', '78721306'),
(55, '32481947OR', 'Ricardo Ramírez', '76294429'),
(56, '41501295CB', 'Diego Medina', '76024760'),
(57, '12458488TJ', 'Miguel Rojas', '68622155'),
(58, '95313663LP', 'Ricardo Ramírez', '63237708'),
(59, '54086711QR', 'Miguel Rojas', '78819897'),
(60, '54093700TJ', 'Gabriela Vargas', '63105464'),
(61, '48830920CB', 'Ana Ramírez', '69501782'),
(62, '44620668SC', 'Gabriela Vargas', '66069145'),
(63, '46664549PT', 'Hugo Castillo', '63041800'),
(64, '62538102TJ', 'Carlos Méndez', '73221984'),
(65, '34527620LP', 'Paola Fernández', '60559465'),
(66, '85686833CB', 'Miguel Rojas', '68364358'),
(67, '50688586SC', 'Andrés Molina', '73113446'),
(68, '23034718BN', 'Diego Medina', '66405089'),
(69, '40636793PN', 'Miguel Rojas', '69848711'),
(70, '90286343TJ', 'Paola Fernández', '70982395'),
(71, '71032724QR', 'Isabel Ortega', '61619763'),
(72, '91978211SC', 'Diego Medina', '65897679'),
(73, '31672336PN', 'Ana Ramírez', '78480384'),
(74, '30150122OR', 'Ricardo Ramírez', '64578255'),
(75, '4649625QR', 'Valeria Castro', '77237005'),
(76, '68010768PN', 'Carlos Méndez', '61187233'),
(77, '57546204SC', 'Valeria Castro', '67130871'),
(78, '97848943CB', 'Fernando López', '68925672'),
(79, '63499535LP', 'Andrés Molina', '64240942'),
(80, '20914511BN', 'Tomás García', '79944515'),
(81, '81703622TJ', 'Gabriela Vargas', '67686233'),
(82, '57734218SC', 'Sofía Herrera', '61477064'),
(83, '69981364OR', 'Sofía Herrera', '78167525'),
(84, '95002883OR', 'Ana Ramírez', '73276274'),
(85, '17841457BN', 'Ricardo Ramírez', '76622586'),
(86, '98697956LP', 'Roberto Sánchez', '68776929'),
(87, '56886170SC', 'Mariana Guzmán', '67231809'),
(88, '28361551BN', 'Andrés Molina', '67532506'),
(89, '66940380BN', 'Paola Fernández', '64124678'),
(90, '50445822LP', 'Miguel Rojas', '66705281'),
(91, '92452902QR', 'Sofía Herrera', '78829571'),
(92, '39876183PN', 'Valeria Castro', '77282560'),
(93, '11257359SC', 'Mariana Guzmán', '71624164'),
(94, '35378573LP', 'Elena Flores', '60338357'),
(95, '64785020LP', 'Carmen Silva', '70693383'),
(96, '57457979OR', 'Carlos Méndez', '79405581'),
(97, '48263248LP', 'Lucía Pérez', '79343277'),
(98, '37620977BN', 'Carlos Méndez', '70734218'),
(99, '43291304QR', 'Hugo Castillo', '76101383'),
(100, '42247730LP', 'Fernando López', '63440798'),
(101, '91070228LP', 'Miguel Rojas', '71391277'),
(102, '15005361OR', 'Lucía Pérez', '60607753'),
(103, '9446907QR', 'Ricardo Ramírez', '69707116'),
(104, '78996485QR', 'Javier Torres', '74827594'),
(105, '40967007QR', 'Gabriela Vargas', '64592883'),
(106, '57479618QR', 'Miguel Rojas', '70739317'),
(107, '7294636TJ', 'Isabel Ortega', '72416220'),
(108, '20163710CB', 'Javier Torres', '71208225'),
(109, '53972536PT', 'Ricardo Ramírez', '75725433'),
(110, '43465894PN', 'Ana Ramírez', '76899170'),
(111, '97810446QR', 'Javier Torres', '61856365'),
(112, '21721678BN', 'Gabriela Vargas', '70034303'),
(113, '83079881OR', 'Tomás García', '73366967'),
(114, '34737111PT', 'Fernando López', '65992255'),
(115, '83756798OR', 'Ricardo Ramírez', '62060795'),
(116, '86175781LP', 'Javier Torres', '62492129'),
(117, '94153596PN', 'Mariana Guzmán', '60597243'),
(118, '42306042LP', 'Gabriela Vargas', '69616548'),
(119, '73523754SC', 'Hugo Castillo', '72532522'),
(120, '37876119BN', 'Lucía Pérez', '61362597'),
(121, '30086984BN', 'Paola Fernández', '65654191'),
(122, '73357906CB', 'Valeria Castro', '67500935'),
(123, '76781337CB', 'Miguel Rojas', '74827381'),
(124, '50190925SC', 'Carmen Silva', '78792558'),
(125, '12266626LP', 'Paola Fernández', '69799715'),
(126, '41534111QR', 'Sofía Herrera', '73868895'),
(127, '52252933SC', 'Carmen Silva', '72545097'),
(128, '77129654SC', 'Miguel Rojas', '74999754'),
(129, '88862618QR', 'Fernando López', '71444686'),
(130, '57508557SC', 'Ana Ramírez', '68309468'),
(131, '82367783OR', 'Elena Flores', '69173261'),
(132, '81371626PN', 'Diego Medina', '72459905'),
(133, '16761666QR', 'Mariana Guzmán', '60349021'),
(134, '98298170QR', 'Ricardo Ramírez', '77213304'),
(135, '17113164LP', 'Gabriela Vargas', '67852760'),
(136, '25275132CB', 'Valeria Castro', '69211329'),
(137, '51087658BN', 'Lucía Pérez', '61648381'),
(138, '95876938QR', 'Lucía Pérez', '61364188'),
(139, '45496353TJ', 'Gabriela Vargas', '62437673'),
(140, '68568471LP', 'Sofía Herrera', '66255797'),
(141, '29232570SC', 'Sofía Herrera', '78756294'),
(142, '25032337QR', 'Elena Flores', '70841688'),
(143, '79719109QR', 'Sofía Herrera', '78247495'),
(144, '66478605BN', 'Diego Medina', '60487197'),
(145, '79223084TJ', 'Ricardo Ramírez', '60665771'),
(146, '89305841TJ', 'Ana Ramírez', '74082530'),
(147, '54110509CB', 'Javier Torres', '78507511'),
(148, '63480172BN', 'Roberto Sánchez', '71196012'),
(149, '26317863SC', 'Andrés Molina', '61570395'),
(150, '27129315OR', 'Paola Fernández', '61899200'),
(151, '20478896BN', 'Gabriela Vargas', '60978026'),
(152, '40956492PN', 'Andrés Molina', '67649712'),
(153, '26658147OR', 'Gabriela Vargas', '75653444'),
(154, '30782153QR', 'Gabriela Vargas', '63449511'),
(155, '25883850SC', 'Carmen Silva', '74136915'),
(156, '17616484LP', 'Elena Flores', '73496212'),
(157, '46858291PN', 'Sofía Herrera', '73104346'),
(158, '21800330TJ', 'Carmen Silva', '68688102'),
(159, '22870128OR', 'Miguel Rojas', '60093358'),
(160, '11992854BN', 'Sofía Herrera', '78989789'),
(161, '69329189CB', 'Valeria Castro', '65120434'),
(162, '33092673CB', 'Sofía Herrera', '64637644'),
(163, '81155425BN', 'Roberto Sánchez', '68116482'),
(164, '40903896TJ', 'Gabriela Vargas', '64187234'),
(165, '27931508QR', 'Lucía Pérez', '78275302'),
(166, '76969621PT', 'Sofía Herrera', '69147860'),
(167, '30321853PT', 'Ana Ramírez', '60846026'),
(168, '35659938PT', 'Ricardo Ramírez', '63853076'),
(169, '90841720SC', 'Miguel Rojas', '72950396'),
(170, '39745528LP', 'Diego Medina', '61596278'),
(171, '48464578PT', 'Mariana Guzmán', '65176087'),
(172, '73705514LP', 'Andrés Molina', '63004021'),
(173, '2911402TJ', 'Carlos Méndez', '71911724'),
(174, '74569521CB', 'Javier Torres', '66469348'),
(175, '24589160OR', 'Diego Medina', '73233689'),
(176, '16873476TJ', 'Gabriela Vargas', '70486815'),
(177, '24348220PN', 'Sofía Herrera', '74667932'),
(178, '73623543PN', 'Fernando López', '70222326'),
(179, '1011214LP', 'Lucía Pérez', '66040891'),
(180, '82684463BN', 'Ricardo Ramírez', '79366347'),
(181, '54885443PN', 'Paola Fernández', '70400942'),
(182, '78768460SC', 'Gabriela Vargas', '77932968'),
(183, '81872887BN', 'Elena Flores', '77228655'),
(184, '98329004LP', 'Mariana Guzmán', '73457208'),
(185, '68959973BN', 'Hugo Castillo', '63047562'),
(186, '10491018PT', 'Miguel Rojas', '70384314'),
(187, '58816028LP', 'Ricardo Ramírez', '78158527'),
(188, '69848112PT', 'Miguel Rojas', '71345470'),
(189, '10740074LP', 'Lucía Pérez', '74738921'),
(190, '57541064OR', 'Elena Flores', '73547883'),
(191, '12651913SC', 'Miguel Rojas', '67449618'),
(192, '45851075BN', 'Ricardo Ramírez', '62868189'),
(193, '13886103PN', 'Hugo Castillo', '70540822'),
(194, '93733746OR', 'Paola Fernández', '66299650'),
(195, '81526294BN', 'Carlos Méndez', '70852473'),
(196, '86948338SC', 'Javier Torres', '73567097'),
(197, '54680420PN', 'Ricardo Ramírez', '72745518'),
(198, '6254549OR', 'Javier Torres', '68321591'),
(199, '87843857CB', 'Roberto Sánchez', '69128945'),
(200, '61860825CB', 'Roberto Sánchez', '66665154'),
(201, '8209970PT', 'Diego Medina', '69761012'),
(202, '32829650PN', 'Carlos Méndez', '61951422'),
(203, '41397147CB', 'Tomás García', '79411288'),
(204, '33290454TJ', 'Lucía Pérez', '67764188'),
(205, '50963124SC', 'Javier Torres', '62734927'),
(206, '30333447OR', 'Miguel Rojas', '70339601'),
(207, '66867615TJ', 'Carlos Méndez', '78562077'),
(208, '67099282QR', 'Carmen Silva', '77864815'),
(209, '60010258SC', 'Mariana Guzmán', '70848947'),
(210, '88746904OR', 'Hugo Castillo', '65055946'),
(211, '74186144BN', 'Diego Medina', '72834131'),
(212, '72408615CB', 'Ricardo Ramírez', '65994146'),
(213, '73273576TJ', 'Gabriela Vargas', '64647188'),
(214, '40394905PT', 'Javier Torres', '75985027'),
(215, '81248329OR', 'Diego Medina', '61757739'),
(216, '66886305TJ', 'Roberto Sánchez', '68539321'),
(217, '59335565SC', 'Roberto Sánchez', '61879791'),
(218, '48941356CB', 'Roberto Sánchez', '74625423'),
(219, '81812435SC', 'Carlos Méndez', '61792778'),
(220, '22220752QR', 'Fernando López', '66342482'),
(221, '50590929QR', 'Ricardo Ramírez', '64905068'),
(222, '29348336QR', 'Andrés Molina', '65277949'),
(223, '66394690BN', 'Fernando López', '67359259'),
(224, '62661479PT', 'Roberto Sánchez', '62828173'),
(225, '59049818QR', 'Miguel Rojas', '69358936'),
(226, '39570818PT', 'Fernando López', '60587150'),
(227, '93977393TJ', 'Roberto Sánchez', '78713944'),
(228, '27529161CB', 'Roberto Sánchez', '73284397'),
(229, '28750726QR', 'Lucía Pérez', '69253979'),
(230, '95076814PT', 'Ricardo Ramírez', '61144667'),
(231, '65987519BN', 'Diego Medina', '67859097'),
(232, '96637811LP', 'Javier Torres', '69151264'),
(233, '49895899QR', 'Ricardo Ramírez', '62221431'),
(234, '28077886SC', 'Javier Torres', '71720162'),
(235, '53588852TJ', 'Ricardo Ramírez', '71055189'),
(236, '48249955TJ', 'Gabriela Vargas', '68671795'),
(237, '85631190OR', 'Andrés Molina', '62411802'),
(238, '90601484TJ', 'Elena Flores', '66215727'),
(239, '24410853CB', 'Elena Flores', '77039204'),
(240, '9224217BN', 'Paola Fernández', '72299351'),
(241, '81604725LP', 'Lucía Pérez', '71085232'),
(242, '27785742SC', 'Isabel Ortega', '75744370'),
(243, '73047128PT', 'Sofía Herrera', '78620281'),
(244, '64980313PT', 'Gabriela Vargas', '63922488'),
(245, '45599406SC', 'Isabel Ortega', '71922064'),
(246, '88677621PN', 'Valeria Castro', '65333863'),
(247, '99723166PT', 'Paola Fernández', '70751270'),
(248, '74327630SC', 'Andrés Molina', '68162445'),
(249, '4410451LP', 'Paola Fernández', '77283503'),
(250, '29442109TJ', 'Fernando López', '64897891'),
(251, '2260141QR', 'Andrés Molina', '64398368'),
(252, '76159864OR', 'Valeria Castro', '77596577'),
(253, '94052402LP', 'Paola Fernández', '72593114'),
(254, '17735424TJ', 'Isabel Ortega', '79551244'),
(255, '93383590QR', 'Valeria Castro', '75733728'),
(256, '23355495TJ', 'Mariana Guzmán', '74289880'),
(257, '42641870BN', 'Paola Fernández', '68430477'),
(258, '58277989TJ', 'Paola Fernández', '77405050'),
(259, '28409345TJ', 'Carmen Silva', '62324837'),
(260, '91980044PN', 'Carmen Silva', '75069593'),
(261, '95567529OR', 'Hugo Castillo', '61418766'),
(262, '16425300OR', 'Isabel Ortega', '77890572'),
(263, '50505845OR', 'Ana Ramírez', '67582522'),
(264, '90099726TJ', 'Diego Medina', '72863794'),
(265, '13890353PT', 'Andrés Molina', '64701580'),
(266, '1072808PT', 'Tomás García', '78677843'),
(267, '67469914TJ', 'Lucía Pérez', '74677560'),
(268, '12102405PT', 'Lucía Pérez', '67584715'),
(269, '11496288TJ', 'Roberto Sánchez', '61077752'),
(270, '46188249PT', 'Andrés Molina', '63765973'),
(271, '69955302SC', 'Roberto Sánchez', '70498329'),
(272, '46064958LP', 'Carmen Silva', '65062317'),
(273, '90731923BN', 'Carlos Méndez', '62471272'),
(274, '70995535PN', 'Hugo Castillo', '64303652'),
(275, '21352580PT', 'Roberto Sánchez', '69656912'),
(276, '75633477TJ', 'Miguel Rojas', '68283377'),
(277, '11865991QR', 'Roberto Sánchez', '65944409'),
(278, '56860052CB', 'Elena Flores', '68631182'),
(279, '98104845OR', 'Ana Ramírez', '77550837'),
(280, '81295761SC', 'Hugo Castillo', '70783226'),
(281, '22760141OR', 'Miguel Rojas', '75710222'),
(282, '13689452PT', 'Paola Fernández', '64808453'),
(283, '46096198QR', 'Andrés Molina', '70946197'),
(284, '22417230SC', 'Tomás García', '68539960'),
(285, '85730119PT', 'Roberto Sánchez', '77194124'),
(286, '41587678SC', 'Elena Flores', '73185784'),
(287, '39068895CB', 'Sofía Herrera', '68636742'),
(288, '66319048SC', 'Ricardo Ramírez', '60730127'),
(289, '9273049SC', 'Ana Ramírez', '71738646'),
(290, '11691131SC', 'Lucía Pérez', '76863692'),
(291, '17367578OR', 'Elena Flores', '62658256'),
(292, '21034965QR', 'Mariana Guzmán', '68092908'),
(293, '86091114SC', 'Javier Torres', '78939187'),
(294, '46410837PT', 'Diego Medina', '69816895'),
(295, '79429314TJ', 'Hugo Castillo', '69589739'),
(296, '55018480CB', 'Elena Flores', '76028953'),
(297, '29686436PT', 'Mariana Guzmán', '66562886'),
(298, '55857718TJ', 'Hugo Castillo', '79135425'),
(299, '88818596QR', 'Tomás García', '65676620'),
(300, '78337141BN', 'Gabriela Vargas', '62898954'),
(301, '63046040CB', 'Roberto Sánchez', '74867135'),
(302, '82580482BN', 'Lucía Pérez', '76808786'),
(303, '8905129LP', 'Gabriela Vargas', '72274207'),
(304, '38330218LP', 'Mariana Guzmán', '67766159'),
(305, '96222623TJ', 'Tomás García', '61368537'),
(306, '14535028CB', 'Lucía Pérez', '60336118'),
(307, '58942463BN', 'Sofía Herrera', '64264672'),
(308, '58189530PT', 'Roberto Sánchez', '74240483'),
(309, '27967235CB', 'Ana Ramírez', '76939896'),
(310, '48175779TJ', 'Hugo Castillo', '74817222'),
(311, '86767659BN', 'Valeria Castro', '74104423'),
(312, '87272140CB', 'Hugo Castillo', '72297006'),
(313, '28840331BN', 'Javier Torres', '73637586'),
(314, '99663038OR', 'Sofía Herrera', '76695745'),
(315, '50519783TJ', 'Isabel Ortega', '60070698'),
(316, '57474107LP', 'Fernando López', '79037415'),
(317, '47519106PN', 'Ricardo Ramírez', '69491701'),
(318, '53954794LP', 'Gabriela Vargas', '74934347'),
(319, '26277608SC', 'Tomás García', '79721183'),
(320, '57174187BN', 'Isabel Ortega', '71077002'),
(321, '46600207TJ', 'Miguel Rojas', '65084916'),
(322, '18317993CB', 'Ana Ramírez', '73236983'),
(323, '97515159QR', 'Andrés Molina', '73210515'),
(324, '13894357BN', 'Miguel Rojas', '63698699'),
(325, '65803081LP', 'Ana Ramírez', '63870050'),
(326, '19140030SC', 'Carmen Silva', '65384078'),
(327, '54923390OR', 'Sofía Herrera', '64415968'),
(328, '1274976SC', 'Isabel Ortega', '63437821'),
(329, '24108167PN', 'Tomás García', '70566556'),
(330, '66499244SC', 'Miguel Rojas', '73619225'),
(331, '38684764PT', 'Miguel Rojas', '76941202'),
(332, '69659824OR', 'Miguel Rojas', '65406294'),
(333, '40560305OR', 'Gabriela Vargas', '70219280'),
(334, '36317230SC', 'Fernando López', '78587584'),
(335, '24300164OR', 'Lucía Pérez', '63043471'),
(336, '4177800PN', 'Fernando López', '73608442'),
(337, '38698108TJ', 'Miguel Rojas', '70880728'),
(338, '65792071BN', 'Roberto Sánchez', '75424579'),
(339, '96321440CB', 'Carlos Méndez', '65147647'),
(340, '98239303PN', 'Isabel Ortega', '68951086'),
(341, '5216331PN', 'Andrés Molina', '65436100'),
(342, '68282233LP', 'Fernando López', '75771318'),
(343, '3601471OR', 'Miguel Rojas', '76290496'),
(344, '2522314CB', 'Mariana Guzmán', '62557047'),
(345, '53783749PT', 'Lucía Pérez', '71991979'),
(346, '77279338CB', 'Isabel Ortega', '69160480'),
(347, '79907337TJ', 'Paola Fernández', '70043706'),
(348, '97819565BN', 'Mariana Guzmán', '79192424'),
(349, '68872015OR', 'Hugo Castillo', '65373911'),
(350, '97058575TJ', 'Ana Ramírez', '60534451'),
(351, '5268071LP', 'Carmen Silva', '67427584'),
(352, '3459371CB', 'Mariana Guzmán', '75238948'),
(353, '25699248PT', 'Valeria Castro', '60779416'),
(354, '80599307OR', 'Hugo Castillo', '62295886'),
(355, '61952227QR', 'Ana Ramírez', '74157420'),
(356, '31955448TJ', 'Valeria Castro', '71171504'),
(357, '47847368LP', 'Carlos Méndez', '72494284'),
(358, '89564174PN', 'Lucía Pérez', '63832164'),
(359, '26074602BN', 'Fernando López', '61326142'),
(360, '21071036PN', 'Ana Ramírez', '73208918'),
(361, '37059196BN', 'Carlos Méndez', '73293514'),
(362, '78160463PT', 'Carlos Méndez', '79374524'),
(363, '42880694PT', 'Sofía Herrera', '65387253'),
(364, '34912287TJ', 'Tomás García', '63224947'),
(365, '83605753CB', 'Mariana Guzmán', '62196479'),
(366, '10234223PN', 'Fernando López', '72168959'),
(367, '47389555SC', 'Isabel Ortega', '70625691'),
(368, '82115146LP', 'Elena Flores', '72013235'),
(369, '27258152QR', 'Paola Fernández', '79800132'),
(370, '51032200TJ', 'Tomás García', '71374455'),
(371, '47324057PT', 'Mariana Guzmán', '60060979'),
(372, '63231925OR', 'Carlos Méndez', '62934058'),
(373, '84757102LP', 'Javier Torres', '68669015'),
(374, '58256967SC', 'Javier Torres', '70925131'),
(375, '87565468BN', 'Ana Ramírez', '65757913'),
(376, '62537534LP', 'Sofía Herrera', '75101206'),
(377, '9769016TJ', 'Valeria Castro', '78359396'),
(378, '10460554CB', 'Isabel Ortega', '69201019'),
(379, '50030215CB', 'Mariana Guzmán', '78402419'),
(380, '27306737OR', 'Lucía Pérez', '61233554'),
(381, '94362807PN', 'Gabriela Vargas', '65596657'),
(382, '91328941LP', 'Fernando López', '65684095'),
(383, '54815874QR', 'Ana Ramírez', '74275482'),
(384, '44752420TJ', 'Valeria Castro', '77448854'),
(385, '76515136SC', 'Mariana Guzmán', '71418718'),
(386, '65845426PN', 'Javier Torres', '76175228'),
(387, '76390389QR', 'Isabel Ortega', '62354370'),
(388, '83108048TJ', 'Paola Fernández', '78447634'),
(389, '13893356PN', 'Carmen Silva', '73125838'),
(390, '41427989TJ', 'Fernando López', '76325210'),
(391, '14650153QR', 'Fernando López', '69392440'),
(392, '22941134SC', 'Andrés Molina', '79563694'),
(393, '55926829PT', 'Ana Ramírez', '66559993'),
(394, '15688592PT', 'Hugo Castillo', '60205911'),
(395, '39138007LP', 'Ricardo Ramírez', '65734142'),
(396, '80155897TJ', 'Valeria Castro', '62996026'),
(397, '37840925SC', 'Mariana Guzmán', '69027616'),
(398, '5564063LP', 'Roberto Sánchez', '70999895'),
(399, '4732724PN', 'Paola Fernández', '72579391'),
(400, '74086856LP', 'Isabel Ortega', '62326869'),
(401, '61814986OR', 'Fernando López', '74119652'),
(402, '96987390OR', 'Andrés Molina', '62748761'),
(403, '72874610TJ', 'Carlos Méndez', '61564447'),
(404, '57478556PN', 'Isabel Ortega', '75465243'),
(405, '11051258OR', 'Fernando López', '75406792'),
(406, '76953821PN', 'Sofía Herrera', '64371062'),
(407, '3126411OR', 'Sofía Herrera', '68580045'),
(408, '54380075SC', 'Roberto Sánchez', '73786977'),
(409, '94589958CB', 'Ana Ramírez', '67077873'),
(410, '55299230TJ', 'Mariana Guzmán', '60119854'),
(411, '83632101BN', 'Gabriela Vargas', '74769346'),
(412, '74670836BN', 'Carlos Méndez', '70920600'),
(413, '23433650PN', 'Diego Medina', '73191226'),
(414, '84571420SC', 'Ana Ramírez', '71803863'),
(415, '49388628LP', 'Isabel Ortega', '73584740'),
(416, '53889088BN', 'Elena Flores', '66170552'),
(417, '56180177PN', 'Diego Medina', '72110980'),
(418, '1598131OR', 'Carlos Méndez', '74595882'),
(419, '97893910PT', 'Mariana Guzmán', '72632179'),
(420, '98331797SC', 'Sofía Herrera', '79730479'),
(421, '77568697OR', 'Sofía Herrera', '68809280'),
(422, '35487052PT', 'Gabriela Vargas', '75214079'),
(423, '96607878PT', 'Ricardo Ramírez', '77618525'),
(424, '97642606QR', 'Paola Fernández', '60650467'),
(425, '67797840PN', 'Tomás García', '61250109'),
(426, '68535614CB', 'Valeria Castro', '65071306'),
(427, '66395562LP', 'Elena Flores', '72341271'),
(428, '69272896TJ', 'Isabel Ortega', '66925070'),
(429, '33068913OR', 'Miguel Rojas', '61003082'),
(430, '43990883BN', 'Paola Fernández', '66106086'),
(431, '48227942QR', 'Isabel Ortega', '63612538'),
(432, '71969601SC', 'Lucía Pérez', '61249461'),
(433, '51120884SC', 'Hugo Castillo', '76840571'),
(434, '6993223BN', 'Miguel Rojas', '79768598'),
(435, '16074832TJ', 'Roberto Sánchez', '68297558'),
(436, '95978913LP', 'Ana Ramírez', '67830033'),
(437, '17836436SC', 'Andrés Molina', '60407126'),
(438, '71389757PT', 'Ricardo Ramírez', '65734335'),
(439, '52827977QR', 'Ana Ramírez', '70470288'),
(440, '19038330PT', 'Isabel Ortega', '70243043'),
(441, '1828093TJ', 'Andrés Molina', '60244361'),
(442, '39924089PT', 'Sofía Herrera', '77228493'),
(443, '14467680PT', 'Roberto Sánchez', '72757260'),
(444, '73484797SC', 'Fernando López', '73500385'),
(445, '6348622PT', 'Paola Fernández', '68327794'),
(446, '12998620OR', 'Elena Flores', '69137616'),
(447, '12869900TJ', 'Diego Medina', '70659481'),
(448, '56731779PN', 'Carlos Méndez', '73786417'),
(449, '47840787TJ', 'Sofía Herrera', '66422677'),
(450, '89396535QR', 'Sofía Herrera', '68865837'),
(451, '47477011BN', 'Javier Torres', '77529631'),
(452, '23259405CB', 'Miguel Rojas', '67136111'),
(453, '32919935CB', 'Ricardo Ramírez', '68250951'),
(454, '88122089QR', 'Ana Ramírez', '76424383'),
(455, '86998082CB', 'Ana Ramírez', '62400567'),
(456, '1678320SC', 'Ana Ramírez', '70687172'),
(457, '47958245LP', 'Elena Flores', '78489563'),
(458, '87996921QR', 'Gabriela Vargas', '63104291'),
(459, '58810408SC', 'Ricardo Ramírez', '63542226'),
(460, '2658003TJ', 'Andrés Molina', '61727437'),
(461, '43977388TJ', 'Roberto Sánchez', '68814588'),
(462, '27624112PN', 'Roberto Sánchez', '60700615'),
(463, '60935495BN', 'Isabel Ortega', '65269686'),
(464, '17695786TJ', 'Isabel Ortega', '70687547'),
(465, '96219589TJ', 'Gabriela Vargas', '71342325'),
(466, '96141958CB', 'Ricardo Ramírez', '74092290'),
(467, '23862318QR', 'Isabel Ortega', '78056222'),
(468, '22668216SC', 'Ricardo Ramírez', '63697778'),
(469, '3186904TJ', 'Mariana Guzmán', '67022769'),
(470, '10047693CB', 'Fernando López', '69230410'),
(471, '20200835CB', 'Hugo Castillo', '79553160'),
(472, '25086909SC', 'Carlos Méndez', '67291986'),
(473, '47575717BN', 'Ana Ramírez', '73598230'),
(474, '15649854SC', 'Miguel Rojas', '60943704'),
(475, '24073536OR', 'Ricardo Ramírez', '61485256'),
(476, '7015782LP', 'Isabel Ortega', '74638599'),
(477, '42637502OR', 'Isabel Ortega', '69401656'),
(478, '88197682TJ', 'Isabel Ortega', '66387043'),
(479, '85390960OR', 'Paola Fernández', '66770519'),
(480, '32890451SC', 'Mariana Guzmán', '64089225'),
(481, '21562695SC', 'Miguel Rojas', '78216702'),
(482, '62327082QR', 'Ricardo Ramírez', '68840275'),
(483, '82723457LP', 'Ana Ramírez', '61809277'),
(484, '11883393TJ', 'Mariana Guzmán', '68245577'),
(485, '30592965TJ', 'Ana Ramírez', '69511969'),
(486, '52363179BN', 'Mariana Guzmán', '61329253'),
(487, '5250906TJ', 'Carlos Méndez', '70694514'),
(488, '78746874CB', 'Carlos Méndez', '65783279'),
(489, '26196781CB', 'Valeria Castro', '60134900'),
(490, '79669981LP', 'Fernando López', '70616780'),
(491, '44059000PN', 'Roberto Sánchez', '78419696'),
(492, '71998765OR', 'Hugo Castillo', '62193910'),
(493, '42286021QR', 'Ana Ramírez', '67325922'),
(494, '37081870PT', 'Tomás García', '61888479'),
(495, '97045040QR', 'Sofía Herrera', '73930208'),
(496, '31549845BN', 'Miguel Rojas', '76234937'),
(497, '91613413TJ', 'Gabriela Vargas', '60164067'),
(498, '52749016TJ', 'Isabel Ortega', '68549827'),
(499, '66236839QR', 'Elena Flores', '65100275'),
(500, '65503852LP', 'Carmen Silva', '66038967'),
(501, '9981303QR', 'Andrés Molina', '71471016'),
(502, '41767283QR', 'Hugo Castillo', '73444534'),
(503, '98727118BN', 'Miguel Rojas', '71829943'),
(504, '41651611PN', 'Fernando López', '71601143'),
(505, '74997816BN', 'Elena Flores', '72108877'),
(506, '8594969CB', 'Mariana Guzmán', '68187902'),
(507, '32739135OR', 'Lucía Pérez', '69997748'),
(508, '20121769OR', 'Roberto Sánchez', '73035967'),
(509, '93167514OR', 'Javier Torres', '79235909'),
(510, '2730148LP', 'Andrés Molina', '68676169'),
(511, '53732309PT', 'Tomás García', '64369730'),
(512, '93992748PN', 'Ana Ramírez', '73697037'),
(513, '47604766CB', 'Miguel Rojas', '67772993'),
(514, '29118892QR', 'Gabriela Vargas', '60164099'),
(515, '55396441QR', 'Hugo Castillo', '71237135'),
(516, '31021374BN', 'Valeria Castro', '70685056'),
(517, '97858513CB', 'Miguel Rojas', '60368167'),
(518, '2142635LP', 'Gabriela Vargas', '75711686'),
(519, '78445847SC', 'Javier Torres', '77937561'),
(520, '53069385PN', 'Javier Torres', '76473979'),
(521, '21678089CB', 'Lucía Pérez', '72987183'),
(522, '33927373PN', 'Sofía Herrera', '61117436'),
(523, '89294285OR', 'Javier Torres', '77629160'),
(524, '56815361LP', 'Diego Medina', '68205105'),
(525, '78662285QR', 'Ana Ramírez', '68153121'),
(526, '12043455PN', 'Elena Flores', '75877553'),
(527, '6208543OR', 'Lucía Pérez', '72806164'),
(528, '84537137CB', 'Miguel Rojas', '68247396'),
(529, '68167617PT', 'Elena Flores', '64110057'),
(530, '97686285BN', 'Carlos Méndez', '60370952'),
(531, '37236559SC', 'Isabel Ortega', '77951028'),
(532, '92734869QR', 'Ricardo Ramírez', '73825042'),
(533, '69129309SC', 'Sofía Herrera', '61648484'),
(534, '26004929QR', 'Isabel Ortega', '66227096'),
(535, '60693860TJ', 'Javier Torres', '69242936'),
(536, '28271866LP', 'Valeria Castro', '70102660'),
(537, '15247931SC', 'Elena Flores', '75727776'),
(538, '69546260OR', 'Sofía Herrera', '61433262'),
(539, '18472870TJ', 'Tomás García', '77182379'),
(540, '95797135PT', 'Hugo Castillo', '71130465'),
(541, '71296355QR', 'Carmen Silva', '70826286'),
(542, '7382348SC', 'Carlos Méndez', '79849488'),
(543, '10588955OR', 'Lucía Pérez', '76959402'),
(544, '86747366SC', 'Ricardo Ramírez', '78429453'),
(545, '24110582BN', 'Mariana Guzmán', '76183746'),
(546, '26414005LP', 'Miguel Rojas', '62730525'),
(547, '1094739BN', 'Carlos Méndez', '76495040'),
(548, '67629770QR', 'Elena Flores', '69805068'),
(549, '78577491CB', 'Carmen Silva', '78475799'),
(550, '7431901QR', 'Miguel Rojas', '64462383'),
(551, '99124036OR', 'Isabel Ortega', '75153113'),
(552, '46619067CB', 'Diego Medina', '73995571'),
(553, '15137872SC', 'Paola Fernández', '63638398'),
(554, '68112498BN', 'Tomás García', '79235732'),
(555, '16803489PN', 'Javier Torres', '65582568'),
(556, '32271471CB', 'Ana Ramírez', '78130213'),
(557, '92655840OR', 'Gabriela Vargas', '79152381'),
(558, '1258158OR', 'Roberto Sánchez', '64865910'),
(559, '89556675PT', 'Fernando López', '69711446'),
(560, '43154384CB', 'Carlos Méndez', '69986260'),
(561, '90702313PN', 'Diego Medina', '77376363'),
(562, '21803033PT', 'Gabriela Vargas', '64696361'),
(563, '52873274CB', 'Diego Medina', '72431869'),
(564, '94701521BN', 'Javier Torres', '67902185'),
(565, '99383779OR', 'Paola Fernández', '74074459'),
(566, '8875835CB', 'Andrés Molina', '77241533'),
(567, '71208305BN', 'Roberto Sánchez', '74228653'),
(568, '12848698PT', 'Sofía Herrera', '75812970'),
(569, '89150941BN', 'Sofía Herrera', '67341692'),
(570, '65430390LP', 'Fernando López', '60336769'),
(571, '58756979OR', 'Ana Ramírez', '73831428'),
(572, '28889624LP', 'Lucía Pérez', '70761647'),
(573, '64568561BN', 'Hugo Castillo', '71736177'),
(574, '40990023SC', 'Paola Fernández', '66602871'),
(575, '8514049PN', 'Fernando López', '79051661'),
(576, '90348488PT', 'Paola Fernández', '68607738'),
(577, '15275552PN', 'Ana Ramírez', '66606773'),
(578, '41158135CB', 'Elena Flores', '78257487'),
(579, '51375904TJ', 'Lucía Pérez', '79853045'),
(580, '63806676LP', 'Javier Torres', '61893063'),
(581, '68307767QR', 'Carlos Méndez', '60679863'),
(582, '68532006QR', 'Paola Fernández', '61040814'),
(583, '15089332CB', 'Valeria Castro', '63966995'),
(584, '43461654PN', 'Sofía Herrera', '79217790'),
(585, '44562831TJ', 'Javier Torres', '71511195'),
(586, '81483298QR', 'Elena Flores', '66222949'),
(587, '41160935SC', 'Paola Fernández', '75936143'),
(588, '19075361OR', 'Andrés Molina', '67639510'),
(589, '44632748BN', 'Roberto Sánchez', '71171387'),
(590, '19508321TJ', 'Hugo Castillo', '74497758'),
(591, '82159922OR', 'Valeria Castro', '73677675'),
(592, '85342267LP', 'Miguel Rojas', '69400190'),
(593, '40534929BN', 'Carmen Silva', '76730745'),
(594, '70433626BN', 'Diego Medina', '60570982'),
(595, '8629448SC', 'Ricardo Ramírez', '67604860'),
(596, '50848295LP', 'Ana Ramírez', '61176043'),
(597, '71968737PN', 'Valeria Castro', '69946387'),
(598, '16295657BN', 'Valeria Castro', '63292686'),
(599, '99347135QR', 'Tomás García', '79308090'),
(600, '54176960LP', 'Ricardo Ramírez', '69588307'),
(601, '77705904PT', 'Miguel Rojas', '63402888'),
(602, '41105328OR', 'Tomás García', '75079534'),
(603, '53661426PN', 'Carlos Méndez', '78471253'),
(604, '16566714BN', 'Gabriela Vargas', '69518235'),
(605, '87708262SC', 'Gabriela Vargas', '63581392'),
(606, '79614353QR', 'Mariana Guzmán', '64601647'),
(607, '13315553SC', 'Javier Torres', '63040995'),
(608, '14619670PN', 'Isabel Ortega', '78505980'),
(609, '80713238OR', 'Gabriela Vargas', '64109742'),
(610, '31361391BN', 'Miguel Rojas', '78023215'),
(611, '79796084PN', 'Roberto Sánchez', '72172389'),
(612, '23450302TJ', 'Javier Torres', '68076948'),
(613, '7801989TJ', 'Ana Ramírez', '67068108'),
(614, '45861593PT', 'Paola Fernández', '67754538'),
(615, '26366765BN', 'Javier Torres', '74416151'),
(616, '84252154TJ', 'Ricardo Ramírez', '77689170'),
(617, '90318853CB', 'Carmen Silva', '68042548'),
(618, '93635115LP', 'Diego Medina', '63274721'),
(619, '92609892OR', 'Carlos Méndez', '62688148'),
(620, '54888841QR', 'Paola Fernández', '77647611'),
(621, '38054811BN', 'Valeria Castro', '63483351'),
(622, '11521919OR', 'Roberto Sánchez', '71356730'),
(623, '71641871PN', 'Ricardo Ramírez', '67562446'),
(624, '88342067CB', 'Fernando López', '68428738'),
(625, '57700802PN', 'Valeria Castro', '60162554'),
(626, '14451020QR', 'Andrés Molina', '67521669'),
(627, '9298377TJ', 'Roberto Sánchez', '67138782'),
(628, '7512335LP', 'Diego Medina', '79288045'),
(629, '53510874PT', 'Gabriela Vargas', '66765159'),
(630, '69866827SC', 'Sofía Herrera', '74573517'),
(631, '85910362TJ', 'Carmen Silva', '65409004'),
(632, '15703190CB', 'Carmen Silva', '75520866'),
(633, '6724868OR', 'Fernando López', '79135053'),
(634, '14169849BN', 'Roberto Sánchez', '75253980'),
(635, '31005955OR', 'Carlos Méndez', '60092048'),
(636, '44339068PN', 'Lucía Pérez', '71658629'),
(637, '96065081PN', 'Roberto Sánchez', '64481531'),
(638, '58964155TJ', 'Elena Flores', '70263905'),
(639, '84577859BN', 'Carmen Silva', '79481492'),
(640, '29971211TJ', 'Andrés Molina', '79065121'),
(641, '80668611SC', 'Carlos Méndez', '70410992'),
(642, '65496726CB', 'Sofía Herrera', '76589326'),
(643, '3127622BN', 'Elena Flores', '63182315'),
(644, '42664823CB', 'Mariana Guzmán', '74594661'),
(645, '68390259QR', 'Isabel Ortega', '75089478'),
(646, '9802175LP', 'Fernando López', '78362778'),
(647, '47998633TJ', 'Sofía Herrera', '63770203'),
(648, '52388339QR', 'Sofía Herrera', '64687814'),
(649, '68971751BN', 'Paola Fernández', '77363863'),
(650, '33658144LP', 'Andrés Molina', '60102033'),
(651, '44343980SC', 'Fernando López', '63615126'),
(652, '31481189LP', 'Paola Fernández', '60255703'),
(653, '15908605BN', 'Sofía Herrera', '63232275'),
(654, '89650243SC', 'Andrés Molina', '69719329'),
(655, '1609258BN', 'Miguel Rojas', '69856284'),
(656, '47809176LP', 'Elena Flores', '75044822'),
(657, '56748922PN', 'Hugo Castillo', '71972943'),
(658, '10513241TJ', 'Mariana Guzmán', '65748879'),
(659, '57795167PT', 'Isabel Ortega', '65679069'),
(660, '21669889TJ', 'Andrés Molina', '76227601'),
(661, '38305637PT', 'Gabriela Vargas', '64214089'),
(662, '61991253BN', 'Miguel Rojas', '76548362'),
(663, '40319150LP', 'Diego Medina', '71383116'),
(664, '67470021TJ', 'Javier Torres', '73178850'),
(665, '55497577CB', 'Roberto Sánchez', '74146659'),
(666, '7878224PN', 'Sofía Herrera', '63623810'),
(667, '58113536CB', 'Tomás García', '68164727'),
(668, '35097160BN', 'Tomás García', '68939941'),
(669, '71161398PT', 'Diego Medina', '66120808'),
(670, '15549807OR', 'Carlos Méndez', '60102368'),
(671, '22783522PT', 'Lucía Pérez', '74527897'),
(672, '74071894TJ', 'Miguel Rojas', '60847259'),
(673, '12640003PN', 'Isabel Ortega', '61972429'),
(674, '86751536PN', 'Carlos Méndez', '77913778'),
(675, '6006891PT', 'Mariana Guzmán', '70708913'),
(676, '81106845TJ', 'Andrés Molina', '74541476'),
(677, '7683208SC', 'Fernando López', '68134220'),
(678, '65171764SC', 'Javier Torres', '73857067'),
(679, '24279802SC', 'Diego Medina', '73644439'),
(680, '74659967PT', 'Miguel Rojas', '69943939'),
(681, '26883292QR', 'Diego Medina', '78767478'),
(682, '98942622BN', 'Ana Ramírez', '72751067'),
(683, '92592791SC', 'Gabriela Vargas', '78140239'),
(684, '57694771QR', 'Valeria Castro', '60340376'),
(685, '64014391SC', 'Valeria Castro', '74196527'),
(686, '90673152PN', 'Sofía Herrera', '70259503'),
(687, '42468715PN', 'Sofía Herrera', '68690948'),
(688, '88743889BN', 'Lucía Pérez', '73724782'),
(689, '48417034PN', 'Ana Ramírez', '72034550'),
(690, '96840357PN', 'Mariana Guzmán', '77232073'),
(691, '68212186SC', 'Valeria Castro', '62320516'),
(692, '63797513SC', 'Andrés Molina', '79310717'),
(693, '88759110PT', 'Roberto Sánchez', '68979061'),
(694, '23136465OR', 'Hugo Castillo', '74686278'),
(695, '19401947SC', 'Lucía Pérez', '67905787'),
(696, '82392547TJ', 'Mariana Guzmán', '69283424'),
(697, '39061582PT', 'Tomás García', '63162338'),
(698, '6609439SC', 'Javier Torres', '76034619'),
(699, '35139251SC', 'Hugo Castillo', '73624181'),
(700, '36114379LP', 'Lucía Pérez', '66601583'),
(701, '72510559TJ', 'Gabriela Vargas', '74764756'),
(702, '81389544OR', 'Tomás García', '65654718'),
(703, '36527534QR', 'Carmen Silva', '62519384'),
(704, '41299467PT', 'Gabriela Vargas', '77124248'),
(705, '40026395LP', 'Fernando López', '70237853'),
(706, '32166007LP', 'Carmen Silva', '70106795'),
(707, '88476130LP', 'Carlos Méndez', '69623057'),
(708, '78467058TJ', 'Andrés Molina', '75889852'),
(709, '5937013BN', 'Javier Torres', '69210777'),
(710, '19862882BN', 'Sofía Herrera', '73408975'),
(711, '70860510BN', 'Valeria Castro', '73062381'),
(712, '15805316BN', 'Isabel Ortega', '75016220'),
(713, '4062100BN', 'Ricardo Ramírez', '79713104'),
(714, '83799489CB', 'Roberto Sánchez', '69407666'),
(715, '92527126QR', 'Valeria Castro', '72071345'),
(716, '75020610PN', 'Diego Medina', '65174397'),
(717, '22652833QR', 'Tomás García', '70882553'),
(718, '20345044QR', 'Hugo Castillo', '67377403'),
(719, '95188788QR', 'Hugo Castillo', '71458675'),
(720, '40661488TJ', 'Andrés Molina', '79547146'),
(721, '74716304BN', 'Hugo Castillo', '64596894'),
(722, '7104227TJ', 'Diego Medina', '71938163'),
(723, '22559497PT', 'Miguel Rojas', '72244787'),
(724, '74067511PT', 'Isabel Ortega', '66419669'),
(725, '76915766QR', 'Elena Flores', '64700859'),
(726, '87526272LP', 'Sofía Herrera', '60004910'),
(727, '10542529PN', 'Andrés Molina', '62293455'),
(728, '42739413PT', 'Fernando López', '68496208'),
(729, '8854040BN', 'Ana Ramírez', '63041775'),
(730, '6671873PN', 'Mariana Guzmán', '72728458'),
(731, '37770822PT', 'Fernando López', '61382359'),
(732, '35767572LP', 'Isabel Ortega', '68101730'),
(733, '40019349BN', 'Mariana Guzmán', '60305364'),
(734, '49719395BN', 'Carmen Silva', '65152599'),
(735, '94467332TJ', 'Isabel Ortega', '69084664'),
(736, '5618786CB', 'Ricardo Ramírez', '79899010'),
(737, '57917293PN', 'Ana Ramírez', '61285863'),
(738, '67412630QR', 'Ana Ramírez', '75143078'),
(739, '62601859TJ', 'Valeria Castro', '77431294'),
(740, '60403715PN', 'Paola Fernández', '79709125'),
(741, '53914949LP', 'Andrés Molina', '75802515'),
(742, '7653086PT', 'Lucía Pérez', '72361968'),
(743, '29645093BN', 'Javier Torres', '67947856'),
(744, '12712933PN', 'Elena Flores', '75143335'),
(745, '98584011BN', 'Hugo Castillo', '63657989'),
(746, '74272614CB', 'Javier Torres', '61054212'),
(747, '46555165QR', 'Andrés Molina', '77813844'),
(748, '15595606CB', 'Diego Medina', '71681340'),
(749, '90583781PN', 'Miguel Rojas', '79961986'),
(750, '32737750TJ', 'Roberto Sánchez', '75556884'),
(751, '55599359SC', 'Javier Torres', '75715700'),
(752, '28120959PN', 'Miguel Rojas', '67761356'),
(753, '70809998PN', 'Sofía Herrera', '68411732'),
(754, '22971615OR', 'Ana Ramírez', '72585712'),
(755, '96646558QR', 'Lucía Pérez', '65992464'),
(756, '5678013CB', 'Roberto Sánchez', '68015806'),
(757, '44689823SC', 'Diego Medina', '67282778'),
(758, '32584840CB', 'Carlos Méndez', '73516160'),
(759, '36797784PN', 'Ricardo Ramírez', '64252345'),
(760, '2976640LP', 'Andrés Molina', '76807561'),
(761, '65188234QR', 'Sofía Herrera', '78810249'),
(762, '20394948BN', 'Roberto Sánchez', '64378077'),
(763, '4251408PN', 'Andrés Molina', '79767717'),
(764, '88951594TJ', 'Miguel Rojas', '62792132'),
(765, '70630276TJ', 'Gabriela Vargas', '62838676'),
(766, '65568261PN', 'Lucía Pérez', '69359821'),
(767, '57622072CB', 'Mariana Guzmán', '77438672'),
(768, '72937175PT', 'Sofía Herrera', '65616948'),
(769, '65973191QR', 'Valeria Castro', '60072028'),
(770, '97937670PT', 'Andrés Molina', '79074173'),
(771, '88392253SC', 'Paola Fernández', '72557574'),
(772, '84548911QR', 'Diego Medina', '61178714'),
(773, '75786747PT', 'Miguel Rojas', '67620425'),
(774, '50485556LP', 'Javier Torres', '66498680'),
(775, '27195061LP', 'Miguel Rojas', '63461697'),
(776, '78463939QR', 'Sofía Herrera', '65742603'),
(777, '51268382SC', 'Isabel Ortega', '68913924'),
(778, '4219079OR', 'Hugo Castillo', '72283470'),
(779, '24484191PT', 'Miguel Rojas', '79148336'),
(780, '98157371PN', 'Lucía Pérez', '61139739'),
(781, '3628563PN', 'Ana Ramírez', '67685380'),
(782, '53819026SC', 'Mariana Guzmán', '62566861'),
(783, '12728409SC', 'Carlos Méndez', '61852719'),
(784, '75098701SC', 'Carlos Méndez', '73685673'),
(785, '85509875SC', 'Javier Torres', '70377781'),
(786, '42860681BN', 'Valeria Castro', '73857176'),
(787, '66151510TJ', 'Isabel Ortega', '75929119'),
(788, '25381004PN', 'Javier Torres', '69114746'),
(789, '94445332BN', 'Andrés Molina', '65183424'),
(790, '54191684OR', 'Andrés Molina', '67950549'),
(791, '49906062PT', 'Ana Ramírez', '66006732'),
(792, '60340479OR', 'Paola Fernández', '74856482'),
(793, '84141416PT', 'Ricardo Ramírez', '75968557'),
(794, '58288625PN', 'Paola Fernández', '60059467'),
(795, '25249404CB', 'Miguel Rojas', '68195374'),
(796, '86849837SC', 'Ana Ramírez', '76414087'),
(797, '86484209LP', 'Carlos Méndez', '69235743'),
(798, '32273310PT', 'Miguel Rojas', '61144953'),
(799, '93720971TJ', 'Javier Torres', '60182818'),
(800, '76370181OR', 'Diego Medina', '73530338'),
(801, '6413247OR', 'Miguel Rojas', '69838122'),
(802, '30816607BN', 'Miguel Rojas', '75000635'),
(803, '96649746TJ', 'Carmen Silva', '61920544'),
(804, '26198727SC', 'Fernando López', '62891962'),
(805, '8279832BN', 'Javier Torres', '77583162'),
(806, '80564338PT', 'Lucía Pérez', '64903964'),
(807, '83547096TJ', 'Roberto Sánchez', '68489288'),
(808, '18630734QR', 'Elena Flores', '65257877'),
(809, '2863533SC', 'Andrés Molina', '63034465'),
(810, '63098697BN', 'Carmen Silva', '73099987'),
(811, '15512993OR', 'Hugo Castillo', '61027811'),
(812, '85119875QR', 'Carlos Méndez', '76811828'),
(813, '31334263OR', 'Ricardo Ramírez', '67060785'),
(814, '57561687CB', 'Hugo Castillo', '65427604'),
(815, '43869241CB', 'Ricardo Ramírez', '73709294'),
(816, '30979112CB', 'Gabriela Vargas', '72256381'),
(817, '34704309PN', 'Isabel Ortega', '67355245'),
(818, '30685889CB', 'Roberto Sánchez', '73356171'),
(819, '73057473PN', 'Isabel Ortega', '65225504'),
(820, '83734699SC', 'Andrés Molina', '74713156'),
(821, '24973083LP', 'Diego Medina', '65100261'),
(822, '25289436CB', 'Javier Torres', '66307657'),
(823, '54495713QR', 'Tomás García', '62955194'),
(824, '6714541PN', 'Diego Medina', '79184368'),
(825, '83044841OR', 'Carmen Silva', '76042281'),
(826, '25922938SC', 'Mariana Guzmán', '73877511'),
(827, '14115166TJ', 'Tomás García', '63450483'),
(828, '9588100SC', 'Gabriela Vargas', '72158030'),
(829, '24322382TJ', 'Elena Flores', '67885110'),
(830, '9330044CB', 'Javier Torres', '60689396'),
(831, '54203229SC', 'Mariana Guzmán', '69560583'),
(832, '10911660OR', 'Diego Medina', '65173532'),
(833, '32227396CB', 'Elena Flores', '67265919'),
(834, '51777500PN', 'Gabriela Vargas', '72787925'),
(835, '34818230SC', 'Isabel Ortega', '76733584'),
(836, '26044534BN', 'Paola Fernández', '71364740'),
(837, '68464768SC', 'Paola Fernández', '63784442'),
(838, '67815187OR', 'Isabel Ortega', '76985576'),
(839, '61687154TJ', 'Lucía Pérez', '71293227'),
(840, '13983705OR', 'Paola Fernández', '60082034'),
(841, '56071798SC', 'Miguel Rojas', '69375237'),
(842, '18471762OR', 'Diego Medina', '70134099'),
(843, '77646096CB', 'Paola Fernández', '60440159'),
(844, '63427306CB', 'Diego Medina', '65148902'),
(845, '41362969SC', 'Miguel Rojas', '75779946'),
(846, '44634721LP', 'Ricardo Ramírez', '69732109'),
(847, '1675965PT', 'Ana Ramírez', '76879102'),
(848, '58256619TJ', 'Roberto Sánchez', '65384752'),
(849, '7330157PN', 'Javier Torres', '67678563'),
(850, '50391552SC', 'Javier Torres', '66250387'),
(851, '70742765PN', 'Miguel Rojas', '70682309'),
(852, '45615347SC', 'Andrés Molina', '67615576'),
(853, '81444796CB', 'Sofía Herrera', '65242959'),
(854, '72318637CB', 'Carlos Méndez', '64778113'),
(855, '42058953OR', 'Carmen Silva', '61749316'),
(856, '32509407QR', 'Roberto Sánchez', '78432862'),
(857, '36106209TJ', 'Ricardo Ramírez', '65391762'),
(858, '21314251PN', 'Carlos Méndez', '72938523'),
(859, '91619174QR', 'Hugo Castillo', '62853329'),
(860, '9800325LP', 'Valeria Castro', '69268578'),
(861, '46806942BN', 'Fernando López', '77088458'),
(862, '8960750SC', 'Carmen Silva', '73492928'),
(863, '53533100PN', 'Roberto Sánchez', '74572186'),
(864, '31051711QR', 'Mariana Guzmán', '70985602'),
(865, '41235172QR', 'Roberto Sánchez', '77574318'),
(866, '55695361PT', 'Sofía Herrera', '68472727'),
(867, '73628217BN', 'Carmen Silva', '74927436'),
(868, '71948484TJ', 'Elena Flores', '79485590'),
(869, '40368893QR', 'Gabriela Vargas', '67625308'),
(870, '47222969TJ', 'Diego Medina', '67507246'),
(871, '90819200PN', 'Elena Flores', '64098024'),
(872, '77056073BN', 'Sofía Herrera', '75997244'),
(873, '1074523TJ', 'Andrés Molina', '76821572'),
(874, '59232766PN', 'Paola Fernández', '69165625'),
(875, '62985093LP', 'Gabriela Vargas', '71686644'),
(876, '51684852PN', 'Sofía Herrera', '70618866'),
(877, '26336668PN', 'Diego Medina', '61486815'),
(878, '63183273OR', 'Carmen Silva', '65984187'),
(879, '72571368TJ', 'Carmen Silva', '64636350'),
(880, '42941036BN', 'Carlos Méndez', '77554116'),
(881, '16660634LP', 'Ana Ramírez', '75228756'),
(882, '43916563SC', 'Lucía Pérez', '76438516'),
(883, '2865233OR', 'Gabriela Vargas', '73351396'),
(884, '92215190PN', 'Carmen Silva', '64731625'),
(885, '16049648PN', 'Elena Flores', '76126067'),
(886, '17981720OR', 'Sofía Herrera', '69967011'),
(887, '29763716TJ', 'Hugo Castillo', '64345972'),
(888, '10517845OR', 'Valeria Castro', '74552566'),
(889, '68651441TJ', 'Ricardo Ramírez', '75213323'),
(890, '51950267BN', 'Javier Torres', '64127160'),
(891, '9135601TJ', 'Carmen Silva', '78788954'),
(892, '23759494OR', 'Isabel Ortega', '66450115'),
(893, '68119143QR', 'Elena Flores', '77624060'),
(894, '46129104CB', 'Diego Medina', '74844563'),
(895, '5827706LP', 'Carmen Silva', '66956004'),
(896, '40150505BN', 'Sofía Herrera', '79192225'),
(897, '94776143TJ', 'Miguel Rojas', '66296364'),
(898, '49393838BN', 'Sofía Herrera', '70543589'),
(899, '36064695BN', 'Javier Torres', '70243418'),
(900, '35779782PT', 'Isabel Ortega', '79482747'),
(901, '89962828TJ', 'Ricardo Ramírez', '60638972'),
(902, '70482142PT', 'Roberto Sánchez', '78001946'),
(903, '83248591SC', 'Gabriela Vargas', '66907037'),
(904, '88797085CB', 'Roberto Sánchez', '78097040'),
(905, '43635290QR', 'Sofía Herrera', '69126898'),
(906, '13883734SC', 'Javier Torres', '70610196'),
(907, '28957628PT', 'Carmen Silva', '75801199'),
(908, '99053353PN', 'Sofía Herrera', '75744282'),
(909, '46323877SC', 'Tomás García', '62467017'),
(910, '40938159BN', 'Ana Ramírez', '64861155'),
(911, '35216461BN', 'Hugo Castillo', '68082460'),
(912, '68097417SC', 'Hugo Castillo', '64002301'),
(913, '67202507TJ', 'Elena Flores', '77069307'),
(914, '7849268CB', 'Javier Torres', '72905770'),
(915, '95844941QR', 'Carmen Silva', '70804998'),
(916, '99542700CB', 'Fernando López', '77474598'),
(917, '84774612TJ', 'Hugo Castillo', '75097826'),
(918, '63179896LP', 'Diego Medina', '69852446'),
(919, '70054928SC', 'Andrés Molina', '65279483'),
(920, '47410959PT', 'Hugo Castillo', '79047640'),
(921, '49743038CB', 'Carmen Silva', '72902035'),
(922, '51580064PN', 'Tomás García', '76185267'),
(923, '27870432PN', 'Fernando López', '67216124'),
(924, '48206609PN', 'Carlos Méndez', '79034288'),
(925, '52297350TJ', 'Tomás García', '65101580'),
(926, '13149418LP', 'Tomás García', '79552464'),
(927, '5921608OR', 'Ricardo Ramírez', '69240458'),
(928, '88215181PT', 'Miguel Rojas', '62815805'),
(929, '95933275LP', 'Ricardo Ramírez', '78463793'),
(930, '96872409BN', 'Roberto Sánchez', '69197221'),
(931, '66001349QR', 'Isabel Ortega', '67389310'),
(932, '91415497QR', 'Elena Flores', '78720298'),
(933, '51326795SC', 'Javier Torres', '69296712'),
(934, '55088260BN', 'Tomás García', '67833688'),
(935, '17770603TJ', 'Valeria Castro', '76307657'),
(936, '85273847PT', 'Gabriela Vargas', '71181128'),
(937, '2556697OR', 'Diego Medina', '61542832'),
(938, '38222402OR', 'Javier Torres', '61628982'),
(939, '88929756LP', 'Carlos Méndez', '65732117'),
(940, '22945000BN', 'Elena Flores', '65629322'),
(941, '50384199SC', 'Andrés Molina', '78997721'),
(942, '55689394BN', 'Ricardo Ramírez', '73751630'),
(943, '65477427PN', 'Ana Ramírez', '61433482'),
(944, '52728706BN', 'Diego Medina', '70952569'),
(945, '79830530PN', 'Ricardo Ramírez', '60235063'),
(946, '16995259LP', 'Isabel Ortega', '69377774'),
(947, '91153809QR', 'Diego Medina', '60327637'),
(948, '9855141PT', 'Sofía Herrera', '66880219'),
(949, '81250439OR', 'Mariana Guzmán', '65878018'),
(950, '90569317PN', 'Miguel Rojas', '67534006'),
(951, '1061687LP', 'Fernando López', '75742184'),
(952, '31971529TJ', 'Javier Torres', '71026978'),
(953, '19734227SC', 'Hugo Castillo', '69735588'),
(954, '40331806LP', 'Mariana Guzmán', '71662187'),
(955, '77460913BN', 'Ana Ramírez', '75754815'),
(956, '94321368TJ', 'Carlos Méndez', '77820340'),
(957, '45642125CB', 'Mariana Guzmán', '78831900'),
(958, '69346569BN', 'Valeria Castro', '73060404'),
(959, '48018703OR', 'Javier Torres', '68037760'),
(960, '76837460OR', 'Hugo Castillo', '61277684'),
(961, '79225398PN', 'Valeria Castro', '78115093'),
(962, '47968398SC', 'Mariana Guzmán', '72692033'),
(963, '86592392PT', 'Elena Flores', '68511302'),
(964, '71718482PT', 'Mariana Guzmán', '64669898'),
(965, '87581218PT', 'Carmen Silva', '65895757'),
(966, '81753224OR', 'Valeria Castro', '61567277'),
(967, '21096176OR', 'Mariana Guzmán', '77264194'),
(968, '83260349OR', 'Miguel Rojas', '73060426'),
(969, '54496695QR', 'Roberto Sánchez', '63515476'),
(970, '38771780BN', 'Sofía Herrera', '72013937'),
(971, '7812688LP', 'Miguel Rojas', '68703963'),
(972, '26034109PT', 'Fernando López', '74705672'),
(973, '82881341PN', 'Mariana Guzmán', '77834257'),
(974, '73071391PT', 'Sofía Herrera', '73427427'),
(975, '80687760PN', 'Gabriela Vargas', '75339633'),
(976, '76983870OR', 'Ricardo Ramírez', '62957801'),
(977, '75447486LP', 'Javier Torres', '69944554'),
(978, '4519194QR', 'Ricardo Ramírez', '77324519'),
(979, '21234933PT', 'Paola Fernández', '62633390'),
(980, '29086157OR', 'Carlos Méndez', '64601192'),
(981, '68978259QR', 'Roberto Sánchez', '76673085'),
(982, '20533837OR', 'Paola Fernández', '70884373'),
(983, '8888668CB', 'Carlos Méndez', '68696933'),
(984, '53057951PN', 'Miguel Rojas', '61981916'),
(985, '36341204LP', 'Roberto Sánchez', '62118270'),
(986, '84338958PN', 'Gabriela Vargas', '71141330'),
(987, '98653263BN', 'Paola Fernández', '69358196'),
(988, '8412548BN', 'Carlos Méndez', '76163230'),
(989, '95893146BN', 'Sofía Herrera', '74616159'),
(990, '92898728TJ', 'Sofía Herrera', '69504400'),
(991, '82682151SC', 'Mariana Guzmán', '77396048'),
(992, '2662236BN', 'Lucía Pérez', '73872993'),
(993, '10795425BN', 'Andrés Molina', '74242529'),
(994, '92587036PT', 'Andrés Molina', '79000710'),
(995, '66613904SC', 'Carlos Méndez', '72198586'),
(996, '13466356LP', 'Mariana Guzmán', '79841985'),
(997, '29651736PN', 'Mariana Guzmán', '72536471'),
(998, '22590924TJ', 'Hugo Castillo', '66787601'),
(999, '18011264PN', 'Lucía Pérez', '63106949'),
(1000, '43848594TJ', 'Elena Flores', '62736624');
SET IDENTITY_INSERT Passengers OFF;

-- Insertar boletos
SET IDENTITY_INSERT Tickets ON;
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1, 86, 90, '2025-02-26');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (2, 658, 69, '2024-08-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (3, 293, 118, '2025-02-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (4, 376, 193, '2025-02-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (5, 648, 28, '2024-10-30');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (6, 265, 390, '2024-10-08');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (7, 254, 388, '2024-08-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (8, 507, 414, '2024-10-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (9, 764, 294, '2024-06-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (10, 440, 285, '2024-12-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (11, 239, 466, '2024-03-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (12, 262, 123, '2024-04-03');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (13, 268, 145, '2024-03-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (14, 453, 386, '2024-12-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (15, 288, 481, '2024-10-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (16, 356, 290, '2024-12-26');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (17, 802, 105, '2024-03-22');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (18, 518, 402, '2024-10-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (19, 206, 425, '2024-03-26');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (20, 577, 489, '2024-07-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (21, 991, 15, '2024-07-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (22, 32, 355, '2024-08-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (23, 944, 59, '2024-04-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (24, 555, 166, '2024-04-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (25, 770, 245, '2024-12-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (26, 288, 114, '2024-09-04');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (27, 611, 213, '2025-02-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (28, 981, 279, '2024-08-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (29, 670, 356, '2024-08-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (30, 511, 238, '2025-01-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (31, 241, 298, '2024-08-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (32, 684, 248, '2024-05-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (33, 488, 458, '2024-10-16');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (34, 123, 321, '2024-06-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (35, 93, 76, '2024-06-29');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (36, 39, 34, '2025-01-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (37, 781, 198, '2024-07-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (38, 652, 177, '2024-12-31');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (39, 565, 162, '2024-03-25');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (40, 907, 212, '2025-01-31');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (41, 677, 206, '2024-03-25');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (42, 543, 106, '2024-08-04');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (43, 324, 474, '2024-08-29');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (44, 292, 28, '2024-06-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (45, 57, 344, '2024-10-03');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (46, 220, 154, '2024-10-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (47, 96, 210, '2025-02-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (48, 384, 482, '2024-05-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (49, 902, 20, '2024-06-30');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (50, 598, 117, '2025-02-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (51, 744, 387, '2024-05-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (52, 153, 288, '2025-01-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (53, 618, 441, '2024-04-29');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (54, 624, 323, '2024-08-03');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (55, 308, 178, '2024-12-28');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (56, 514, 49, '2024-09-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (57, 508, 114, '2025-01-25');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (58, 592, 22, '2024-06-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (59, 686, 500, '2024-04-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (60, 461, 96, '2025-01-02');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (61, 513, 42, '2024-10-26');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (62, 120, 244, '2024-10-30');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (63, 231, 447, '2024-11-22');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (64, 138, 263, '2024-06-03');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (65, 492, 475, '2025-01-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (66, 670, 456, '2024-08-02');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (67, 882, 396, '2025-01-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (68, 809, 319, '2024-05-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (69, 64, 281, '2024-03-30');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (70, 833, 403, '2024-07-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (71, 27, 221, '2024-07-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (72, 528, 438, '2024-05-08');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (73, 90, 361, '2025-01-02');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (74, 789, 158, '2024-04-30');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (75, 203, 380, '2024-04-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (76, 954, 65, '2024-11-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (77, 454, 406, '2024-03-30');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (78, 876, 2, '2024-12-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (79, 16, 232, '2025-01-16');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (80, 185, 109, '2024-10-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (81, 974, 28, '2024-11-08');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (82, 616, 285, '2024-04-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (83, 99, 349, '2024-11-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (84, 667, 90, '2024-04-08');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (85, 387, 484, '2024-06-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (86, 79, 112, '2025-02-25');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (87, 424, 137, '2024-10-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (88, 216, 260, '2024-07-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (89, 306, 438, '2024-08-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (90, 625, 400, '2024-04-26');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (91, 826, 342, '2024-03-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (92, 609, 306, '2024-03-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (93, 873, 63, '2024-04-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (94, 900, 64, '2024-08-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (95, 942, 211, '2024-06-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (96, 600, 176, '2024-04-28');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (97, 842, 80, '2024-05-25');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (98, 412, 313, '2024-08-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (99, 537, 314, '2024-07-03');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (100, 706, 304, '2025-01-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (101, 846, 396, '2025-01-22');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (102, 370, 439, '2024-07-16');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (103, 1000, 396, '2024-07-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (104, 965, 122, '2024-09-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (105, 907, 273, '2024-06-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (106, 139, 496, '2024-04-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (107, 486, 369, '2024-12-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (108, 754, 29, '2024-12-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (109, 923, 249, '2024-07-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (110, 655, 349, '2024-07-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (111, 385, 428, '2024-11-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (112, 142, 346, '2024-07-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (113, 246, 318, '2024-04-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (114, 949, 151, '2024-06-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (115, 587, 343, '2025-02-09');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (116, 532, 392, '2025-02-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (117, 985, 428, '2025-02-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (118, 820, 127, '2024-03-03');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (119, 296, 7, '2025-01-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (120, 802, 106, '2024-10-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (121, 144, 13, '2024-11-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (122, 272, 156, '2024-12-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (123, 336, 278, '2024-05-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (124, 895, 18, '2024-11-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (125, 843, 338, '2024-04-28');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (126, 526, 469, '2024-12-26');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (127, 58, 181, '2024-05-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (128, 729, 94, '2024-03-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (129, 880, 303, '2025-02-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (130, 493, 161, '2024-06-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (131, 154, 269, '2024-10-25');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (132, 122, 371, '2024-11-29');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (133, 587, 137, '2024-03-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (134, 195, 366, '2025-01-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (135, 347, 137, '2024-10-16');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (136, 667, 212, '2024-11-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (137, 975, 384, '2025-02-25');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (138, 622, 334, '2024-07-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (139, 718, 47, '2024-05-04');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (140, 837, 174, '2024-12-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (141, 649, 380, '2024-11-30');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (142, 187, 92, '2024-07-09');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (143, 84, 494, '2024-05-04');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (144, 5, 256, '2024-09-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (145, 909, 29, '2024-06-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (146, 659, 238, '2025-01-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (147, 736, 450, '2024-07-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (148, 283, 303, '2024-07-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (149, 59, 136, '2025-01-22');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (150, 822, 316, '2024-11-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (151, 790, 220, '2024-11-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (152, 289, 481, '2024-03-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (153, 652, 316, '2024-09-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (154, 522, 398, '2025-02-28');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (155, 636, 385, '2025-02-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (156, 677, 39, '2024-10-29');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (157, 504, 46, '2024-09-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (158, 698, 394, '2024-10-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (159, 652, 99, '2024-03-08');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (160, 32, 92, '2024-10-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (161, 226, 494, '2025-01-28');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (162, 680, 233, '2024-12-03');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (163, 969, 297, '2024-05-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (164, 121, 22, '2025-01-31');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (165, 724, 268, '2024-06-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (166, 963, 395, '2024-11-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (167, 501, 356, '2024-03-08');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (168, 817, 160, '2024-03-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (169, 407, 289, '2024-09-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (170, 987, 226, '2024-07-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (171, 372, 373, '2024-09-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (172, 167, 191, '2024-06-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (173, 435, 447, '2024-04-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (174, 993, 479, '2024-05-16');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (175, 774, 476, '2024-07-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (176, 292, 113, '2024-04-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (177, 271, 469, '2024-07-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (178, 836, 121, '2025-01-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (179, 952, 391, '2024-05-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (180, 56, 378, '2024-09-09');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (181, 331, 260, '2024-03-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (182, 598, 280, '2024-09-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (183, 719, 204, '2024-11-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (184, 699, 454, '2024-03-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (185, 661, 303, '2024-11-02');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (186, 701, 138, '2024-07-09');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (187, 874, 200, '2024-07-04');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (188, 588, 351, '2024-10-29');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (189, 621, 26, '2024-05-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (190, 311, 387, '2025-03-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (191, 754, 186, '2024-06-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (192, 842, 226, '2024-05-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (193, 437, 498, '2025-02-09');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (194, 797, 494, '2024-04-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (195, 659, 338, '2024-05-25');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (196, 129, 390, '2024-06-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (197, 401, 61, '2024-05-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (198, 322, 159, '2025-01-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (199, 291, 367, '2024-05-16');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (200, 718, 383, '2024-04-26');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (201, 754, 41, '2024-06-04');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (202, 293, 88, '2025-01-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (203, 134, 439, '2024-06-21');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (204, 549, 40, '2024-06-08');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (205, 492, 315, '2024-11-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (206, 129, 125, '2024-09-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (207, 78, 495, '2024-10-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (208, 481, 306, '2025-02-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (209, 461, 160, '2024-09-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (210, 246, 402, '2024-10-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (211, 457, 244, '2025-01-03');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (212, 687, 13, '2025-02-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (213, 48, 375, '2024-06-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (214, 732, 35, '2024-04-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (215, 446, 482, '2024-11-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (216, 273, 250, '2024-03-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (217, 55, 266, '2024-10-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (218, 692, 370, '2025-02-04');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (219, 833, 368, '2025-02-04');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (220, 803, 412, '2024-08-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (221, 154, 159, '2024-05-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (222, 195, 466, '2025-02-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (223, 76, 82, '2024-10-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (224, 425, 446, '2025-02-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (225, 585, 490, '2025-02-25');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (226, 632, 61, '2024-09-02');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (227, 976, 357, '2024-05-21');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (228, 985, 162, '2024-10-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (229, 535, 3, '2024-05-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (230, 474, 365, '2025-01-29');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (231, 51, 100, '2024-08-29');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (232, 462, 320, '2024-03-08');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (233, 635, 102, '2024-08-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (234, 850, 127, '2024-12-02');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (235, 513, 143, '2025-02-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (236, 145, 301, '2024-08-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (237, 282, 127, '2024-10-22');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (238, 678, 433, '2024-07-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (239, 378, 70, '2024-08-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (240, 778, 246, '2024-07-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (241, 227, 424, '2024-09-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (242, 350, 402, '2025-01-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (243, 763, 455, '2024-03-03');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (244, 578, 191, '2024-06-16');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (245, 854, 414, '2024-03-03');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (246, 533, 194, '2024-05-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (247, 179, 422, '2024-04-21');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (248, 371, 94, '2025-01-08');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (249, 391, 48, '2024-06-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (250, 97, 28, '2024-08-02');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (251, 390, 473, '2024-10-31');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (252, 455, 435, '2024-12-08');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (253, 942, 73, '2024-08-22');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (254, 219, 278, '2024-03-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (255, 379, 74, '2024-05-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (256, 35, 460, '2024-04-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (257, 502, 236, '2025-02-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (258, 599, 182, '2024-06-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (259, 226, 224, '2025-01-16');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (260, 831, 383, '2024-03-04');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (261, 854, 43, '2024-09-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (262, 804, 379, '2024-06-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (263, 614, 343, '2024-04-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (264, 120, 74, '2024-07-03');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (265, 907, 63, '2024-08-30');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (266, 16, 166, '2024-03-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (267, 731, 89, '2024-10-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (268, 648, 280, '2024-08-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (269, 396, 311, '2025-02-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (270, 253, 492, '2024-04-09');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (271, 304, 182, '2024-04-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (272, 835, 88, '2024-05-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (273, 353, 396, '2025-01-26');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (274, 6, 9, '2025-02-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (275, 892, 14, '2024-06-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (276, 744, 427, '2024-08-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (277, 678, 407, '2024-11-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (278, 526, 195, '2024-09-04');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (279, 47, 43, '2024-10-02');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (280, 389, 310, '2024-05-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (281, 64, 277, '2024-08-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (282, 550, 261, '2025-02-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (283, 555, 391, '2024-04-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (284, 311, 25, '2024-08-30');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (285, 386, 48, '2025-02-03');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (286, 204, 323, '2024-08-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (287, 190, 51, '2025-02-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (288, 70, 270, '2024-11-22');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (289, 408, 255, '2024-11-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (290, 747, 90, '2024-06-16');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (291, 176, 265, '2024-03-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (292, 186, 245, '2024-05-31');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (293, 946, 261, '2024-08-08');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (294, 703, 247, '2025-01-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (295, 347, 290, '2025-01-08');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (296, 942, 213, '2024-12-02');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (297, 674, 422, '2024-09-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (298, 463, 474, '2025-02-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (299, 320, 452, '2024-07-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (300, 239, 438, '2025-02-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (301, 342, 35, '2024-03-31');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (302, 555, 44, '2024-08-25');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (303, 588, 442, '2024-10-22');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (304, 812, 498, '2024-04-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (305, 452, 56, '2025-01-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (306, 598, 498, '2024-11-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (307, 631, 309, '2025-01-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (308, 319, 239, '2024-10-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (309, 590, 9, '2024-07-21');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (310, 100, 180, '2024-05-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (311, 203, 13, '2024-05-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (312, 941, 21, '2025-01-25');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (313, 173, 269, '2024-08-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (314, 373, 201, '2024-07-03');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (315, 697, 314, '2024-03-02');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (316, 75, 181, '2025-02-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (317, 338, 201, '2024-06-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (318, 362, 354, '2024-05-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (319, 453, 256, '2024-03-08');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (320, 166, 484, '2024-12-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (321, 372, 385, '2025-02-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (322, 916, 107, '2024-04-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (323, 128, 126, '2024-09-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (324, 703, 359, '2024-07-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (325, 185, 186, '2024-09-29');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (326, 717, 194, '2025-02-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (327, 587, 59, '2025-02-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (328, 980, 16, '2025-01-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (329, 310, 441, '2024-11-02');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (330, 3, 372, '2024-05-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (331, 44, 254, '2024-08-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (332, 212, 456, '2024-04-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (333, 551, 200, '2024-05-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (334, 763, 214, '2024-10-16');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (335, 628, 340, '2024-11-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (336, 707, 126, '2024-06-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (337, 324, 393, '2024-04-28');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (338, 902, 79, '2025-01-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (339, 431, 455, '2024-11-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (340, 22, 394, '2024-07-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (341, 405, 290, '2024-10-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (342, 779, 94, '2024-12-08');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (343, 362, 364, '2024-03-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (344, 973, 383, '2025-02-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (345, 303, 95, '2025-01-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (346, 577, 330, '2024-04-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (347, 692, 264, '2024-11-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (348, 613, 209, '2024-09-04');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (349, 915, 53, '2024-05-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (350, 226, 473, '2025-02-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (351, 858, 143, '2024-03-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (352, 459, 453, '2024-07-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (353, 35, 245, '2024-06-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (354, 572, 38, '2024-04-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (355, 973, 52, '2024-05-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (356, 79, 48, '2024-06-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (357, 653, 133, '2025-02-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (358, 931, 483, '2024-12-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (359, 704, 245, '2024-12-04');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (360, 73, 101, '2024-03-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (361, 216, 127, '2024-09-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (362, 813, 147, '2024-07-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (363, 360, 103, '2024-10-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (364, 754, 340, '2024-10-09');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (365, 171, 264, '2024-06-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (366, 309, 199, '2024-09-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (367, 77, 351, '2024-06-29');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (368, 897, 393, '2024-09-22');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (369, 631, 158, '2024-08-30');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (370, 887, 466, '2024-10-30');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (371, 948, 449, '2025-01-21');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (372, 175, 273, '2024-05-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (373, 472, 7, '2025-01-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (374, 300, 387, '2024-04-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (375, 6, 163, '2024-04-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (376, 108, 420, '2024-10-28');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (377, 569, 393, '2024-05-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (378, 230, 61, '2024-10-03');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (379, 990, 266, '2024-10-26');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (380, 118, 330, '2024-05-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (381, 739, 277, '2025-02-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (382, 418, 193, '2024-09-29');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (383, 577, 7, '2024-08-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (384, 40, 130, '2024-03-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (385, 854, 12, '2025-02-21');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (386, 952, 495, '2024-07-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (387, 137, 63, '2025-02-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (388, 173, 468, '2024-09-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (389, 685, 441, '2025-02-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (390, 421, 44, '2025-02-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (391, 432, 394, '2024-05-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (392, 162, 158, '2024-12-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (393, 451, 157, '2024-05-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (394, 87, 431, '2024-09-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (395, 76, 368, '2025-02-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (396, 868, 332, '2025-01-31');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (397, 965, 130, '2024-07-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (398, 480, 83, '2025-02-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (399, 931, 277, '2024-03-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (400, 597, 340, '2024-12-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (401, 844, 168, '2024-12-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (402, 52, 338, '2024-07-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (403, 553, 434, '2024-08-31');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (404, 74, 425, '2024-08-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (405, 452, 132, '2024-09-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (406, 305, 480, '2025-01-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (407, 696, 301, '2025-02-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (408, 342, 171, '2025-01-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (409, 816, 34, '2025-01-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (410, 850, 440, '2025-02-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (411, 95, 75, '2024-05-30');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (412, 908, 468, '2024-10-31');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (413, 46, 326, '2024-12-04');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (414, 188, 244, '2024-11-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (415, 420, 223, '2024-06-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (416, 850, 406, '2024-03-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (417, 466, 426, '2024-06-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (418, 714, 328, '2024-04-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (419, 26, 62, '2025-01-28');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (420, 961, 280, '2025-01-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (421, 745, 234, '2024-06-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (422, 304, 478, '2025-02-26');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (423, 555, 26, '2024-12-29');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (424, 725, 437, '2024-10-25');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (425, 288, 195, '2024-12-04');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (426, 637, 431, '2024-08-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (427, 505, 144, '2024-06-08');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (428, 218, 392, '2024-03-09');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (429, 520, 136, '2024-03-22');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (430, 330, 361, '2024-05-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (431, 404, 219, '2024-10-25');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (432, 56, 260, '2024-12-04');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (433, 868, 367, '2024-09-26');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (434, 971, 340, '2024-03-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (435, 372, 154, '2024-04-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (436, 611, 117, '2025-02-08');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (437, 115, 488, '2024-12-21');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (438, 695, 27, '2024-11-25');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (439, 596, 141, '2024-11-26');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (440, 692, 223, '2024-10-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (441, 351, 192, '2024-03-21');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (442, 36, 150, '2024-08-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (443, 473, 252, '2025-01-29');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (444, 871, 255, '2024-06-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (445, 181, 296, '2024-03-04');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (446, 812, 338, '2024-07-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (447, 823, 470, '2024-09-03');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (448, 372, 213, '2024-10-22');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (449, 498, 37, '2024-04-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (450, 724, 216, '2024-10-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (451, 467, 315, '2024-06-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (452, 471, 308, '2024-06-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (453, 725, 383, '2024-12-26');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (454, 163, 443, '2024-05-02');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (455, 179, 278, '2024-08-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (456, 325, 37, '2024-12-08');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (457, 407, 143, '2024-11-25');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (458, 316, 456, '2024-05-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (459, 275, 283, '2024-11-21');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (460, 802, 279, '2024-07-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (461, 128, 395, '2025-01-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (462, 646, 383, '2024-07-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (463, 469, 294, '2024-03-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (464, 722, 170, '2025-01-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (465, 558, 386, '2025-02-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (466, 477, 465, '2024-07-28');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (467, 846, 484, '2024-06-04');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (468, 792, 304, '2024-04-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (469, 264, 25, '2024-03-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (470, 591, 365, '2024-12-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (471, 777, 252, '2024-11-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (472, 998, 179, '2025-01-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (473, 905, 412, '2024-06-08');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (474, 986, 22, '2024-04-04');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (475, 196, 81, '2024-09-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (476, 340, 132, '2024-03-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (477, 763, 228, '2024-09-08');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (478, 85, 491, '2024-08-21');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (479, 532, 267, '2025-01-02');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (480, 499, 331, '2024-05-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (481, 618, 19, '2024-12-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (482, 257, 179, '2025-01-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (483, 438, 343, '2025-02-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (484, 831, 124, '2024-09-26');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (485, 376, 150, '2024-05-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (486, 985, 74, '2024-03-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (487, 562, 177, '2024-10-30');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (488, 751, 311, '2024-12-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (489, 990, 363, '2025-01-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (490, 265, 337, '2024-07-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (491, 191, 327, '2024-05-30');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (492, 795, 94, '2024-09-30');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (493, 329, 168, '2024-09-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (494, 760, 333, '2024-07-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (495, 442, 307, '2024-09-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (496, 560, 249, '2024-07-31');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (497, 634, 243, '2024-10-21');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (498, 32, 164, '2024-11-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (499, 483, 330, '2025-02-16');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (500, 150, 75, '2024-04-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (501, 970, 256, '2024-08-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (502, 550, 487, '2024-03-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (503, 52, 366, '2024-12-21');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (504, 533, 37, '2024-06-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (505, 410, 362, '2024-07-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (506, 870, 330, '2024-09-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (507, 269, 205, '2025-01-16');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (508, 366, 34, '2024-06-04');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (509, 135, 83, '2025-02-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (510, 873, 292, '2024-07-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (511, 896, 43, '2025-01-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (512, 171, 188, '2024-08-25');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (513, 549, 303, '2024-03-25');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (514, 336, 282, '2024-04-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (515, 479, 427, '2025-01-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (516, 834, 266, '2024-10-16');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (517, 59, 346, '2024-05-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (518, 223, 31, '2024-11-04');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (519, 823, 204, '2024-09-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (520, 206, 396, '2024-10-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (521, 812, 471, '2024-10-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (522, 419, 141, '2024-06-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (523, 377, 133, '2024-09-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (524, 211, 234, '2024-05-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (525, 449, 489, '2024-05-09');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (526, 148, 459, '2024-07-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (527, 761, 473, '2024-06-25');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (528, 324, 392, '2024-05-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (529, 584, 446, '2024-05-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (530, 605, 299, '2024-11-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (531, 237, 381, '2025-01-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (532, 615, 118, '2024-12-16');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (533, 510, 332, '2024-05-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (534, 407, 429, '2024-07-02');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (535, 571, 131, '2024-11-08');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (536, 74, 3, '2024-06-26');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (537, 491, 61, '2024-06-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (538, 984, 297, '2024-03-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (539, 516, 20, '2024-03-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (540, 658, 242, '2024-12-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (541, 126, 400, '2025-01-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (542, 686, 292, '2024-12-31');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (543, 262, 62, '2024-06-16');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (544, 213, 366, '2025-02-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (545, 64, 315, '2025-01-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (546, 494, 271, '2024-07-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (547, 500, 106, '2024-11-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (548, 504, 257, '2024-04-29');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (549, 647, 195, '2024-10-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (550, 973, 455, '2024-10-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (551, 994, 346, '2024-03-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (552, 315, 95, '2024-09-28');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (553, 594, 245, '2024-10-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (554, 123, 441, '2024-07-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (555, 932, 214, '2025-02-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (556, 564, 328, '2024-11-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (557, 417, 451, '2025-03-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (558, 735, 249, '2024-08-22');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (559, 204, 337, '2025-01-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (560, 329, 480, '2025-02-16');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (561, 936, 272, '2024-03-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (562, 977, 215, '2024-07-30');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (563, 430, 379, '2024-12-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (564, 607, 435, '2025-02-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (565, 45, 278, '2025-02-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (566, 215, 463, '2024-07-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (567, 644, 275, '2024-12-25');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (568, 363, 247, '2024-12-03');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (569, 566, 183, '2024-08-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (570, 670, 59, '2024-08-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (571, 52, 194, '2024-10-02');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (572, 284, 470, '2024-06-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (573, 679, 205, '2024-12-28');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (574, 475, 160, '2024-12-08');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (575, 126, 16, '2025-01-09');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (576, 59, 467, '2024-06-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (577, 826, 411, '2025-03-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (578, 231, 400, '2024-06-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (579, 800, 31, '2024-05-16');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (580, 816, 9, '2024-10-09');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (581, 823, 500, '2024-10-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (582, 308, 151, '2024-08-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (583, 1000, 110, '2025-01-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (584, 35, 151, '2024-10-03');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (585, 212, 142, '2024-10-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (586, 727, 397, '2024-03-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (587, 169, 140, '2024-05-30');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (588, 808, 494, '2025-01-16');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (589, 758, 311, '2024-07-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (590, 579, 129, '2024-08-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (591, 149, 379, '2024-12-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (592, 318, 9, '2024-09-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (593, 510, 360, '2024-08-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (594, 426, 242, '2024-05-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (595, 548, 146, '2025-02-22');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (596, 429, 194, '2024-03-30');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (597, 278, 230, '2024-04-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (598, 87, 272, '2024-06-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (599, 574, 132, '2024-11-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (600, 101, 312, '2024-03-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (601, 920, 157, '2024-05-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (602, 59, 226, '2024-05-03');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (603, 386, 53, '2024-11-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (604, 33, 108, '2024-07-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (605, 653, 413, '2024-08-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (606, 105, 433, '2024-07-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (607, 976, 292, '2024-08-04');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (608, 488, 171, '2025-01-02');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (609, 545, 106, '2024-09-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (610, 982, 217, '2024-05-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (611, 961, 100, '2024-12-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (612, 320, 489, '2024-07-26');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (613, 784, 275, '2024-04-29');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (614, 425, 96, '2024-06-16');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (615, 35, 175, '2024-03-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (616, 390, 171, '2024-06-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (617, 960, 328, '2024-03-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (618, 819, 90, '2024-12-16');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (619, 82, 448, '2024-03-25');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (620, 339, 89, '2024-03-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (621, 545, 411, '2024-03-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (622, 48, 408, '2024-07-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (623, 622, 304, '2024-10-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (624, 573, 83, '2024-06-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (625, 883, 400, '2024-12-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (626, 65, 244, '2025-02-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (627, 560, 309, '2024-10-21');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (628, 16, 313, '2024-08-25');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (629, 93, 6, '2024-06-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (630, 105, 454, '2024-10-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (631, 586, 49, '2024-05-04');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (632, 845, 478, '2024-08-02');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (633, 185, 424, '2025-01-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (634, 453, 491, '2024-03-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (635, 213, 270, '2024-11-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (636, 447, 318, '2024-03-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (637, 779, 444, '2024-07-26');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (638, 692, 247, '2024-11-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (639, 62, 65, '2024-03-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (640, 148, 7, '2024-07-02');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (641, 516, 119, '2024-10-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (642, 504, 102, '2024-11-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (643, 444, 11, '2024-10-26');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (644, 377, 380, '2024-09-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (645, 35, 68, '2024-07-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (646, 656, 326, '2024-11-25');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (647, 649, 452, '2024-05-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (648, 199, 472, '2024-12-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (649, 76, 290, '2024-10-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (650, 407, 127, '2025-01-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (651, 338, 227, '2024-04-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (652, 465, 191, '2024-05-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (653, 446, 109, '2025-02-28');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (654, 582, 407, '2024-04-29');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (655, 857, 454, '2024-07-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (656, 798, 213, '2024-05-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (657, 301, 430, '2024-04-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (658, 459, 346, '2024-11-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (659, 147, 406, '2024-10-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (660, 867, 352, '2024-08-04');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (661, 113, 55, '2024-04-22');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (662, 105, 158, '2024-04-08');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (663, 827, 194, '2024-05-16');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (664, 548, 435, '2024-05-30');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (665, 698, 74, '2024-10-25');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (666, 976, 411, '2024-06-16');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (667, 248, 495, '2024-08-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (668, 762, 6, '2024-03-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (669, 988, 200, '2024-10-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (670, 789, 487, '2024-06-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (671, 488, 39, '2024-12-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (672, 356, 20, '2024-04-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (673, 879, 254, '2024-08-31');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (674, 330, 166, '2024-10-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (675, 334, 276, '2024-05-28');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (676, 915, 120, '2024-12-22');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (677, 566, 453, '2024-05-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (678, 521, 352, '2024-08-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (679, 239, 62, '2024-09-28');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (680, 191, 58, '2024-08-09');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (681, 261, 422, '2024-12-03');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (682, 851, 332, '2024-05-08');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (683, 210, 181, '2024-03-30');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (684, 396, 254, '2024-09-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (685, 991, 315, '2025-02-02');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (686, 980, 477, '2024-12-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (687, 111, 456, '2024-04-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (688, 698, 248, '2024-07-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (689, 605, 99, '2025-01-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (690, 130, 467, '2024-10-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (691, 690, 26, '2024-03-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (692, 169, 299, '2024-05-31');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (693, 986, 115, '2024-03-04');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (694, 12, 201, '2024-09-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (695, 575, 261, '2024-12-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (696, 855, 32, '2024-10-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (697, 454, 98, '2025-02-04');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (698, 881, 271, '2025-02-04');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (699, 73, 382, '2024-09-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (700, 660, 261, '2024-12-04');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (701, 717, 72, '2024-09-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (702, 892, 96, '2024-12-28');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (703, 121, 334, '2024-04-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (704, 695, 143, '2024-06-21');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (705, 132, 228, '2025-01-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (706, 280, 270, '2024-06-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (707, 372, 367, '2024-03-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (708, 201, 287, '2024-03-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (709, 290, 81, '2024-03-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (710, 16, 387, '2024-10-02');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (711, 134, 374, '2024-03-22');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (712, 446, 212, '2024-10-16');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (713, 834, 446, '2024-04-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (714, 514, 419, '2024-06-25');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (715, 220, 192, '2024-07-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (716, 965, 308, '2025-01-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (717, 803, 151, '2024-04-16');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (718, 498, 243, '2024-11-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (719, 608, 281, '2024-05-08');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (720, 992, 240, '2025-01-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (721, 792, 467, '2024-05-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (722, 657, 147, '2025-01-03');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (723, 492, 410, '2024-07-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (724, 515, 498, '2024-12-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (725, 780, 243, '2024-03-16');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (726, 446, 38, '2024-07-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (727, 278, 491, '2024-11-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (728, 964, 100, '2024-08-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (729, 192, 234, '2024-06-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (730, 878, 255, '2024-06-09');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (731, 228, 263, '2024-04-21');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (732, 666, 340, '2024-07-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (733, 656, 400, '2024-07-09');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (734, 144, 261, '2024-05-22');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (735, 532, 272, '2024-05-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (736, 896, 160, '2024-07-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (737, 517, 49, '2024-07-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (738, 112, 362, '2024-11-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (739, 18, 375, '2024-11-21');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (740, 352, 22, '2024-03-28');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (741, 266, 313, '2024-12-29');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (742, 531, 87, '2024-12-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (743, 180, 136, '2024-06-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (744, 133, 398, '2024-09-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (745, 864, 495, '2024-11-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (746, 481, 370, '2024-12-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (747, 230, 147, '2024-09-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (748, 630, 62, '2024-12-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (749, 217, 279, '2024-07-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (750, 579, 86, '2024-05-22');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (751, 35, 135, '2024-09-29');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (752, 924, 412, '2025-01-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (753, 706, 435, '2025-02-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (754, 426, 434, '2024-04-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (755, 109, 52, '2025-01-26');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (756, 356, 143, '2024-07-04');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (757, 895, 98, '2024-04-09');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (758, 515, 32, '2025-02-03');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (759, 720, 74, '2024-06-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (760, 292, 102, '2024-04-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (761, 22, 248, '2024-07-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (762, 426, 23, '2024-08-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (763, 510, 493, '2024-04-30');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (764, 463, 390, '2024-05-02');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (765, 249, 345, '2024-10-22');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (766, 93, 99, '2024-03-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (767, 288, 458, '2025-02-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (768, 645, 471, '2024-11-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (769, 336, 320, '2024-12-03');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (770, 894, 269, '2024-11-28');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (771, 595, 261, '2024-09-09');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (772, 2, 150, '2024-12-21');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (773, 16, 268, '2024-11-16');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (774, 604, 255, '2024-12-02');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (775, 922, 476, '2024-03-22');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (776, 680, 170, '2024-07-28');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (777, 838, 290, '2024-10-08');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (778, 528, 265, '2024-11-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (779, 442, 288, '2024-03-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (780, 802, 234, '2024-10-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (781, 403, 448, '2024-06-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (782, 833, 97, '2024-03-30');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (783, 399, 129, '2024-11-02');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (784, 265, 404, '2024-04-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (785, 567, 207, '2024-12-26');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (786, 854, 8, '2025-01-09');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (787, 573, 177, '2024-06-21');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (788, 537, 15, '2024-09-16');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (789, 524, 416, '2024-05-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (790, 679, 204, '2025-02-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (791, 332, 287, '2024-12-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (792, 277, 22, '2024-06-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (793, 278, 372, '2024-03-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (794, 643, 366, '2024-09-21');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (795, 229, 69, '2024-04-04');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (796, 552, 22, '2024-12-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (797, 546, 175, '2024-06-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (798, 719, 458, '2024-11-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (799, 209, 454, '2024-12-22');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (800, 54, 37, '2024-04-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (801, 288, 111, '2024-11-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (802, 547, 117, '2025-01-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (803, 972, 24, '2024-04-16');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (804, 531, 478, '2024-07-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (805, 269, 314, '2024-10-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (806, 620, 228, '2024-08-21');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (807, 448, 226, '2024-06-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (808, 285, 368, '2024-09-30');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (809, 326, 156, '2024-10-29');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (810, 632, 222, '2024-08-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (811, 409, 213, '2025-01-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (812, 440, 235, '2024-03-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (813, 391, 241, '2024-12-16');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (814, 365, 214, '2024-05-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (815, 933, 95, '2024-03-03');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (816, 707, 313, '2025-01-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (817, 865, 419, '2024-10-28');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (818, 880, 472, '2024-07-31');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (819, 783, 189, '2024-07-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (820, 281, 107, '2024-12-04');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (821, 498, 210, '2024-05-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (822, 557, 101, '2024-09-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (823, 969, 288, '2024-11-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (824, 803, 421, '2024-10-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (825, 108, 266, '2024-08-31');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (826, 268, 495, '2024-06-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (827, 701, 410, '2025-01-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (828, 85, 112, '2024-10-29');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (829, 343, 184, '2024-06-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (830, 541, 210, '2024-10-21');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (831, 629, 216, '2025-01-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (832, 576, 265, '2024-06-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (833, 39, 371, '2024-08-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (834, 11, 127, '2024-05-08');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (835, 465, 136, '2025-01-26');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (836, 415, 132, '2024-04-02');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (837, 761, 231, '2024-05-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (838, 101, 1, '2024-11-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (839, 830, 107, '2024-10-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (840, 134, 204, '2024-08-30');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (841, 736, 257, '2024-03-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (842, 679, 63, '2024-06-09');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (843, 904, 420, '2024-06-22');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (844, 576, 322, '2024-06-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (845, 491, 73, '2024-03-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (846, 688, 132, '2024-10-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (847, 847, 342, '2024-04-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (848, 621, 114, '2024-04-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (849, 383, 173, '2024-11-08');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (850, 335, 477, '2025-02-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (851, 301, 136, '2024-04-29');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (852, 200, 423, '2025-01-22');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (853, 528, 182, '2024-09-08');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (854, 717, 19, '2025-01-25');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (855, 177, 389, '2024-12-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (856, 663, 459, '2024-12-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (857, 427, 376, '2024-07-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (858, 667, 31, '2024-09-09');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (859, 807, 355, '2024-08-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (860, 734, 329, '2025-01-29');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (861, 268, 329, '2024-04-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (862, 334, 281, '2024-05-03');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (863, 823, 315, '2024-03-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (864, 902, 242, '2025-01-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (865, 655, 126, '2024-09-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (866, 375, 30, '2024-05-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (867, 633, 92, '2024-09-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (868, 850, 264, '2024-03-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (869, 712, 95, '2024-03-31');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (870, 230, 500, '2024-12-04');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (871, 718, 311, '2025-01-30');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (872, 850, 33, '2024-06-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (873, 401, 387, '2025-01-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (874, 932, 113, '2024-08-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (875, 437, 477, '2024-05-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (876, 56, 413, '2024-12-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (877, 254, 482, '2025-01-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (878, 666, 16, '2024-12-08');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (879, 64, 134, '2024-07-31');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (880, 282, 320, '2024-05-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (881, 824, 430, '2024-04-09');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (882, 887, 56, '2024-10-02');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (883, 366, 55, '2024-08-25');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (884, 172, 336, '2024-10-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (885, 746, 434, '2024-09-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (886, 874, 476, '2024-03-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (887, 32, 320, '2024-06-09');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (888, 560, 90, '2024-03-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (889, 361, 16, '2024-10-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (890, 628, 489, '2024-10-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (891, 626, 296, '2024-06-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (892, 663, 184, '2024-11-08');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (893, 999, 356, '2024-10-04');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (894, 887, 147, '2024-03-09');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (895, 721, 283, '2024-06-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (896, 407, 225, '2024-03-31');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (897, 449, 468, '2024-10-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (898, 620, 249, '2024-07-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (899, 682, 148, '2024-03-25');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (900, 986, 317, '2024-09-21');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (901, 430, 34, '2024-12-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (902, 423, 210, '2024-10-29');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (903, 456, 324, '2024-12-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (904, 713, 221, '2024-11-04');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (905, 312, 159, '2024-08-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (906, 761, 322, '2024-10-30');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (907, 9, 82, '2024-07-25');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (908, 51, 178, '2024-04-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (909, 756, 138, '2024-07-04');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (910, 832, 342, '2024-04-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (911, 798, 98, '2024-07-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (912, 703, 424, '2024-03-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (913, 343, 216, '2024-12-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (914, 485, 442, '2024-11-02');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (915, 826, 300, '2024-09-09');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (916, 241, 468, '2024-11-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (917, 685, 468, '2024-07-30');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (918, 179, 65, '2024-09-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (919, 513, 495, '2024-08-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (920, 998, 320, '2024-12-22');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (921, 510, 400, '2025-01-03');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (922, 573, 442, '2024-03-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (923, 384, 58, '2024-12-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (924, 545, 282, '2024-12-25');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (925, 594, 228, '2024-06-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (926, 699, 306, '2024-08-03');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (927, 512, 225, '2025-01-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (928, 270, 101, '2025-01-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (929, 904, 32, '2024-03-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (930, 544, 161, '2024-11-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (931, 244, 182, '2024-08-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (932, 336, 183, '2024-03-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (933, 280, 332, '2024-10-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (934, 949, 359, '2024-12-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (935, 83, 90, '2024-07-22');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (936, 799, 201, '2025-01-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (937, 907, 88, '2024-07-30');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (938, 965, 121, '2024-10-22');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (939, 107, 240, '2024-07-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (940, 711, 415, '2024-05-28');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (941, 1000, 307, '2025-01-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (942, 929, 302, '2024-12-21');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (943, 165, 492, '2024-12-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (944, 150, 108, '2024-07-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (945, 622, 41, '2024-09-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (946, 913, 27, '2024-09-22');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (947, 633, 254, '2024-11-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (948, 272, 186, '2024-12-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (949, 361, 148, '2024-06-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (950, 416, 427, '2024-09-03');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (951, 698, 384, '2024-07-04');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (952, 655, 458, '2024-11-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (953, 649, 468, '2024-11-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (954, 845, 102, '2024-12-30');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (955, 746, 357, '2024-05-21');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (956, 941, 70, '2025-01-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (957, 250, 455, '2025-02-21');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (958, 837, 393, '2024-10-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (959, 32, 163, '2024-11-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (960, 96, 143, '2024-05-03');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (961, 786, 479, '2024-10-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (962, 146, 311, '2024-10-26');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (963, 353, 450, '2024-09-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (964, 313, 64, '2024-05-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (965, 80, 271, '2025-02-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (966, 189, 70, '2024-05-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (967, 790, 490, '2025-01-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (968, 528, 256, '2024-10-09');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (969, 187, 253, '2024-11-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (970, 451, 262, '2024-04-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (971, 818, 127, '2024-12-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (972, 238, 268, '2024-11-03');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (973, 365, 450, '2024-11-22');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (974, 228, 49, '2024-05-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (975, 385, 203, '2024-07-21');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (976, 66, 294, '2024-04-30');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (977, 961, 151, '2024-12-25');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (978, 857, 463, '2024-05-16');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (979, 226, 388, '2024-07-25');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (980, 402, 280, '2024-08-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (981, 272, 114, '2024-05-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (982, 276, 427, '2024-07-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (983, 502, 76, '2024-08-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (984, 586, 328, '2024-08-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (985, 757, 41, '2024-04-29');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (986, 268, 117, '2024-05-21');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (987, 394, 401, '2024-03-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (988, 266, 150, '2025-02-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (989, 178, 149, '2024-03-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (990, 508, 213, '2024-08-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (991, 421, 477, '2024-05-21');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (992, 618, 394, '2024-03-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (993, 227, 317, '2024-11-22');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (994, 868, 228, '2025-01-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (995, 982, 81, '2024-08-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (996, 575, 81, '2024-12-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (997, 507, 304, '2024-08-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (998, 552, 394, '2024-09-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (999, 608, 105, '2025-01-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1000, 650, 304, '2024-05-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1001, 242, 169, '2025-02-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1002, 760, 419, '2024-08-04');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1003, 940, 397, '2024-05-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1004, 516, 188, '2024-07-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1005, 810, 405, '2024-07-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1006, 803, 485, '2024-12-04');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1007, 192, 454, '2025-02-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1008, 44, 126, '2024-06-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1009, 482, 294, '2024-12-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1010, 104, 397, '2024-05-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1011, 945, 7, '2024-03-08');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1012, 548, 322, '2024-11-09');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1013, 337, 140, '2024-12-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1014, 112, 396, '2024-06-26');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1015, 966, 30, '2024-07-22');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1016, 447, 70, '2024-03-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1017, 731, 136, '2024-07-31');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1018, 876, 367, '2024-05-30');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1019, 163, 6, '2024-05-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1020, 642, 107, '2024-09-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1021, 257, 24, '2024-10-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1022, 364, 292, '2025-01-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1023, 799, 337, '2024-03-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1024, 953, 268, '2024-09-03');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1025, 894, 182, '2024-04-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1026, 437, 221, '2025-02-21');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1027, 275, 374, '2024-05-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1028, 545, 236, '2025-02-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1029, 280, 388, '2024-12-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1030, 10, 212, '2024-10-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1031, 719, 116, '2024-11-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1032, 47, 164, '2024-07-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1033, 166, 419, '2025-01-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1034, 685, 133, '2025-02-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1035, 637, 45, '2024-12-09');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1036, 437, 489, '2025-01-26');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1037, 991, 499, '2024-03-08');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1038, 791, 351, '2025-02-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1039, 495, 454, '2024-09-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1040, 742, 211, '2024-03-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1041, 484, 21, '2024-10-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1042, 775, 304, '2024-07-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1043, 655, 388, '2024-07-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1044, 396, 130, '2024-04-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1045, 664, 472, '2024-03-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1046, 343, 226, '2024-03-26');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1047, 880, 114, '2024-10-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1048, 133, 243, '2024-08-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1049, 240, 328, '2025-02-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1050, 826, 89, '2024-10-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1051, 229, 188, '2024-09-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1052, 347, 477, '2024-08-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1053, 862, 65, '2024-08-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1054, 727, 130, '2024-08-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1055, 341, 370, '2024-12-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1056, 290, 226, '2025-01-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1057, 137, 106, '2024-03-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1058, 317, 409, '2024-03-30');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1059, 944, 289, '2024-03-22');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1060, 632, 441, '2024-05-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1061, 532, 405, '2024-04-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1062, 802, 459, '2024-09-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1063, 761, 75, '2024-10-26');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1064, 68, 80, '2024-04-26');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1065, 484, 498, '2024-12-26');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1066, 505, 12, '2024-05-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1067, 45, 209, '2024-12-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1068, 292, 297, '2024-05-16');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1069, 369, 24, '2024-03-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1070, 370, 317, '2024-12-09');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1071, 950, 19, '2024-04-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1072, 293, 446, '2024-07-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1073, 767, 349, '2025-02-04');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1074, 937, 109, '2025-02-03');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1075, 63, 37, '2024-07-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1076, 757, 434, '2024-04-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1077, 758, 301, '2024-07-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1078, 634, 131, '2024-08-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1079, 484, 382, '2024-03-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1080, 997, 366, '2025-01-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1081, 426, 362, '2024-11-08');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1082, 815, 384, '2025-02-25');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1083, 470, 437, '2024-12-03');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1084, 119, 271, '2024-12-26');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1085, 310, 351, '2024-03-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1086, 258, 329, '2024-12-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1087, 263, 298, '2024-05-25');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1088, 731, 273, '2024-07-03');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1089, 1, 373, '2024-04-25');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1090, 171, 30, '2025-02-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1091, 243, 272, '2024-06-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1092, 184, 218, '2024-03-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1093, 561, 229, '2024-05-31');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1094, 812, 19, '2025-01-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1095, 771, 376, '2024-10-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1096, 572, 455, '2024-07-31');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1097, 210, 165, '2024-07-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1098, 621, 22, '2024-05-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1099, 530, 255, '2025-02-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1100, 590, 308, '2025-01-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1101, 108, 392, '2024-12-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1102, 636, 473, '2024-08-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1103, 312, 117, '2024-10-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1104, 345, 420, '2025-01-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1105, 236, 149, '2025-02-26');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1106, 616, 152, '2025-01-09');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1107, 911, 379, '2025-02-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1108, 646, 388, '2024-04-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1109, 257, 315, '2024-03-08');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1110, 307, 195, '2024-03-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1111, 277, 159, '2025-02-26');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1112, 219, 121, '2024-05-22');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1113, 852, 274, '2024-07-30');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1114, 334, 424, '2024-09-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1115, 735, 6, '2024-06-09');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1116, 675, 327, '2024-11-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1117, 595, 308, '2024-06-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1118, 859, 30, '2024-03-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1119, 412, 449, '2024-07-31');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1120, 942, 432, '2024-07-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1121, 169, 369, '2025-01-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1122, 939, 354, '2024-03-02');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1123, 451, 186, '2024-04-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1124, 806, 41, '2024-11-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1125, 903, 95, '2024-09-08');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1126, 907, 27, '2024-11-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1127, 899, 20, '2024-10-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1128, 704, 345, '2024-08-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1129, 148, 68, '2025-01-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1130, 492, 450, '2025-02-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1131, 669, 152, '2025-02-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1132, 482, 143, '2024-04-09');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1133, 374, 366, '2024-05-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1134, 394, 93, '2024-07-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1135, 729, 4, '2025-01-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1136, 51, 236, '2024-09-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1137, 541, 201, '2024-09-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1138, 657, 433, '2024-06-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1139, 401, 434, '2024-03-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1140, 719, 34, '2024-03-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1141, 226, 89, '2024-06-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1142, 818, 108, '2024-11-22');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1143, 380, 481, '2024-05-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1144, 740, 151, '2024-06-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1145, 226, 277, '2024-03-29');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1146, 960, 409, '2025-01-02');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1147, 532, 108, '2024-06-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1148, 357, 407, '2025-02-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1149, 839, 150, '2024-08-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1150, 565, 395, '2024-12-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1151, 723, 163, '2024-11-22');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1152, 621, 108, '2024-08-03');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1153, 241, 500, '2024-12-30');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1154, 59, 58, '2025-01-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1155, 601, 57, '2024-10-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1156, 817, 215, '2024-07-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1157, 800, 82, '2024-10-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1158, 591, 483, '2024-05-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1159, 496, 390, '2024-05-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1160, 939, 39, '2024-10-02');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1161, 83, 31, '2024-10-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1162, 240, 94, '2024-11-21');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1163, 856, 51, '2024-10-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1164, 344, 344, '2024-05-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1165, 568, 260, '2024-11-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1166, 533, 338, '2024-07-21');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1167, 47, 102, '2025-02-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1168, 26, 212, '2024-05-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1169, 628, 401, '2024-03-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1170, 410, 371, '2024-10-09');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1171, 405, 471, '2024-08-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1172, 930, 337, '2025-02-26');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1173, 811, 160, '2024-03-09');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1174, 16, 106, '2024-06-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1175, 418, 20, '2025-01-30');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1176, 851, 475, '2025-01-28');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1177, 557, 424, '2024-04-26');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1178, 753, 184, '2024-06-16');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1179, 592, 207, '2024-06-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1180, 897, 118, '2024-05-30');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1181, 363, 164, '2024-10-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1182, 689, 133, '2024-11-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1183, 285, 433, '2024-10-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1184, 263, 289, '2025-02-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1185, 724, 358, '2024-08-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1186, 605, 94, '2025-02-16');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1187, 998, 334, '2024-09-21');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1188, 976, 163, '2024-07-26');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1189, 622, 59, '2024-12-29');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1190, 495, 178, '2024-07-21');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1191, 466, 17, '2024-10-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1192, 419, 241, '2024-04-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1193, 890, 399, '2024-07-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1194, 95, 381, '2024-05-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1195, 571, 232, '2024-09-26');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1196, 890, 16, '2024-04-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1197, 568, 363, '2024-07-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1198, 736, 17, '2024-03-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1199, 457, 136, '2024-03-31');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1200, 400, 212, '2024-06-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1201, 370, 159, '2024-09-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1202, 595, 489, '2024-12-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1203, 897, 416, '2024-03-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1204, 217, 270, '2024-10-30');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1205, 505, 333, '2024-04-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1206, 684, 407, '2024-05-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1207, 194, 112, '2024-03-26');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1208, 983, 195, '2025-01-03');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1209, 296, 406, '2025-02-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1210, 756, 167, '2024-05-16');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1211, 943, 481, '2024-07-03');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1212, 746, 190, '2024-05-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1213, 310, 464, '2024-08-31');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1214, 238, 287, '2024-12-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1215, 957, 239, '2025-01-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1216, 193, 77, '2024-08-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1217, 267, 185, '2024-03-30');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1218, 667, 165, '2024-09-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1219, 472, 277, '2024-04-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1220, 653, 103, '2024-03-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1221, 121, 207, '2024-09-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1222, 996, 6, '2024-12-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1223, 772, 458, '2025-02-21');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1224, 672, 283, '2025-01-26');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1225, 325, 458, '2025-01-29');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1226, 547, 476, '2024-04-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1227, 885, 382, '2024-07-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1228, 176, 140, '2024-08-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1229, 647, 271, '2024-07-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1230, 175, 256, '2024-12-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1231, 171, 437, '2024-12-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1232, 36, 303, '2024-10-08');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1233, 787, 58, '2024-10-08');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1234, 795, 188, '2024-11-09');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1235, 593, 76, '2025-02-26');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1236, 291, 112, '2024-09-22');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1237, 355, 240, '2024-05-03');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1238, 877, 345, '2024-04-21');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1239, 32, 430, '2024-10-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1240, 242, 142, '2024-09-16');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1241, 353, 325, '2025-01-21');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1242, 117, 359, '2024-09-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1243, 287, 254, '2024-06-02');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1244, 259, 111, '2024-07-09');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1245, 14, 479, '2024-08-09');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1246, 608, 416, '2024-12-08');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1247, 52, 413, '2024-12-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1248, 139, 293, '2024-05-26');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1249, 674, 265, '2024-10-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1250, 915, 83, '2024-05-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1251, 981, 79, '2024-12-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1252, 11, 115, '2024-06-25');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1253, 750, 481, '2024-08-09');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1254, 197, 267, '2024-03-02');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1255, 323, 144, '2024-08-09');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1256, 661, 210, '2024-11-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1257, 6, 119, '2024-05-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1258, 138, 164, '2024-06-26');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1259, 102, 196, '2024-11-26');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1260, 748, 326, '2024-08-04');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1261, 206, 36, '2024-05-08');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1262, 155, 59, '2024-03-31');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1263, 812, 415, '2024-09-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1264, 346, 408, '2024-10-26');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1265, 398, 103, '2024-11-21');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1266, 468, 266, '2024-10-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1267, 427, 405, '2024-07-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1268, 82, 149, '2024-10-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1269, 486, 231, '2024-08-04');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1270, 84, 294, '2024-06-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1271, 526, 81, '2024-11-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1272, 247, 23, '2025-02-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1273, 662, 464, '2024-07-02');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1274, 768, 295, '2024-08-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1275, 693, 290, '2025-01-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1276, 466, 119, '2024-05-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1277, 757, 455, '2024-07-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1278, 240, 319, '2024-03-03');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1279, 16, 403, '2024-11-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1280, 742, 323, '2024-10-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1281, 594, 191, '2024-10-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1282, 99, 309, '2024-06-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1283, 982, 293, '2024-11-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1284, 450, 47, '2024-06-02');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1285, 330, 382, '2024-06-16');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1286, 566, 82, '2024-10-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1287, 845, 345, '2024-08-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1288, 852, 50, '2025-02-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1289, 755, 65, '2024-07-30');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1290, 503, 43, '2024-05-03');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1291, 679, 365, '2024-06-16');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1292, 462, 184, '2024-08-16');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1293, 383, 305, '2024-08-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1294, 932, 214, '2024-12-16');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1295, 461, 415, '2024-09-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1296, 764, 114, '2024-07-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1297, 265, 260, '2025-01-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1298, 801, 320, '2024-09-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1299, 612, 82, '2024-12-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1300, 969, 236, '2024-05-21');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1301, 610, 391, '2024-05-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1302, 643, 381, '2024-04-30');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1303, 760, 32, '2024-11-28');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1304, 582, 287, '2024-03-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1305, 382, 225, '2024-08-29');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1306, 907, 154, '2024-04-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1307, 550, 481, '2025-02-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1308, 142, 77, '2025-01-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1309, 271, 165, '2024-09-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1310, 39, 316, '2024-03-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1311, 560, 445, '2024-12-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1312, 315, 384, '2024-10-09');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1313, 313, 248, '2024-10-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1314, 177, 355, '2025-01-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1315, 624, 345, '2024-11-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1316, 201, 436, '2024-05-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1317, 184, 371, '2024-05-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1318, 352, 151, '2024-12-26');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1319, 341, 156, '2024-07-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1320, 962, 236, '2024-11-29');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1321, 634, 454, '2024-12-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1322, 847, 68, '2024-12-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1323, 687, 201, '2025-02-21');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1324, 548, 241, '2024-06-30');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1325, 637, 244, '2024-08-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1326, 702, 332, '2024-06-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1327, 794, 45, '2024-09-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1328, 249, 105, '2025-01-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1329, 265, 369, '2024-07-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1330, 378, 85, '2025-02-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1331, 264, 323, '2024-07-30');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1332, 988, 161, '2024-10-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1333, 547, 190, '2024-11-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1334, 918, 206, '2024-07-04');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1335, 819, 66, '2024-03-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1336, 287, 102, '2024-10-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1337, 337, 107, '2024-05-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1338, 520, 113, '2024-03-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1339, 326, 481, '2024-07-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1340, 794, 53, '2024-06-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1341, 901, 52, '2025-01-22');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1342, 685, 334, '2024-07-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1343, 325, 18, '2024-05-16');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1344, 900, 254, '2024-09-22');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1345, 78, 188, '2024-09-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1346, 795, 366, '2024-04-21');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1347, 588, 497, '2025-02-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1348, 879, 417, '2024-07-04');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1349, 8, 479, '2024-11-26');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1350, 436, 490, '2024-10-02');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1351, 720, 336, '2024-03-30');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1352, 55, 212, '2025-02-09');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1353, 746, 498, '2024-06-09');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1354, 171, 180, '2024-12-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1355, 243, 10, '2025-01-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1356, 861, 234, '2024-07-21');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1357, 588, 139, '2024-07-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1358, 66, 428, '2024-08-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1359, 506, 430, '2025-03-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1360, 262, 300, '2024-09-29');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1361, 373, 400, '2024-09-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1362, 674, 191, '2024-07-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1363, 722, 378, '2024-11-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1364, 105, 264, '2024-06-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1365, 967, 382, '2024-04-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1366, 160, 24, '2024-10-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1367, 229, 28, '2024-10-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1368, 718, 473, '2024-06-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1369, 97, 205, '2025-01-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1370, 932, 456, '2024-05-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1371, 630, 459, '2024-09-09');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1372, 420, 134, '2024-12-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1373, 475, 245, '2025-02-02');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1374, 599, 66, '2024-03-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1375, 821, 449, '2024-10-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1376, 707, 230, '2025-02-16');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1377, 754, 16, '2024-08-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1378, 18, 396, '2024-03-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1379, 841, 190, '2024-07-08');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1380, 697, 23, '2024-12-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1381, 131, 331, '2025-01-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1382, 890, 360, '2024-05-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1383, 461, 33, '2024-04-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1384, 792, 452, '2024-07-22');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1385, 674, 307, '2024-05-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1386, 911, 62, '2024-11-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1387, 871, 276, '2024-04-28');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1388, 890, 390, '2025-01-09');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1389, 260, 269, '2024-05-29');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1390, 376, 167, '2024-08-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1391, 10, 410, '2024-11-28');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1392, 572, 111, '2024-12-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1393, 187, 465, '2024-11-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1394, 259, 111, '2024-06-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1395, 791, 109, '2025-01-30');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1396, 162, 15, '2024-08-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1397, 350, 14, '2024-11-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1398, 106, 286, '2025-01-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1399, 879, 394, '2024-08-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1400, 216, 292, '2024-03-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1401, 572, 323, '2024-08-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1402, 196, 253, '2025-02-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1403, 33, 45, '2024-07-30');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1404, 400, 264, '2024-06-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1405, 744, 120, '2024-09-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1406, 232, 142, '2024-07-04');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1407, 524, 128, '2025-01-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1408, 362, 259, '2024-09-09');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1409, 739, 226, '2024-03-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1410, 719, 187, '2024-07-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1411, 504, 259, '2024-07-30');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1412, 675, 259, '2024-12-03');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1413, 967, 161, '2024-09-02');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1414, 818, 441, '2025-01-28');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1415, 830, 406, '2024-04-08');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1416, 52, 266, '2025-01-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1417, 668, 359, '2024-03-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1418, 836, 306, '2024-04-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1419, 610, 336, '2024-05-08');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1420, 695, 294, '2024-07-21');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1421, 417, 311, '2024-04-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1422, 740, 356, '2024-08-08');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1423, 874, 123, '2024-04-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1424, 500, 181, '2024-08-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1425, 847, 88, '2024-09-22');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1426, 9, 449, '2025-02-21');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1427, 671, 222, '2024-11-03');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1428, 614, 260, '2024-08-16');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1429, 653, 144, '2024-06-02');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1430, 736, 79, '2024-07-09');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1431, 245, 478, '2024-04-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1432, 913, 476, '2024-08-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1433, 239, 311, '2024-09-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1434, 164, 95, '2024-11-21');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1435, 442, 454, '2024-12-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1436, 353, 438, '2024-09-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1437, 459, 195, '2024-11-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1438, 46, 380, '2024-12-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1439, 96, 114, '2024-10-16');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1440, 314, 248, '2024-12-25');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1441, 111, 85, '2025-02-16');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1442, 487, 81, '2024-04-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1443, 646, 65, '2024-05-04');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1444, 165, 446, '2024-04-21');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1445, 530, 169, '2024-12-04');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1446, 201, 445, '2024-05-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1447, 970, 94, '2024-11-08');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1448, 367, 195, '2025-01-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1449, 570, 383, '2024-11-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1450, 205, 454, '2024-05-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1451, 260, 55, '2024-05-22');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1452, 534, 208, '2024-08-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1453, 76, 195, '2024-12-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1454, 180, 420, '2024-07-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1455, 821, 246, '2024-03-08');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1456, 178, 261, '2025-02-09');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1457, 532, 77, '2025-02-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1458, 776, 193, '2024-11-16');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1459, 72, 32, '2024-05-28');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1460, 44, 80, '2025-01-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1461, 168, 170, '2024-03-03');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1462, 996, 19, '2024-07-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1463, 2, 220, '2024-03-04');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1464, 470, 342, '2025-02-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1465, 418, 217, '2024-03-25');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1466, 329, 228, '2024-03-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1467, 1, 424, '2024-12-03');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1468, 524, 258, '2024-06-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1469, 61, 367, '2025-02-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1470, 938, 293, '2025-01-21');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1471, 867, 332, '2024-08-21');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1472, 665, 252, '2024-07-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1473, 188, 418, '2024-10-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1474, 776, 354, '2024-08-29');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1475, 827, 400, '2024-07-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1476, 703, 59, '2024-08-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1477, 920, 28, '2024-08-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1478, 464, 235, '2024-12-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1479, 513, 342, '2024-05-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1480, 953, 202, '2024-11-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1481, 752, 472, '2024-12-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1482, 765, 418, '2024-04-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1483, 93, 491, '2024-08-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1484, 336, 485, '2024-07-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1485, 850, 414, '2024-07-08');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1486, 539, 359, '2025-01-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1487, 252, 120, '2024-12-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1488, 471, 123, '2024-04-22');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1489, 499, 207, '2024-07-04');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1490, 845, 312, '2024-05-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1491, 363, 473, '2024-10-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1492, 278, 343, '2024-12-25');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1493, 44, 347, '2024-11-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1494, 986, 252, '2024-03-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1495, 677, 40, '2024-04-02');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1496, 383, 129, '2024-10-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1497, 723, 339, '2024-07-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1498, 437, 108, '2024-03-04');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1499, 221, 55, '2024-03-28');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1500, 769, 213, '2025-02-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1501, 431, 28, '2024-06-04');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1502, 936, 320, '2024-10-25');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1503, 616, 411, '2024-11-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1504, 746, 359, '2024-05-22');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1505, 758, 273, '2024-05-09');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1506, 36, 159, '2025-02-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1507, 777, 20, '2024-05-29');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1508, 622, 133, '2025-02-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1509, 344, 277, '2024-09-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1510, 201, 69, '2024-07-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1511, 582, 337, '2024-06-02');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1512, 561, 369, '2024-11-25');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1513, 723, 19, '2024-05-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1514, 800, 375, '2025-01-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1515, 117, 95, '2024-03-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1516, 706, 356, '2024-06-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1517, 670, 111, '2024-09-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1518, 770, 287, '2024-03-25');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1519, 330, 267, '2024-03-28');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1520, 662, 214, '2024-10-02');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1521, 987, 460, '2024-11-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1522, 873, 68, '2024-10-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1523, 123, 236, '2024-11-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1524, 683, 295, '2024-09-21');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1525, 402, 92, '2024-09-08');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1526, 583, 193, '2024-12-25');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1527, 723, 126, '2025-02-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1528, 336, 135, '2025-01-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1529, 355, 293, '2024-05-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1530, 605, 109, '2024-07-09');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1531, 561, 320, '2024-07-31');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1532, 954, 260, '2024-06-22');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1533, 283, 207, '2024-05-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1534, 110, 434, '2024-04-29');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1535, 861, 493, '2025-02-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1536, 707, 337, '2024-09-03');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1537, 735, 211, '2025-02-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1538, 440, 166, '2025-03-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1539, 551, 92, '2024-11-28');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1540, 872, 436, '2024-11-16');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1541, 828, 491, '2024-10-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1542, 241, 334, '2024-12-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1543, 517, 433, '2025-01-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1544, 62, 10, '2024-12-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1545, 237, 264, '2024-12-09');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1546, 775, 475, '2024-07-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1547, 329, 235, '2024-03-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1548, 389, 489, '2024-05-02');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1549, 328, 290, '2024-05-29');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1550, 752, 10, '2024-12-31');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1551, 966, 212, '2024-09-16');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1552, 15, 459, '2024-06-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1553, 345, 306, '2024-07-28');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1554, 686, 66, '2024-09-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1555, 124, 322, '2024-07-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1556, 974, 473, '2024-08-02');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1557, 153, 468, '2024-03-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1558, 395, 313, '2025-01-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1559, 744, 279, '2024-09-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1560, 255, 364, '2024-09-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1561, 520, 112, '2024-11-29');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1562, 814, 422, '2024-11-28');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1563, 485, 428, '2024-09-29');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1564, 89, 117, '2024-08-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1565, 454, 347, '2024-10-02');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1566, 573, 411, '2024-04-25');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1567, 261, 368, '2024-04-03');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1568, 779, 233, '2024-06-26');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1569, 87, 345, '2025-01-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1570, 637, 409, '2024-10-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1571, 41, 187, '2025-02-02');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1572, 195, 381, '2024-05-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1573, 173, 422, '2025-01-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1574, 233, 56, '2024-12-31');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1575, 605, 126, '2024-12-04');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1576, 791, 435, '2024-06-21');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1577, 607, 257, '2024-10-28');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1578, 493, 94, '2024-06-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1579, 607, 269, '2024-11-02');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1580, 980, 107, '2025-02-02');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1581, 199, 495, '2025-01-16');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1582, 663, 311, '2025-02-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1583, 632, 229, '2025-02-22');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1584, 113, 184, '2024-11-02');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1585, 582, 276, '2024-04-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1586, 375, 14, '2024-09-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1587, 656, 397, '2024-10-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1588, 712, 53, '2025-01-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1589, 420, 252, '2024-09-30');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1590, 569, 203, '2025-02-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1591, 419, 70, '2024-07-31');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1592, 62, 101, '2024-12-31');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1593, 473, 39, '2025-02-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1594, 16, 145, '2024-04-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1595, 116, 67, '2024-08-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1596, 556, 277, '2024-08-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1597, 755, 330, '2025-02-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1598, 10, 477, '2024-09-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1599, 665, 114, '2024-07-30');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1600, 690, 99, '2024-11-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1601, 863, 294, '2024-03-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1602, 371, 159, '2024-08-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1603, 30, 464, '2025-02-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1604, 208, 124, '2024-09-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1605, 621, 452, '2024-04-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1606, 282, 301, '2024-12-31');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1607, 789, 218, '2024-04-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1608, 479, 225, '2024-10-16');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1609, 459, 455, '2024-12-22');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1610, 319, 31, '2024-03-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1611, 934, 167, '2024-12-16');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1612, 488, 255, '2024-11-02');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1613, 625, 282, '2024-04-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1614, 407, 80, '2025-01-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1615, 373, 256, '2024-11-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1616, 901, 289, '2024-11-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1617, 80, 319, '2024-10-08');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1618, 258, 116, '2024-12-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1619, 798, 407, '2024-10-28');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1620, 331, 363, '2024-03-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1621, 291, 15, '2024-08-29');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1622, 306, 263, '2024-06-30');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1623, 209, 340, '2024-05-26');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1624, 380, 404, '2025-01-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1625, 359, 128, '2024-07-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1626, 96, 357, '2025-01-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1627, 996, 356, '2024-03-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1628, 69, 251, '2024-06-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1629, 513, 34, '2024-12-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1630, 794, 426, '2025-01-04');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1631, 263, 437, '2024-11-16');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1632, 458, 338, '2024-04-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1633, 7, 179, '2024-05-02');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1634, 611, 337, '2024-08-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1635, 24, 34, '2024-04-22');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1636, 250, 362, '2024-06-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1637, 372, 165, '2024-06-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1638, 186, 73, '2024-04-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1639, 332, 295, '2025-02-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1640, 799, 54, '2024-10-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1641, 309, 182, '2024-11-09');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1642, 644, 294, '2024-11-26');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1643, 302, 461, '2024-11-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1644, 235, 214, '2024-08-28');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1645, 25, 101, '2024-09-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1646, 428, 4, '2025-02-21');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1647, 568, 164, '2024-03-03');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1648, 696, 265, '2024-07-04');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1649, 186, 252, '2025-02-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1650, 216, 250, '2024-06-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1651, 270, 136, '2025-01-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1652, 635, 278, '2024-07-30');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1653, 169, 358, '2024-08-29');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1654, 935, 391, '2024-12-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1655, 306, 11, '2024-12-28');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1656, 691, 202, '2024-07-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1657, 285, 236, '2024-12-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1658, 987, 95, '2024-11-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1659, 693, 375, '2024-08-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1660, 217, 78, '2024-05-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1661, 131, 387, '2024-09-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1662, 68, 191, '2025-02-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1663, 986, 48, '2025-01-09');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1664, 546, 140, '2024-11-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1665, 354, 4, '2024-03-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1666, 475, 176, '2024-07-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1667, 794, 390, '2024-09-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1668, 686, 111, '2024-05-16');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1669, 513, 117, '2024-10-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1670, 625, 327, '2025-01-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1671, 234, 59, '2024-11-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1672, 979, 27, '2024-03-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1673, 189, 359, '2024-07-30');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1674, 708, 398, '2024-05-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1675, 956, 376, '2024-11-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1676, 56, 133, '2024-03-03');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1677, 989, 273, '2024-10-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1678, 255, 61, '2024-08-03');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1679, 904, 471, '2024-06-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1680, 854, 270, '2024-07-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1681, 530, 449, '2024-08-03');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1682, 808, 247, '2024-07-09');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1683, 787, 201, '2024-10-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1684, 739, 228, '2024-09-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1685, 106, 37, '2025-02-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1686, 610, 488, '2025-01-28');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1687, 748, 452, '2024-10-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1688, 152, 305, '2024-10-26');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1689, 230, 477, '2024-08-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1690, 271, 10, '2024-05-03');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1691, 406, 347, '2024-11-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1692, 910, 281, '2024-06-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1693, 740, 56, '2025-02-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1694, 763, 279, '2024-06-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1695, 643, 181, '2024-08-03');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1696, 461, 128, '2024-06-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1697, 8, 227, '2024-04-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1698, 951, 343, '2024-11-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1699, 982, 420, '2024-12-03');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1700, 924, 268, '2024-05-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1701, 1000, 102, '2024-07-30');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1702, 913, 326, '2024-07-02');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1703, 848, 130, '2024-08-31');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1704, 171, 158, '2024-06-08');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1705, 599, 237, '2024-12-28');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1706, 165, 208, '2025-02-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1707, 393, 336, '2024-07-21');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1708, 956, 204, '2024-11-09');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1709, 53, 219, '2024-09-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1710, 606, 213, '2025-01-16');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1711, 941, 157, '2024-03-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1712, 944, 107, '2024-06-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1713, 607, 240, '2024-07-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1714, 702, 358, '2024-05-26');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1715, 973, 221, '2024-11-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1716, 65, 9, '2024-10-16');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1717, 5, 148, '2024-03-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1718, 369, 34, '2024-12-21');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1719, 693, 189, '2024-04-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1720, 184, 83, '2024-07-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1721, 169, 444, '2024-10-31');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1722, 357, 388, '2024-04-09');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1723, 501, 136, '2024-12-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1724, 173, 431, '2024-04-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1725, 110, 430, '2025-01-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1726, 227, 54, '2025-01-26');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1727, 97, 164, '2024-09-25');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1728, 510, 333, '2024-08-31');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1729, 997, 213, '2025-01-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1730, 763, 104, '2024-09-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1731, 977, 145, '2024-10-25');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1732, 46, 272, '2024-12-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1733, 893, 119, '2024-06-16');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1734, 386, 103, '2025-01-26');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1735, 751, 283, '2024-11-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1736, 542, 110, '2024-07-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1737, 372, 350, '2024-09-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1738, 841, 12, '2024-09-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1739, 925, 330, '2025-01-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1740, 929, 339, '2025-01-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1741, 830, 278, '2025-01-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1742, 83, 307, '2025-01-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1743, 960, 194, '2024-12-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1744, 360, 130, '2024-06-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1745, 788, 217, '2024-09-28');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1746, 248, 247, '2024-08-21');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1747, 754, 236, '2025-02-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1748, 185, 158, '2024-10-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1749, 147, 57, '2024-03-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1750, 451, 479, '2024-11-08');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1751, 160, 7, '2024-03-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1752, 150, 393, '2024-05-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1753, 1, 363, '2024-04-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1754, 394, 283, '2024-04-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1755, 798, 395, '2024-11-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1756, 867, 424, '2024-05-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1757, 753, 60, '2024-12-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1758, 483, 432, '2024-04-22');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1759, 965, 475, '2024-08-21');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1760, 450, 354, '2024-11-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1761, 774, 38, '2024-03-29');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1762, 107, 4, '2024-08-04');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1763, 504, 8, '2024-04-16');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1764, 495, 244, '2024-06-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1765, 447, 417, '2024-10-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1766, 623, 445, '2024-08-25');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1767, 203, 307, '2024-03-09');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1768, 133, 152, '2024-04-28');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1769, 112, 143, '2024-04-29');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1770, 150, 444, '2024-11-02');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1771, 803, 409, '2024-05-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1772, 7, 113, '2024-06-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1773, 874, 468, '2024-12-03');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1774, 337, 254, '2025-02-08');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1775, 348, 45, '2024-03-29');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1776, 458, 382, '2024-03-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1777, 859, 307, '2024-05-09');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1778, 939, 470, '2024-05-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1779, 744, 398, '2025-01-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1780, 449, 377, '2024-11-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1781, 909, 296, '2024-07-25');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1782, 951, 456, '2024-11-30');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1783, 807, 194, '2024-08-30');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1784, 135, 57, '2024-09-21');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1785, 73, 209, '2024-07-22');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1786, 62, 3, '2024-04-16');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1787, 28, 419, '2024-07-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1788, 635, 202, '2024-10-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1789, 984, 445, '2024-12-22');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1790, 881, 231, '2024-08-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1791, 862, 194, '2024-11-29');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1792, 456, 434, '2024-03-22');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1793, 413, 461, '2024-07-21');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1794, 387, 76, '2024-07-31');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1795, 598, 346, '2025-02-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1796, 134, 274, '2025-01-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1797, 81, 144, '2024-06-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1798, 642, 63, '2025-02-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1799, 247, 139, '2024-03-21');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1800, 974, 176, '2024-09-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1801, 27, 312, '2024-10-22');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1802, 189, 154, '2024-10-09');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1803, 648, 248, '2024-06-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1804, 533, 270, '2024-07-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1805, 467, 15, '2025-01-30');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1806, 625, 500, '2025-02-09');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1807, 568, 43, '2024-08-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1808, 501, 231, '2024-07-22');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1809, 373, 376, '2024-04-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1810, 123, 414, '2024-04-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1811, 160, 56, '2024-03-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1812, 281, 437, '2024-12-31');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1813, 789, 184, '2025-01-30');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1814, 280, 306, '2024-05-25');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1815, 305, 416, '2024-09-08');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1816, 445, 484, '2024-06-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1817, 367, 134, '2024-06-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1818, 591, 15, '2024-03-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1819, 390, 38, '2024-11-03');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1820, 319, 282, '2025-01-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1821, 39, 15, '2024-12-22');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1822, 296, 134, '2024-05-04');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1823, 686, 390, '2024-08-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1824, 163, 146, '2024-05-31');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1825, 280, 447, '2024-03-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1826, 699, 317, '2024-07-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1827, 526, 39, '2024-09-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1828, 103, 366, '2024-06-26');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1829, 22, 15, '2024-11-28');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1830, 119, 491, '2024-08-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1831, 860, 220, '2025-01-08');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1832, 174, 218, '2024-10-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1833, 137, 178, '2025-01-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1834, 752, 275, '2024-06-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1835, 961, 75, '2024-03-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1836, 599, 475, '2024-04-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1837, 808, 63, '2024-04-28');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1838, 935, 474, '2024-12-03');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1839, 661, 347, '2024-03-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1840, 204, 28, '2024-11-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1841, 769, 478, '2024-11-08');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1842, 38, 182, '2024-04-02');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1843, 623, 402, '2024-09-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1844, 854, 199, '2024-10-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1845, 912, 156, '2025-01-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1846, 32, 298, '2024-05-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1847, 304, 402, '2024-12-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1848, 266, 100, '2024-07-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1849, 466, 260, '2024-12-31');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1850, 352, 344, '2024-05-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1851, 616, 466, '2024-09-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1852, 263, 211, '2025-01-30');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1853, 9, 267, '2024-10-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1854, 93, 493, '2024-06-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1855, 880, 201, '2024-04-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1856, 403, 367, '2024-05-16');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1857, 102, 208, '2024-09-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1858, 367, 410, '2024-09-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1859, 441, 390, '2024-05-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1860, 49, 56, '2024-05-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1861, 653, 430, '2024-05-22');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1862, 443, 104, '2025-02-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1863, 343, 165, '2024-06-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1864, 361, 220, '2024-03-21');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1865, 217, 31, '2024-08-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1866, 278, 104, '2024-09-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1867, 261, 180, '2024-07-26');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1868, 253, 241, '2025-02-03');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1869, 661, 228, '2024-09-30');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1870, 257, 288, '2025-01-29');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1871, 166, 245, '2024-11-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1872, 229, 146, '2024-10-16');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1873, 389, 118, '2024-03-29');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1874, 442, 260, '2024-11-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1875, 970, 423, '2024-10-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1876, 218, 438, '2025-02-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1877, 661, 32, '2025-02-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1878, 22, 360, '2025-02-03');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1879, 662, 152, '2024-12-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1880, 650, 175, '2024-12-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1881, 500, 6, '2024-08-29');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1882, 420, 210, '2024-10-09');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1883, 969, 398, '2024-04-28');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1884, 762, 283, '2024-08-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1885, 755, 309, '2024-03-08');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1886, 72, 215, '2025-01-03');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1887, 970, 65, '2024-11-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1888, 224, 154, '2024-03-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1889, 772, 420, '2024-10-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1890, 129, 23, '2025-01-31');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1891, 518, 20, '2025-03-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1892, 201, 475, '2024-12-29');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1893, 632, 84, '2024-04-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1894, 342, 21, '2024-08-25');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1895, 734, 99, '2024-12-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1896, 176, 290, '2024-08-04');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1897, 107, 160, '2024-06-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1898, 922, 279, '2024-10-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1899, 73, 233, '2024-09-29');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1900, 163, 126, '2024-04-25');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1901, 673, 282, '2024-10-21');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1902, 306, 351, '2024-10-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1903, 233, 96, '2024-08-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1904, 368, 287, '2024-10-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1905, 750, 133, '2025-02-26');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1906, 414, 244, '2024-10-08');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1907, 518, 57, '2024-08-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1908, 157, 269, '2024-10-22');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1909, 146, 389, '2024-05-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1910, 960, 14, '2024-09-16');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1911, 707, 98, '2024-08-02');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1912, 771, 444, '2024-11-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1913, 884, 463, '2024-10-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1914, 430, 171, '2024-03-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1915, 731, 329, '2024-09-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1916, 795, 289, '2024-05-25');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1917, 373, 43, '2024-04-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1918, 513, 97, '2024-09-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1919, 160, 131, '2024-12-02');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1920, 557, 204, '2024-11-30');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1921, 366, 430, '2024-10-08');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1922, 459, 78, '2024-11-17');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1923, 47, 461, '2024-08-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1924, 772, 242, '2024-11-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1925, 421, 177, '2024-07-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1926, 811, 27, '2024-11-08');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1927, 420, 232, '2024-07-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1928, 209, 258, '2025-01-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1929, 223, 344, '2025-02-26');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1930, 255, 106, '2024-05-21');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1931, 596, 78, '2024-12-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1932, 298, 178, '2024-06-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1933, 858, 83, '2024-04-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1934, 303, 337, '2024-03-04');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1935, 320, 38, '2025-01-25');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1936, 659, 314, '2024-12-29');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1937, 291, 375, '2024-09-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1938, 980, 239, '2024-12-25');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1939, 882, 491, '2024-06-15');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1940, 487, 195, '2024-06-21');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1941, 741, 208, '2024-11-28');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1942, 841, 286, '2024-10-08');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1943, 906, 119, '2024-12-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1944, 997, 391, '2024-03-22');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1945, 498, 326, '2025-01-30');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1946, 788, 23, '2024-09-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1947, 442, 456, '2024-03-25');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1948, 622, 500, '2025-01-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1949, 1000, 59, '2024-04-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1950, 285, 477, '2025-02-23');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1951, 563, 426, '2024-08-18');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1952, 364, 19, '2024-03-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1953, 888, 301, '2024-11-08');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1954, 868, 346, '2024-03-09');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1955, 116, 228, '2024-03-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1956, 512, 118, '2024-05-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1957, 772, 431, '2024-05-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1958, 628, 207, '2024-06-14');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1959, 88, 157, '2024-06-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1960, 979, 259, '2024-10-02');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1961, 14, 75, '2024-08-22');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1962, 523, 289, '2025-02-25');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1963, 563, 203, '2024-04-05');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1964, 291, 495, '2024-10-02');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1965, 124, 166, '2025-02-28');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1966, 473, 478, '2024-05-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1967, 302, 453, '2024-03-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1968, 701, 489, '2024-11-13');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1969, 26, 81, '2024-04-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1970, 758, 68, '2024-09-21');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1971, 299, 267, '2024-03-30');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1972, 195, 384, '2025-01-29');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1973, 194, 21, '2024-04-25');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1974, 496, 205, '2024-10-04');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1975, 755, 396, '2024-11-22');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1976, 126, 28, '2024-12-10');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1977, 729, 450, '2024-11-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1978, 78, 25, '2025-02-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1979, 75, 256, '2024-10-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1980, 908, 284, '2024-05-27');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1981, 346, 411, '2024-11-02');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1982, 633, 10, '2024-08-11');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1983, 786, 181, '2024-10-16');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1984, 266, 73, '2024-04-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1985, 841, 320, '2024-11-06');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1986, 11, 272, '2024-10-04');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1987, 272, 89, '2024-05-19');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1988, 943, 317, '2024-10-26');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1989, 678, 419, '2025-02-09');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1990, 469, 295, '2024-08-12');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1991, 838, 39, '2024-07-30');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1992, 903, 111, '2024-11-01');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1993, 788, 392, '2024-07-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1994, 559, 327, '2024-09-20');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1995, 130, 363, '2024-10-07');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1996, 159, 447, '2024-08-16');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1997, 533, 15, '2024-09-26');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1998, 370, 408, '2025-02-22');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (1999, 100, 27, '2024-10-24');
INSERT INTO Tickets (id, passenger_id, service_id, travel_date) VALUES (2000, 785, 71, '2024-06-02');
SET IDENTITY_INSERT Tickets OFF;

-- Insertar inspecciones de buses
SET IDENTITY_INSERT Inspections ON;
INSERT INTO Inspections (id, bus_id, [date], diagnosis) VALUES
(1, 1, '2024-03-17', 'Luces delanteras defectuosas'),
(2, 2, '2024-10-31', 'Radiador con fugas'),
(3, 3, '2024-01-27', 'Ruido en el motor'),
(4, 4, '2024-12-10', 'Radiador con fugas'),
(5, 5, '2024-12-17', 'Sin novedades'),
(6, 6, '2024-05-26', 'Sistema eléctrico revisado'),
(7, 7, '2024-05-12', 'Luces delanteras defectuosas'),
(8, 8, '2024-03-24', 'Dirección con holgura'),
(9, 9, '2024-04-29', 'Aceite bajo'),
(10, 10, '2024-01-16', 'Batería en mal estado'),
(11, 11, '2024-12-17', 'Aceite bajo'),
(12, 12, '2024-01-11', 'Radiador con fugas'),
(13, 13, '2024-07-25', 'Luces delanteras defectuosas'),
(14, 14, '2024-12-25', 'Aceite bajo'),
(15, 15, '2024-11-16', 'Luces delanteras defectuosas'),
(16, 16, '2024-05-13', 'Cambio de aceite realizado'),
(17, 17, '2024-10-05', 'Ruido en el motor'),
(18, 18, '2024-12-06', 'Ruido en el motor'),
(19, 19, '2024-06-29', 'Dirección con holgura'),
(20, 20, '2024-07-02', 'Sistema eléctrico revisado'),
(21, 21, '2024-08-29', 'Revisión del sistema de suspensión'),
(22, 22, '2024-12-06', 'Frenos desgastados'),
(23, 23, '2024-09-15', 'Dirección con holgura'),
(24, 24, '2024-12-26', 'Filtro de aire sucio'),
(25, 25, '2024-05-14', 'Neumáticos en mal estado'),
(26, 26, '2024-11-27', 'Sin novedades'),
(27, 27, '2024-05-28', 'Filtro de aire sucio'),
(28, 28, '2024-02-23', 'Neumáticos en mal estado'),
(29, 29, '2024-11-16', 'Aceite bajo'),
(30, 30, '2024-05-23', 'Frenos desgastados'),
(31, 31, '2024-01-13', 'Filtro de aire sucio'),
(32, 32, '2024-04-10', 'Filtro de aire sucio'),
(33, 33, '2024-10-30', 'Revisión de inyectores'),
(34, 34, '2024-05-31', 'Neumáticos en mal estado'),
(35, 35, '2024-01-31', 'Luces delanteras defectuosas'),
(36, 36, '2024-04-30', 'Ruido en el motor'),
(37, 37, '2024-04-15', 'Aceite bajo'),
(38, 38, '2024-03-29', 'Sistema de escape con corrosión'),
(39, 39, '2024-09-24', 'Sistema de escape con corrosión'),
(40, 40, '2024-07-31', 'Cambio de aceite realizado'),
(41, 41, '2024-11-10', 'Radiador con fugas'),
(42, 42, '2024-09-08', 'Sistema de escape con corrosión'),
(43, 43, '2024-10-23', 'Ruido en el motor'),
(44, 44, '2024-03-28', 'Dirección con holgura'),
(45, 45, '2024-07-04', 'Cambio de aceite realizado'),
(46, 46, '2024-02-20', 'Batería en mal estado'),
(47, 47, '2024-01-02', 'Sin novedades'),
(48, 48, '2024-05-02', 'Ruido en el motor'),
(49, 49, '2024-01-02', 'Sistema de escape con corrosión'),
(50, 50, '2024-08-10', 'Sistema eléctrico revisado'),
(51, 51, '2024-01-22', 'Sistema eléctrico revisado'),
(52, 52, '2024-05-27', 'Cambio de aceite realizado'),
(53, 53, '2024-08-01', 'Frenos desgastados'),
(54, 54, '2024-02-29', 'Sistema eléctrico revisado'),
(55, 55, '2024-04-23', 'Sin novedades'),
(56, 56, '2024-04-30', 'Filtro de aire sucio'),
(57, 57, '2024-09-17', 'Frenos desgastados'),
(58, 58, '2024-07-02', 'Ruido en el motor'),
(59, 59, '2024-10-18', 'Luces delanteras defectuosas'),
(60, 60, '2024-10-20', 'Frenos desgastados'),
(61, 61, '2024-06-29', 'Dirección con holgura'),
(62, 62, '2024-02-11', 'Aceite bajo'),
(63, 63, '2024-07-22', 'Sistema eléctrico revisado'),
(64, 64, '2024-10-07', 'Revisión del sistema de suspensión'),
(65, 65, '2024-03-14', 'Sistema de escape con corrosión'),
(66, 66, '2024-07-30', 'Sistema de escape con corrosión'),
(67, 67, '2024-12-21', 'Luces delanteras defectuosas'),
(68, 68, '2024-07-10', 'Cambio de aceite realizado'),
(69, 69, '2024-08-22', 'Sin novedades'),
(70, 70, '2024-04-26', 'Sin novedades'),
(71, 71, '2024-04-14', 'Cambio de aceite realizado'),
(72, 72, '2024-11-30', 'Neumáticos en mal estado'),
(73, 73, '2024-12-25', 'Revisión del sistema de suspensión'),
(74, 74, '2024-12-22', 'Filtro de aire sucio'),
(75, 75, '2024-08-31', 'Frenos desgastados'),
(76, 76, '2024-08-06', 'Sin novedades'),
(77, 77, '2024-10-22', 'Ruido en el motor'),
(78, 78, '2024-09-28', 'Batería en mal estado'),
(79, 79, '2024-01-08', 'Sin novedades'),
(80, 80, '2024-03-30', 'Frenos desgastados'),
(81, 81, '2024-07-08', 'Ruido en el motor'),
(82, 82, '2024-01-17', 'Filtro de aire sucio'),
(83, 83, '2024-08-26', 'Radiador con fugas'),
(84, 84, '2024-06-26', 'Radiador con fugas'),
(85, 85, '2024-10-22', 'Luces delanteras defectuosas'),
(86, 86, '2024-07-31', 'Neumáticos en mal estado'),
(87, 87, '2024-08-23', 'Neumáticos en mal estado'),
(88, 88, '2024-08-13', 'Sin novedades'),
(89, 89, '2024-08-16', 'Sistema eléctrico revisado'),
(90, 90, '2024-08-22', 'Cambio de aceite realizado'),
(91, 91, '2024-04-24', 'Ruido en el motor'),
(92, 92, '2024-05-28', 'Dirección con holgura'),
(93, 93, '2024-09-16', 'Sistema de escape con corrosión'),
(94, 94, '2024-06-26', 'Sin novedades'),
(95, 95, '2024-02-13', 'Batería en mal estado'),
(96, 96, '2024-08-20', 'Revisión del sistema de suspensión'),
(97, 97, '2024-02-12', 'Filtro de aire sucio'),
(98, 98, '2024-05-17', 'Cambio de aceite realizado'),
(99, 99, '2024-11-12', 'Dirección con holgura'),
(100, 100, '2024-02-26', 'Ruido en el motor'),
(101, 101, '2024-01-22', 'Filtro de aire sucio'),
(102, 102, '2024-04-14', 'Revisión del sistema de suspensión'),
(103, 103, '2024-04-09', 'Dirección con holgura'),
(104, 104, '2024-09-10', 'Frenos desgastados'),
(105, 105, '2024-05-29', 'Revisión del sistema de suspensión'),
(106, 106, '2024-11-23', 'Revisión del sistema de suspensión'),
(107, 107, '2024-03-28', 'Filtro de aire sucio'),
(108, 108, '2024-11-02', 'Sin novedades'),
(109, 109, '2024-08-12', 'Aceite bajo'),
(110, 110, '2024-04-15', 'Sistema de escape con corrosión'),
(111, 111, '2024-06-18', 'Aceite bajo'),
(112, 112, '2024-05-02', 'Sistema eléctrico revisado'),
(113, 113, '2024-11-04', 'Filtro de aire sucio'),
(114, 114, '2024-10-22', 'Filtro de aire sucio'),
(115, 115, '2024-12-11', 'Frenos desgastados'),
(116, 116, '2024-12-05', 'Filtro de aire sucio'),
(117, 117, '2024-04-06', 'Frenos desgastados'),
(118, 118, '2024-02-22', 'Cambio de aceite realizado'),
(119, 119, '2024-10-06', 'Batería en mal estado'),
(120, 120, '2024-11-18', 'Luces delanteras defectuosas'),
(121, 121, '2024-01-18', 'Sin novedades'),
(122, 122, '2024-11-02', 'Radiador con fugas'),
(123, 123, '2024-06-05', 'Revisión de inyectores'),
(124, 124, '2024-09-26', 'Frenos desgastados'),
(125, 125, '2024-07-03', 'Dirección con holgura'),
(126, 126, '2024-06-08', 'Revisión de inyectores'),
(127, 127, '2024-09-13', 'Sin novedades'),
(128, 128, '2024-05-20', 'Ruido en el motor'),
(129, 129, '2024-02-17', 'Ruido en el motor'),
(130, 130, '2024-12-25', 'Dirección con holgura'),
(131, 131, '2024-01-09', 'Radiador con fugas'),
(132, 132, '2024-11-05', 'Sistema eléctrico revisado'),
(133, 133, '2024-06-04', 'Sistema eléctrico revisado'),
(134, 134, '2024-11-07', 'Frenos desgastados'),
(135, 135, '2024-06-06', 'Cambio de aceite realizado'),
(136, 136, '2024-06-30', 'Cambio de aceite realizado'),
(137, 137, '2024-04-20', 'Radiador con fugas'),
(138, 138, '2024-03-16', 'Dirección con holgura'),
(139, 139, '2024-12-16', 'Ruido en el motor'),
(140, 140, '2024-03-15', 'Filtro de aire sucio'),
(141, 141, '2024-07-17', 'Aceite bajo'),
(142, 142, '2024-08-02', 'Filtro de aire sucio'),
(143, 143, '2024-08-03', 'Luces delanteras defectuosas'),
(144, 144, '2024-07-21', 'Frenos desgastados'),
(145, 145, '2024-12-24', 'Ruido en el motor'),
(146, 146, '2024-04-11', 'Filtro de aire sucio'),
(147, 147, '2024-04-03', 'Sin novedades'),
(148, 148, '2024-11-24', 'Aceite bajo'),
(149, 149, '2024-07-28', 'Sistema eléctrico revisado'),
(150, 150, '2024-08-01', 'Batería en mal estado'),
(151, 151, '2024-12-04', 'Sin novedades'),
(152, 152, '2024-11-29', 'Revisión de inyectores'),
(153, 153, '2024-11-25', 'Aceite bajo'),
(154, 154, '2024-09-02', 'Aceite bajo'),
(155, 155, '2024-12-28', 'Batería en mal estado'),
(156, 156, '2024-02-14', 'Batería en mal estado'),
(157, 157, '2024-11-13', 'Luces delanteras defectuosas'),
(158, 158, '2024-08-11', 'Radiador con fugas'),
(159, 159, '2024-12-25', 'Sistema eléctrico revisado'),
(160, 160, '2024-01-01', 'Sin novedades'),
(161, 161, '2024-05-02', 'Aceite bajo'),
(162, 162, '2024-05-14', 'Revisión del sistema de suspensión'),
(163, 163, '2024-01-17', 'Luces delanteras defectuosas'),
(164, 164, '2024-01-03', 'Cambio de aceite realizado'),
(165, 165, '2024-03-22', 'Luces delanteras defectuosas'),
(166, 166, '2024-10-21', 'Cambio de aceite realizado'),
(167, 167, '2024-11-16', 'Dirección con holgura'),
(168, 168, '2024-08-26', 'Aceite bajo'),
(169, 169, '2024-02-05', 'Sistema eléctrico revisado'),
(170, 170, '2024-07-26', 'Revisión de inyectores'),
(171, 171, '2024-10-11', 'Filtro de aire sucio'),
(172, 172, '2024-09-10', 'Luces delanteras defectuosas'),
(173, 173, '2024-02-27', 'Batería en mal estado'),
(174, 174, '2024-02-01', 'Filtro de aire sucio'),
(175, 175, '2024-04-21', 'Dirección con holgura'),
(176, 176, '2024-11-20', 'Batería en mal estado'),
(177, 177, '2024-08-02', 'Filtro de aire sucio'),
(178, 178, '2024-06-14', 'Sistema eléctrico revisado'),
(179, 179, '2024-03-13', 'Sin novedades'),
(180, 180, '2024-01-17', 'Sistema eléctrico revisado'),
(181, 181, '2024-04-22', 'Sin novedades'),
(182, 182, '2024-07-19', 'Filtro de aire sucio'),
(183, 183, '2024-07-06', 'Sistema de escape con corrosión'),
(184, 184, '2024-04-18', 'Cambio de aceite realizado'),
(185, 185, '2024-10-22', 'Aceite bajo'),
(186, 186, '2024-08-24', 'Ruido en el motor'),
(187, 187, '2024-03-26', 'Sistema eléctrico revisado'),
(188, 188, '2024-05-05', 'Revisión de inyectores'),
(189, 189, '2024-01-08', 'Revisión de inyectores'),
(190, 190, '2024-12-20', 'Aceite bajo'),
(191, 191, '2024-10-07', 'Revisión de inyectores'),
(192, 192, '2024-04-26', 'Luces delanteras defectuosas'),
(193, 193, '2024-05-20', 'Frenos desgastados'),
(194, 194, '2024-12-09', 'Filtro de aire sucio'),
(195, 195, '2024-11-13', 'Luces delanteras defectuosas'),
(196, 196, '2024-07-31', 'Frenos desgastados'),
(197, 197, '2024-09-15', 'Dirección con holgura'),
(198, 198, '2024-06-26', 'Ruido en el motor'),
(199, 199, '2024-08-23', 'Ruido en el motor'),
(200, 200, '2024-07-28', 'Revisión de inyectores'),
(201, 201, '2024-09-06', 'Frenos desgastados'),
(202, 202, '2024-03-03', 'Sistema de escape con corrosión'),
(203, 203, '2024-09-14', 'Batería en mal estado'),
(204, 204, '2024-01-26', 'Batería en mal estado'),
(205, 205, '2024-08-23', 'Sin novedades'),
(206, 206, '2024-04-16', 'Frenos desgastados'),
(207, 207, '2024-02-10', 'Aceite bajo'),
(208, 208, '2024-05-12', 'Filtro de aire sucio'),
(209, 209, '2024-12-04', 'Sistema de escape con corrosión'),
(210, 210, '2024-02-14', 'Batería en mal estado'),
(211, 211, '2024-12-28', 'Batería en mal estado'),
(212, 212, '2024-05-02', 'Ruido en el motor'),
(213, 213, '2024-07-11', 'Filtro de aire sucio'),
(214, 214, '2024-09-13', 'Revisión de inyectores'),
(215, 215, '2024-06-27', 'Frenos desgastados'),
(216, 216, '2024-04-16', 'Aceite bajo'),
(217, 217, '2024-11-11', 'Aceite bajo'),
(218, 218, '2024-09-18', 'Luces delanteras defectuosas'),
(219, 219, '2024-10-04', 'Frenos desgastados'),
(220, 220, '2024-01-06', 'Radiador con fugas'),
(221, 221, '2024-09-13', 'Radiador con fugas'),
(222, 222, '2024-09-26', 'Filtro de aire sucio'),
(223, 223, '2024-01-22', 'Aceite bajo'),
(224, 224, '2024-07-22', 'Sistema de escape con corrosión'),
(225, 225, '2024-12-30', 'Dirección con holgura'),
(226, 226, '2024-06-07', 'Sin novedades'),
(227, 227, '2024-07-13', 'Batería en mal estado'),
(228, 228, '2024-07-07', 'Ruido en el motor'),
(229, 229, '2024-01-28', 'Ruido en el motor'),
(230, 230, '2024-07-12', 'Luces delanteras defectuosas'),
(231, 231, '2024-12-15', 'Sistema de escape con corrosión'),
(232, 232, '2024-02-11', 'Luces delanteras defectuosas'),
(233, 233, '2024-02-27', 'Filtro de aire sucio'),
(234, 234, '2024-10-20', 'Dirección con holgura'),
(235, 235, '2024-05-26', 'Revisión de inyectores'),
(236, 236, '2024-06-03', 'Cambio de aceite realizado'),
(237, 237, '2024-11-04', 'Neumáticos en mal estado'),
(238, 238, '2024-05-15', 'Cambio de aceite realizado'),
(239, 239, '2024-01-10', 'Batería en mal estado'),
(240, 240, '2024-04-04', 'Aceite bajo'),
(241, 241, '2024-12-14', 'Dirección con holgura'),
(242, 242, '2024-04-25', 'Sistema de escape con corrosión'),
(243, 243, '2024-09-05', 'Aceite bajo'),
(244, 244, '2024-08-11', 'Revisión de inyectores'),
(245, 245, '2024-02-01', 'Aceite bajo'),
(246, 246, '2024-04-02', 'Ruido en el motor'),
(247, 247, '2024-03-29', 'Luces delanteras defectuosas'),
(248, 248, '2024-01-02', 'Luces delanteras defectuosas'),
(249, 249, '2024-01-11', 'Ruido en el motor'),
(250, 250, '2024-08-01', 'Sistema de escape con corrosión'),
(251, 251, '2024-04-24', 'Neumáticos en mal estado'),
(252, 252, '2024-09-17', 'Filtro de aire sucio'),
(253, 253, '2024-05-08', 'Filtro de aire sucio'),
(254, 254, '2024-08-10', 'Sistema eléctrico revisado'),
(255, 255, '2024-02-04', 'Revisión del sistema de suspensión'),
(256, 256, '2024-12-21', 'Batería en mal estado'),
(257, 257, '2024-12-24', 'Revisión del sistema de suspensión'),
(258, 258, '2024-02-29', 'Revisión del sistema de suspensión'),
(259, 259, '2024-12-28', 'Sistema eléctrico revisado'),
(260, 260, '2024-11-28', 'Revisión del sistema de suspensión'),
(261, 261, '2024-04-24', 'Aceite bajo'),
(262, 262, '2024-09-10', 'Neumáticos en mal estado'),
(263, 263, '2024-11-20', 'Cambio de aceite realizado'),
(264, 264, '2024-02-23', 'Revisión de inyectores'),
(265, 265, '2024-06-06', 'Sin novedades'),
(266, 266, '2024-07-06', 'Revisión del sistema de suspensión'),
(267, 267, '2024-12-31', 'Sistema de escape con corrosión'),
(268, 268, '2024-07-22', 'Sistema eléctrico revisado'),
(269, 269, '2024-08-29', 'Revisión del sistema de suspensión'),
(270, 270, '2024-09-11', 'Frenos desgastados'),
(271, 271, '2024-01-18', 'Frenos desgastados'),
(272, 272, '2024-06-12', 'Batería en mal estado'),
(273, 273, '2024-11-29', 'Sistema eléctrico revisado'),
(274, 274, '2024-04-03', 'Filtro de aire sucio'),
(275, 275, '2024-05-04', 'Dirección con holgura'),
(276, 276, '2024-04-28', 'Frenos desgastados'),
(277, 277, '2024-08-04', 'Filtro de aire sucio'),
(278, 278, '2024-08-21', 'Sistema eléctrico revisado'),
(279, 279, '2024-11-20', 'Cambio de aceite realizado'),
(280, 280, '2024-01-28', 'Sin novedades'),
(281, 281, '2024-07-18', 'Filtro de aire sucio'),
(282, 282, '2024-10-23', 'Ruido en el motor'),
(283, 283, '2024-11-20', 'Ruido en el motor'),
(284, 284, '2024-09-22', 'Batería en mal estado'),
(285, 285, '2024-11-21', 'Revisión de inyectores'),
(286, 286, '2024-06-30', 'Sin novedades'),
(287, 287, '2024-03-24', 'Sistema eléctrico revisado'),
(288, 288, '2024-01-18', 'Aceite bajo'),
(289, 289, '2024-10-04', 'Sistema eléctrico revisado'),
(290, 290, '2024-05-25', 'Sistema de escape con corrosión'),
(291, 291, '2024-10-25', 'Aceite bajo'),
(292, 292, '2024-07-22', 'Batería en mal estado'),
(293, 293, '2024-11-04', 'Cambio de aceite realizado'),
(294, 294, '2024-08-11', 'Sin novedades'),
(295, 295, '2024-03-27', 'Batería en mal estado'),
(296, 296, '2024-09-24', 'Neumáticos en mal estado'),
(297, 297, '2024-08-15', 'Revisión de inyectores'),
(298, 298, '2024-06-26', 'Sin novedades'),
(299, 299, '2024-07-24', 'Sistema de escape con corrosión'),
(300, 300, '2024-08-03', 'Neumáticos en mal estado');
SET IDENTITY_INSERT Inspections OFF;

-- Insertar reparaciones de buses
SET IDENTITY_INSERT Repairs ON;
INSERT INTO Repairs (id, inspection_id, type, time_spent, comment) VALUES
(1, 1, 'Cambio de frenos', 90, 'Frenos desgastados'),
(2, 2, 'Cambio de neumáticos', 120, 'Neumáticos en mal estado'),
(3, 3, 'Reparación de luces', 60, 'Luces traseras defectuosas'),
(4, 4, 'Ajuste de motor', 75, 'Motor con vibraciones'),
(5, 5, 'Ajuste de suspensión', 110, 'Sistema de suspensión necesita ajuste'),
(6, 6, 'Revisión de batería', 45, 'Batería descargada'),
(7, 7, 'Reemplazo de filtros', 30, 'Filtros sucios'),
(8, 8, 'Ajuste de dirección', 90, 'Dirección desalineada'),
(9, 9, 'Revisión de frenos', 60, 'Frenos defectuosos'),
(10, 10, 'Remplazo de correas', 120, 'Correas desgastadas'),
(11, 11, 'Cambio de frenos', 90, 'Frenos desgastados'),
(12, 12, 'Cambio de neumáticos', 120, 'Neumáticos en mal estado'),
(13, 13, 'Reparación de luces', 60, 'Luces traseras defectuosas'),
(14, 14, 'Ajuste de motor', 75, 'Motor con vibraciones'),
(15, 15, 'Ajuste de suspensión', 110, 'Sistema de suspensión necesita ajuste'),
(16, 16, 'Revisión de batería', 45, 'Batería descargada'),
(17, 17, 'Reemplazo de filtros', 30, 'Filtros sucios'),
(18, 18, 'Ajuste de dirección', 90, 'Dirección desalineada'),
(19, 19, 'Revisión de frenos', 60, 'Frenos defectuosos'),
(20, 20, 'Reemplazo de correas', 120, 'Correas desgastadas'),
(21, 21, 'Cambio de frenos', 90, 'Frenos desgastados'),
(22, 22, 'Cambio de neumáticos', 120, 'Neumáticos en mal estado'),
(23, 23, 'Reparación de luces', 60, 'Luces traseras defectuosas'),
(24, 24, 'Ajuste de motor', 75, 'Motor con vibraciones'),
(25, 25, 'Ajuste de suspensión', 110, 'Sistema de suspensión necesita ajuste'),
(26, 26, 'Revisión de batería', 45, 'Batería descargada'),
(27, 27, 'Reemplazo de filtros', 30, 'Filtros sucios'),
(28, 28, 'Ajuste de dirección', 90, 'Dirección desalineada'),
(29, 29, 'Revisión de frenos', 60, 'Frenos defectuosos'),
(30, 30, 'Reemplazo de correas', 120, 'Correas desgastadas'),
(31, 31, 'Cambio de frenos', 90, 'Frenos desgastados'),
(32, 32, 'Cambio de neumáticos', 120, 'Neumáticos en mal estado'),
(33, 33, 'Reparación de luces', 60, 'Luces traseras defectuosas'),
(34, 34, 'Ajuste de motor', 75, 'Motor con vibraciones'),
(35, 35, 'Ajuste de suspensión', 110, 'Sistema de suspensión necesita ajuste'),
(36, 36, 'Revisión de batería', 45, 'Batería descargada'),
(37, 37, 'Reemplazo de filtros', 30, 'Filtros sucios'),
(38, 38, 'Ajuste de dirección', 90, 'Dirección desalineada'),
(39, 39, 'Revisión de frenos', 60, 'Frenos defectuosos'),
(40, 40, 'Reemplazo de correas', 120, 'Correas desgastadas'),
(41, 41, 'Cambio de frenos', 90, 'Frenos desgastados'),
(42, 42, 'Cambio de neumáticos', 120, 'Neumáticos en mal estado'),
(43, 43, 'Reparación de luces', 60, 'Luces traseras defectuosas'),
(44, 44, 'Ajuste de motor', 75, 'Motor con vibraciones'),
(45, 45, 'Ajuste de suspensión', 110, 'Sistema de suspensión necesita ajuste'),
(46, 46, 'Revisión de batería', 45, 'Batería descargada'),
(47, 47, 'Reemplazo de filtros', 30, 'Filtros sucios'),
(48, 48, 'Ajuste de dirección', 90, 'Dirección desalineada'),
(49, 49, 'Revisión de frenos', 60, 'Frenos defectuosos'),
(50, 50, 'Reemplazo de correas', 120, 'Correas desgastadas'),
(51, 51, 'Cambio de frenos', 90, 'Frenos desgastados'),
(52, 52, 'Cambio de neumáticos', 120, 'Neumáticos en mal estado'),
(53, 53, 'Reparación de luces', 60, 'Luces traseras defectuosas'),
(54, 54, 'Ajuste de motor', 75, 'Motor con vibraciones'),
(55, 55, 'Ajuste de suspensión', 110, 'Sistema de suspensión necesita ajuste'),
(56, 56, 'Revisión de batería', 45, 'Batería descargada'),
(57, 57, 'Reemplazo de filtros', 30, 'Filtros sucios'),
(58, 58, 'Ajuste de dirección', 90, 'Dirección desalineada'),
(59, 59, 'Revisión de frenos', 60, 'Frenos defectuosos'),
(60, 60, 'Reemplazo de correas', 120, 'Correas desgastadas'),
(61, 61, 'Cambio de frenos', 90, 'Frenos desgastados'),
(62, 62, 'Cambio de neumáticos', 120, 'Neumáticos en mal estado'),
(63, 63, 'Reparación de luces', 60, 'Luces traseras defectuosas'),
(64, 64, 'Ajuste de motor', 75, 'Motor con vibraciones'),
(65, 65, 'Ajuste de suspensión', 110, 'Sistema de suspensión necesita ajuste'),
(66, 66, 'Revisión de batería', 45, 'Batería descargada'),
(67, 67, 'Reemplazo de filtros', 30, 'Filtros sucios'),
(68, 68, 'Ajuste de dirección', 90, 'Dirección desalineada'),
(69, 69, 'Revisión de frenos', 60, 'Frenos defectuosos'),
(70, 70, 'Reemplazo de correas', 120, 'Correas desgastadas'),
(71, 71, 'Cambio de frenos', 90, 'Frenos desgastados'),
(72, 72, 'Cambio de neumáticos', 120, 'Neumáticos en mal estado'),
(73, 73, 'Reparación de luces', 60, 'Luces traseras defectuosas'),
(74, 74, 'Ajuste de motor', 75, 'Motor con vibraciones'),
(75, 75, 'Ajuste de suspensión', 110, 'Sistema de suspensión necesita ajuste'),
(76, 76, 'Revisión de batería', 45, 'Batería descargada'),
(77, 77, 'Reemplazo de filtros', 30, 'Filtros sucios'),
(78, 78, 'Ajuste de dirección', 90, 'Dirección desalineada'),
(79, 79, 'Revisión de frenos', 60, 'Frenos defectuosos'),
(80, 80, 'Reemplazo de correas', 120, 'Correas desgastadas'),
(81, 81, 'Cambio de frenos', 90, 'Frenos desgastados'),
(82, 82, 'Cambio de neumáticos', 120, 'Neumáticos en mal estado'),
(83, 83, 'Reparación de luces', 60, 'Luces traseras defectuosas'),
(84, 84, 'Ajuste de motor', 75, 'Motor con vibraciones'),
(85, 85, 'Ajuste de suspensión', 110, 'Sistema de suspensión necesita ajuste'),
(86, 86, 'Revisión de batería', 45, 'Batería descargada'),
(87, 87, 'Reemplazo de filtros', 30, 'Filtros sucios'),
(88, 88, 'Ajuste de dirección', 90, 'Dirección desalineada'),
(89, 89, 'Revisión de frenos', 60, 'Frenos defectuosos'),
(90, 90, 'Reemplazo de correas', 120, 'Correas desgastadas'),
(91, 91, 'Cambio de frenos', 90, 'Frenos desgastados'),
(92, 92, 'Cambio de neumáticos', 120, 'Neumáticos en mal estado'),
(93, 93, 'Reparación de luces', 60, 'Luces traseras defectuosas'),
(94, 94, 'Ajuste de motor', 75, 'Motor con vibraciones'),
(95, 95, 'Ajuste de suspensión', 110, 'Sistema de suspensión necesita ajuste'),
(96, 96, 'Revisión de batería', 45, 'Batería descargada'),
(97, 97, 'Reemplazo de filtros', 30, 'Filtros sucios'),
(98, 98, 'Ajuste de dirección', 90, 'Dirección desalineada'),
(99, 99, 'Revisión de frenos', 60, 'Frenos defectuosos'),
(100, 100, 'Reemplazo de correas', 120, 'Correas desgastadas'),
(101, 101, 'Cambio de frenos', 90, 'Frenos desgastados'),
(102, 102, 'Cambio de neumáticos', 120, 'Neumáticos en mal estado'),
(103, 103, 'Reparación de luces', 60, 'Luces traseras defectuosas'),
(104, 104, 'Ajuste de motor', 75, 'Motor con vibraciones'),
(105, 105, 'Ajuste de suspensión', 110, 'Sistema de suspensión necesita ajuste'),
(106, 106, 'Revisión de batería', 45, 'Batería descargada'),
(107, 107, 'Reemplazo de filtros', 30, 'Filtros sucios'),
(108, 108, 'Ajuste de dirección', 90, 'Dirección desalineada'),
(109, 109, 'Revisión de frenos', 60, 'Frenos defectuosos'),
(110, 110, 'Reemplazo de correas', 120, 'Correas desgastadas'),
(111, 111, 'Cambio de frenos', 90, 'Frenos desgastados'),
(112, 112, 'Cambio de neumáticos', 120, 'Neumáticos en mal estado'),
(113, 113, 'Reparación de luces', 60, 'Luces traseras defectuosas'),
(114, 114, 'Ajuste de motor', 75, 'Motor con vibraciones'),
(115, 115, 'Ajuste de suspensión', 110, 'Sistema de suspensión necesita ajuste'),
(116, 116, 'Revisión de batería', 45, 'Batería descargada'),
(117, 117, 'Reemplazo de filtros', 30, 'Filtros sucios'),
(118, 118, 'Ajuste de dirección', 90, 'Dirección desalineada'),
(119, 119, 'Revisión de frenos', 60, 'Frenos defectuosos'),
(120, 120, 'Reemplazo de correas', 120, 'Correas desgastadas'),
(121, 121, 'Cambio de frenos', 90, 'Frenos desgastados'),
(122, 122, 'Cambio de neumáticos', 120, 'Neumáticos en mal estado'),
(123, 123, 'Reparación de luces', 60, 'Luces traseras defectuosas'),
(124, 124, 'Ajuste de motor', 75, 'Motor con vibraciones'),
(125, 125, 'Ajuste de suspensión', 110, 'Sistema de suspensión necesita ajuste'),
(126, 126, 'Revisión de batería', 45, 'Batería descargada'),
(127, 127, 'Reemplazo de filtros', 30, 'Filtros sucios'),
(128, 128, 'Ajuste de dirección', 90, 'Dirección desalineada'),
(129, 129, 'Revisión de frenos', 60, 'Frenos defectuosos'),
(130, 130, 'Reemplazo de correas', 120, 'Correas desgastadas'),
(131, 131, 'Cambio de frenos', 90, 'Frenos desgastados'),
(132, 132, 'Cambio de neumáticos', 120, 'Neumáticos en mal estado'),
(133, 133, 'Reparación de luces', 60, 'Luces traseras defectuosas'),
(134, 134, 'Ajuste de motor', 75, 'Motor con vibraciones'),
(135, 135, 'Ajuste de suspensión', 110, 'Sistema de suspensión necesita ajuste'),
(136, 136, 'Revisión de batería', 45, 'Batería descargada'),
(137, 137, 'Reemplazo de filtros', 30, 'Filtros sucios'),
(138, 138, 'Ajuste de dirección', 90, 'Dirección desalineada'),
(139, 139, 'Revisión de frenos', 60, 'Frenos defectuosos'),
(140, 140, 'Reemplazo de correas', 120, 'Correas desgastadas'),
(141, 141, 'Cambio de frenos', 90, 'Frenos desgastados'),
(142, 142, 'Cambio de neumáticos', 120, 'Neumáticos en mal estado'),
(143, 143, 'Reparación de luces', 60, 'Luces traseras defectuosas'),
(144, 144, 'Ajuste de motor', 75, 'Motor con vibraciones'),
(145, 145, 'Ajuste de suspensión', 110, 'Sistema de suspensión necesita ajuste'),
(146, 146, 'Revisión de batería', 45, 'Batería descargada'),
(147, 147, 'Reemplazo de filtros', 30, 'Filtros sucios'),
(148, 148, 'Ajuste de dirección', 90, 'Dirección desalineada'),
(149, 149, 'Revisión de frenos', 60, 'Frenos defectuosos'),
(150, 150, 'Reemplazo de correas', 120, 'Correas desgastadas'),
(151, 151, 'Cambio de frenos', 90, 'Frenos desgastados'),
(152, 152, 'Cambio de neumáticos', 120, 'Neumáticos en mal estado'),
(153, 153, 'Reparación de luces', 60, 'Luces traseras defectuosas'),
(154, 154, 'Reparación de luces', 60, 'Luces traseras defectuosas'),
(155, 155, 'Reparación de luces', 60, 'Luces traseras defectuosas'),
(156, 156, 'Reparación de luces', 60, 'Luces traseras defectuosas'),
(157, 157, 'Reparación de luces', 60, 'Luces traseras defectuosas'),
(158, 158, 'Reparación de luces', 60, 'Luces traseras defectuosas'),
(159, 159, 'Reparación de luces', 60, 'Luces traseras defectuosas'),
(160, 160, 'Reparación de luces', 60, 'Luces traseras defectuosas'),
(161, 161, 'Cambio de frenos', 90, 'Frenos desgastados'),
(162, 162, 'Cambio de neumáticos', 120, 'Neumáticos en mal estado'),
(163, 163, 'Reparación de luces', 60, 'Luces traseras defectuosas'),
(164, 164, 'Ajuste de motor', 75, 'Motor con vibraciones'),
(165, 165, 'Ajuste de suspensión', 110, 'Sistema de suspensión necesita ajuste'),
(166, 166, 'Revisión de batería', 45, 'Batería descargada'),
(167, 167, 'Reemplazo de filtros', 30, 'Filtros sucios'),
(168, 168, 'Ajuste de dirección', 90, 'Dirección desalineada'),
(169, 169, 'Revisión de frenos', 60, 'Frenos defectuosos'),
(170, 170, 'Reemplazo de correas', 120, 'Correas desgastadas'),
(171, 171, 'Cambio de frenos', 90, 'Frenos desgastados'),
(172, 172, 'Cambio de neumáticos', 120, 'Neumáticos en mal estado'),
(173, 173, 'Reparación de luces', 60, 'Luces traseras defectuosas'),
(174, 174, 'Ajuste de motor', 75, 'Motor con vibraciones'),
(175, 175, 'Ajuste de suspensión', 110, 'Sistema de suspensión necesita ajuste'),
(176, 176, 'Revisión de batería', 45, 'Batería descargada'),
(177, 177, 'Reemplazo de filtros', 30, 'Filtros sucios'),
(178, 178, 'Ajuste de dirección', 90, 'Dirección desalineada'),
(179, 179, 'Revisión de frenos', 60, 'Frenos defectuosos'),
(180, 180, 'Reemplazo de correas', 120, 'Correas desgastadas'),
(181, 181, 'Cambio de frenos', 90, 'Frenos desgastados'),
(182, 182, 'Cambio de neumáticos', 120, 'Neumáticos en mal estado'),
(183, 183, 'Reparación de luces', 60, 'Luces traseras defectuosas'),
(184, 184, 'Ajuste de motor', 75, 'Motor con vibraciones'),
(185, 185, 'Ajuste de suspensión', 110, 'Sistema de suspensión necesita ajuste'),
(186, 186, 'Revisión de batería', 45, 'Batería descargada'),
(187, 187, 'Reemplazo de filtros', 30, 'Filtros sucios'),
(188, 188, 'Ajuste de dirección', 90, 'Dirección desalineada'),
(189, 189, 'Revisión de frenos', 60, 'Frenos defectuosos'),
(190, 190, 'Reemplazo de correas', 120, 'Correas desgastadas'),
(191, 191, 'Cambio de frenos', 90, 'Frenos desgastados'),
(192, 192, 'Cambio de neumáticos', 120, 'Neumáticos en mal estado'),
(193, 193, 'Reparación de luces', 60, 'Luces traseras defectuosas'),
(194, 194, 'Ajuste de motor', 75, 'Motor con vibraciones'),
(195, 195, 'Ajuste de suspensión', 110, 'Sistema de suspensión necesita ajuste'),
(196, 196, 'Revisión de batería', 45, 'Batería descargada'),
(197, 197, 'Reemplazo de filtros', 30, 'Filtros sucios'),
(198, 198, 'Ajuste de dirección', 90, 'Dirección desalineada'),
(199, 199, 'Revisión de frenos', 60, 'Frenos defectuosos'),
(200, 200, 'Reemplazo de correas', 120, 'Correas desgastadas'),
(201, 201, 'Cambio de frenos', 90, 'Frenos desgastados'),
(202, 202, 'Cambio de neumáticos', 120, 'Neumáticos en mal estado'),
(203, 203, 'Reparación de luces', 60, 'Luces traseras defectuosas'),
(204, 204, 'Ajuste de motor', 75, 'Motor con vibraciones'),
(205, 205, 'Ajuste de suspensión', 110, 'Sistema de suspensión necesita ajuste'),
(206, 206, 'Revisión de batería', 45, 'Batería descargada'),
(207, 207, 'Reemplazo de filtros', 30, 'Filtros sucios'),
(208, 208, 'Ajuste de dirección', 90, 'Dirección desalineada'),
(209, 209, 'Revisión de frenos', 60, 'Frenos defectuosos'),
(210, 210, 'Reemplazo de correas', 120, 'Correas desgastadas'),
(211, 211, 'Cambio de frenos', 90, 'Frenos desgastados'),
(212, 212, 'Cambio de neumáticos', 120, 'Neumáticos en mal estado'),
(213, 213, 'Reparación de luces', 60, 'Luces traseras defectuosas'),
(214, 214, 'Ajuste de motor', 75, 'Motor con vibraciones'),
(215, 215, 'Ajuste de suspensión', 110, 'Sistema de suspensión necesita ajuste'),
(216, 216, 'Revisión de batería', 45, 'Batería descargada'),
(217, 217, 'Reemplazo de filtros', 30, 'Filtros sucios'),
(218, 218, 'Ajuste de dirección', 90, 'Dirección desalineada'),
(219, 219, 'Revisión de frenos', 60, 'Frenos defectuosos'),
(220, 220, 'Reemplazo de correas', 120, 'Correas desgastadas'),
(221, 221, 'Cambio de frenos', 90, 'Frenos desgastados'),
(222, 222, 'Cambio de neumáticos', 120, 'Neumáticos en mal estado'),
(223, 223, 'Reparación de luces', 60, 'Luces traseras defectuosas'),
(224, 224, 'Ajuste de motor', 75, 'Motor con vibraciones'),
(225, 225, 'Ajuste de suspensión', 110, 'Sistema de suspensión necesita ajuste'),
(226, 226, 'Revisión de batería', 45, 'Batería descargada'),
(227, 227, 'Reemplazo de filtros', 30, 'Filtros sucios'),
(228, 228, 'Ajuste de dirección', 90, 'Dirección desalineada'),
(229, 229, 'Revisión de frenos', 60, 'Frenos defectuosos'),
(230, 230, 'Reemplazo de correas', 120, 'Correas desgastadas'),
(231, 231, 'Cambio de frenos', 90, 'Frenos desgastados'),
(232, 232, 'Cambio de neumáticos', 120, 'Neumáticos en mal estado'),
(233, 233, 'Reparación de luces', 60, 'Luces traseras defectuosas'),
(234, 234, 'Ajuste de motor', 75, 'Motor con vibraciones'),
(235, 235, 'Ajuste de suspensión', 110, 'Sistema de suspensión necesita ajuste'),
(236, 236, 'Revisión de batería', 45, 'Batería descargada'),
(237, 237, 'Reemplazo de filtros', 30, 'Filtros sucios'),
(238, 238, 'Ajuste de dirección', 90, 'Dirección desalineada'),
(239, 239, 'Revisión de frenos', 60, 'Frenos defectuosos'),
(240, 240, 'Reemplazo de correas', 120, 'Correas desgastadas'),
(241, 241, 'Cambio de frenos', 90, 'Frenos desgastados'),
(242, 242, 'Cambio de neumáticos', 120, 'Neumáticos en mal estado'),
(243, 243, 'Reparación de luces', 60, 'Luces traseras defectuosas'),
(244, 244, 'Ajuste de motor', 75, 'Motor con vibraciones'),
(245, 245, 'Ajuste de suspensión', 110, 'Sistema de suspensión necesita ajuste'),
(246, 246, 'Revisión de batería', 45, 'Batería descargada'),
(247, 247, 'Reemplazo de filtros', 30, 'Filtros sucios'),
(248, 248, 'Ajuste de dirección', 90, 'Dirección desalineada'),
(249, 249, 'Revisión de frenos', 60, 'Frenos defectuosos'),
(250, 250, 'Reemplazo de correas', 120, 'Correas desgastadas'),
(251, 251, 'Cambio de frenos', 90, 'Frenos desgastados'),
(252, 252, 'Cambio de neumáticos', 120, 'Neumáticos en mal estado'),
(253, 253, 'Reparación de luces', 60, 'Luces traseras defectuosas'),
(254, 254, 'Ajuste de motor', 75, 'Motor con vibraciones'),
(255, 255, 'Ajuste de suspensión', 110, 'Sistema de suspensión necesita ajuste'),
(256, 256, 'Revisión de batería', 45, 'Batería descargada'),
(257, 257, 'Reemplazo de filtros', 30, 'Filtros sucios'),
(258, 258, 'Ajuste de dirección', 90, 'Dirección desalineada'),
(259, 259, 'Revisión de frenos', 60, 'Frenos defectuosos'),
(260, 260, 'Reemplazo de correas', 120, 'Correas desgastadas'),
(261, 261, 'Cambio de frenos', 90, 'Frenos desgastados'),
(262, 262, 'Cambio de neumáticos', 120, 'Neumáticos en mal estado'),
(263, 263, 'Reparación de luces', 60, 'Luces traseras defectuosas'),
(264, 264, 'Ajuste de motor', 75, 'Motor con vibraciones'),
(265, 265, 'Ajuste de suspensión', 110, 'Sistema de suspensión necesita ajuste'),
(266, 266, 'Revisión de batería', 45, 'Batería descargada'),
(267, 267, 'Reemplazo de filtros', 30, 'Filtros sucios'),
(268, 268, 'Ajuste de dirección', 90, 'Dirección desalineada'),
(269, 269, 'Revisión de frenos', 60, 'Frenos defectuosos'),
(270, 270, 'Reemplazo de correas', 120, 'Correas desgastadas'),
(271, 271, 'Cambio de frenos', 90, 'Frenos desgastados'),
(272, 272, 'Cambio de neumáticos', 120, 'Neumáticos en mal estado'),
(273, 273, 'Reparación de luces', 60, 'Luces traseras defectuosas'),
(274, 274, 'Ajuste de motor', 75, 'Motor con vibraciones'),
(275, 275, 'Ajuste de suspensión', 110, 'Sistema de suspensión necesita ajuste'),
(276, 276, 'Revisión de batería', 45, 'Batería descargada'),
(277, 277, 'Reemplazo de filtros', 30, 'Filtros sucios'),
(278, 278, 'Ajuste de dirección', 90, 'Dirección desalineada'),
(279, 279, 'Revisión de frenos', 60, 'Frenos defectuosos'),
(280, 280, 'Reemplazo de correas', 120, 'Correas desgastadas'),
(281, 281, 'Cambio de frenos', 90, 'Frenos desgastados'),
(282, 282, 'Cambio de neumáticos', 120, 'Neumáticos en mal estado'),
(283, 283, 'Reparación de luces', 60, 'Luces traseras defectuosas'),
(284, 284, 'Ajuste de motor', 75, 'Motor con vibraciones'),
(285, 285, 'Ajuste de suspensión', 110, 'Sistema de suspensión necesita ajuste'),
(286, 286, 'Revisión de batería', 45, 'Batería descargada'),
(287, 287, 'Reemplazo de filtros', 30, 'Filtros sucios'),
(288, 288, 'Ajuste de dirección', 90, 'Dirección desalineada'),
(289, 289, 'Revisión de frenos', 60, 'Frenos defectuosos'),
(290, 290, 'Reemplazo de correas', 120, 'Correas desgastadas'),
(291, 291, 'Cambio de frenos', 90, 'Frenos desgastados'),
(292, 292, 'Cambio de neumáticos', 120, 'Neumáticos en mal estado'),
(293, 293, 'Reparación de luces', 60, 'Luces traseras defectuosas'),
(294, 294, 'Ajuste de motor', 75, 'Motor con vibraciones'),
(295, 295, 'Ajuste de suspensión', 110, 'Sistema de suspensión necesita ajuste'),
(296, 296, 'Revisión de batería', 45, 'Batería descargada'),
(297, 297, 'Reemplazo de filtros', 30, 'Filtros sucios'),
(298, 298, 'Ajuste de dirección', 90, 'Dirección desalineada'),
(299, 299, 'Revisión de frenos', 60, 'Frenos defectuosos'),
(300, 300, 'Reemplazo de correas', 120, 'Correas desgastadas');
SET IDENTITY_INSERT Repairs OFF;
