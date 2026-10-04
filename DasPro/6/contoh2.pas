program bilangan2;

var
    bil: real;
    p: string;

begin
    write('Masukkan bilangan : ');
    readln(bil);

    if bil > 0 then
        begin
            p := 'bilangan positif';
        end
    else if bil < 0 then
        begin
            p := 'bilangan negatif';
        end
    else
        begin
            p := 'bilangan netral';
        end;
    
    writeln('Angka ', bil:0:2, ' terkategori ', p);
end.