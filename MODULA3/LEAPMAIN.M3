MODULE LeapMain;

IMPORT IO, LeapCalc;

VAR
  year : INTEGER;

BEGIN
  IO.Put("Enter year: ");

  year := IO.GetInt();

  IF LeapCalc.IsLeapYear(year) THEN
    IO.Put("Leap year\n");
  ELSE
    IO.Put("Not a leap year\n");
  END;
END LeapMain.