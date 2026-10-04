program bilangan;

var
    bil, hasil: integer;
    p: string;

begin
    write('Masukkan bilangan bulat  : ');
    readln(bil);

    hasil := bil mod 2;
    
    if (hasil = 0) then
        begin
            p := 'bilangan genap';
        end
    else
        begin
            p := 'bilangan ganjil';
        end;

    writeln('Angka ', bil, ' terkategori ', p);
end.