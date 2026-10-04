program menu_restoran;
var
    kode  : integer;
    menu  : string;
    harga : longint;
begin
    writeln('======= WARUNG KULINER =======');
    writeln('1. Sate Klathak      Rp 35000');
    writeln('2. Mie Lethek        Rp 22000');
    writeln('3. Nasi Jamblang     Rp 28000');
    writeln('4. Cireng            Rp 30000');
    writeln('5. Soto Tauco        Rp 25000');
    writeln('6. Kerak Telor       Rp 20000');
    writeln('---------------------------------------');
    write('Masukkan kode menu (1-6): '); readln(kode);

    case kode of
        1 : begin menu := 'Sate Klathak';  harga := 35000; end;
        2 : begin menu := 'Mie Lethek';    harga := 22000; end;
        3 : begin menu := 'Nasi Jamblang'; harga := 28000; end;
        4 : begin menu := 'Cireng';        harga := 30000; end;
        5 : begin menu := 'Soto Tauco';    harga := 25000; end;
        6 : begin menu := 'Kerak Telor';   harga := 20000; end;
    else
        menu := '';
    end;

    writeln;
    if menu = '' then
        writeln('Kode menu tidak tersedia!')
    else
    begin
        writeln('Menu yang dipilih : ', menu);
        writeln('Biaya yang harus dibayar : Rp ', harga);
    end;
end.