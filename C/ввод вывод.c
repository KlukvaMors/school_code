#include <stdio.h>
#include <stdlib.h>
int main ()
{
 int x1=123;
 float x2=123.45;
 double x3=123.456789;
 //����� ��� ������ ���������� � ����������� ������� ����
 printf("|%d| \n",x1);
 printf("|%d| \n",x2);
 printf("|%d| \n",x3);
 printf("------------ \n");
 //�������� ������������ �� ������ ����, ������ ���� 15 �������
 printf("|%-15d| \n",x1);
 printf("|%-15d| \n",x2);
 printf("|%-15d| \n",x3);
 printf("------------ \n");
  //����� ��� ������ ����������, ������ ���� 15 �������
 printf("|%15d| \n", x1);
 printf("|%15d| \n", x2);
 printf("|%15d| \n", x3);
 system("PAUSE");
 return (0);
}
