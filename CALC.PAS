program calc;
uses
  Crt, Dos;
var
  one: Integer;
  two: Integer;
  mask: String;
begin
  WriteLn('Enter mask: ');
  ReadLn(mask);
  WriteLn('Enter number: ');
  ReadLn(one);
  WriteLn('Enter number: ');
  ReadLn(two);
  if mask = '+' then
    WriteLn(one + two)
  else if mask = '-' then
    WriteLn(one - two)
  else if mask = '*' then
    WriteLn(one * two)
end.