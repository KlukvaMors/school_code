program OOO;

var a, b, c, d, res1, res2: double;

BEGIN

Writeln('��������� ���� � �� ��������� ����: ax^2+bx+c=0');
Writeln('������� �:');
Read(a);
Writeln('������� b:');
Read(b);
Writeln('������� �:');
Read(c);
d := sqr(b)-4*a*c;
res1:= (-b+sqrt(d))/(2*a);
res2:= (-b-sqrt(d))/(2*a);
Writeln('x = ', res1);
If res1<>res2 then
Writeln('x = ', res2);

END.

