program egeC4;
var 
fio: array [1..100] of string;
sumBall: array [1..100] of integer;
min, n, i, a:integer;
data:string;
BEGIN
 min:=301;{Задаём плохой минимум}
 for i:=1 to 100 do
  sumBall[i]:=0;{обнуляем все элементы массива}
 readln(n);
 {считываем, сортируем и обрабатываем данные}
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
   min:=sumBall[i];{зачем вводит новый массив, если можно сократить программу}
  end;
 for i:=1 to n do{выводим учеников, которые набрали минимум}
  if sumBall[i]=min then
   writeln(fio[i]);
END.
{крактко о задании на вход подаётся строка <фамилия> <инициалы> <баллы по математике> <баллы по русскому> <баллы по информатике> пример данных: Раскольников Р.А. 65 85 50.
требуется написать программу которая выводит фамилии и инициалы худших по среднему арифметическому всех баллов учеников}