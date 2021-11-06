uses crt;
const n=1000000;
var x:array[1..n] of integer;
    i,t1,t2,perm:integer;

procedure sort(l,r:integer); {l-левый конец масива,r-правый конец}
var
  i,j,x1,y1,m: integer;
begin
  i:=l;
  j:=r;
  m:=round ((l+r)/2);{средний элемент}
  x1:=x[m];
  repeat
    while x[i]<x1 do inc(i);{пока левый больше среднего, подвигоем левый край вправо }
    while x[j]>x1 do dec(j);{пока правый меньше среднего, подвигаем левый вправо}
    if i<=j then {если левый и правый срослись}
     begin
      y1:=x[i];
      x[i]:=x[j];{меняем левый и правый}
      x[j]:=y1;
      inc(i); {левый вправо}
      dec(j); {правый влево}
      inc(perm); {счётчик количеств перестановок}
     end;
  until i>j;{конец одной перестановки}
  if l<j then sort(l,j);{рекурсивно сортируем}
  if i<r then sort(i,r);{или левую или правую части}
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