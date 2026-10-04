program cek_Nilai_Huruf;
uses crt;
var
    NA, NUTS, NUAS  : integer;
    NA_1            : real;
    NI              : char;
begin
    clrscr;
    write('Nilai UTS: '); readln(NUTS);
    write('Nilai UAS: '); readln(NUAS);

    NA_1 := (0.4 * NUTS) + (0.6 * NUAS);
    NA   := round(NA_1);

    case (NA) of
        81..100 : NI := 'A';
        71..80  : NI := 'B';
        51..70  : NI := 'C';
        31..50  : NI := 'D';
        0..30   : NI := 'E';
    else
        begin
            writeln('Range nilai tidak sesuai');
        end;
    end;

    writeln('=====================');
    writeln('Nilai Akhir    : ', NA);
    writeln('Nilai Indeks   : ', NI);
end.