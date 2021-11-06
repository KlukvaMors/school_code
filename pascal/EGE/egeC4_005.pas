Program egeC4;{работает не корректно для данного и аналогичного набора символов: bnx3cv2xg33dfg2d.}
var
num: array ['0'..'9'] of integer;
i,c:char;
s,k:string;
t2,t1,j:integer;
BEGIN
for i:='0' to '9' do
num[i]:=0;
s:='';k:='';
t1:=0;t2:=0;
repeat
 read(c);
 if c in ['0'..'9'] then 
  num[c]:=num[c]+1;
until c='.';
for i:='9' DownTo '0' do
 begin
 if (num[i] mod 2 = 0) then
  for j:=1 to num[i] div 2 do
   begin
   s:=s+i;
   t2:=t2+1;
   end
 else
  begin
  t1:=t1+1;
  k:=i;
  end;
 end;
if ((num['0']>1) and (t2=0) and (t1=1)) or (t1>1) then
 writeln('NO')
else
 begin
 t1:=length(s);
 writeln('YES');
 for j:=t1 DownTo 1 do
  s:=s+s[j];
 insert(k,s,t1+1);
 write(s);
 end;
END.