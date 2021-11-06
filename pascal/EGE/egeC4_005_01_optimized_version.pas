Program egeC4_optimized_version;{работает не корректо при (xcfg0cbj.) и (bnx3cv2xg33dfg2d.) или аналочичных наборов символов}
var
num: array ['0'..'9'] of integer;
c,i:char;
t1,t2,j:integer;
s:string;
BEGIN
for i:='1' to '9' do
num[i]:=0;
s:='';t1:=0;t2:=0;
repeat
 read(c);
 if c in ['0'..'9'] then
  num[c]:=num[c]+1;
until c='.';
for i:='9' DownTo '1' do
 begin
 if num[i] mod 2=1 then
  begin
  c:=i;
  t1:=t1+1;
  end
 else if (num[i] mod 2=0) and (num[i]<>0) then
  begin
  t2:=t2+(num[i] div 2);
  for j:=1 to num[i] div 2 do
   s:=s+i;
  end;
 end;
if ((num['0']>1) and (t2=0) and (t1=1)) or (t1>1) then
writeln('NO')
else
begin
writeln('YES');
if t1=1 then
s:=s+c;
for j:=length(s)-1 downto 1 do
 s:=s+s[j];
 write(s);
end;
END.