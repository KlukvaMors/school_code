program test;
{��������� ��� ���������� ������������� ����� �� 5 �����, �������
������ ������� ������������}
uses CRT;
var 
n1, n2, n3, n4, n5: integer;

BEGIN
writeln('������� n1');
read(n1);

writeln('������� n2');
read(n2);

writeln('������� n3');
read(n3);

writeln('������� n4');
read(n4);

writeln('������� n5');
read(n5);

If n1>n2 then
  begin
  If n1>n3 then
    begin
    If n1>n4 then
      begin
      if n1>n5 then
      write(n1,' - max number');
      if n1<n5 then
      write(n5,' - max number');
      end;
    If n1<n4 then
      begin
      If n4>n5 then
      write(n4,' - max number');
      If n4<n5 then
      write(n5,' - max number');
      end;
    end;
  If n1<n3 then
    begin
    If n3>n4 then
      begin
      if n3>n5 then
      write(n3,' - max number');
      if n3<n5 then
      write(n5,' - max number');
      end;
    If n3<n4 then
      begin
      If n4>n5 then
      write(n4,' - max number');
      If n4<n5 then
      write(n5,' - max number');
      end;
    end;
 end;
If n1<n2 then
  begin
  If n2>n3 then
    begin
    If n2>n4 then
      begin
      if n2>n5 then
      write(n2,' - max number');
      if n2<n5 then
      write(n5,' - max number');
      end;
    If n2<n4 then
      begin
      If n4>n5 then
      write(n4,' - max number');
      If n4<n5 then
      write(n5,' - max number');
      end;
    end;
  If n2<n3 then
    begin
    If n3>n4 then
      begin
      if n3>n5 then
      write(n3,' - max number');
      if n3<n5 then
      write(n5,' - max number');
      end;
    If n3<n4 then
      begin
      If n4>n5 then
      write(n4,' - max number');
      If n4<n5 then
      write(n5,' - max number');
      end;
    end;
 end;  
END.
{��������� �������� �����������, ���� ������� ���������� �������� n1..n5}