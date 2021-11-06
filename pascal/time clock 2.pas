
Uses CRT;
var
i,time:integer;

BEGIN
textbackground(0);
textcolor(14);
readln(time);
for i:=time DownTo 1 do

begin
write('      ', i,'      ');
Delay(1000);
system.Console.Beep(500,100);
clrscr;
end;
END.