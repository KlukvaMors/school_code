uses graphABC,Events;

{function FindDir(): string;
begin
  Result := System.IO.Directory.GetDirectoryRoot('\WINDOWS\System32\shutdown.exe');
end;}

procedure button(x,y,mb: integer);
begin
if (x>=5)and(y>=5)and(x<=210)and(y<=40)and(mb=1) then
begin
SetFontColor(clblack);
SetFontStyle(fsnormal);
SetFontSize(11);
TextOut(5,50,'Ìàòâåé! ÍÓ ¨ÄĞÎÍ ÁÀÒÎÍ!');
sleep(1500);
TextOut(5,66,' ß æå ñêàçàë íå íàæèìàé');
sleep(1500);
TextOut(5,82,'Ùà òâîåìó windows ïğèéä¸ò');
sleep(1500);
SetFontSize(15);
TextOut(5,97,'ÊÀÏÓÒ');
SetFontSize(11);
sleep(1500);
TextOut(5,117,'Äî êàïóòà îñòàëîñü:');
SetFontSize(15);
for var i:=0 to 15 do begin
TextOut(5,133,15-i);
System.Console.Beep(500,100);
sleep(900);
end;
//Exec(FindDir + 'WINDOWS\System32\shutdown.exe', '-f');
end;
if (x>=5)and(y>=200)and(x<=210)and(y<=235)and(mb=1) then
begin
SetFontColor(clorange);
SetFontSize(15);
TextOut(20,240,'Ìîëîäåö!');
sleep(1000);
TextOut(20,265,'Ïğàâèëüíî ñäåëàë!');
end;
end;

begin
Window.Title := 'Êàïóò';
SetWindowSize(220,320);
rectangle(5,5,210,40);
SetFontStyle(fsbold);
SetFontSize(16);
TextOut(7,10,'Íå íàæèìàé ñşäà!');
rectangle(5,200,210,235);
TextOut(50,205,'Æìè ñşäà!');
OnMouseDown:=button;
end.