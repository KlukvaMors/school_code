#include <stdio.h>
#include <time.h>
#include <math.h>
#include <stdlib.h>
int main(void)
{
int N=100;
int i;
int a[N];//������� ������ �� 100 ���������
srand(time(0));//�������� ��������� ��������� �����
for (i=0; i <=N; i++) {
a[i] = 0+ rand() %100;//��������� ���  ���������� �������
printf("a[%d]=%d\n", i, a[i]);
}
return 0;
}

