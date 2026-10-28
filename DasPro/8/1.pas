program volumePrismaSegitiga;
var 
    a, t, tp, luas_alas, volume: Real;
begin
    write('Masukkan nilai alas segitiga     : '); readln(a);
    write('Masukkan nilai tinggi segitiga   : '); readln(t);
    write('Masukkan nilai tinggi prisma     : '); readln(tp);
    
    if (a < 0) or (t < 0) or (tp < 0) then
    begin
        writeln('Nilai tidak sesuai');
        Halt;
    end;

    luas_alas := 0.5 * a * t;
    volume := luas_alas * tp;
    
    writeln('Volume prisma segitiga           : ', volume:0:2);
end.
