program deret;
var 
    i, a, b, x, jumlah: integer;
begin
    write('Masukkan bilangan awal   : ');
    readln(a);

    write('Masukkan beda            : ');
    readln(b);

    write('Sampai suku ke           : ');
    readln(x);

    writeln('=============================');
    
    jumlah := 0;

    for i := 1 to x do
        begin 
            jumlah := jumlah + a;
            writeln('Suku ke-', i, ' = ', a);
            a := a + b;
        end;

    writeln('Jumlah hingga suku ke-', x, ' = ', jumlah);
end.