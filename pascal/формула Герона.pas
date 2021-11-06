Program Pyramid;
//Программа вычисляет площадь треугольника по формуле Герона

Var  p, s, r1, r2, r3: real;

BEGIN

    Writeln('Введите три стороны треугольника');
    Readln(r1, r2, r3);
    p:=(r1+r2+r3)/2;
    s:=sqrt(p*(p-r1)*(p-r2)*(p-r3));
    writeln('Площадь треугольника = ', s);
    Writeln('Округлённое значение - ',round(s))
end.
