program daftar_belanja;
var
    nama: string;
    i, n, jumlah_barang: integer;
    harga, subtotal, total, diskon, nilai_diskon, bayar: double;
begin
{input jumlah jenis barang sebagai patokan perulangan inout harga} 
    write('Masukkan jumlah jenis barang yang dibeli : '); readln(n);
    writeln('=========================================');

{inisialisasi total awal}
    total := 0;

{perulangan input harga dan jumlah total harga}
    for i := 1 to n do
    begin
        write('Masukkan nama barang ke-', i, ' : '); readln(nama);
        write('Masukkan harga barang ke-', i, ' : '); readln(harga);
        write('Masukkan jumlah barang ke-', i, ' dibeli : '); readln(jumlah_barang);

        subtotal := harga * jumlah_barang;
        total := total + subtotal;

        {rincian tiap barang}
        writeln('--- Rincian: ', nama, ' = ', harga:0:0, ' x ', jumlah_barang, ' = ', subtotal:0:0);
        writeln;
    end;
    
{kondisi untuk menentukan besar diskon}
    if total < 100000 then
        diskon := 0
    else if total < 500000 then
        diskon := 0.1
    else
        diskon := 0.2;

{perhitungan harga bayar}
    nilai_diskon := total * diskon;
    bayar := total - nilai_diskon;

{tampilan akhir}
    writeln('=========================================');
    writeln('Total Sebelum Diskon : Rp', total:0:0);
    writeln('Diskon               : ', diskon * 100:0:0, '%');
    writeln('Besar Diskon         : Rp', nilai_diskon:0:0);
    writeln('Total Bayar Akhir    : Rp', bayar:0:0);
end.