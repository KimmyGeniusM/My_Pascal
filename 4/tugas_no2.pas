program star_on_odd_line;
uses crt;

var
    n, i, j: integer;

begin
    write('Masukkan angka : ');
    readln(n);

    for i := 1 to n do
    begin 
        if (i mod 2 = 1) then
        begin
            for j := 1 to i do
                write('*');
        end
        else
        begin
            for j := 1 to i do
                write(i);
        end;
        writeln;
    end;
end.