program TahunKabisat;
var
    tahun: integer;
begin
    write('Masukkan Tahun: ');
    readln(tahun);

    if (tahun mod 4 = 0) and ((tahun mod 100 <> 0) or (tahun mod 400 = 0)) then
        begin
            writeln(tahun, ' adalah tahun kabisat');
        end
    else
        begin
            writeln(tahun, ' bukan tahun kabisat');
        end;
end.