program verifikasi_login;
var
    sandi_benar, sandi: string;
    percobaan: integer;
    berhasil: boolean; {boolean untuk true/false}
begin
{deklarasi awal}
    sandi_benar := 'pascal123';
    percobaan := 0;
    berhasil := false;

{perulangan percobaan login sampai 3 kali}
    repeat
        percobaan := percobaan + 1;
        write('Masukkan kata sandi (percobaan ke-', percobaan, ') : ');
        readln(sandi);

        {kondisi jika benar}
        if sandi = sandi_benar then
        begin
            writeln('Login Berhasil! Selamat Datang');
            berhasil := true;
            break;
        end
        else
            writeln('Kata sandi salah!');
    until percobaan = 3;

{kondisi jika sudah lewat 3 kali percobaan}
    if berhasil = false then
        writeln('Akses Ditolak! Akun Terkunci.');
end.
