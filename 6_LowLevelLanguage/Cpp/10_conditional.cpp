#include <iostream>
#include <tuple>

using namespace std;
 
int main()
{
 
    int x = 1;
    int y = 2;

    //swap() requires <tuple>
    swap(x,y);

    if (x > y)
    {
        cout << x << ">" << y << endl;
    }else if (x<y)
    {
                cout << x << "<" << y << endl;
    }else 
    {
        cout << x << "=" << y << endl;
    }
    
    

 
    return 0;
}