# Respuestas Ejercicio 3 - COBOL

## 1. Divisiones de un Programa COBOL

Un programa COBOL se divide en cuatro divisiones principales:
- **IDENTIFICATION DIVISION:** Se muestra o define información del programa.
- **ENVIRONMENT DIVISION:** Identifica inputs y outputs del programa.
- **DATA DIVISION:** Declaración de variables y estructuras de datos.
- **PROCEDURE DIVISION:** Lógica del programa

## 2. Definición de distintas variables

(a) Alfanumérica de 5 posiciones: 01 nombre_var PIC X(5) VALUE 'ABCD3'
(b) Numérica de 8 posiciones: 01 nombre_var PIC 9(8) VALUE 64859758
(c) Numérica de 8 posiciones con dos decimales: 01 nombre_var PIC 9(8)V9(2) VALUE 64859758.34
(d) Carácter de 3 posiciones inicializada en espacios: 01 nombre_var PIC X(3) VALUE SPACES
(e) Numérica de 8 posiciones inicializada en ceros: 01 nombre_var PIC 9(3) VALUE ZEROES
(f) Numérica editada de 5 posiciones con miles: 
(g) Numérica con signo de dos enteros 5 decimales: 01 nombre_variable PIC S9(2)V9(5) VALUE -34.42765
(h) Alfanumérica de 3 posiciones inicializada con valor IB: 01 nombre_var PIC x(3) VALUE 'IBM'

## 3. Divisiones, Secciones y Párrafos - Estructura de programa COBOL
### Referencia
- [IBM - Structuring your program](https://www.ibm.com/docs/en/cobol-zos/6.4?topic=program-structuring-your)

```cobol
IDENTIFICATION DIVISION.
Program-ID.    hev-99.
Author.        Armando Hernandez.
Installation.  Computing Laboratories.
Date-Written.  06/03/2025.
Date-Compiled. 07/03/2025.
PROCEDURE DIVISION.
CONFIGURATION SECTION.
SOURCE-COMPUTER. IBM-system.
OBJECT-COMPUTER. IBM-system. 
DATA DIVISION.
FILE-SECTION.
FD archivo.txt
WORKING-STORAGE SECTION.
    01  mensaje PIC X(15) VALUE 'Hola, Mundo!'.
PROCEDURE DIVISION.
    DISPLAY mensaje

```

## Referencias generales

- [Guru99 - COBOL Programming Tutorial](https://www.guru99.com/learn-cobol-programming-tutorial.html)
- [Tutorialspoint - COBOL - Data Types](https://www.tutorialspoint.com/cobol/cobol_data_types.htm)
- [Geeksforgeeks - Variables in COBOL](https://www.geeksforgeeks.org/variables-in-cobol)
- [IBM - Using variables, structures, literals and constants](https://www.ibm.com/docs/en/cobol-zos/6.4?topic=data-using-variables-structures-literals-constants)
