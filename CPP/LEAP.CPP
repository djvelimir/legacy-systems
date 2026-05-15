#include <iostream.h>
#include "dateutil.hpp"

int main()
{
    int year;

    cout << "Enter year: ";
    cin >> year;

    if (DateUtil::IsLeap(year))
        cout << "Leap year" << endl;
    else
        cout << "Not leap year" << endl;

    return 0;
}