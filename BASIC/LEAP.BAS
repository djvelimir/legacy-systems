CLS

INPUT "Enter year: ", Y%

IF FNIsLeap(Y%) THEN
    PRINT "Leap year"
ELSE
    PRINT "Not leap year"
END IF

END

DEF FNIsLeap(Y%)

    FNIsLeap = 0

    IF (Y% MOD 4) <> 0 THEN
        EXIT DEF
    END IF

    IF (Y% MOD 100) <> 0 THEN
        FNIsLeap = -1
        EXIT DEF
    END IF

    IF (Y% MOD 400) = 0 THEN
        FNIsLeap = -1
    ELSE
        FNIsLeap = 0
    END IF

END DEF