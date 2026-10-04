program prosedur_break;
uses crt;
var
    i: integer;

begin 
    clrscr;

    writeln('Ini adalah statement sebelum looping');
    writeln;

    for i := i to 100 do
        begin
            if (i > 3) then
                break;
            writeln('Statement ke-', i);
        end;
    
    writeln;
    writeln('Apa yang terjadi??????');
end.