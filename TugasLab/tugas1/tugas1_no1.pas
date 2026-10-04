program BukuFavorit;
uses crt;

var
    judul, penulis, tahun, genre: string;
    
begin
    clrscr;
    writeln('Masukkan Judul Buku     :');
    readln(judul);
    writeln('Masukkan Nama Penulis   :');
    readln(penulis);
    writeln('Masukkan Tahun Terbit   :');
    readln(tahun);
    writeln('Masukkan Genre Buku     :');
    readln(genre);
    writeln('Buku favorit saya adalah ', #27'[1m', judul, #27'[0m',
            ' karangan ', #27'[1m', penulis, #27'[0m',
            '. Buku bergenre ', #27'[1m', genre, #27'[0m',
            ' ini diterbitkan pada tahun ', #27'[1m', tahun, #27'[0m',
            '. Sangat direkomendasikan!');
end.
