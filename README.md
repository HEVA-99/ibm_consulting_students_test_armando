# Prueba Técnica 2025 

### Armando Hernández de la Vega
### ahdelaveg99@gmail.com

## Ejercicios SQL
### Estructura del Proyecto

```bash
SQL/
│
├── base.db                # Base de datos SQLite precreada
├── crear_bd.sql           # Script para crear tablas e insertar datos
├── ejercicio_1.sql        # Script con la consulta del Ejercicio 1
├── ejercicio_2.sql        # Script con la consulta del Ejercicio 2
└── reset.sql              # Script para resetear la base de datos
```

### Instrucciones para Ejecutar los Ejercicios

1. **Crear la base de datos y poblarla con datos de ejemplo:**
```bash
sqlite3 base.db < crear_bd.sql
```

2. Ejecutar el Ejercicio 1:
```bashxx
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

### Descripción de los Ejercicios
Ejercicio 1:
Consulta que selecciona ciudadanos cuyos nombres comiencen con "Ped" o "San", con apellidos de menos de 15 caracteres, en municipios de la región "Centro" con nivel de infraestructura mayor a 5, nacidos antes del 2000, clasificando sus ingresos en Bajo, Medio o Alto.

Ejercicio 2:
Consulta que devuelve apellidos únicos con 8 o más caracteres.


## Ejercicios COBOL


```bash
COBOL/
│
├── docs/
│   └── respuestas.md       # Respuestas teóricas a las preguntas del ejercicio 3
│
└── src/
    ├── Dockerfile          # Archivo para containerizar el ejercicio en Podman
    ├── ejercicio_3_4.cob   # Código COBOL para ejercicio 3.4
    ├── ejercicio_3_5.cob   # Código COBOL para ejercicio 3.5
    ├── ejercicio_4.cob     # Código COBOL para el ejercicio 4
    ├── palabras.txt        # Archivo de texto con las palabras a evaluar
    └── run.sh              # Script para ejecutar el programa dentro del contenedor
```

# Ejecutar programas COBOL

## 1. Compilar y Ejecutar Localmente (Opcional)

```bash
cd COBOL/src
cobc -x -o ejercicio_4 ejercicio_4.cob
./ejercicio_4
```

## 2. Containerizar con Podman
### Construir la Imagen del Contenedor:

```bash
cd COBOL/src
podman build -t cobol-app .
```

## 3. Ejecutar el Contenedor con Volumen Montado

```bash
podman run --rm -v $(pwd)/palabras.txt:/mnt/palabras.txt cobol-app
```

## Descripción de los Ejercicios COBOL

### Ejercicio 3.4:
Estructura de un programa COBOL con instrucciones para evaluar dos variables numéricas y desplegar resultados.

### Ejercicio 3.5:
Instrucciones de un programa COBOL para evaluar variables de un archivo con productos

### Ejercicio 4:
Programa COBOL que lee un archivo de texto (palabras.txt), valida que el archivo exista y que las palabras sean alfabéticas, cuenta cuántas palabras comienzan con la letra "A" y despliega los resultados.

### Ejercicio 5:
Ejecución del programa COBOL en un contenedor con Podman, utilizando un volumen para montar el archivo palabras.txt.