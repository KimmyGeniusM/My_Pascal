program gaji_karyawan;
var
    gol: char;
    jam, lembur: integer;
    gaji_pokok, upah_lembur, bonus, total: longint;
    valid: boolean; {boolean untuk true/false}
begin
{input golongan dan jam kerja}
    write('Masukkan golongan (A/B/C)       : '); readln(gol);
    write('Masukkan total jam kerja/minggu : '); readln(jam);

{tentukan gaji pokok sesuai golongan}
    valid := true;
    case gol of
        'A', 'a': gaji_pokok := 1500000;
        'B', 'b': gaji_pokok := 2000000;
        'C', 'c': gaji_pokok := 2500000;
    else
        valid := false;
    end;

    writeln('=========================================');
    if valid = false then
        writeln('Golongan tidak valid!')
    else
    begin
{hitung lembur, jam kerja standar 40 jam/minggu}
        if jam > 40 then
            lembur := jam - 40
        else
            lembur := 0;
        upah_lembur := lembur * 20000;

{bonus khusus golongan C jika jam kerja lebih dari 50}
        bonus := 0;
        if ((gol = 'C') or (gol = 'c')) and (jam > 50) then
            bonus := 100000;

{hitung dan tampilkan total gaji}
        total := gaji_pokok + upah_lembur + bonus;

        writeln('Gaji Pokok       : Rp', gaji_pokok);
        writeln('Lembur (', lembur, ' jam)  : Rp', upah_lembur);
        writeln('Bonus            : Rp', bonus);
        writeln('Total Gaji Akhir : Rp', total);
    end;
end.