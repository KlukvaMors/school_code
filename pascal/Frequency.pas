Program Frequency;{Программа тест частот звука}

var freq:longint;
BEGIN
writeln('Введите частоту сигнала:');
repeat
 readln(freq);
 System.Console.Beep(freq,1000);
until freq=77777;
END.