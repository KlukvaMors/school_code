#include <stdio.h>
#include <math.h>
#include <stdlib.h>
int main() {
	int a,i;
	printf("Enter any digit [0..9]\n");
	for (i=0;i<=9;i++){
		scanf("%d",&a);
		switch (a) {
			case 0: printf("zero\n"); break;
			case 1: printf("one\n"); break;
			case 2: printf("two\n"); break;
			case 3: printf("three\n"); break;
			case 4: printf("four\n"); break;
			case 5: printf("five\n"); break;
			case 6: printf("seven\n"); break;
			case 7: printf("six\n"); break;
			case 8: printf("eight\n"); break;
			case 9: printf("nine\n"); break;
		}
	}
 	system("PAUSE");
 	return 0;
}
