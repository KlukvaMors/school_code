Uses Crt;
Var i, j, k:Integer;
time, cc:longint;

Begin
textbackground(15);
textcolor(12); 
writeln('                                                   ');
writeln('                   Программа таймер                ');
writeln('                                                   ');
writeln('                                                   ');
writeln('              Введите время для отсчета            ');
writeln('                                                   ');
writeln('                                                   ');
textbackground(0);
textcolor(14);
readln(time);
for i:=1 to time do
 begin
  textbackground(0);
  textcolor(14);
  for j:=1 to 9 do
   begin
   Delay(100);
   write('#');
   end;
  textbackground(0);
  textcolor(12);
  write('|');
  system.Console.Beep(400,100);
  cc+=1;
  if cc mod 5 = 0 then writeln;
  end;
 readkey;
End.
