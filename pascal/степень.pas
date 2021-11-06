Program Stepen;
var a, b, res: longint;
BEGIN
writeln('¬ведите число и степень числа');
read(a,b);
res:=a;
for var i:=2 to b do
res:=res*a;

writeln('ответ: ', res)
END.
