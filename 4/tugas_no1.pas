program counter;
var
    n, sum, i, j: integer;

begin
    write('Masukkan angka : ');
    readln(n);

    for i := n downto 1 do
    begin
        sum := 0;

        for j := 1 to i do
        begin 
            write(j);
            sum := sum + j;

            if j < i then write('+');
        end;

        writeln(' = ', sum)
    end;
end.