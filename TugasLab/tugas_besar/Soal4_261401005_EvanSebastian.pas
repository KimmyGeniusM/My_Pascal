program kalkulator;
var
    pilihan, x, y: integer;
    a, b: double;
    lagi: char;
begin
{perulangan agar kalkulator bisa dipakai berkali-kali}
    repeat
{tampilan menu operasi}
        writeln('=========================================');
        writeln('1. Penjumlahan');
        writeln('2. Pengurangan');
        writeln('3. Perkalian');
        writeln('4. Pembagian Real');
        writeln('5. DIV & MOD');
        write('Pilih operasi : '); readln(pilihan);

{input angka, DIV dan MOD hanya bisa untuk bilangan bulat}
        if pilihan = 5 then
        begin
            write('Masukkan angka pertama (bulat) : '); readln(x);
            write('Masukkan angka kedua (bulat)   : '); readln(y);
        end
        else
        begin
            write('Masukkan angka pertama : '); readln(a);
            write('Masukkan angka kedua   : '); readln(b);
        end;

{hitung dan tampilkan hasil sesuai pilihan operasi}
        case pilihan of
            1: writeln('Hasil : ', a:0:2, ' + ', b:0:2, ' = ', a + b:0:2);
            2: writeln('Hasil : ', a:0:2, ' - ', b:0:2, ' = ', a - b:0:2);
            3: writeln('Hasil : ', a:0:2, ' x ', b:0:2, ' = ', a * b:0:2);
            4: if b = 0 then
                   writeln('Tidak bisa dibagi dengan nol!')
               else
                   writeln('Hasil : ', a:0:2, ' / ', b:0:2, ' = ', a / b:0:2);
            5: if y = 0 then
                   writeln('Tidak bisa dibagi dengan nol!')
               else
               begin
                   writeln('Hasil : ', x, ' DIV ', y, ' = ', x div y);
                   writeln('Hasil : ', x, ' MOD ', y, ' = ', x mod y);
               end;
        else
            writeln('Pilihan tidak ada!');
        end;

{tanya apakah ingin menghitung lagi}
        write('Apakah ingin melakukan perhitungan lagi? (Y/T) : '); readln(lagi);
    until (lagi = 'T') or (lagi = 't');
end.