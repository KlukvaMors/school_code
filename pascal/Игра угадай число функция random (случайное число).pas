Program game_casino; //���������-���� �� ���������� ���������� �����(0-9)
USES CRT;
var a, b, c: integer;

begin
Randomize; 
a:= Random(10);//������� ������� ��� ��� ��������� ����� �� ��������� �����
c:=0;
writeln('���������� ������� ����� �� 0 �� 9');
while b<>a do// b<>a ��� ������ � �� ����� �
begin
readln(b);
if a<>b then
writeln('�� �������.. ���������� ��� ���.')
else
writeln('�������!!! �� ������!!');
c:=c+1;
end;
writeln();
writeln('�� ������� � ');
write(c);
write(' ����!');
writeln();
writeln();
end.