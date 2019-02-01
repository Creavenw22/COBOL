       IDENTIFICATION DIVISION.
      *---------------------------------------------*
       PROGRAM-ID. Program1 as "Ejemplo.Program1".
      *---------------------------------------------*
      * HACER DISPLAY DE LOS PRIMEROS 10 NUMEROS    *
      * NATURALES INDICANDO PRIMERO QUE ES LO QUE   *
      * SE VA A MOSTRAR. MOSTRAR LOS NUMEROS SIN LOS*
      * CEROS A LA IZQ INDICAR EL FIN DEL PROCESO   *
      *---------------------------------------------*
       ENVIRONMENT DIVISION.
      *---------------------------------------------*
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
      *---------------------------------------------*
       DATA DIVISION.
      *---------------------------------------------*
       working-storage section.
      *---------------------------------------------*
       01 WS-VARIABLES-NUMERICAS.
           05 WS-NUMERO                    PIC 99.

       01 WS-AREA-EDICION.
           05 WS-NRO-EDITADO               PIC Z9.

       01 WS-CONFIRM                       PIC A.
      *---------------------------------------------*
       PROCEDURE DIVISION.

           PERFORM 100-INICIO THRU 100-FIN-INICIO.
           PERFORM 110-PROCESO THRU 110-FIN-PROCESO
                                       UNTIL WS-NUMERO = 10.
           PERFORM 120-FIN THRU 120-FIN-EXIT.

           STOP RUN.
      *---------------------------------------------*
       100-INICIO.

           INITIALIZE WS-VARIABLES-NUMERICAS.
           DISPLAY "*******PRIMEROS 10 NUMEROS NATURALES*******".

       100-FIN-INICIO.
           EXIT.
      *---------------------------------------------*
       110-PROCESO.

           ADD 1 TO WS-NUMERO.
           MOVE WS-NUMERO TO  WS-NRO-EDITADO.
           DISPLAY WS-NRO-EDITADO.

       110-FIN-PROCESO.
           EXIT.
      *---------------------------------------------*
       120-FIN.

           DISPLAY "FIN PROCESO".
           ACCEPT WS-CONFIRM. 

       120-FIN-EXIT.
           EXIT. 

       end program Program1.
