uses crt;
const n=1000000;
var x:array[1..n] of integer;
    i,t1,t2,perm:integer;

procedure sort(l,r:integer); {l-����� ����� ������,r-������ �����}
var
  i,j,x1,y1,m: integer;
begin
  i:=l;
  j:=r;
  m:=round ((l+r)/2);{������� �������}
  x1:=x[m];
  repeat
    while x[i]<x1 do inc(i);{���� ����� ������ ��������, ��������� ����� ���� ������ }
    while x[j]>x1 do dec(j);{���� ������ ������ ��������, ��������� ����� ������}
    if i<=j then {���� ����� � ������ ��������}
     begin
      y1:=x[i];
      x[i]:=x[j];{������ ����� � ������}
      x[j]:=y1;
      inc(i); {����� ������}
      dec(j); {������ �����}
      inc(perm); {������� ��������� ������������}
     end;
  until i>j;{����� ����� ������������}
  if l<j then sort(l,j);{���������� ���������}
  if i<r then sort(i,r);{��� ����� ��� ������ �����}
end;
begin
t1:=Milliseconds;
randomize;
writeln('The array before sorted:');
for i:=1 to n do
  begin
   x[i]:=random(100);
   //write(x[i]:4);
  end;
writeln;
sort(1,n);
t2:=Milliseconds;
writeln('The array after sorted: ');
//for i:=1 to n do
//write(x[i]:4);
writeln;
writeln;
writeln('the array elements: ', n);
writeln('the number of permutations: ', perm); 
writeln('runtime: ',(t2-t1)/1000, ' sek');
readkey;
end.