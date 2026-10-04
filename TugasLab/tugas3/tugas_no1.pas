program descending_order;
var
    a, b, c, besar, kecil, tengah : integer;
begin
    write('Masukkan nilai 1 : '); readln(a);
    write('Masukkan nilai 2 : '); readln(b);
    write('Masukkan nilai 3 : '); readln(c);

    besar := a;
    if b > besar then besar := b;
    if c > besar then besar := c;

    kecil := a;
    if b < kecil then kecil := b;
    if c < kecil then kecil := c;

    tengah := a + b + c - besar - kecil;

    writeln('Descending: ', besar, ' ', tengah, ' ', kecil);
end.