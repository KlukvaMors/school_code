Uses
  graphabc; 
  const speed=10;f1=100;f2=10;
  var x,y,i:integer;
  procedure win();
  begin
  line(1,650,1000,650);
  end;
  procedure form();
   begin
   rectangle(x,y,x+f1,y+f2);
   end;
  procedure control(c:integer);
   const speed=3;
   begin
   case c of
   vk_numpad6:begin clearwindow(); x+=speed; form; end;
   vk_numpad4:begin clearwindow(); x-=speed; form; end;
   end;
   end;
  procedure run();
  begin
  LockDrawing;
  while (y<=650-f2)do 
    begin
    clearwindow();
    form;
    win;
    OnKeyDown:=control;
    y+=2;
    Redraw;
    
    end;
  end;
begin
setwindowsize(1000,750);
CenterWindow;
run;


OnKeyDown:=control;



end.