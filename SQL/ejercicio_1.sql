SELECT nombre, apellido, nombre_municipio, 
    CASE 
        WHEN ingresos_mensuales < 1000 THEN 'Bajo'
        WHEN ingresos_mensuales < 3000 THEN 'Medio'
        ELSE 'Alto'
    END AS clasificacion_ingresos
FROM Ciudadanos
JOIN Municipios ON Ciudadanos.municipio_id = Municipios.id_muni
WHERE 
    (nombre LIKE 'Ped%' OR nombre LIKE 'San%')
    AND LENGTH(apellido) < 15
    AND region = 'Centro'
    AND nivel_infraestructura > 5
    AND fecha_nacimiento < '2000-01-01'
ORDER BY apellido ASC, nombre DESC;
