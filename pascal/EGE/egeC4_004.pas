program egeC4;
var 
fio: array [1..100] of string;
sumBall: array [1..100] of integer;
min, n, i, a:integer;
data:string;
BEGIN
 min:=301;{����� ������ �������}
 for i:=1 to 100 do
  sumBall[i]:=0;{�������� ��� �������� �������}
 readln(n);
 {���������, ��������� � ������������ ������}
 for i:=1 to n do
  begin
  readln(data);
  a:=pos(' ',data);
  fio[i]:=copy(data,1,a+4);
  delete(data,1,a+5);
  a:=pos(' ',data);
  sumBall[i]:=StrToInt(copy(data,1,a-1));
  delete(data,1,a);
  a:=pos(' ',data);
  sumBall[i]:=sumBall[i]+StrToInt(copy(data,1,a-1));
  delete(data,1,a);
  sumBall[i]:=sumBall[i]+StrToInt(data);
  if sumBall[i]<min then
   min:=sumBall[i];{����� ������ ����� ������, ���� ����� ��������� ���������}
  end;
 for i:=1 to n do{������� ��������, ������� ������� �������}
  if sumBall[i]=min then
   writeln(fio[i]);
END.
{������� � ������� �� ���� ������� ������ <�������> <��������> <����� �� ����������> <����� �� ��������> <����� �� �����������> ������ ������: ������������ �.�. 65 85 50.
��������� �������� ��������� ������� ������� ������� � �������� ������ �� �������� ��������������� ���� ������ ��������}