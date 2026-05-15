IMPLEMENTATION MODULE DateUtil;

PROCEDURE IsLeap(Year : INTEGER) : BOOLEAN;
BEGIN
    IF (Year MOD 4) # 0 THEN
        RETURN FALSE;
    END;

    IF (Year MOD 100) # 0 THEN
        RETURN TRUE;
    END;

    RETURN (Year MOD 400) = 0;
END IsLeap;

END DateUtil.