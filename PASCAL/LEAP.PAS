PROGRAM LeapDemo;

USES
    Crt,
    DateUtil;

VAR
    Year : Integer;

BEGIN
    ClrScr;

    Write('Enter year: ');
    ReadLn(Year);

    IF IsLeap(Year) THEN
        WriteLn('Leap year')
    ELSE
        WriteLn('Not leap year');

    ReadLn;
END.