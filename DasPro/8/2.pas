program kelulusan;
var 
    nilai: integer;
begin
    write('Masukkan nilai : '); readln(nilai);

    if (nilai >= 60) and (nilai <= 100) then
        writeln('Lulus')
    else if (nilai >= 0) and (nilai < 60) then
        writeln('Tidak Lulus')
    else
        writeln('Nilai Tidak Sesuai');
end.   