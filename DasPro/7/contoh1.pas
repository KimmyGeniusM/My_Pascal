program perulangan_ganjil;
var
    i, c: integer;
begin
    for i := 1 to 10 do 
        begin
            c := i mod 2;
            if c = 1 then
            writeln(i);
        end;
end.