Program massiv;



Var
n, i:byte;
a: array [1..10] of longint;

BEGIN
n:=1;
for i:=1 to 10 do
Begin
read(a[n]);
n+=1;
End;
n-=1;
For i:=1 to 10 do
Begin
writeln(a[n]);
n-=1;
End;
END.


