program tarif_parkir;
var
    kode: char;
    jam: integer;
    jenis: string;
    pertama, tambahan, maksimal, tarif: longint;
    valid: boolean; {boolean untuk true/false}
begin
{input kode kendaraan dan lama parkir}
    write('Masukkan kode kendaraan (M/K/B) : '); readln(kode);
    write('Masukkan lama parkir (jam)      : '); readln(jam);

{tentukan tarif sesuai kode kendaraan}
    valid := true;
    case kode of
        'M', 'm': begin
                      jenis := 'Mobil';
                      pertama := 5000;
                      tambahan := 3000;
                      maksimal := 30000;
                  end;
        'K', 'k': begin
                      jenis := 'Motor';
                      pertama := 2000;
                      tambahan := 1000;
                      maksimal := 10000;
                  end;
        'B', 'b': begin
                      jenis := 'Bus';
                      pertama := 10000;
                      tambahan := 5000;
                      maksimal := 50000;
                  end;
    else
        valid := false;
    end;

{hitung tarif, jika lebih dari 10 jam berlaku tarif maksimal}
    writeln('=========================================');
    if valid = false then
        writeln('Kode kendaraan tidak valid!')
    else
    begin
        if jam > 10 then
            tarif := maksimal
        else
            tarif := pertama + (jam - 1) * tambahan;

        writeln('Jenis kendaraan : ', jenis);
        writeln('Lama parkir     : ', jam, ' jam');
        writeln('Total tarif     : Rp', tarif);
    end;
end.