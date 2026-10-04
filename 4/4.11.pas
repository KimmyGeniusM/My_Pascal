program prosedur_continue;
uses crt;

procedure contoh;
begin
    writeln('Statement 1 prosedur');
    exit;
    writeln('Statement 2 prosedur');
end;

begin
    clrscr;

    writeln('Statement 1 program');
    contoh;
    writeln('Statement 2 program');
end.