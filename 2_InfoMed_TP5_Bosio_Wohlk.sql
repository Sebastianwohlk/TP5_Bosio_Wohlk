CREATE VIEW pacientes_con_edad AS
SELECT *, EXTRACT(YEAR FROM AGE(CURRENT_DATE, fecha_nacimiento)) AS edad
FROM pacientes;
