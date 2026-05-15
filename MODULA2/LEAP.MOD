MODULE Leap;

FROM InOut IMPORT WriteString, WriteCard, ReadCard, WriteLn;
FROM DateUtil IMPORT IsLeap;

VAR
    Year : CARDINAL;

BEGIN
    WriteString('Enter year: ');
    ReadCard(Year);

    IF IsLeap(INTEGER(Year)) THEN
        WriteString('Leap year');
    ELSE
        WriteString('Not leap year');
    END;

    WriteLn;
END Leap.