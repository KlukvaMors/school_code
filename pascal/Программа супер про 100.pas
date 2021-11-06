uses graphABC,Events;
var t:integer;
function FindDir(): string;
begin
  Result := System.IO.Directory.GetDirectoryRoot('\WINDOWS\System32\shutdown.exe');
end;

procedure button(x,y,mb: integer);
begin
if(x>=5)and(y>=5)and(x<=95)and(y<=95)and(mb=1) then
  system.Console.Beep(500,100);
if(x>=100)and(y>=5)and(x<=190)and(y<=95)and(mb=1) then
  system.Console.Beep(400,100);
if (x>=5)and(y>=100)and(x<=95)and(y<=190)and(mb=1) then
  system.Console.Beep(600,100);
if (x>=100)and(y>=100)and(x<=190)and(y<=190)and(mb=1) then
  system.Console.Beep(300,100);
if (x>=200)and(y>=5)and(x<=405)and(y<=40)and(mb=1) then
begin
SetFontStyle(fsnormal);
SetFontSize(11);
TextOut(205,50,'Ìàòâåé! ÍÓ ¨ÄĞÎÍ ÁÀÒÎÍ!');
sleep(2000);
TextOut(205,66,' ß æå ñêàçàë íå íàæèìàé');
sleep(2000);
TextOut(205,82,'Ùà òâîåìó windows ïğèéä¸ò');
sleep(2000);
SetFontSize(15);
TextOut(205,97,'ÊÀÏÓÒ');
SetFontSize(11);
sleep(1000);
TextOut(205,117,'Äî êàïóòà îñòàëîñü:');
SetFontSize(15);
for var i:=0 to 15 do begin
TextOut(205,133,15-i);
System.Console.Beep(500,100);
sleep(900);
end;
Exec(FindDir + 'WINDOWS\System32\shutdown.exe', '-f');
end;
end;
begin
rectangle(5,5,95,95);
floodfill(6,6, clyellow); 
rectangle(100,5,190,95);
floodfill(106,6, clred); 
rectangle(5,100,95,190);
floodfill(6,101,clgreen);
rectangle(100,100,190,190);
floodfill(101,101,clblue);
rectangle(200,5,405,40);
SetFontStyle(fsbold);
SetFontSize(16);
TextOut(205,10,'Íå íàæèìàé ñşäà!');
OnMouseDown:=button;
end.