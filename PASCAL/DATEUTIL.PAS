UNIT DateUtil;

INTERFACE

FUNCTION IsLeap(Year : Integer) : Boolean;

IMPLEMENTATION

FUNCTION IsLeap(Year : Integer) : Boolean;
BEGIN
    IF (Year MOD 4) <> 0 THEN
        IsLeap := False
    ELSE IF (Year MOD 100) <> 0 THEN
        IsLeap := True
    ELSE
        IsLeap := (Year MOD 400) = 0;
END;

END.