#include "dateutil.h"

int is_leap(int year)
{
    if (year % 4 != 0)
        return 0;

    if (year % 100 != 0)
        return 1;

    return (year % 400 == 0);
}