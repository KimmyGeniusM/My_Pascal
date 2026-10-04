program alamat;
uses crt;
var
    jalan, kota, provinsi: string;
    nomor, kodepos: integer;
begin
    clrscr;
    writeln('Masukkan Nama Jalan: ');
    readln(jalan);
    writeln('Masukkan Nomor Rumah: ');
    readln(nomor);
    writeln('Masukkan Nama Kota: ');
    readln(kota);
    writeln('Masukkan Nama Provinsi: ');
    readln(provinsi);
    writeln('Masukkan Kode Pos: ');
    readln(kodepos);
    writeln('Alamat Lengkap: ');
    writeln('Jalan ',jalan, ' No. ', nomor, ', ', kota, ', ', provinsi, ' kodepos ', kodepos);
end.    