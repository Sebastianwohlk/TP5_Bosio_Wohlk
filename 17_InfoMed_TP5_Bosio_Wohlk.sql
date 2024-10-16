SELECT m.nombre AS nombre_medicamento,
       COUNT(r.id_receta) AS total_recetas,
       STRING_AGG(DISTINCT me.nombre, ', ') AS nombres_medicos,
       STRING_AGG(DISTINCT p.nombre, ', ') AS nombres_pacientes
FROM Recetas r
JOIN Medicamentos m ON r.id_medicamento = m.id_medicamento
JOIN Medicos me ON r.id_medico = me.id_medico
JOIN Pacientes p ON r.id_paciente = p.id_paciente
GROUP BY m.nombre
ORDER BY total_recetas DESC;
