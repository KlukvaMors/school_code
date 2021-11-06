Program game_casino; //программа-игра на угадывание случайного числа(0-9)
USES CRT;
var a, b, c: integer;

begin
Randomize; 
a:= Random(10);//функция которая даёт нам случайное число из интервала чисел
c:=0;
writeln('Попробуйте угадать число от 0 до 9');
while b<>a do// b<>a это значит б не равно а
begin
readln(b);
if a<>b then
writeln('Не угадали.. Попробуйте ещё раз.')
else
writeln('Молодец!!! Ты угадал!!');
c:=c+1;
end;
writeln();
writeln('Вы угадали с ');
write(c);
write(' раза!');
writeln();
writeln();
end.