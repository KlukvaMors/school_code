Program KingOfMathematics; 
Uses CRT;
Var a, b, c, d, e, r1, r2, cc, level, answer, counter1, counter2: integer;
//m1, m2: char;
player1, player2, levelgame: string;

BEGIN
 e:=0;
 counter1:=0;
 counter2:=0;
 writeln('Игра - Король Математики');
 writeln('Правила игры:');
 
 writeln();
 writeln();
 writeln();
 
 writeln('Введите имя игрока 1:');
 readln(player1);
 writeln('Введите имя игрока 2:');
 readln(player2);
 
 writeln();
 writeln('Выберите уровень игры');
 writeln('Лёгкий-1');
 writeln('Средний-2');
 writeln('Сложный-3');
 writeln('Исскуственный интелект-777');
 read(level);
 
 If level=1 then
  begin
  cc:=3;
  r1:=9;
  r2:=40;
  levelgame:='Лёгкий';
  end;
 If level=2 then
  begin
  cc:=5;
  r1:=15;
  r2:=90;
  levelgame:='Средний';
  end;
 If level=3 then
  begin
  cc:=7;
  r1:=19;
  r2:=140;
  levelgame:='Сложный';
  end;
 If level=777 then
  begin
  cc:=10;
  r1:=50;
  r2:=1000;
  levelgame:='Исскуственный интелект'
  end;
  
writeln();
writeln('Здраствуй! ', player1,'. ');
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
   writeln('Правильный ответ ', a*b+c-d, '. Ваш ответ ', answer);
   writeln();
   If answer=a*b+c-d then 
   begin
   counter1:=counter1+1;
   writeln('Ваш ответ правильный!');
   writeln();
   end;
   if answer<>a*b+c-d then 
   begin
   writeln('Ваш ответ неправильный!!!');
   writeln();
   end;
   e:=e+1;
  end;
  
  
e:=0;

 writeln();
 writeln();
 writeln();
 writeln('Здраствуй! ', player2,'. ');
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
   writeln('Правильный ответ ', a*b+c-d, '. Ваш ответ ', answer);
   writeln();
   If answer=a*b+c-d then 
   begin
   counter2:=counter2+1;
   writeln('Ваш ответ правильный!');
   writeln();
   end;
   if answer<>a*b+c-d then 
   begin
   writeln('Ваш ответ неправильный!!!');
   writeln();
   end;
   e:=e+1;
  end;
  
writeln();
writeln('Статус игры:');
writeln('Уровень - ', levelgame);
writeln('Имя игрока 1 - ', player1);
writeln('Имя игрока 2 - ', player2);
writeln();
writeln('Статистика Игры:');
writeln(player1, ' ответил правильно - ', counter1, ' из ', cc);
writeln(player2, ' ответил правильно - ', counter2, ' из ', cc);


if counter1>counter2 then
begin
writeln();
writeln();
writeln();
writeln('Выиграл ', player1, '. Поздравляем вы Король Математики!!!');
writeln('Так держать!!!');
end;

if counter1<counter2 then
begin
writeln();
writeln();
writeln();
writeln('Выиграл ', player2, '. Поздравляем вы Король Математики!!!');
writeln('Так держать!!!');
end;

if counter1=counter2 then
begin
writeln();
writeln();
writeln();
writeln('Ничья. Как говориться победила дружба))');
end;

End. 