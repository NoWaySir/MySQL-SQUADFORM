-- Insertar usuarios con datos más variados
INSERT INTO Usuarios (nombre, contrasena) VALUES
('Manolito', 'secreta123'),
('Pepe', 'contraseño456'),
('Isabel', 'clave987'),
('Pedro', 'pass101');

-- Insertar temáticas variadas
INSERT INTO Tematicas (nombre) VALUES
('humor negro'),
('humor amarillo'),
('chistes verdes'),
('humor absurdo'),
('humor de oficina');

-- Insertar chistes para Manolito (con títulos y cuerpos variados)
INSERT INTO Chistes (titulo, cuerpo, id_usuario) VALUES
('¿Por qué el perro cruzó la calle? - Humor negro', 'Porque se olvidó de su celular. (¡Humor negro!)', (SELECT id_usuario FROM Usuarios WHERE nombre = 'Manolito')),
('La vida es un chiste - Humor negro', '¿Cómo se llama un chiste sobre la vida? Un buen chiste negro.', (SELECT id_usuario FROM Usuarios WHERE nombre = 'Manolito')),
('El chiste de la muerte - Humor negro', 'El chiste de la muerte es corto... porque ya está muerto.', (SELECT id_usuario FROM Usuarios WHERE nombre = 'Manolito'));

-- Insertar chistes para Pepe (con títulos y cuerpos variados)
INSERT INTO Chistes (titulo, cuerpo, id_usuario) VALUES
('El rey del humor amarillo', '¿Por qué el rey del humor amarillo siempre está triste? Porque no puede dejar de contar chistes malos.', (SELECT id_usuario FROM Usuarios WHERE nombre = 'Pepe')),
('El chiste más amarillo del mundo', '¿Cuál es el colmo de un chiste amarillo? No hacer gracia.', (SELECT id_usuario FROM Usuarios WHERE nombre = 'Pepe')),
('Chistes amarillos en la oficina', 'El jefe hace un chiste amarillo, pero nadie lo entiende... porque nadie se ríe.', (SELECT id_usuario FROM Usuarios WHERE nombre = 'Pepe'));

-- Insertar chistes para Isabel (con títulos y cuerpos variados)
INSERT INTO Chistes (titulo, cuerpo, id_usuario) VALUES
('El humor verde de Isabel', 'Si el chiste es verde, ¿puedo decir que crece? Este es un chiste verde para pensar.', (SELECT id_usuario FROM Usuarios WHERE nombre = 'Isabel')),
('La naturaleza de los chistes verdes', 'Un chiste verde no es necesariamente malo, pero es mejor si crece en el jardín.', (SELECT id_usuario FROM Usuarios WHERE nombre = 'Isabel')),
('¿Cuántos chistes verdes existen? - Chistes verdes', 'El chiste más verde es el que nunca se cuenta... porque es demasiado raro.', (SELECT id_usuario FROM Usuarios WHERE nombre = 'Isabel'));

-- Insertar chistes para Pedro (con títulos y cuerpos variados)
INSERT INTO Chistes (titulo, cuerpo, id_usuario) VALUES
('Humor absurdo en la oficina', 'El humor absurdo llega a la oficina cuando todos están dormidos, pero nadie se ríe.', (SELECT id_usuario FROM Usuarios WHERE nombre = 'Pedro')),
('El chiste absurdo', 'Este es un chiste absurdo, porque no tiene sentido, pero te hace reír de todas formas.', (SELECT id_usuario FROM Usuarios WHERE nombre = 'Pedro')),
('El colmo de la oficina absurda', 'El colmo del humor absurdo es hacer un chiste y que nadie entienda lo que pasó.', (SELECT id_usuario FROM Usuarios WHERE nombre = 'Pedro'));

INSERT INTO Chistes_Tematicas (id_chiste, id_tematica)
SELECT c.id_chiste, t.id_tematica
FROM Chistes c
JOIN Tematicas t ON LOWER(c.titulo) LIKE CONCAT('%', LOWER(t.nombre), '%');
