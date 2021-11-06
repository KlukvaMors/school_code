Program ColorTest;

Uses CRT;

var i1, i2: byte;

BEGIN
 for i1:=0 to 15 do
 Begin
 TextBackground(i1);
 writeln('color=', i1);
 for i2:=0 to 15 do
  Begin
  TextColor(i2);
  write(' CRT ', i2);
  End;
 End;
END.