C LEAP YEAR VALIDATION LOGIC

      SUBROUTINE CHECKLP

      INTEGER YEAR
      LOGICAL ISLEAP

      COMMON /LEAPDAT/ YEAR, ISLEAP

      ISLEAP = .FALSE.

      IF (MOD(YEAR,4) .EQ. 0) THEN

         IF (MOD(YEAR,100) .EQ. 0) THEN

            IF (MOD(YEAR,400) .EQ. 0) THEN
               ISLEAP = .TRUE.
            END IF

         ELSE

            ISLEAP = .TRUE.

         END IF

      END IF

      RETURN
      END