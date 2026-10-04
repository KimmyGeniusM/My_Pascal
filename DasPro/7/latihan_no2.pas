program kelipatan;
var
    x, n, i: integer;
begin
    write('Masukkan bilangan dasar  : ');
    readln(x);

    write('Masukkan batas kelipatan : ');
    readln(n);

    for i := 1 to n do
        write(x * i, ' ');
        writeln;
end.