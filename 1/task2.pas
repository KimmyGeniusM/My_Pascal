program identitas;
uses crt;
var 
    nama,NIM,alamat: string;
    Kom: char;
begin
    clrscr;
    writeln('Masukkan Nama Anda: ');
    readln(nama);
    writeln('Masukkan NIM Anda: ');
    readln(NIM);
    writeln('Masukkan Kom Anda: ');
    readln(Kom);
    writeln('Masukkan Alamat Anda: ');
    readln(alamat);
    writeln('Nama Anda: ', nama);
    writeln('NIM Anda: ', NIM);
    writeln('Kom Anda: ', Kom);
    writeln('Alamat Anda: ', alamat);
    readln;
end.