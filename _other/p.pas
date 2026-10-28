program PelacakPengeluaran;

{$mode objfpc}{$H+}

uses
  SysUtils;

const
  MAKS = 100;

var
  nama      : array[1..MAKS] of string[30];
  jumlah    : array[1..MAKS] of int64;
  n, i, idx : integer;
  pilihan   : integer;
  anggaran  : int64;
  total     : int64;
  sisa      : int64;
  nominal   : int64;
  namaBaru  : string[30];
  lagi      : char;
  persen    : real;
  sudahAtur : boolean;

{ Membaca bilangan bulat positif dan memvalidasi input }
function BacaBilanganPositif(const pesan: string): int64;
var
  teks  : string;
  kode  : integer;
  nilai : int64;
begin
  repeat
    write(pesan);
    readln(teks);
    nilai := 0;
    val(Trim(teks), nilai, kode);

    if kode <> 0 then
      writeln('Input harus berupa bilangan bulat.')
    else if nilai <= 0 then
      writeln('Nilai harus lebih dari 0.');
  until (kode = 0) and (nilai > 0);

  BacaBilanganPositif := nilai;
end;

{ Membaca pilihan menu dengan aman }
function BacaInteger(const pesan: string): integer;
var
  teks  : string;
  kode  : integer;
  nilai : integer;
begin
  repeat
    write(pesan);
    readln(teks);
    nilai := 0;
    val(Trim(teks), nilai, kode);

    if kode <> 0 then
      writeln('Input harus berupa bilangan bulat.');
  until kode = 0;

  BacaInteger := nilai;
end;

{ Menggunakan READ dan READLN untuk konfirmasi }
function BacaKonfirmasi: char;
var
  jawaban : char;
begin
  repeat
    write('Catat lagi? (y/n): ');
    read(jawaban);
    readln;

    if not (jawaban in ['y', 'Y', 'n', 'N']) then
      writeln('Masukkan y untuk ya atau n untuk tidak.');
  until jawaban in ['y', 'Y', 'n', 'N'];

  BacaKonfirmasi := jawaban;
end;

{ ---------- Tampilan menu ---------- }
procedure TampilMenu;
begin
  writeln;
  writeln('==========================================');
  writeln('   PENCATAT & PELACAK PENGELUARAN HARIAN  ');
  writeln('==========================================');
  writeln('1. Atur anggaran bulanan');
  writeln('2. Catat pengeluaran');
  writeln('3. Lihat daftar pengeluaran');
  writeln('4. Lihat total & sisa anggaran');
  writeln('5. Cari pengeluaran terbesar');
  writeln('0. Keluar');
  writeln('------------------------------------------');
end;

{ ---------- Fitur 1: Atur anggaran ---------- }
procedure AturAnggaran;
var
  anggaranBaru : int64;
begin
  { WHILE-DO, CONTINUE, dan BREAK }
  while true do
  begin
    anggaranBaru :=
      BacaBilanganPositif('Masukkan batas anggaran bulanan (Rp): ');

    { Anggaran tidak boleh di bawah total pengeluaran }
    if anggaranBaru < total then
    begin
      writeln(
        'Anggaran tidak boleh lebih kecil dari total pengeluaran: Rp ',
        total:0
      );
      continue;
    end;

    break;
  end;

  anggaran := anggaranBaru;
  sudahAtur := true;

  writeln('Anggaran diatur sebesar Rp ', anggaran:0);
end;

{ ---------- Fitur 2: Catat pengeluaran ---------- }
procedure CatatPengeluaran;
begin
  if not sudahAtur then
  begin
    writeln('Atur anggaran bulanan dulu (menu 1).');
    exit;
  end;

  { REPEAT-UNTIL untuk input berulang }
  repeat
    if n >= MAKS then
    begin
      writeln(
        'Daftar pengeluaran penuh. Maksimal ',
        MAKS, ' transaksi.'
      );
      break;
    end;

    { Validasi nama pengeluaran }
    repeat
      write('Nama pengeluaran      : ');
      readln(namaBaru);
      namaBaru := Trim(namaBaru);

      if namaBaru = '' then
        writeln('Nama pengeluaran tidak boleh kosong.');
    until namaBaru <> '';

    { Validasi nominal }
    nominal :=
      BacaBilanganPositif('Nominal pengeluaran Rp : ');

    { Cek sisa anggaran }
    if nominal > (anggaran - total) then
      writeln(
        'Maaf, anggaran tidak mencukupi. Sisa anggaran: Rp ',
        (anggaran - total):0
      )
    else
    begin
      n := n + 1;
      nama[n] := namaBaru;
      jumlah[n] := nominal;
      total := total + nominal;

      writeln(
        'Pengeluaran tercatat. Sisa anggaran: Rp ',
        (anggaran - total):0
      );
    end;

    lagi := BacaKonfirmasi;
  until (lagi = 'n') or (lagi = 'N');
end;

{ ---------- Fitur 3: Lihat daftar pengeluaran ---------- }
procedure LihatDaftar;
begin
  if n = 0 then
  begin
    writeln('Belum ada pengeluaran yang dicatat.');
    exit;
  end;

  writeln;
  writeln('No  Nama                           Nominal (Rp)');
  writeln('--------------------------------------------------');

  for i := 1 to n do
    writeln(
      i:2, '  ',
      nama[i],
      '':(31 - length(nama[i])),
      jumlah[i]:0
    );
end;

{ ---------- Fitur 4: Total dan sisa anggaran ---------- }
procedure LihatRingkasan;
begin
  if not sudahAtur then
  begin
    writeln('Anggaran belum diatur (menu 1).');
    exit;
  end;

  sisa := anggaran - total;
  persen := (total / anggaran) * 100;

  writeln;
  writeln('Anggaran bulanan   : Rp ', anggaran:0);
  writeln('Total pengeluaran  : Rp ', total:0);
  writeln('Sisa anggaran      : Rp ', sisa:0);
  writeln('Terpakai           : ', persen:0:1, ' %');

  { Nested-IF untuk status keuangan }
  if sisa <= 0 then
    writeln('Status: Anggaran HABIS!')
  else
  begin
    if persen >= 80 then
      writeln('Status: Hati-hati, anggaran hampir habis.')
    else
    begin
      if persen >= 50 then
        writeln('Status: Pengeluaran sudah separuh lebih.')
      else
        writeln('Status: Keuangan aman.');
    end;
  end;
end;

{ ---------- Fitur 5: Cari pengeluaran terbesar ---------- }
procedure CariTerbesar;
begin
  if n = 0 then
  begin
    writeln('Belum ada pengeluaran yang dicatat.');
    exit;
  end;

  idx := 1;

  for i := 2 to n do
    if jumlah[i] > jumlah[idx] then
      idx := i;

  writeln(
    'Pengeluaran terbesar: ',
    nama[idx],
    ' (Rp ', jumlah[idx]:0, ')'
  );
end;

{ ---------- Program utama ---------- }
begin
  n := 0;
  total := 0;
  anggaran := 0;
  sudahAtur := false;

  { Menu interaktif berbasis REPEAT-UNTIL }
  repeat
    TampilMenu;
    pilihan := BacaInteger('Pilih menu (0-5): ');
    writeln;

    case pilihan of
      1: AturAnggaran;
      2: CatatPengeluaran;
      3: LihatDaftar;
      4: LihatRingkasan;
      5: CariTerbesar;
      0: writeln('Terima kasih, sampai jumpa!');
    else
      writeln('Pilihan tidak valid, pilih 0-5.');
    end;

  until pilihan = 0;
end.