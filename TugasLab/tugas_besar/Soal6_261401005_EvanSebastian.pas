program nilai_akhir;
var
    tugas, uts, uas, hadir, akhir: double;
    indeks: char;
begin
{input nilai dan kehadiran}
    write('Masukkan nilai Tugas (30%) : '); readln(tugas);
    write('Masukkan nilai UTS (30%)   : '); readln(uts);
    write('Masukkan nilai UAS (40%)   : '); readln(uas);
    write('Masukkan kehadiran (%)     : '); readln(hadir);

{perhitungan nilai akhir sesuai bobot}
    akhir := (tugas * 0.3) + (uts * 0.3) + (uas * 0.4);

{kondisi untuk menentukan indeks huruf}
    if akhir >= 85 then
        indeks := 'A'
    else if akhir >= 75 then
        indeks := 'B'
    else if akhir >= 60 then
        indeks := 'C'
    else if akhir >= 50 then
        indeks := 'D'
    else
        indeks := 'E';

{tampilan akhir, lulus jika nilai akhir >= 60 dan kehadiran >= 80}
    writeln('=========================================');
    writeln('Nilai Akhir  : ', akhir:0:2);
    writeln('Indeks Huruf : ', indeks);
    if (akhir >= 60) and (hadir >= 80) then
        writeln('Status       : LULUS')
    else
        writeln('Status       : TIDAK LULUS');
end.