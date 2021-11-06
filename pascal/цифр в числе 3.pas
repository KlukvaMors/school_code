var a, b: integer;

Begin
read(a);
b:=0;
while  a > 0 do
begin
a:=a div 10;
b:=b+1;
end;
writeln(b);

End.