program KalkulatorGaji;
var
    nama_karyawan: string;
    lembur, tidak_kerja: integer;
    gaji_lembur, potongan_gaji,
    gaji_pokok, gaji_total: longint;
begin
    writeln('Masukkan Nama           :');
    readln(nama_karyawan);
    writeln('Banyak hari lembur      :');
    readln(lembur);
    writeln('Banyak hari tidak kerja :');
    readln(tidak_kerja);

    gaji_pokok := 6000000;
    gaji_lembur := 150000 * lembur;
    potongan_gaji := 30000 * tidak_kerja;

    gaji_total := gaji_pokok + gaji_lembur - potongan_gaji;

    writeln('Nama Karyawan  :', nama_karyawan);
    writeln('Gaji Pokok     :', gaji_pokok);
    writeln('Lembur(hari)   :', lembur);
    writeln('Tidak Bekerja  :', tidak_kerja);
    writeln('Gaji Total     : ', gaji_total);
end.