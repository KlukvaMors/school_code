var x, y :integer;
BEGIN
writeln('введите координаты точки (x,y)');
read(x, y);
if (y>=x*x) and (y<=4) then
write('принадлежит')
else
write('не приднадлежит');
END.
