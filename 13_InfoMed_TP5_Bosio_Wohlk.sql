SELECT p.nombre, COUNT(r.id_receta) AS recetas_total
FROM Pacientes p
JOIN Recetas r ON p.id_paciente = r.id_paciente
GROUP BY p.nombre
ORDER BY recetas_total DESC;
