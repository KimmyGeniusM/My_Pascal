program cetakAngkaBerurut;

var 
    i, j: integer;

begin
    for i := 1 to 5 do 
    begin
        for j := 1 to 5 do
            write(i);
        writeln;
    end;
    writeln;
    for i := 1 to 5 do
    begin
        for j := 1 to 5 do 
            write(j);
        writeln;
    end;

    readln;
end.