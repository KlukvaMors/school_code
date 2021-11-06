Program multiplication_table;

Var x, y:  integer;
Begin

  y:=1;
  x:=2;
writeln('’€‹ˆ–€ “Œ†…ˆŸÿ');

  while x < 10 do
    begin
    while y < 10 do
      begin
      writeln(x, ' * ', y , ' = ' , x*y);

      y:=y+1
      end;
     writeln();
     writeln();
     y:=1;
     x:=x+1;
     readln;
     end;
end.
