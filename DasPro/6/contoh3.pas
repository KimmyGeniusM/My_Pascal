program Nilai;

var
    nilai2: integer;

begin
    readln(nilai2);

    case nilai2 of
        0..40   : writeln('E');
        41..55  : writeln('D');
        56..65  : writeln('C');
        66..80  : writeln('B');
        81..100 : writeln('A');
    else
        writeln('Tidak dalam range');
    end;
end.