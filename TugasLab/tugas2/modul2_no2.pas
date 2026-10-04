program NilaiAkhir;
var
    nama_mahasiswa: string;
    nilai_keaktifan, nilai_tugas, nilai_ujian,
    murni_keaktifan, murni_tugas, murni_ujian,
    nilai_akhir: real;
begin
    write('Nama Mahasiswa   : ');
    readln(nama_mahasiswa);
    write('Nilai Keaktifan  : ');
    readln(nilai_keaktifan);
    write('Nilai Tugas      : ');
    readln(nilai_tugas);
    write('Nilai Ujian      : ');
    readln(nilai_ujian);

    murni_keaktifan := nilai_keaktifan * 0.2;
    murni_tugas := nilai_tugas * 0.35;
    murni_ujian := nilai_ujian * 0.45;

    nilai_akhir := murni_keaktifan + murni_tugas + murni_ujian;

    writeln('========================');
    writeln('Nama Mahasiswa   : ', nama_mahasiswa);
    writeln('Nilai Akhir      : ', nilai_akhir:0:2);
end.