Program NumberSystems;

var input_n, result_n: 0..9999999999999999;
digit_n, b, degree, a:integer;


BEGIN
a:=2;
degree:=1;
result_n:=0;
writeln('¬ведите любое двоичное число не больше 16 цифр');
readln(input_n);
while input_n>0 do
 begin
 degree:=trunc(a/2);
 digit_n:=input_n mod 10;
 b:=digit_n*degree;
 result_n:=result_n+b;
 a:=a*2;
 input_n:=input_n div 10;
 end;
writeln('в дес€тичной системе счислени€ это число = ', result_n)
END.
