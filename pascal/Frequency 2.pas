Program Frequency;{Программа тест частот звука}
uses Crt;
var i:longint;
BEGIN
readkey;
for i:=80 to 1000 do
begin
clrscr;
write(i);
system.Console.Beep(i,100);
end;
END.