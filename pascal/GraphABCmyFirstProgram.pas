program testgraph;
uses Graphabc, events;
var mousebutton:integer;

x,y:integer;
BEGIN
rectangle(5,5,205,105);
floodfill(6,6, clyellow);
OnMouseDown(x,y,mousebutton);
if (mousebutton=1) and (x>=5) and (x<=205) and (y>=5) and (y<=105) then system.Console.Beep(400,1000);


END.