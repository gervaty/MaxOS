program twinpanic;

uses Crt, Dos;

var
  k: Char;
begin
  ClrScr;
  WriteLn(':( MaxOS run into a problem');
  WriteLn('   and need to restart.');
  WriteLn('');
  WriteLn('   o Press CTR+ALT+DEL to restart');
  WriteLn('   o Press ENTER to exit');
  k := ReadKey;
  if k = '' then
    Halt(1);
end.