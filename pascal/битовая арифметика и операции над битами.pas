Program BitOperations;

var &and, &or, &not_b, b, &not_c, c: integer;

BEGIN
writeln('������� a � b:');
read(b, c);
&and:=b and c;{��������� ��������� �������� ��������� ��� ����� ������� �������� �������������}
&or:=b or c;{��������� ��������� �������� ���������� ��� ����� �������}
&not_b:=not b;{��������� ��������� �������� �������� ��� ������ b}
&not_c:=not c;{��������� ��������� �������� �������� ��� ������ �}
writeln('b and c = ', &and);
writeln('b or c = ', &or);
writeln('not b = ', &not_b);
writeln('not c = ', &not_c);


END.