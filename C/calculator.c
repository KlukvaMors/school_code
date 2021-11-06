#include <stdio.h>
#include <math.h>
#include <stdlib.h>
int main() {
	float a,b,res;
	char c;
	printf("PROGRAM\n");
	printf("CALCULATOR\n");
 	printf("Command system:\n");
 	printf("+\n");
 	printf("-\n");
 	printf("x\n");
 	printf("/\n");
 	printf("Exit - 0\n\n");
    while (a!=0) {
 		scanf("%f %c %f", &a,&c,&b);
 		switch (c) {
		 case '+' : res=a+b; printf("%1.0f  + %1.0f = %1.0f\n",a,b,res); break;
		 case '-' : res=a-b; printf("%1.0f - %1.0f = %1.0f\n",a,b,res); break;
		 case 'x':
	 	 case '*': res=a*b;  printf("%1.0f x %1.0f = %1.0f\n",a,b,res); break;
	 	 case '/': res=a/b;  printf("%1.0f / %1.0f = %f\n",a,b,res); break;
		 default : printf("ERROR!"); break;
		 }
	}
 	system("PAUSE");
 	return 0;
}
