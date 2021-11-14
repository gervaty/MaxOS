program setup;
uses
  Crt, Dos
var
  destdir: String;
begin
  ClrScr;
  WriteLn(' MaxOS setup ');
  WriteLn('=============');
  WriteLn('Welcome to MaxOS setup!')
  WriteLn('Where do you want to install MaxOS?');
  WriteLn('For example: C:\MaxOS');
  ReadLn(destdir);
  ClrScr;
  WriteLn(' MaxOS setup ');
  WriteLn('=============');
  WriteLn('Copying files...');
end.