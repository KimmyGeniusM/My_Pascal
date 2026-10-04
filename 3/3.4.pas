program cek_Positif_Negatif;
uses crt;
var
    bil: integer;
begin
    clrscr;
    write('Masukkan bilangan bulat: ');
    readln(bil);

    if (bil >= 0) then
        writeln(bil, ' adalah bilangan POSITIF')
    else
        writeln(bil, ' adalah bilangan NEGATIF');
    readln;
end.