program tiket_bioskop;
{ - INPUT      : film, hari, kursi, jumlah tiket, usia, uang bayar
  - PROCESS    : cek batas umur, hitung harga, diskon, total, kembalian
  - SELECTION  : IF THEN ELSE, ELSE IF, CASE OF
  - REPETITION : FOR, WHILE, REPEAT UNTIL
  - OUTPUT     : struk pemesanan }

uses crt;

const
  MAKS_TIKET           = 10;
  TAMBAHAN_AKHIR_PEKAN = 10000;
  TAMBAHAN_PREMIUM     = 20000;

var
  film, hari, kursi,
  jumlah, i, usia, batas_usia,
  jumlah_valid, jumlah_tolak  : integer;
  nama_film, nama_hari,
  nama_kursi, rating_usia     : string;
  harga_dasar, harga_tiket,
  diskon_tiket, total_diskon,
  total, bayar, kembali       : longint;
  lagi                        : char;

begin
  repeat { REPETITION: ulangi pemesanan }
    clrscr;
    writeln('=====================');
    writeln('    TIKET BIOSKOP    ');
    writeln('=====================');

    { INPUT: pilih film }
    writeln;
    writeln('DAFTAR FILM');
    writeln('1. Petualangan Si Kancil     [SU ]  Rp 45.000');
    writeln('2. Spider-Man: Brand New Day [13+]  Rp 40.000');
    writeln('3. Deadpool & Wolverine      [17+]  Rp 50.000');
    writeln('4. The Wolf of Wall Street   [21+]  Rp 55.000');

    repeat { REPETITION: validasi input }
      write('Pilih film (1-4): ');
      readln(film);
      if (film < 1) or (film > 4) then
        writeln('  Pilihan tidak valid, coba lagi.');
    until (film >= 1) and (film <= 4);

    { SELECTION: CASE OF - menentukan film, harga, dan batas umur }
    case film of
      1: begin
           nama_film := 'Petualangan Si Kancil';
           harga_dasar := 45000; batas_usia := 0;  rating_usia := 'SU (Semua Umur)';
         end;
      2: begin
           nama_film := 'Spider-Man: Brand New Day';
           harga_dasar := 40000; batas_usia := 13; rating_usia := '13+';
         end;
      3: begin
           nama_film := 'Deadpool & Wolverine';
           harga_dasar := 50000; batas_usia := 17; rating_usia := '17+';
         end;
      4: begin
           nama_film := 'The Wolf of Wall Street';
           harga_dasar := 55000; batas_usia := 21; rating_usia := '21+';
         end;
    end;

    { INPUT: pilih hari }
    writeln;
    writeln('HARI TAYANG');
    writeln('1. Senin - Jumat');
    writeln('2. Sabtu - Minggu (+ Rp 10.000)');
    repeat
      write('Pilih hari (1-2): ');
      readln(hari);
    until (hari = 1) or (hari = 2);

    { SELECTION: IF ELSE - menentukan harga menurut hari }
    if hari = 2 then
    begin
      nama_hari   := 'Sabtu - Minggu';
      harga_dasar := harga_dasar + TAMBAHAN_AKHIR_PEKAN;
    end
    else
      nama_hari := 'Senin - Jumat';

    { INPUT: pilih kursi }
    writeln;
    writeln('JENIS KURSI');
    writeln('1. Regular');
    writeln('2. Premium (+ Rp 20.000)');
    repeat
      write('Pilih kursi (1-2): ');
      readln(kursi);
    until (kursi = 1) or (kursi = 2);

    case kursi of
      1: nama_kursi := 'Regular';
      2: begin
           nama_kursi  := 'Premium';
           harga_dasar := harga_dasar + TAMBAHAN_PREMIUM;
         end;
    end;

    { INPUT: jumlah tiket }
    writeln;
    repeat
      write('Jumlah tiket (1-', MAKS_TIKET, '): ');
      readln(jumlah);
      if (jumlah < 1) or (jumlah > MAKS_TIKET) then
        writeln('  Jumlah harus antara 1 sampai ', MAKS_TIKET, '.');
    until (jumlah >= 1) and (jumlah <= MAKS_TIKET);

    { PROCESS: cek umur & hitung per tiket }
    total         := 0;
    total_diskon  := 0;
    jumlah_valid  := 0;
    jumlah_tolak  := 0;

    writeln;
    writeln('Film "', nama_film, '" berklasifikasi ', rating_usia, '.');
    writeln('Diskon: anak < 12 tahun 20%, lansia >= 60 tahun 10%');
    writeln;

    for i := 1 to jumlah do { REPETITION: FOR - input data usia penonton }
    begin
      repeat
        write('Usia penonton ke-', i, ': ');
        readln(usia);
      until (usia >= 1) and (usia <= 100);

      { SELECTION: cek batas umur }
      if usia < batas_usia then
      begin
        writeln('  DITOLAK: usia minimal ', batas_usia, ' tahun untuk film ini.');
        jumlah_tolak := jumlah_tolak + 1;
      end
      else
      begin
        harga_tiket := harga_dasar;

        { SELECTION: ELSE IF - diskon berdasarkan usia }
        if usia < 12 then
          diskon_tiket := harga_tiket * 20 div 100
        else if usia >= 60 then
          diskon_tiket := harga_tiket * 10 div 100
        else
          diskon_tiket := 0;

        total        := total + (harga_tiket - diskon_tiket);
        total_diskon := total_diskon + diskon_tiket;
        jumlah_valid := jumlah_valid + 1;
      end;
    end;

    { OUTPUT & pembayaran }
    if jumlah_valid = 0 then
    begin
      writeln;
      writeln('Tidak ada tiket yang dapat diproses.');
    end
    else
    begin
      writeln;
      writeln('-------------------------------------');
      writeln('RINGKASAN PESANAN');
      writeln('-------------------------------------');
      writeln('Film          : ', nama_film, ' [', rating_usia, ']');
      writeln('Hari          : ', nama_hari);
      writeln('Kursi         : ', nama_kursi);
      writeln('Tiket dipesan : ', jumlah);
      writeln('Tiket valid   : ', jumlah_valid);
      writeln('Tiket ditolak : ', jumlah_tolak, ' (di bawah batas umur)');
      writeln('Harga/tiket   : Rp ', harga_dasar:0);
      writeln('Total diskon  : Rp ', total_diskon:0);
      writeln('TOTAL BAYAR   : Rp ', total:0);
      writeln('-------------------------------------');

      bayar := 0;
      while bayar < total do { REPETITION: WHILE - validasi uang bayar }
      begin
        write('Uang bayar: Rp ');
        readln(bayar);
        if bayar < total then
          writeln('  Uang kurang Rp ', (total - bayar):0, '. Masukkan lagi.');
      end;

      kembali := bayar - total;
      writeln;
      writeln('Kembalian     : Rp ', kembali:0);
      writeln('Terima kasih, selamat menonton!');
    end;

    writeln;
    write('Pesan tiket lagi? (Y/T): ');
    readln(lagi);
  until (lagi = 'T') or (lagi = 't');

  writeln('Program selesai.');
end.
