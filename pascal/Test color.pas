Program ChooseColor;
uses CRT;
Var color: longint;
BEGIN
while color<>77777 do
begin
Writeln('¬ведите номер цвета');
read(color);
TextBackground(color);
write('                      ');
end;
END.


