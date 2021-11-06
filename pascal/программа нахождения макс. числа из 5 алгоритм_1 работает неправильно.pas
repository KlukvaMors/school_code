program test;
{программа дл€ нахождени€ максимального числа из 5 чисел, которые
должен вводить пользователь}
uses CRT;
var 
n1, n2, n3, n4, n5: integer;

BEGIN
writeln('¬ведите n1');
read(n1);

writeln('¬ведите n2');
read(n2);

writeln('¬ведите n3');
read(n3);

writeln('¬ведите n4');
read(n4);

writeln('¬ведите n5');
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
{программа работает неправильно, если вводишь одинаковые значени€ n1..n5}