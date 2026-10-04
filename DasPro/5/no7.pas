program BiayaPerjalanan;

var
    tujuan: string;
    jarak, konsumsi_bb, jumlah_bb_perlu,
    harga_bb, total_biaya: real;
begin
    write('Tujuan perjalanan                            : ');
    readln(tujuan);
    write('Masukkan jarak (km)                          : ');
    readln(jarak);
    write('Konsumsi bahan bakar kendaraan (km/liter)    : ');
    readln(konsumsi_bb);
    write('Harga bahan bakar (per liter)                : ');
    readln(harga_bb);

    jumlah_bb_perlu := jarak / konsumsi_bb;
    total_biaya := jumlah_bb_perlu * harga_bb;

    writeln('====================================================');
    writeln('Tujuan anda        : ', tujuan);
    writeln('Jarak              : ', jarak:0:2, ' km');
    writeln('Jumlah bahan bakar : ', jumlah_bb_perlu:0:2, ' liter');
    writeln('Total biaya        : Rp. ', total_biaya:0:2);
end.