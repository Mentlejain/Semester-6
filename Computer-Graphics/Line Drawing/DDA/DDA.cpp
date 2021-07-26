#include<iostream>
#include <conio.h>
#include <graphics.h>
#include<cmath>
#include <Windows.h>
using namespace std;

int main()
{
	int h=720;
	initwindow(1024,720,"DDA Algorithm");
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
	if(dx==0)
	{
		for(yk=y1;yk!=y2;y1>y2?yk--:yk++)
		{
			putpixel(x1,h-yk,RED);
			delay(30);
			cout<<"("<<xk<<","<<yk<<")"<<endl;
		}
	}
	else
	{
	    int steps = abs(dx) > abs(dy) ? abs(dx) : abs(dy); 
	    float Xinc = dx / (float) steps; 
	    float Yinc = dy / (float) steps; 
	    float xk = x1; 
	    float yk = y1; 
	    for (int i = 0; i < steps; i++) 
	    { 
	        putpixel (xk,h-yk,RED);
	        xk += Xinc;
	        yk += Yinc;          
	        delay(30);
			cout<<"("<<round(xk)<<","<<round(yk)<<")"<<endl;   
	    }
	}
	getch();
}
