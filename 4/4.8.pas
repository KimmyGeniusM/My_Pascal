program statement_goto;
uses crt;

label destination;

begin 
    clrscr;

    writeln('Statement pertama');
    goto destination;
    writeln('Statement kedua');
    writeln('Statement ketiga');
    destination: writeln('Ini adalah statement yang akan dituju');
end.