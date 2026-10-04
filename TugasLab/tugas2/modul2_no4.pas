program KonversiSuhu;
var
    celsius, fahrenheit, kelvin, reamur: real;
begin
    write('Masukkan Suhu (Celsius) : ');
    readln(celsius);

    fahrenheit := (celsius * 9 / 5) + 32;
    kelvin := celsius + 273.15;
    reamur := celsius * 4 / 5;

    writeln('====================================');
    writeln('Celsius     : ', celsius:0:2, ' C');
    writeln('Fahrenheit  : ', fahrenheit:0:2, ' F');
    writeln('Kelvin      : ', kelvin:0:2, ' K');
    writeln('Reamur      : ', reamur:0:2, ' R');
end.