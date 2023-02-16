#include <iostream>
#include <vector>
#include <algorithm>

using namespace std;
 
int main()
{
 
    vector<string> staff = 
    {
        "Dabbling", "Dodgy", "Dapper"
    };

    //for_each() requires <algorithm>
    for_each
    (
        staff.begin(), staff.end(),
        [](string i){cout << i + " Doggo" << endl;}
    );
 
    return 0;
}