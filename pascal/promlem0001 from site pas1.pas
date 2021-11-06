Program problems001;{задача которая ищет все двухзначные числа сумма цифр которых делится на 2}
const a=99;
var 
num: array[10..a] of integer;
numcoun, i, dig:integer;
BEGIN
 numcoun:=0;
 for i:=10 to a do
 begin 
  num[i]:=i;
  dig:=num[i] mod 10;
  num[i]:=num[i] div 10;
  dig:= dig+(num[i] mod 10);
  if dig mod 2 = 0 then
  numcoun:=numcoun+1;
 end;
 writeln('Все двухзначные числа от 10 до ', a, ' сумма цифр которых делятся на 2');
 writeln('found :', numcoun);
END.
 

  