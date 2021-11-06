uses graphABC,Events;

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
end;

begin
Window.Title := 'Ïóñê';
SetWindowSize(200,200);
rectangle(5,5,95,95);
floodfill(6,6, clyellow); 
rectangle(100,5,190,95);
floodfill(106,6, clred); 
rectangle(5,100,95,190);
floodfill(6,101,clgreen);
rectangle(100,100,190,190);
floodfill(101,101,clblue);
OnMouseDown:=button;
end.