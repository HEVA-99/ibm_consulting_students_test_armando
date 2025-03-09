* Referencia: PROCEDURE DIVISION statements (https://www.ibm.com/docs/en/cobol-zos/6.4?topic=division-procedure-statements)
* Referencia: Reading records from a file (https://www.ibm.com/docs/en/cobol-aix/5.1?topic=files-reading-records-from-file)

IDENTIFICATION DIVISION.
Program-ID.    ejercicio_3.5.
Author.        Armando Hernandez.
PROCEDURE DIVISION.
    OPEN INPUT archivo.

       IF TIPO-PRODUCTO = 'P1' THEN
          MULTIPLY 1.1 BY PRECIO
       ELSE
          IF TIPO-PRODUCTO = 'P2' THEN
              MULTIPLY 1.2 BY PRECIO
          ELSE
              MULTIPLY 0.75 BY PRECIO
              MULTIPLY 1.3 BY IMPUESTO
          END-IF
       END-IF

       DISPLAY "TIPO-PRODUCTO: " TIPO-PRODUCTO
       DISPLAY "Precio: " PRECIO
       DISPLAY "IMPUESTO: " IMPUESTO

    CLOSE archivo.
    STOP RUN.

       