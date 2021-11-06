#include <stdio.h>
#include <math.h>
#include <stdlib.h>
int main(){
	int a,b,c;
	float d,x1,x2;
	printf("enter a,b,c \n");
	scanf("%d%d%d",&a,&b,&c);
	d=pow(b,2)-4*a*c;
	if (d>=0) {
	  x1=(-b+sqrt(d))/(2*a);
	  printf("x1= %3.0f\n",x1);
    }
    else {
		printf("no solution");
	}
	
    if (d>0) {
   	  x2=(-b-sqrt(d))/(2*a);
   	  printf("x2= %3.0f\n",x2);
	}
	system("PAUSE");
	return (0);
	
}
