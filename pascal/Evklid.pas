Program Evklid;
var m, n: longint;
BEGIN
Writeln('������� M � N');
read(m,n);
while m<>n do
begin
if m>n then
m:=m-n
else
n:=n-m;
end;
writeln('���������� ����� �������� m � n');
writeln(m);
END.