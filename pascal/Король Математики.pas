Program KingOfMathematics; 
Uses CRT;
Var a, b, c, d, e, r1, r2, cc, level, answer, counter1, counter2: integer;
//m1, m2: char;
player1, player2, levelgame: string;

BEGIN
 e:=0;
 counter1:=0;
 counter2:=0;
 writeln('���� - ������ ����������');
 writeln('������� ����:');
 
 writeln();
 writeln();
 writeln();
 
 writeln('������� ��� ������ 1:');
 readln(player1);
 writeln('������� ��� ������ 2:');
 readln(player2);
 
 writeln();
 writeln('�������� ������� ����');
 writeln('˸����-1');
 writeln('�������-2');
 writeln('�������-3');
 writeln('������������� ��������-777');
 read(level);
 
 If level=1 then
  begin
  cc:=3;
  r1:=9;
  r2:=40;
  levelgame:='˸����';
  end;
 If level=2 then
  begin
  cc:=5;
  r1:=15;
  r2:=90;
  levelgame:='�������';
  end;
 If level=3 then
  begin
  cc:=7;
  r1:=19;
  r2:=140;
  levelgame:='�������';
  end;
 If level=777 then
  begin
  cc:=10;
  r1:=50;
  r2:=1000;
  levelgame:='������������� ��������'
  end;
  
writeln();
writeln('���������! ', player1,'. ');
writeln();
  while e<>cc do
   begin
   randomize;
   a:=random(r1);
   b:=random(r1);
   c:=random(r2);
   d:=random(r2);
   writeln(a, ' * ', b, ' + ', c, ' - ', d, ' =');
   read(answer);
   writeln('���������� ����� ', a*b+c-d, '. ��� ����� ', answer);
   writeln();
   If answer=a*b+c-d then 
   begin
   counter1:=counter1+1;
   writeln('��� ����� ����������!');
   writeln();
   end;
   if answer<>a*b+c-d then 
   begin
   writeln('��� ����� ������������!!!');
   writeln();
   end;
   e:=e+1;
  end;
  
  
e:=0;

 writeln();
 writeln();
 writeln();
 writeln('���������! ', player2,'. ');
 writeln();
  while e<>cc do
   begin
   randomize;
   a:=random(r1);
   b:=random(r1);
   c:=random(r2);
   d:=random(r2);
   writeln(a, ' * ', b, ' + ', c, ' - ', d, ' =');
   read(answer);
   writeln('���������� ����� ', a*b+c-d, '. ��� ����� ', answer);
   writeln();
   If answer=a*b+c-d then 
   begin
   counter2:=counter2+1;
   writeln('��� ����� ����������!');
   writeln();
   end;
   if answer<>a*b+c-d then 
   begin
   writeln('��� ����� ������������!!!');
   writeln();
   end;
   e:=e+1;
  end;
  
writeln();
writeln('������ ����:');
writeln('������� - ', levelgame);
writeln('��� ������ 1 - ', player1);
writeln('��� ������ 2 - ', player2);
writeln();
writeln('���������� ����:');
writeln(player1, ' ������� ��������� - ', counter1, ' �� ', cc);
writeln(player2, ' ������� ��������� - ', counter2, ' �� ', cc);


if counter1>counter2 then
begin
writeln();
writeln();
writeln();
writeln('������� ', player1, '. ����������� �� ������ ����������!!!');
writeln('��� �������!!!');
end;

if counter1<counter2 then
begin
writeln();
writeln();
writeln();
writeln('������� ', player2, '. ����������� �� ������ ����������!!!');
writeln('��� �������!!!');
end;

if counter1=counter2 then
begin
writeln();
writeln();
writeln();
writeln('�����. ��� ���������� �������� ������))');
end;

End. 