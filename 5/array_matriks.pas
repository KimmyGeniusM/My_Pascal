program matriks;
type
    larik = array[1..2, 1..3] of integer;
var
    mat1, mat2, hasil: larik;
    i, j, angka: integer;
begin
    mat1[1, 1] := 3;
    mat1[1, 2] := 5;
    mat1[1, 3] := 7;
    mat1[2, 1] := 9;
    mat1[2, 2] := 11;
    mat1[2, 3] := 13;

    mat2[1, 1] := 2;
    mat2[1, 2] := 4;
    mat2[1, 3] := 6;
    mat2[2, 1] := 8;
    mat2[2, 2] := 10;
    mat2[2, 3] := 12;

    for i := 1 to 2 do
    begin
        for j := 1 to 3 do 
        begin
            write(mat1[i, j],' ');
        end;
        writeln;
    end;

    writeln;

    for i := 1 to 2 do
    begin
        for j := 1 to 3 do 
        begin
            write(mat2[i, j],' ');
        end;
        writeln;
    end;

    for i := 1 to 2 do
    begin
        for j := 1 to 3 do 
        begin
            hasil[i, j] := mat1[i, j] + mat2[i, j]
        end;
        writelnl;
    end;

    for i := 1 to 2 do
    begin
        for j := 1 to 3 do 
        begin
            write(hasil[i, j],' ');
        end;
        writeln;
    end;
end.