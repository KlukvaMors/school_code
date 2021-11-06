Program BitOperations;

var &and, &or, &not_b, b, &not_c, c: integer;

BEGIN
writeln('Введите a и b:');
read(b, c);
&and:=b and c;{Совершаем побитовую операцию конъюкции над двумя числами введёными пользователем}
&or:=b or c;{Совершаем побитовую операцию дизъюнкции над двумя числами}
&not_b:=not b;{Совершаем побитовую операцию инверсии над числом b}
&not_c:=not c;{Совершаем побитовую операцию инверсии над числом с}
writeln('b and c = ', &and);
writeln('b or c = ', &or);
writeln('not b = ', &not_b);
writeln('not c = ', &not_c);


END.