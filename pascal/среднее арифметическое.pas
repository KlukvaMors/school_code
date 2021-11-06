uses CRT;
var a, b, c, d : integer; e: real;
begin
d:=3;
writeln('Программа для нахождения среднего арифметического трёх чисел');
writeln('Введите a');
read(a);
writeln('Введите b');
read(b);
writeln('Введите c');
read(c);
e:=(a+b+c)/d;
write('Средние арифметическое = ');
write(e);
end.
