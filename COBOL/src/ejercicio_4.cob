*> REFERENCIAS:
*> Alphabetic check using COBOL:  https://ibmmainframes.com/about11789.html#google_vignette
*> Checking for a null value in COBOL: https://ibmmainframes.com/about31546.html
*> How to get a single character from a string in COBOL?: https://stackoverflow.com/questions/16442609/how-to-get-a-single-character-from-a-string-in-cobol


IDENTIFICATION DIVISION.
PROGRAM-ID. ejercicio_4.
AUTHOR. Armando Hernandez.

ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
FILE-CONTROL.
    SELECT IN-FILE ASSIGN TO "palabras.txt"
        ORGANIZATION IS LINE SEQUENTIAL.

DATA DIVISION.
FILE SECTION.
FD IN-FILE.
01 IN-RECORD.
    05 FILE-LINE PIC X(10).

WORKING-STORAGE SECTION.
01 SWITCHES.
    05 SWITCH PIC X(1) VALUE "N".
01 COUNTERS.
    05 COUNTER PIC 9(3) VALUE ZEROES.
    05 LETTER-COUNTER PIC 9(3) VALUE ZEROES.

PROCEDURE DIVISION.

000-MAIN.
    PERFORM 100-INITIALIZE.
    PERFORM 200-PROCESS-RECORDS
        UNTIL SWITCH = "Y".
    STOP RUN.

100-INITIALIZE.
    OPEN INPUT IN-FILE.
    READ IN-FILE
        AT END
            MOVE "Y" TO SWITCH
        NOT AT END
            COMPUTE COUNTER = COUNTER + 1
    END-READ.

200-PROCESS-RECORDS.

    IF FILE-LINE IS ALPHABETIC THEN
        IF FILE-LINE = SPACES THEN
            DISPLAY "LINEA " COUNTER ": está vacía."
        ELSE            
            IF FILE-LINE(1:1) = "A" THEN
                COMPUTE LETTER-COUNTER = LETTER-COUNTER + 1
                DISPLAY "LINEA " COUNTER ": " FILE-LINE
            END-IF
        END-IF
    ELSE
        DISPLAY "LINEA " COUNTER ": no es alfabética."
    END-IF.
    
    READ IN-FILE
        AT END
            MOVE "Y" TO SWITCH
            DISPLAY "PALABRAS CON 'A' inicial: " LETTER-COUNTER
            DISPLAY "PALABRAS TOTALES: " COUNTER
        NOT AT END
            COMPUTE COUNTER = COUNTER + 1
    END-READ.
