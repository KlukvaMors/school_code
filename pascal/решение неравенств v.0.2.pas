{функции для нахождения логарифма числа по заданому основанию (без учета одз)}
function log(x,y:real):real;
begin
log:=ln(y)/ln(x);
end;
const
 {в min и max не рекомендуется ставить значения по модулю не
 больше 10 миллиона, иначе программа будет выполнятся очень долго:
 при значении 100000000 программа ищет ответ больше 35 сек}
 min=-1000000;
 max=1000000;
 a=1;
var
 fun: array[min..max] of boolean;
 i,t1,t2:integer;
 x:real;
 y,n:boolean;
BEGIN
y:=true;
n:=false;
t1:=milliseconds;
for i:=min to max do
 begin
 x:=i/a;
 fun[i]:=log(2,sqr(x+2))-log(2,sqr(x-3.7))+log(2,sqr(x-3.7))>=2;
 end;
writeln('Программа искала на интервале от ',min/a,' до ',max/a);
writeln('Точность поиска: ',1/a);

for i:=min to max do
 begin
 if fun[i] then
  begin
  if y then
   begin
   if i<>min then
    write(i/a,'__________')
   else
    write('__________');
   y:=false;
   end;
  n:=true;
  end;
 if not fun[i] then
  begin
  if n then
   begin
   writeln((i-1)/a);
   n:=false;
   end;
  y:=true;
  end;
 end;
t2:=milliseconds;
writeln;
writeln;
writeln;
writeln('Время поиска: ',(t2-t1)/1000,' сек.')
END.