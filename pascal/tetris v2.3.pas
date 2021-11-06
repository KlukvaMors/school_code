Uses Graphabc;
const 
  w_win=14;
  h_win=24;
  size=24;
  pos_hor=200;
  pos_ver=50;
  frq_scan=150;
var 
  a: array [1..w_win, 1..h_win] of boolean;
  x1,y1,figure:byte;
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
function fiz(y:integer):boolean;//
  begin
  if (y<=23) then
    if not a[x1,y+1] and not a[x1+1,y+1] then
    fiz:=true
    else fiz:=false;
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
  begin
  case figure of
    1:begin a[x,y]:=value; a[x+1,y]:=value; a[x+2,y]:=value; a[x+2,y+1]:=value; end;//фигура г
    2:begin a[x,y]:=value; a[x,y+1]:=value; a[x+1,y+1]:=value; a[x+2,y+1]:=value; end;//фигура г2
    3:begin a[x,y]:=value; a[x+1,y]:=value; a[x,y+1]:=value; a[x+1,y+1]:=value; end;//фигура квадрат
    4:begin a[x,y]:=value; a[x,y+1]:=value; a[x+1,y+1]:=value; a[x-1,y+1]:=value; end;//фигура т
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
  if (y1<>h_win) and (y1<>0) and  fiz(y1) then
    begin
    if (y1<>1) then form(x1,y1-1,figure,false);
    form(x1,y1,figure,true);
    inc(y1);
    end
  else begin y1:=1; x1:=7; figure:=3; end;
  end;


BEGIN
setwindowsize(1000,750);
CenterWindow;
sc:=1;
y1:=1;
x1:=7;
g:=true;
figure:=3;
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