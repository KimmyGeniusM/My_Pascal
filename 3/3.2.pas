program cek_Huruf_Vokal;
uses crt;
var 
    huruf: char;
begin
    clrscr;
    write('Masukkan sebuah huruf: ');
    readln(huruf);
    
    if (huruf = 'a') or (huruf = 'A')
    or (huruf = 'e') or (huruf = 'E')
    or (huruf = 'i') or (huruf = 'I')
    or (huruf = 'o') or (huruf = 'O')
    or (huruf = 'u') or (huruf = 'U') 
    then
    writeln('(',huruf, ') merupakan huruf vokal');
end.