program suhuTubuh;
var
    suhu: real;
begin
    write('Masukkan Suhu Tubuh  : ');
    readln(suhu);

    if (suhu < 0) then
        begin
            writeln('nahhh bruh you freezin ngl')
        end
    else if (suhu >= 0) and (suhu < 36) then
        begin
            writeln('Suhu Rendah');
        end
    else if (suhu >= 36) and (suhu <= 37.5) then
        begin
            writeln('Suhu Normal');
        end
    else if (suhu > 37.5) and (suhu < 100) then
        begin
            writeln('Demam');
        end
    else
        begin
            writeln('oh helll nahhh');
        end;
end.