Program Pyramid;
//��������� ��������� ������� ������������ �� ������� ������

Var  p, s, r1, r2, r3: real;

BEGIN

Writeln('������� ��� ������� ������������');
Readln(r1, r2, r3);
p:=(r1+r2+r3)/2;
s:=sqrt(p*(p-r1)*(p-r2)*(p-r3));
writeln('������� ������������ = ', s);
Writeln('���������� �������� - ',round(s))
end.
