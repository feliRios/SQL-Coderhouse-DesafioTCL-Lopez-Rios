SELECT @@AUTOCOMMIT;

SET AUTOCOMMIT = 0;

USE success_mindset;

-- Transaccion para la tabla 'usuario'
START TRANSACTION;

DELETE FROM usuario
WHERE id_user IN (30, 29, 28);

-- ROLLBACK;
-- COMMIT;


-- Transaccion para la tabla 'ficha_libro'
START TRANSACTION;

INSERT INTO ficha_libro
VALUES (NULL, 1, 1, 1, 754356789, 'Descubre las claves para el éxito personal y profesional.', 'Despertando Gigantes'),
	   (NULL, 2, 2, 2, 902867890, 'Explora la importancia de la vulnerabilidad y la valentía en la vida.', 'El Poder de la Vulnerabilidad'),
	   (NULL, 3, 3, 3, 112178901, 'Guía clásica sobre habilidades sociales y comunicación efectiva.', 'Cómo Ganar Amigos e Influir Sobre las Personas'),
	   (NULL, 4, 4, 4, 456789012, 'Los 7 hábitos que te llevarán al éxito y la efectividad personal.', 'Los 7 Hábitos de la Gente Altamente Efectiva');
       
SAVEPOINT lote_1;       

INSERT INTO ficha_libro
VALUES (NULL, 1, 1, 1, 567890123, 'Transforma tu vida con la regla de los 5 segundos.', 'El Poder de los 5 Segundos'),
	   (NULL, 2, 2, 2, 678901234, 'Principios y estrategias para alcanzar el éxito financiero y personal.', 'Dinero: Domina el Juego'),
	   (NULL, 3, 3, 3, 789012345, 'Cómo superar el perfeccionismo y abrazar la imperfección.', 'El Don de la Imperfección'),
	   (NULL, 4, 4, 4, 890123456, 'Descubre cómo influir positivamente en los demás.', 'Cómo Hablar Bien en Público');

SAVEPOINT lote_2;

-- RELEASE SAVEPOINT lote_2;
-- COMMIT;



