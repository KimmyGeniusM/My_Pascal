program donor_darah;

var 
    gol_darah: string;

begin
    write('Masukkan golongan darah anda : ');
    readln(gol_darah);
    
    case gol_darah of
        'A' : writeln(gol_darah, ' pendonor anda A dan O');
        'B' : writeln(gol_darah, ' pendonor anda B dan O');
        'AB': writeln(gol_darah, ' pendonor anda semua golongan darah');
        'O' : writeln(gol_darah, ' pendonor anda O');
    else
        writeln('Golongan darah tak terdefinisi');
    end;
end.


{   
    IDENTITAS MAHASISWA
    Nama    : Evan Sebastian
    NIM     : 261401005
    Kom     : A             
}