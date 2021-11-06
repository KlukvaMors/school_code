Program egeC4_official_version;{problem №3125}
var a:array['0'..'9'] of integer;
c, i: char;
j, k: integer;
f: boolean;
begin
for i:='0' to '9' do
 a[i]:=0;
read(c);
while c<>'.' do
 begin
 if c in ['0' .. '9'] then 
  a[c] := a[c] + 1;
 read(c);
end;
k := 0; {количество цифр, встречающихся нечетное число раз}
for i := '0' to '9' do
 if a[i] mod 2 = 1 then
  begin
  k := k + 1;
  c := i
  end;
f := (a['0'] = 1);{!!!!!}
for i := '1' to '9' do
 if (a[i] > 1) or (a[i] = 1) and (a['0'] = 0) then
 f := true;
if (k > 1)or not f then
 writeln('NO')
else
 begin
 writeln('YES');
 for i := '9' downto '0' do
  for j := 1 to a[i] div 2 do
   write(i);
 if k = 1 then
  write(c);
 for i := '0' to '9' do
  for j := 1 to a[i] div 2 do
   write(i);
 end
end.