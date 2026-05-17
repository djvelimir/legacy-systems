MODULE LeapMain;

IMPORT In, Out, LeapCalc;

VAR
  Year : INTEGER;

BEGIN
  Out.String("Enter year: ");
  Out.Ln;

  In.Open;
  In.Int(Year);

  IF LeapCalc.IsLeapYear(Year) THEN
    Out.String("Leap year")
  ELSE
    Out.String("Not a leap year")
  END;

  Out.Ln
END LeapMain.