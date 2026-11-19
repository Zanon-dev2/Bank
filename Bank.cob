IDENTIFICATION DIVISION.
PROGRAM-ID. BANK.
AUTHOR MIGUEL ZANON.
DATA DIVISION.
WORKING-STORAGE SECTION.

01 CAD PIC X(20).
01 VAL PIC 9(10)V99.
01 SALD PIC 9(10)V99.
01 OP PIC 9(01) VALUE 1.
01 SALDT PIC Z(10)9.99.

PROCEDURE DIVISION.
INIT.
PERFORM UNTIL OP = 0
        DISPLAY "Operation(0 - end : 1 - deposit : 2 - withdraw)" WITH NO ADVANCING
        ACCEPT OP
        EVALUATE OP
                WHEN 0
                        EXIT PERFORM
                WHEN 1
                        DISPLAY "Deposit value: " WITH NO ADVANCING
                        ACCEPT VAL
                        COMPUTE SALD = SALD + VAL
                WHEN 2
                        DISPLAY "Withdraw value: " WITH NO ADVANCING
                        ACCEPT VAL
			IF VAL > SALD
				THEN
					DISPLAY "Invalid withdraw"
					EXIT PERFORM CYCLE
				ELSE
                        		COMPUTE SALD = SALD - VAL
			END-IF
                WHEN OTHER
                        DISPLAY "Unknown command"
                        EXIT PERFORM CYCLE
        END-EVALUATE
	MOVE SALD TO SALDT
	DISPLAY "Saldo: " FUNCTION TRIM(SALDT)
END-PERFORM.
DISPLAY "END".
STOP RUN.
