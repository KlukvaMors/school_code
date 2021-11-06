Program test;
uses CRT;

var a, b, c, r: integer;

BEGIN
 b:=0;
 read(c, r);
 while b<>c do
  begin
  a:=random(r);
  writeln('Random()=', a);
  b:=b+1;
  end;
END.