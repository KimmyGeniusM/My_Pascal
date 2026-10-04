program SpesifikasiLaptop;
uses crt;

var
    merk, prosesor, RAM: string;

begin
    clrscr;
    writeln('Masukkan spesifikasi perangkat Anda');
    writeln('Merk       :');
    readln(merk);
    writeln('Prosesor   :');
    readln(prosesor);
    writeln('RAM        :');
    readln(RAM);
    writeln('Spesifikasi Perangkat: ', #27'[1m', merk, #27'[0m',
            ' dengan prosesor ', #27'[1m', prosesor, #27'[0m',
            ' dan memori RAM ', #27'[1m', RAM, #27'[0m', 'GB');
end.