MODULE LeapCalc;

PROCEDURE IsLeapYear*(Year : INTEGER) : BOOLEAN;
BEGIN
  RETURN
    (Year MOD 4 = 0) &
    ((Year MOD 100 # 0) OR (Year MOD 400 = 0));
END IsLeapYear;

END LeapCalc.