program Enter;
var
a, b: array[1..10] of string;
c, d: array[1..10]  of integer;
var n, i: byte;
s, t, p, w:char;
BEGIN
writeln('Enter N');
readln(n);
for i:=1 to n do
begin
repeat
read(s);
a[i]:=a[i]+s; 
until s=' ';
repeat
read(t);
b[i]:=b[i]+t; 
until t=' ';
repeat
read(w);
c[i]:=StrToInt(a[i]+w); 
until w=' ';
end;
END.
