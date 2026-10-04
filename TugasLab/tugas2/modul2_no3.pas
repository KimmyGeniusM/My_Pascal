program LapanganSepakBola;
var
    panjang, lebar,
    luas, keliling: integer;
begin
    write('Masukkan Panjang Lapangan  : ');
    readln(panjang);
    write('Masukkan Lebar Lapangan    : ');
    readln(lebar);

    luas := panjang * lebar;
    keliling := 2 * (panjang + lebar);

    writeln('Luas Lapangan adalah       : ', luas, ' Meter');
    writeln('Keliling Lapangan adalah   : ', keliling, ' Meter');
end.