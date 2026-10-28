program nama_hari;
var
    angka: integer;
begin
{input angka hari}
    write('Input : '); readln(angka);

{tampilkan nama hari sesuai angka}
    case angka of
        1: writeln('Output: "Hari Senin"');
        2: writeln('Output: "Hari Selasa"');
        3: writeln('Output: "Hari Rabu"');
        4: writeln('Output: "Hari Kamis"');
        5: writeln('Output: "Hari Jumat"');
        6: writeln('Output: "Hari Sabtu"');
        7: writeln('Output: "Hari Minggu"');
    else
        writeln('Angka harus 1 sampai 7!');
    end;
end.