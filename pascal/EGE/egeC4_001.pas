{�� ���� ��������� �������� �������� � ������� ���� ��������, ������������� � ���������.
� ������ ������ ���������� ���������� �������� N, ������ �� ��������� N ����� �����
������:
<�������> <��������> <����� �����>
��� <�������> � ������, ��������� �� ����� ��� �� 20 ��������, <��������> � ������,
��������� �� 4-� �������� (�����, �����, �����, �����), <����� �����> � �� ����� ���
���������� �����. <�������> � <��������>, � ����� <��������> � <����� �����> ���������
����� ��������. ������ ������� ������:
������ �.�. 57
��������� �������� ��� ����� ����� ����������� ��������� (������� ������������ ������
����� ����������������, ��������, Borland Pascal 7.0), ������� ����� �������� �� �����
����������, �� ����� ����� ���� ������ ����� ���������� (����� ���� ����� ����
���������). ��� ���� ���������� ������� ���������� ������ �� ������, ��������� ����
�� ������ ���������. ������� ���������, ��� N>=1000}
program problem_C4_ege;

var
  num, a, i: integer;
  st: string;
  sh: array[1..99] of integer;
{sh-the number of shcool, st-students, i-variable for cycle,
 a-auxiliary variable}
begin
  writeln('Enter the number of students: ');{������ ���������� ��������}
  readln(num);
  for i := 1 to num do {�������� ��� �������� ������� (������������� ������)}
    sh[i] := 0;
  for i := 1 to num do
  begin
    writeln('Enter the student ');{������ ��� �������� � �� ����� �����}
    readln(st);
    a := pos(' ', st);
    delete(st, 1, a);
    a := pos(' ', st);
    delete(st, 1, a);
    {�������� �� ���� ������ <�������> <��������> <����� �����> ������
     ����� ����� ��� ��� ������ ��� �� ����}
    sh[StrToInt(st)] := sh[StrToInt(st)] + 1;
    {���������� � �����(�� �������) ���������� �������� �������� }
  end;
  a := 0;{�������� ���������� �, ����� ������������ � � �������� 
  ������������� ��������}
  for i := 1 to 99 do
    {���� ����� �� ������� ��������� ������ ����� �������� �� ���������}
    if sh[i] > a then
      a := sh[i];
  for i := 1 to 99 do {������� ��� ����� ������� ��������� ������������
    ���������� �������� �� ���������}
    if sh[i] = a then
      writeln(i);
end.