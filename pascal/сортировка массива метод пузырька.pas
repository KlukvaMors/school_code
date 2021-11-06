program  SortingOfArray;
Uses CRT;
const n=40000;
var a: array [1..n] of byte;
c : byte;
i, j,t1, t2:longint;
BEGIN
writeln('Количество элементов массива = ', n);
writeln;
readkey;
for i:=1 to n do
  begin
  a[i]:=random(100);
  writeln('a[',i,']=',a[i]);
  writeln;
  end;
t1:=milliseconds;
for i:=1 to n-1 do
  for j:=n-1 DownTo i do
    if a[j]>a[j+1] then
      begin
      c:=a[j];
      a[j]:=a[j+1];
      a[j+1]:=c;
      end;
t2:=milliseconds;
readkey;
Writeln('------------------');
for i:=1 to n do
  begin
  writeln;
  writeln('a[',i,']=',a[i]);
  end;
readkey;
writeln;
writeln;
writeln('Время выполнения программы - ',(t2-t1)/100,' sek');
readkey;
END.