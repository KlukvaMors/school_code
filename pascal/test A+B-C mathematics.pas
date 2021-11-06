
Var
 cc, i, counter, a, b, c, r_min, r_max,answer:longint;




BEGIN
i:=0;
counter:=0;
Write('Введите количество примеров: ');
Read(cc);
Write('Введите минимум: ');
read(r_min);
Write('Введите максимум: ');
read(r_max);



While i<cc do
 begin
  a:=random(r_min,r_max);
  b:=random(r_min,r_max);
  c:=random(r_min,r_max);
  {TextBackground(0);}
  writeln(a, ' + ', b, ' - ', c, ' = ');
   read(answer);
   if answer=77777 then
    Break;
   if answer=a+b-c then
    begin
    {TextBackground(10);}
    writeln('   ');
    counter+=1;
    end
   else
    begin
    {TextBackground(12);}
    writeln(a+b-c, '  ');

    End;
  i+=1;
 end;
{TextBackground(0); }
Writeln('Иноформация:');
Writeln('а - ', i);
Writeln('Правильно решено: ', counter);
Writeln('ggg', 1/i*counter*100, '%');
Writeln('');
Writeln('');
read();

End.
