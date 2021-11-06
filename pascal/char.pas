Program symbol;

var 
    a:char;
    c:integer;

BEGIN
    For c:=0 to 255 do
    begin
        a:=CHR(c);
        writeln(a, ' ', c);
    end;
END.