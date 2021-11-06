Uses Graphabc;
const 
  w_win=14;
  h_win=24;
  size=24;
  pos_hor=200;
  pos_ver=30;
  speed=2;
  frq_scan=300;
var 
  a: array [1..w_win, 1..h_win] of byte;
  x,y,x1,y1,figure:byte;
  sc:longint;
function crdx(x:integer):integer;
  begin
  x:=(x-1)*size+pos_hor;
  crdx:=x;
  end;
function crdy(y:integer):integer;
  begin
  y:=(y-1)*size+pos_ver;
  crdy:=y;
  end;
procedure cube(x,y:integer);
  begin
  rectangle(x,y,x+size,y+size);
  end;
procedure win();
  begin
  rectangle(pos_hor,pos_ver,pos_hor+size*w_win,pos_ver+size*h_win);
  end;
procedure form(x,y,figure:integer);
  begin
  {if (figure=3) then
  begin
  a[x,y];
  a[x+1,y];
  a[x,y+1];
  a[x+1,y+1];
  end;}
  end;
procedure scan();
  var x,y:integer;
  begin
  for x:=1 to w_win do
    for y:=1 to h_win do
      if (a[x,y]=1) then
        cube(crdx(x),crdy(y));
  end;
procedure run();
  var y:integer;
  begin
  if (y1<>h_win+1) and (y1<>0) then
    begin
    if (y1<>1) then form(0,0,figure);
    form(7,y1,figure);
    inc(y1);
    end
  else y1:=1;
  end;


BEGIN
setwindowsize(1000,750);
CenterWindow;
sc:=1;
y1:=1;
figure:=3;
LockDrawing;
while (sc=1) do
  begin
  clearwindow;
  win;
  run;
  scan;
  Redraw;
  sleep(frq_scan);
  end;
END.