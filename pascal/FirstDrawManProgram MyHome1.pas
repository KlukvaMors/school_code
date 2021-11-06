Program HomeDraw;

Uses Drawman;//  использовать чертёжник

begin
  Field(10,10);//Размер поля чертёжник (в данном случае 10Х10) обязательная команда
  
  ToPoint(2,2);
  PenDown;
  ToPoint(8,2);
  ToPoint(8,6);
  ToPoint(5,8);
  ToPoint(2,6);
  ToPoint(8,6);
  PenUp;
  ToPoint(2,6);
  PenDown;
  ToPoint(2,2);
  PenUp;
  ToPoint(4,3);
  PenDown;
  ToPoint(6,3);
  ToPoint(6,5);
  ToPoint(4,5);
  ToPoint(4,3);
  PenUp;
  ToPoint(4,4);
  PenDown;
  ToPoint(6,4);
  PenUp;
  ToPoint(5,5);
  PenDown;
  ToPoint(5,3);
  PenUp;
  ToPoint(0,0);
end.