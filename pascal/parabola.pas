Program parabola;

Uses Drawman;//  использовать чертёжник


var x, y, i: longint;

begin
  x:=0;
  y:=0;
  
  Field(200,200);//размер поля 200Х200
  ToPoint(0,20);
  PenDown;
  ToPoint(200,20);
  PenUp;
  ToPoint(100,0);
  PenDown;
  ToPoint(100,200);
  PenUp;
  ToPoint(100,20);
  PenDown;
  
  for i:=1 to 13 do
  begin
  x+=1;
  y:=sqr(x);
  ToPoint(x+100,y+20);
  end;
  PenUp;
  ToPoint(0,0);
  
  x:=0;
  PenUp;
  ToPoint(100,20);
  PenDown;
  
  for i:=1 to 13 do
  begin
  x-=1;
  y:=sqr(x);
  ToPoint(x+100,y+20);
  end;
  PenUp;
  ToPoint(0,0);
  

end.