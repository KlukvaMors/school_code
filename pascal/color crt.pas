uses crt;
var color:byte;
begin
writeln('Ведите номер цвета');
writeln('черный[0]');
writeln('тёмно-синий[]');
writeln('зелёный[2]');
writeln('серо-голубой[3]');
writeln('тёмно-красный[4]');
writeln('пурпурный[5]');
writeln('жёлтый[6]');
writeln('светло-серый[7]');
writeln('темно-серый[8]');
writeln('синий[9]');
writeln('зелёный[10]');
writeln('бирюзовый[11]');
writeln('красный[12]');
writeln('розовый[13]');
writeln('жёлтый[14]');
writeln('белый[15]');
read(color);
TextBackground(color);
write('                      ');

end.