program latihan;
{ uses wincrt; }

label a;
const g = 9.8;
type eVan = integer;
var nilai : eVan;

begin
    write('Masukkan bilangan bulat  : ');
    read(nilai);
    readln;
    writeln('IlKom');
    goto a;
    writeln('TI');

    a:
    writeln('USU');
    writeln(nilai);
    writeln(g);
    readln;
end.