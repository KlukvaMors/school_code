
Var
 cc, i, counter, a, b, c, r_min, r_max,answer:longint;




BEGIN
i:=0;
counter:=0;
Write('������ ������⢮ �ਬ�஢: ');
Read(cc);
Write('������ ������: ');
read(r_min);
Write('������ ���ᨬ�: ');
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
Writeln('����ଠ��:');
Writeln('� - ', i);
Writeln('�ࠢ��쭮 �襭�: ', counter);
Writeln('ggg', 1/i*counter*100, '%');
Writeln('');
Writeln('');
read();

End.
