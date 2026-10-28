program PelacakPengeluaran;

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
  write('Pilih menu (0-5): ');
end;

{ ---------- Fitur 1: atur anggaran ---------- }
procedure AturAnggaran;
begin
  { WHILE-DO + CONTINUE/BREAK untuk validasi input }
  while true do
  begin
    write('Masukkan batas anggaran bulanan (Rp): ');
    readln(anggaran);
    if anggaran <= 0 then
    begin
      writeln('Anggaran harus lebih dari 0, coba lagi.');
      continue;
    end;
    break;
  end;
  sudahAtur := true;
  writeln('Anggaran diatur sebesar Rp ', anggaran:0);
end;

{ ---------- Fitur 2: catat pengeluaran ---------- }
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
      writeln('Daftar pengeluaran penuh.');
      break;
    end;

    write('Nama pengeluaran      : ');
    readln(namaBaru);

    while true do
    begin
      write('Nominal pengeluaran Rp : ');
      readln(nominal);
      if nominal <= 0 then
      begin
        writeln('Nominal harus lebih dari 0.');
        continue;
      end;
      break;
    end;

    { Cek apakah melebihi sisa anggaran }
    if nominal > (anggaran - total) then
      writeln('Maaf anggaran tidak mencukupi')
    else
    begin
      n := n + 1;
      nama[n] := namaBaru;
      jumlah[n] := nominal;
      total := total + nominal;
      writeln('Pengeluaran tercatat. Sisa anggaran: Rp ', (anggaran - total):0);
    end;

    write('Catat lagi? (y/n): ');
    readln(lagi);
  until (lagi = 'n') or (lagi = 'N');
end;

{ ---------- Fitur 3: daftar pengeluaran ---------- }
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
    writeln(i:2, '  ', nama[i], '':(31 - length(nama[i])), jumlah[i]:0);
end;

{ ---------- Fitur 4: total & sisa ---------- }
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

  { Nested-if untuk status keuangan }
  if sisa = 0 then
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

{ ---------- Fitur 5: pengeluaran terbesar ---------- }
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
  writeln('Pengeluaran terbesar: ', nama[idx], ' (Rp ', jumlah[idx]:0, ')');
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
    readln(pilihan);
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