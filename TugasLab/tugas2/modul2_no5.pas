program BitwiseOperator;
var
    a, b: integer;
begin
    a := 12;
    b := 10;

    writeln('a = ', a);
    writeln('b = ', b);
    writeln('a AND b = ', a and b);
    writeln('a OR b  = ', a or b);
    writeln('a XOR b = ', a xor b);
    writeln('a SHL 2 = ', a shl 2);
    writeln('b SHL 2 = ', b shl 2);
    writeln('a SHR 2 = ', a shr 2);
    writeln('b SHR 2 = ', b shr 2);
    writeln('a SHL b = ', a shl b);
    writeln('b SHL a = ', b shl a);
    writeln('a SHR b = ', a shr b);
    writeln('b SHR a = ', b shr a);
end.