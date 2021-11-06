Program Evklid;
var m, n: longint;
BEGIN
Writeln('Введите M и N');
read(m,n);
while m<>n do
begin
if m>n then
m:=m-n
else
n:=n-m;
end;
writeln('Наибольший общий делитель m и n');
writeln(m);
END.