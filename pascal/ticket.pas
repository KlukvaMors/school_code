var ticket, r1, r2, tick, i:longint;
answer:string;
BEGIN
r1:=0;
r2:=0;
repeat 
begin
ticket:=142304;//random(1000000);
tick:=ticket;
for i:=1 to 3 do
begin 
r1:=r1+(tick mod 10);
tick:= tick div 10;
end;
for i:=1 to 3 do
begin 
r2:=r2+(tick mod 10);
tick:= tick div 10;
end;
If r1=r2 then 
writeln('Вам попался счастливый билет под номером ', ticket)
else 
writeln('Вам НЕ попался счастливый билет. Номер билета ', ticket);
writeln('Попробовать ещё раз? yes/no');
readln(answer);
end;
until answer='no';
END.
