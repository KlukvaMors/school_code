var s:string;
i,c:char;
begin
s:='';
repeat
read(c);
if c in ['а'..'я'] then 
c:=chr(ord(c)-32);
s:=s+c;
until c='.';
writeln(s);
end.
{программа преобразует русские маленькие буквы в большие}