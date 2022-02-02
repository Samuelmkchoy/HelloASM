*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START: 
    LEA MESSAGE, A1
    MOVE.W #500, $2000
    MOVE.B #3, D0

NEXT:
    SUB #1,D0
    ADD.B #1, D1
    
    MOVE.B D0,D2
    
    CMP #2,D1
    BSR CARBON_REDUCTION
    
    MOVE.B #14,D0
    TRAP #15
    MOVE.B D2,D0
    
    CMP #0, D0
    BNE NEXT

CARBON_REDUCTION:

    SUB.W #10, $2000
    RTS
    SIMHALT             ; halt simulator

MESSAGE DC.B 'LOOP. ',0

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
