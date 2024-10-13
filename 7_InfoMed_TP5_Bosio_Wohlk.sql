SELECT ciudad, COUNT(*) AS num_pacientes
FROM pacientes
GROUP BY ciudad;
