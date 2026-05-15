C MAIN PROGRAM

      PROGRAM LEAP

      INCLUDE 'LEAP.INC'

      PRINT *, 'ENTER YEAR:'
      READ *, YEAR

      CALL CHECKLP

      IF (ISLEAP) THEN
         PRINT *, YEAR, ' IS A LEAP YEAR'
      ELSE
         PRINT *, YEAR, ' IS NOT A LEAP YEAR'
      END IF

      END