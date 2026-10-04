program rata_rata;
var
    i, n, x, jumlah: integer;
    rerata: real;
begin
    jumlah := 0;
    write('Masukkan batas perulangan : ');
    readln(n);

    for i := 1 to n do 
        begin
            write('Masukkan bilangan ke-', i, ' : ');
            read(x);
            jumlah := jumlah + x;
        end;
    
    rerata := jumlah / n;
    writeln('Rata-rata : ', rerata:4:2);
end.