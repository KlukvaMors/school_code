{Программа для округления чисел}
Program Round_trunc;
uses CRT;
var a: real;
Begin
a:=3.6;
writeln('Trunc(3.6)=',trunc(a)); {Дробная часть числа полнотью отбрасывается }
writeln('Round(3.6)=',round(a)); {Округляется до ближайшего целого числа}
End.


