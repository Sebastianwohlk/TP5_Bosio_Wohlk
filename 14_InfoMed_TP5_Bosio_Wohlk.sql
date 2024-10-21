SELECT m.nombre, COUNT(r.id_receta) AS total_recetas
FROM Recetas r
JOIN Medicamentos m ON r.id_medicamento = m.id_medicamento
GROUP BY m.nombre
ORDER BY total_recetas DESC
LIMIT 1;
