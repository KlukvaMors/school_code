Program problems001;{������ ������� ���� ��� ����������� ����� ����� ���� ������� ������� �� 2}
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
 writeln('��� ����������� ����� �� 10 �� ', a, ' ����� ���� ������� ������� �� 2');
 writeln('found :', numcoun);
END.
 

  