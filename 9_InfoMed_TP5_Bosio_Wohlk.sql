SELECT id_medico, COUNT(*) AS num_recetas
FROM recetas
GROUP BY id_medico
ORDER BY id_medico asc;
