#include<iostream>
#include <conio.h>
#include <graphics.h>
#include<cmath>
#include <Windows.h>
using namespace std;

int main()
{
	initwindow(1024,720,"DDA Algorithm");
	int x1,y1; //initial point
	int x2,y2; //final point
	int xk,yk; //intermediate points
	cout<<"Enter initial coordinates"<<endl;
	cout<<"X1=";cin>>x1;
	cout<<"X1=";cin>>y1;
	cout<<"Enter final coordinates"<<endl;
	cout<<"X2=";cin>>x2;
	cout<<"Y2=";cin>>y2;
	putpixel(x1,y1,RED);
	putpixel(x2,y2,RED);
	if(x1==x2)
	{
		for(yk=y1;yk!=y2;y1>y2?yk--:yk++)
		{
			putpixel(x1,yk,RED);
			//sleep(1);
		}
	}
	else if(y1==y2)
	{
		for(xk=x1;xk!=x2;x1>x2?xk--:xk++)
		{
			putpixel(xk,y1,RED);
			//sleep(1);
		}
	}
	else
	{
		float m=float(y2-y1)/float(x2-x1);
		xk=x1,yk=y1;
		if(m==1)
		{
			while(xk!=x2 || yk!=y2)
			{
				putpixel(xk,yk,RED);
				x1>x2?xk--:xk++;
				y1>y2?yk--:yk++;
				//sleep(1)
			}
		}
		else if(m<1)
		{
			while(xk!=x2 and yk!=y2)
			{
				putpixel(xk,yk,RED);
				xk=int(round(xk+m));
				yk++;
				//sleep(1)
			}
		}
		else
		{
			while(xk!=x2 and yk!=y2)
			{
				putpixel(xk,yk,RED);
				xk=xk++;
				yk=int(round(yk+(1/m)));
				//sleep(1)
			}
		}
	}
}
