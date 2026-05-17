MODULE LeapCalc;

PROCEDURE IsLeapYear(year : INTEGER) : BOOLEAN =
BEGIN
  RETURN
    (year MOD 4 = 0) AND
    ((year MOD 100 # 0) OR (year MOD 400 = 0));
END IsLeapYear;

END LeapCalc.