# Prueba Técnica 2025 

# Ejercicios de SQL
## Estructura del Proyecto

SQL/
│
├── base.db                # Base de datos SQLite precreada
├── crear_bd.sql           # Script para crear tablas e insertar datos
├── ejercicio_1.sql        # Script con la consulta del Ejercicio 1
├── ejercicio_2.sql        # Script con la consulta del Ejercicio 2
└── reset.sql              # Script para resetear la base de datos


## Instrucciones para Ejecutar los Ejercicios

1. **Crear la base de datos y poblarla con datos de ejemplo:**
```bash
sqlite3 base.db < crear_bd.sql
```

2. Ejecutar el Ejercicio 1:
```bash
sqlite3 base.db < ejercicio_1.sql
```

3. Ejecutar el Ejercicio 2:
```bash
sqlite3 base.db < ejercicio_2.sql
```
Resetear la base de datos a su estado inicial:
```bash
sqlite3 base.db < reset.sql
```

# Descripción de los Ejercicios
Ejercicio 1:
Consulta que selecciona ciudadanos cuyos nombres comiencen con "Ped" o "San", con apellidos de menos de 15 caracteres, en municipios de la región "Centro" con nivel de infraestructura mayor a 5, nacidos antes del 2000, clasificando sus ingresos en Bajo, Medio o Alto.

Ejercicio 2:
Consulta que devuelve apellidos únicos con 8 o más caracteres.

