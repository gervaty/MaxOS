{$M $4000,0,0 }
program bootOS;
uses
  Crt, Dos;
var
  c: Char;
begin
  WriteLn('1. Exit to DOS');
  WriteLn('2. Load Windows 3.11');
  Write('Enter a choise: ');
  c := ReadKey;
  If c = '1' then
    Halt
  else if c = '2' then
  begin
    SwapVectors;
    Exec('C:\windows\win.com', '');
    SwapVectors;
  end;
end.