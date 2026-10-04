program origin;

var
    nama, asal: string;

begin
    write('Nama kamu siapa?     ');
    readln(nama);
    write('Asal kamu dari mana? ');
    readln(asal);
    writeln('Halo ', nama, '!');
    writeln('Kamu berasal dari ', asal, '.');
    writeln('Senang berkenalan denganmu.');
end.