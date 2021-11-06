#include <stdio.h>
#include <stdlib.h>

int main(){
	freopen("text.txt","r", stdin);
	int a[10];
	for (int i=0;i<10;i++) 
            scanf("%d",&a[i]); 
      for (int i=1;i<10;i++) 
            a[0]+=a[i]; 
      printf("summa elementov massiva %d\n",a[0]); 
      system("PAUSE");
      return 0;
}
