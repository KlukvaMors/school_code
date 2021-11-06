Program c4;
var
sumball, shc: array [1..99] of longint;
srball: array[1..99] of real;
i, a, s, n, ball:integer;
info:string;
max:real;
Begin
for i:=1 to 99 do
  begin
  sumball[i]:=0;
  shc[i]:=0;
  end;
max:=0;
readln(n);
for i:=1 to n do
  begin
  readln(info);
  a:=pos(' ',info);
  delete(info,1,a);
  a:=pos(' ',info);
  delete(info,1,a);
  a:=pos(' ',info);
  s:=StrToInt(copy(info,1,a-1));
  delete(info,1,a);
  ball:=StrToInt(info);
  sumball[s]:=sumball[s]+ball;
  shc[s]:=shc[s]+1;
  end;
for i:= 1 to 99 do
  begin
  srball[i]:=sumball[i]/shc[i];
  if srball[i]>max then
    max:=srball[i];
  end;
for i:= 1 to 99 do
  if srball[i]=max then
  writeln(i);
end.
