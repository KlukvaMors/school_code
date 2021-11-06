
var name, family, digit, data:string;
c:char;

BEGIN
name:='';
repeat
read(c);
name:=name+c;
until c=' ';

family:='';
repeat
read(c);
family:=family+c;
until c=' ';

digit:='';
repeat
read(c);
digit:=digit+c;
until c=' ';

readln(data);

writeln;
writeln(name, family, digit, data);
END.