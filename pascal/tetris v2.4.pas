Uses Graphabc;
const 
  middle=7;
  k=4;
  w_win=14;
  h_win=24;
  size=24;
  pos_hor=200;
  pos_ver=50;
  frq_scan=130;
var 
  a: array [1..w_win, 1..h_win] of boolean;
  ax,ay: array [1..k] of integer;
  x1,y1,figure, xMax,xMin,yMax:byte;
  sc:longint;
  g:boolean;
function crdx(x:integer):integer;//преобразовывает координаты X
  begin
  x:=(x-1)*size+pos_hor;
  crdx:=x;
  end;
function crdy(y:integer):integer;//преобразовывает координаты Y
  begin
  y:=(y-1)*size+pos_ver;
  crdy:=y;
  end;
function fizy(y:integer):boolean;//
  var i,f:integer;
  begin
  for i:=1 to k do 
    if ay[i]>yMax then yMax:=ay[i];//поиск макс.
  for i:=1 to k do
    if (ay[i]=yMax) and (ay[i]<=h_win) then//проверка не ли снизу препятствия
      if a[ax[i],yMax] then
      begin
      f+=1;
      end;
        
  if (f=0) then fizy:=true;
  if (f>0) or (yMax>h_win) then fizy:=false;   
  end;
procedure cube(x,y:integer);// генирирует маленький квадрат - основополагающая всех форм
  begin
  rectangle(x,y,x+size,y+size);
  end;
procedure win();//отвечает за вид окна
  begin
  rectangle(pos_hor,pos_ver,pos_hor+size*w_win,pos_ver+size*h_win);
  end;
procedure form(x,y,figure:integer; value:boolean);//отвечает за формы фигуры
  var i:integer;
  begin
    if (figure=1) then //фигура I
    begin
    ax[1]:=x;for i:=2 to k do ax[i]:=ax[i-1];
    ay[1]:=y+1;for i:=2 to k do ay[i]:=ay[i-1]+1;
    a[x,y]:=value; a[x,y+1]:=value; a[x,y+2]:=value; a[x,y+3]:=value;
    end;
    if (figure=2) then //фигура квадрат
    begin
    ax[1]:=x;ax[3]:=x;ax[2]:=x+1;ax[4]:=x+1;
    for i:=1 to 2 do begin ay[i]:=y+1; ay[i+2]:=y+2; end;
    a[x,y]:=value; a[x,y+1]:=value; a[x+1,y]:=value; a[x+1,y+1]:=value;
    end;
    if (figure=3) then //фигура T
    begin

    ax[1]:=x;  ax[2]:=x;  ax[3]:=x-1;  ax[4]:=x+1;
    ay[1]:=y+1;  ay[2]:=y+2;  ay[3]:=y+2;  ay[4]:=y+2;
    a[x,y]:=value; a[x,y+1]:=value; a[x-1,y+1]:=value; a[x+1,y+1]:=value;
    end;
    
  end;
procedure scan();//сканирует массив и выводит результаты на экран
  var x,y:integer;
  begin
  for x:=1 to w_win do
    for y:=1 to h_win do
      if a[x,y] then
        cube(crdx(x),crdy(y));
  end;
procedure control(button:integer);// отвечает за управление формами
  begin
  if (button=vk_numpad6) and (x1<w_win-1) then
  begin 
  form(x1,y1,figure,false); form(x1,y1-1,figure,false); form(x1-1,y1-1,figure,false);
  inc(x1);
  end;
  if (button=vk_numpad4) and (x1>1) then 
  begin
  form(x1,y1,figure,false); form(x1,y1-1,figure,false); form(x1+1,y1-1,figure,false);
  dec(x1);
  end;
  end;
procedure run();// отвечает за движение форм
  begin

  if fizy(y1) then
    begin
    if (y1<>1) then form(x1,y1-1,figure,false);
    form(x1,y1,figure,true);
    inc(y1);
    end
  else
  begin
  y1:=1;
  x1:=middle;
  form(x1,y1,figure,true);
  yMax:=1;
  end;
  end;


BEGIN
setwindowsize(1000,750);
CenterWindow;
sc:=1;
y1:=1;
x1:=middle;
xMax:=1;
xMin:=w_win+1;
yMax:=1;
g:=true;
figure:=2;
//a[7,4]:=true;
LockDrawing;
while (sc=1) do
  begin
  clearwindow;
  win;
  OnKeyDown:=control;
  run;
  scan;
  Redraw;
  sleep(frq_scan);
  end;

END.