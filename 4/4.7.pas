program cetak_1_sampai_5_repeat_until;

uses crt;

var
    i: integer;

begin 
    clrscr;

    i := 0;
    repeat
        i := i + 1;
        writeln(i);
    until (i = 5);

    readln;
end.