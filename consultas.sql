-- * Consulta 1: Saca todos los chistes creados por el usuario “Manolito”
SELECT C.titulo, C.cuerpo
FROM Chistes C
JOIN Usuarios U ON C.id_usuario = U.id_usuario
WHERE U.nombre = 'Manolito';

-- * Consulta 2: Saca todos los chistes de la temática “Humor negro”
SELECT C.titulo, C.cuerpo
FROM Chistes C
JOIN Chistes_Tematicas CT ON C.id_chiste = CT.id_chiste
JOIN Tematicas T ON CT.id_tematica = T.id_tematica
WHERE T.nombre = 'humor negro';

-- * Consulta 3: Saca todos los chistes de la temática  “Humor negro” creados por el usuario “Manolito”
SELECT C.titulo, C.cuerpo
FROM Chistes C
JOIN Usuarios U ON C.id_usuario = U.id_usuario
JOIN Chistes_Tematicas CT ON C.id_chiste = CT.id_chiste
JOIN Tematicas T ON CT.id_tematica = T.id_tematica
WHERE U.nombre = 'Manolito' AND T.nombre = 'humor negro';
