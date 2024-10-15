CREATE EXTENSION IF NOT EXISTS pg_trgm;

UPDATE Pacientes
SET ciudad = CASE
    WHEN similarity(ciudad, 'Buenos Aires') > 0.4 THEN 'Buenos Aires'
    WHEN similarity(ciudad, 'Córdoba') > 0.3 THEN 'Córdoba'
    WHEN similarity(ciudad, 'Mendoza') > 0.3 THEN 'Mendoza'
    ELSE ciudad
END;
