SELECT m.nombre AS nombre_medico, p.nombre AS nombre_paciente, COUNT(c.id_consulta) AS total_consultas
FROM Consultas c
JOIN Pacientes p ON c.id_paciente = p.id_paciente
JOIN Medicos m ON c.id_medico = m.id_medico
GROUP BY m.nombre, p.nombre
ORDER BY m.nombre, p.nombre;
