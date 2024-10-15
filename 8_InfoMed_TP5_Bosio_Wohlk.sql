SELECT ciudad, id_sexo, COUNT(*) AS num_pacientes
FROM pacientes
GROUP BY ciudad, id_sexo
ORDER BY ciudad, id_sexo DESC;