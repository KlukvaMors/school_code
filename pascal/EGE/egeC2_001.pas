Program egeC2;
const
 N=30;
 var
 a: array [1..N] of integer;
 i, x, y: integer;
 s: real;
 begin
 for i:=1 to N do read (a[i]);
 y:=0;
 x:=0;
 for i:=1 to N do 
  begin
  if (a[i]=4) or (a[i]=5) then
   begin
   y:=y+a[i];
   x:=x+1;
   end;
  end;
 s:=y/x;
 writeln();
 writeln(s);
 end.