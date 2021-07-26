#include<iostream>
#include <conio.h>
#include <graphics.h>
#include <cmath>
using namespace std;
int main()
{
	//int gdriver=DETECT, gmode;
	//initgraph(&gdriver, &gmode,"C:\\Dev-Cpp\\MinGW64\\include\\winbgim");
	//int h=720;
	initwindow(1024,720,"Breseham Algorithm");
	int x1,y1; //initial point
	int x2,y2; //final point
	int xk,yk; //intermediate points
	cout<<"Enter initial coordinates"<<endl;
	cout<<"X1=";cin>>x1;
	cout<<"Y1=";cin>>y1;
	cout<<"Enter final coordinates"<<endl;
	cout<<"X2=";cin>>x2;
	cout<<"Y2=";cin>>y2;
	//y1=h-y1;
	//y2=h-y2;
	putpixel(x1,y1,RED);
	putpixel(x2,y2,RED);
	int dx=x2-x1;
	int dy=y2-y1; 
    int pk;
    xk=x1;yk=y1;
	if(abs(dx)>abs(dy))
	{
		pk = (2*abs(dy)) - abs(dx);
		for(int i=1;i<abs(dx);i++)
        {
            xk=x1<x2?xk+1:xk-1;
            if(pk<0)
                pk=pk+(2*abs(dy));
            else
            {
                yk=y1<y2?yk+1:yk-1;
                pk=pk+(2*abs(dy))-(2*abs(dx));
            }
            putpixel(xk,yk,GREEN);
            cout<<"("<<xk<<","<<yk<<")\tpk="<<pk<<endl;
            delay(10);
        }
	}
	else
	{
		putpixel(xk,yk,GREEN);
		pk = (2*abs(dx))-abs(dy);
        for(int i=1;i<abs(dy);i++)
        {
            yk =y1<y2?yk+1:yk-1;
            if(pk<0)
                pk=pk+(2*abs(dx));
            else
            {
                xk=x1<x2?xk+1:xk-1;
                pk=pk+(2 * abs(dx))-(2 *abs(dy));
            }	
            putpixel(xk,yk,GREEN);
            cout<<"("<<xk<<","<<yk<<")\tpk="<<pk<<endl;
			delay(10);
        }
	}
	getch();
}  
