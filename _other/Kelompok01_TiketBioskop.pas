program TiketBioskop;
{ Contoh PjBL Dasar Pemrograman: Sistem Pemesanan Tiket Bioskop
  Struktur yang dipakai:
  - INPUT      : pilihan film, hari, kursi, jumlah tiket, usia, uang bayar
  - PROCESS    : hitung harga per tiket, diskon, total, kembalian
  - SELECTION  : IF THEN ELSE, ELSE IF, CASE OF
  - REPETITION : FOR, WHILE, REPEAT UNTIL
  - OUTPUT     : struk pemesanan }

uses crt;

const
  MAKS_TIKET           = 10;
  TAMBAHAN_AKHIR_PEKAN = 10000;
  TAMBAHAN_PREMIUM     = 20000;

var
  pilFilm, pilHari, pilKursi : integer;
  jumlah, i, usia            : integer;
  namaFilm, namaHari         : string;
  namaKursi                  : string;
  hargaDasar, hargaTiket     : longint;
  diskonTiket, totalDiskon   : longint;
  total, bayar, kembali      : longint;
  lagi                       : char;

begin
  repeat                                   { REPETITION: ulangi pemesanan }
    clrscr;
    writeln('=====================================');
    writeln('      TIKET BIOSKOP "LAYAR MEDAN"    ');
    writeln('=====================================');

    { ---------- INPUT: pilih film ---------- }
    writeln;
    writeln('DAFTAR FILM');
    writeln('1. Petualangan Si Kancil   Rp 45.000');
    writeln('2. Misteri Danau Toba      Rp 50.000');
    writeln('3. Cinta di Kota Medan     Rp 40.000');
    repeat                                 { REPETITION: validasi input }
      write('Pilih film (1-3): ');
      readln(pilFilm);
      if (pilFilm < 1) or (pilFilm > 3) then
        writeln('  Pilihan tidak valid, coba lagi.');
    until (pilFilm >= 1) and (pilFilm <= 3);

    { SELECTION: CASE OF }
    case pilFilm of
      1: begin namaFilm := 'Petualangan Si Kancil'; hargaDasar := 45000; end;
      2: begin namaFilm := 'Misteri Danau Toba';    hargaDasar := 50000; end;
      3: begin namaFilm := 'Cinta di Kota Medan';   hargaDasar := 40000; end;
    end;

    { ---------- INPUT: pilih hari ---------- }
    writeln;
    writeln('HARI TAYANG');
    writeln('1. Senin - Jumat');
    writeln('2. Sabtu - Minggu (+ Rp 10.000)');
    repeat
      write('Pilih hari (1-2): ');
      readln(pilHari);
    until (pilHari = 1) or (pilHari = 2);

    { SELECTION: IF THEN ELSE }
    if pilHari = 2 then
    begin
      namaHari  := 'Sabtu - Minggu';
      hargaDasar := hargaDasar + TAMBAHAN_AKHIR_PEKAN;
    end
    else
      namaHari := 'Senin - Jumat';

    { ---------- INPUT: pilih kursi ---------- }
    writeln;
    writeln('JENIS KURSI');
    writeln('1. Regular');
    writeln('2. Premium (+ Rp 20.000)');
    repeat
      write('Pilih kursi (1-2): ');
      readln(pilKursi);
    until (pilKursi = 1) or (pilKursi = 2);

    case pilKursi of
      1: namaKursi := 'Regular';
      2: begin
           namaKursi := 'Premium';
           hargaDasar := hargaDasar + TAMBAHAN_PREMIUM;
         end;
    end;

    { ---------- INPUT: jumlah tiket ---------- }
    writeln;
    repeat
      write('Jumlah tiket (1-', MAKS_TIKET, '): ');
      readln(jumlah);
      if (jumlah < 1) or (jumlah > MAKS_TIKET) then
        writeln('  Jumlah harus antara 1 sampai ', MAKS_TIKET, '.');
    until (jumlah >= 1) and (jumlah <= MAKS_TIKET);

    { ---------- PROCESS: hitung per tiket ---------- }
    total       := 0;
    totalDiskon := 0;
    writeln;
    writeln('Diskon: anak < 12 tahun 20%, lansia >= 60 tahun 10%');

    for i := 1 to jumlah do                { REPETITION: FOR }
    begin
      write('Usia penonton ke-', i, ': ');
      readln(usia);
      hargaTiket := hargaDasar;

      { SELECTION: ELSE IF }
      if usia < 12 then
        diskonTiket := hargaTiket * 20 div 100
      else if usia >= 60 then
        diskonTiket := hargaTiket * 10 div 100
      else
        diskonTiket := 0;

      total       := total + (hargaTiket - diskonTiket);
      totalDiskon := totalDiskon + diskonTiket;
    end;

    { ---------- OUTPUT: ringkasan pesanan ---------- }
    writeln;
    writeln('-------------------------------------');
    writeln('RINGKASAN PESANAN');
    writeln('-------------------------------------');
    writeln('Film          : ', namaFilm);
    writeln('Hari          : ', namaHari);
    writeln('Kursi         : ', namaKursi);
    writeln('Jumlah tiket  : ', jumlah);
    writeln('Harga/tiket   : Rp ', hargaDasar:0);
    writeln('Total diskon  : Rp ', totalDiskon:0);
    writeln('TOTAL BAYAR   : Rp ', total:0);
    writeln('-------------------------------------');

    { ---------- INPUT: pembayaran ---------- }
    bayar := 0;
    while bayar < total do                 { REPETITION: WHILE }
    begin
      write('Uang bayar: Rp ');
      readln(bayar);
      if bayar < total then
        writeln('  Uang kurang Rp ', (total - bayar):0, '. Masukkan lagi.');
    end;

    { ---------- PROCESS & OUTPUT: kembalian ---------- }
    kembali := bayar - total;
    writeln;
    writeln('Kembalian     : Rp ', kembali:0);
    writeln('Terima kasih, selamat menonton!');

    writeln;
    write('Pesan tiket lagi? (Y/T): ');
    readln(lagi);
  until (lagi = 'T') or (lagi = 't');

  writeln('Program selesai.');
end.
