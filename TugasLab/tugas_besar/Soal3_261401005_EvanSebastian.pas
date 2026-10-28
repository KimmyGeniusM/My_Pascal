program deret_angka;
var
    n, kategori, i: integer;
begin
{input nilai dan pemilihan kategori}
    write('Masukkan nilai N                      : ');
    readln(n);
    write('Pilih kategori deret (1: Ganjil, 2: Genap) : ');
    readln(kategori);
    writeln('=========================================');

    i := 0;
    while i < n do
    begin
        i := i + 1;

        {lewati angka yang tidak sesuai kategori}
        if (kategori = 1) and (i mod 2 = 0) then
            continue;
        if (kategori = 2) and (i mod 2 = 1) then
            continue;

        {lewati kelipatan 5}
        if i mod 5 = 0 then
            continue;

        write(i, ' ');
    end;
    writeln;
end.
