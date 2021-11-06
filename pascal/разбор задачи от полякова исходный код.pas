const
  LIM = 100;

var
  Info: array[1..LIM] of record
  name: string;
  sum: integer;
  end;
  i, k, N, mark, min1, min2, min3: integer;
  
  c: char;

begin 
readln(N);
 { ввод исходных данных }
 for i := 1 to N do
 begin
  Info[i].name := '';
  for k := 1 to 2 do
   repeat
   read(c);
   Info[i].name := Info[i].name + c;
   until c = ' ';
  Info[i].sum := 0;
  for k := 1 to 3 do
   begin
   read(mark);
   Info[i].sum := Info[i].sum + mark;
   end;
   readln;
 end;
 { поиск трех минимальных }
 min1 := 20;
 min2 := 20;
 min3 := 20;
 for i := 1 to N do
 begin
 if Info[i].sum < min1 then
 begin
 min3 := min2;
 min2 := min1;
 min1 := Info[i].sum;
 end
 else if Info[i].sum < min2 then
 begin min3 := min2;
 min2 := Info[i].sum;
 end
 else if Info[i].sum < min3 then
 min3 := Info[i].sum;
 end; 
 { вывод результата }
 for i := 1 to N do 
 if Info[i].sum <= min3 then
 writeln(Info[i].name);
 end.