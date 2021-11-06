program NumberFibonacci;{программа генерирует числа Фибоначчи}
const k=36;
var 
f: array [0..k] of longint;

begin
 f[0]:=0;
 f[1]:=1;
 writeln(f[0]);
 writeln(f[1]);
 for var i:=2 to k do 
  begin
  f[i]:=f[i-1]+f[i-2];
  writeln(f[i],'  --  ', i);
  end;
end.