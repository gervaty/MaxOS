program kernel;
uses
  Crt, Dos;
var
  username: string;
  c: char;
  k: Integer;

function GetUserName: String;
var
  f: text;
  name: string;
begin
  Assign(f, 'c:\tp\projects\tconfig.sys');
  Reset(f);
  ReadLn(f, name);
  Close(f);

  GetUserName := name;
end;

procedure TaskBar;
begin
  GotoXY(1, 25);
  Write('[Menu]');
  for k := 1 to 73 do
    Write(Chr(219));
end;

procedure Desktop;
begin
  GotoXY(40, 12);
  WriteLn('MaxOS V. 1.0 (C) Gervaty');
end;

procedure Lock;
begin
  while true do
  begin
    ClrScr;
    GotoXY(37, 11);
    WriteLn('Hi!');
    GotoXY(30, 12);
    WriteLn('Enter your password: ');
    GotoXY(30, 13);
    ReadLn(userName);
    if userName = GetUserName then
      Break;
    GotoXY(15, 14);
    WriteLn('Your password is incorrect. Press a key to try again.');
    ReadKey;
  end;
end;

procedure Menu;
var d: Char;
begin
  GotoXY(1, 21);
  WriteLn('+-Max OS-+');
  WriteLn('|E - Exit|');
  WriteLn('|L - Lock|');
  WriteLn('+--------+');
  d := ReadKey;
  if d = 'e' then
    begin
      ClrScr;
      Halt;
    end
  else if d = 'l' then
    Lock
  else if d = ' ' then
    begin
      ClrScr;
      TaskBar;
      Desktop;
    end;
end;

begin
  Lock;
  while true do
  begin
    ClrScr;
    TaskBar;
    Desktop;
    c := ReadKey;
    if c = Chr(32) then
      Menu;
  end

end.