program LapanganSepakBola;
var
    panjang, lebar,
    luas, keliling: integer;
begin
    writeln('Masukkan Panjang Lapangan  :'); readln(panjang);
    writeln('Masukkan Lebar Lapangan    :'); readln(lebar);

    luas := panjang * lebar;
    keliling := 2 * panjang + 2 * lebar;

    writeln('Luas Lapangan adalah       : ', luas, ' Meter');
    writeln('Keliling Lapangan adalah   : ', keliling, ' Meter');
end.