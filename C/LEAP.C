#include <stdio.h>
#include "dateutil.h"

int main(void)
{
    int year;

    printf("Enter year: ");
    scanf("%d", &year);

    if (is_leap(year))
        printf("Leap year\n");
    else
        printf("Not leap year\n");

    return 0;
}