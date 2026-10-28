program jumlah_hari;
var
    bulan, tahun, hari: integer;
    kabisat: boolean; {boolean untuk true/false}
begin
{input tahun dan nomor bulan}
    write('Masukkan tahun              : '); readln(tahun);
    write('Masukkan nomor bulan (1-12) : '); readln(bulan);

{cek tahun kabisat dengan operator mod}
    if (tahun mod 400 = 0) or ((tahun mod 4 = 0) and (tahun mod 100 <> 0)) then
        kabisat := true
    else
        kabisat := false;

    writeln('=========================================');
    if (bulan < 1) or (bulan > 12) then
        writeln('Nomor bulan tidak valid!')
    else
    begin
{tentukan jumlah hari sesuai bulan}
        case bulan of
            1, 3, 5, 7, 8, 10, 12: hari := 31;
            4, 6, 9, 11: hari := 30;
            2: if kabisat then
                   hari := 29
               else
                   hari := 28;
        end;

{tampilan akhir}
        if kabisat then
            writeln('Tahun ', tahun, ' adalah tahun kabisat')
        else
            writeln('Tahun ', tahun, ' bukan tahun kabisat');
        writeln('Jumlah hari pada bulan ', bulan, ' : ', hari, ' hari');
    end;
end.