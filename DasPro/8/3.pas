program kelipatan;
var
    i, a, n: integer;
begin
    write('Kelipatan berapa : '); readln(a);
    write('Target kelipatan : '); readln(n);
    for i := 1 to n do 
        writeln(i * a);
end.