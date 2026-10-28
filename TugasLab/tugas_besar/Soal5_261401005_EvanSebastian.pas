program rekap_nilai;
var
    m, n, i, j, jumlah_lulus, jumlah_tidak: integer;
    nilai, total, rata: double;
begin
{input jumlah mahasiswa dan jumlah tugas}
    write('Masukkan jumlah mahasiswa (M) : '); readln(m);
    write('Masukkan jumlah tugas (N)     : '); readln(n);

{inisialisasi penghitung kelulusan}
    jumlah_lulus := 0;
    jumlah_tidak := 0;

{perulangan luar untuk tiap mahasiswa}
    for i := 1 to m do
    begin
        writeln('=========================================');
        writeln('Mahasiswa ke-', i);
        total := 0;

{perulangan dalam untuk input nilai tiap tugas}
        for j := 1 to n do
        begin
            write('Masukkan nilai tugas ke-', j, ' : '); readln(nilai);
            total := total + nilai;
        end;

{hitung rata-rata dan tentukan kelulusan}
        rata := total / n;
        write('Rata-rata : ', rata:0:2, ' -> ');

        if rata >= 65 then
        begin
            writeln('LULUS');
            jumlah_lulus := jumlah_lulus + 1;
        end
        else
        begin
            writeln('TIDAK LULUS');
            jumlah_tidak := jumlah_tidak + 1;
        end;
    end;

{tampilan akhir}
    writeln('=========================================');
    writeln('Total mahasiswa LULUS       : ', jumlah_lulus);
    writeln('Total mahasiswa TIDAK LULUS : ', jumlah_tidak);
end.