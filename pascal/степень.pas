Program Stepen;
var a, b, res: longint;
BEGIN
writeln('������� ����� � ������� �����');
read(a,b);
res:=a;
for var i:=2 to b do
res:=res*a;

writeln('�����: ', res)
END.
