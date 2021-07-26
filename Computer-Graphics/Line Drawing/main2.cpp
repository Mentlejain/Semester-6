#include<graphics.h>
#include<iostream>
#include<conio.h>
#include<cmath>
using namespace std;
int main()
{	
	initwindow(800,800);
	for(int i=300;i<400;i++)
	{
		putpixel(200,800-i,RED);
	}
	float x1,y1,x2,y2;
	cout<<"Enter the intial point(x,y):";
	cin>>x1>>y1;
	cout<<"Enter the final point(x,y):";
	cin>>x2>>y2;
	
	float slope=(y2-y1)/(x2-x1);
	
	if(slope==1)
	{
		for(float i1=x1+1,i2=y1+1;i1<x2 || i2<y2; i1++,i2++)
		{
			putpixel(i1,i2,10);
		}
	}
	else if(slope>1)
	{
		float i1=x1+float(1/slope);
		float save=i1;
		for(float i2=y1+1;i1<x2 || i2<y2;i1+=save,i2++)
		{
			if(floor(i1+0.5)<i1)
			{
				i1=floor(i1);
			}
			else
			{
				i1=ceil(i1);
			}
			putpixel(i1,i2,10);
		}
	}
	else
	{
		float i2=y1+slope;
		float save=i2;
		for(float i1=x1+1;i1<x2 || i2<y2;i2+=save,i1++)
		{
			if(floor(i2+0.5)<i1)
			{
				i2=floor(i2);
			}
			else
			{
				i2=ceil(i2);
			}
			putpixel(i1,i2,10);
		}
	}
	getch();
}
