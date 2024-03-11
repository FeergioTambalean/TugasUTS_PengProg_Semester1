//// TUGAS 1 PENGANTAR PEMOGRAMAN
program tugas_PengProg;
//sub program
uses crt;
procedure biodata;
	var
		nama,prodi,fak,alamat,hobi,makanan,warna:string;
		nim:real;
		umur:integer;
	begin
		clrscr;
		writeln('================================================================================');
		writeln('                            MASUKAN BIODATA ANDA                                ');
		writeln('================================================================================');
		write('Masukan Nama Anda : ');
		readln(nama);
		write('Masukan Umur Anda : ');
		readln(umur);
		write('Masukan NIM Anda : ');
		readln(nim);
		write('Masukan PRODI Anda : ');
		readln(prodi);
		write('Masukan Fakultas Anda : ');
		readln(fak);
		write('Masukan Alamat Anda  : ');
		readln(alamat);
		write('Masukan Hobby Anda : ');
		readln(hobi);
		write('Masukan Makanan Kesukaaan Anda : ');
		readln(makanan);
		write('Masukan Warna Kesukaan Anda :  ');
		readln(warna);
		writeln('================================================================================');
		writeln('                              BIODATA                                           ');
		writeln('================================================================================');
		textcolor(red);
		writeln('Nama saya adalah ',nama);
		writeln('Saya berumur ',umur,' tahun');
		writeln('Dengan NIM ',nim);
		writeln('Saya berasal dari PRODI ',prodi);
		writeln('Fakultas ',fak);
		writeln('Saya tinggal di ',alamat);
		writeln('Saya memiliki hobby yaitu ',hobi);
		writeln('Makanan kesukaan saya  adalah ',makanan);
		writeln('warna kesukaan saya adakah ',warna);
		readln;

		end;

procedure luas_persegi_panjang;
	var
		panjang,lebar,luas : integer;
	function luas_persegi(p,l : integer) : integer;
	begin
	luas_persegi :=p*l;
	end;
	

	begin
	clrscr;
	writeln('================================================================================');
	writeln('                    MENGHITUNNG LUAS PERSEGI  PANJANG                            ');
	writeln('================================================================================');
	write('Input nilai panjang persegi panjang : ');
	readln(panjang);
	write('Input nilai lebar persegi panjang : '); 
	readln(lebar);
	//proses
	luas:= luas_persegi(panjang,lebar);
	writeln;
	textcolor(red);
	writeln('luas persegi adalah : ',luas);
	writeln('================================================================================');

end;

procedure keliling_persegi_panjang;
var
	p,l,keliling:integer;
begin
	writeln('================================================================================');
	writeln('                     MENCARI KELILING PERSEGI PANJANG                           ');
	writeln('================================================================================');
	//input
	write('Input panjang (p) : ');
	readln(p);
	write('Input lebar (l)    : ');
	readln(l);
	//proses
	keliling:=2*(p*l);
	//output
	textcolor(red);
	writeln;
	writeln('Keliling Persegi Panjang : ',keliling);
	writeln('================================================================================');
end;

procedure mengitung_nilai_ratarata;
	//input
	var
	bilangan:array[1..100]of integer;
	n,i,jumlah:integer;
	hasil:real;

begin
	//proses
	writeln('================================================================================');
	writeln('                          MENGHITUNG NILAI RATA-RATA                            ');
	writeln('================================================================================');
	jumlah:=0;
	write('Nilai banyak bilangan : '); readln(n);
	for i:=1 to n do
	begin
	write('Input Bilangan ke-',i,':'); readln(bilangan[i]);
	jumlah:=jumlah+bilangan[i];
	end;
	//output
	hasil:=jumlah/n;
	textcolor(red);
	writeln;
	writeln('Rata-rata bilangan tersebut adalah  :  ', hasil:0:2);
	writeln('================================================================================');

end;

procedure menghitung_perkalian_jumlah_bilangan;
	var
	a,b,jumlah:integer;
	
	begin 
	writeln('================================================================================');
	writeln('                     MEGHITUNG PERKALIAN JUMLAH BILANGAN'                       );
	writeln('================================================================================');
	//input
	write('Input nilai  (a) : ');
	readln(a);
	write('Input Nilai  (b) : ');
	readln(b);
	//proses
	jumlah:=a*b;
	//output
	textcolor(red);
	writeln;
	writeln('Hasil perkalian : ',jumlah);
	writeln('================================================================================');
	writeln;
	end;

procedure menghitung_luas_segitiga;
	var
	a,t,luas:integer;
	
	begin
	//proses
	writeln('================================================================================');
	writeln('                          MENGHITUNG LUAS SEGITIGA                              ');
	writeln('================================================================================');
	//input
	write('Input nilai  panjang alas segitiga (a) : ');
	readln(a);
	write('Input  Nilai Tinggi Segitiga (t) : ');
	readln(t);
	//proses
	luas:=(2*a)*t;
	//Output
	textcolor(red);
	writeln;
	writeln('Luas Segitiga : ',luas);
	writeln('================================================================================');

	end;
procedure menghitung_keliling_segitiga;
	var
	a,b,c,keliling:integer;
	
	begin
	//proses
	writeln('================================================================================');
	writeln('                      MENGHITUNG KELILING SEGITIGA                              ');
	writeln('================================================================================');
	//input
	write('Nilai sisi (a) : ');
	readln(a);
	write('Nilai sisi (b) : ');
	readln(b);
	write('Nilai sisi (c) : ');
	readln(c);
	//proses
	keliling:=a+b+c;
	//Output
	textcolor(red);
	writeln;
	writeln('KELILING Segitiga : ',keliling);
	writeln('================================================================================');

	end;

procedure nilai_max_min;
	var
	 x,y,min,max:integer;
	 angka:array[1..10] of integer;

	begin
		for x := 1 to 10 do 
		begin
		 writeln('================================================================================');
		 writeln('||||||||||||||||||||MENCARI NILAI MAXIMUM DAN MINIMUM|||||||||||||||||||||||||||');
		 writeln('================================================================================');
		 write('Input Bilangan ke- ',x,'= '); readln(y);
		 angka[x] := y;
		 end;
		writeln('================================================================================');
		writeln('Angka yang anda masukan adalah : ');
		for x := 1 to 10 do
		begin
			write(angka[x],'...');
			end;
		writeln('');
		writeln('================================================================================');
		min := 0;
		max := 0;

		for x := 1 to 10 do 
		begin
			if (min = 0) or (min > angka [x]) then
			begin
				min:=   angka [x];
				end;
			if max < angka[x] then
			begin
			 max:= angka [x];
			 end;
			 textcolor(red);
	writeln('Nili Minimum = ',min);
	writeln('Nilai Maximum = ',max);

		readln;
		end;
end;


//program utama
var 
	pilihan:integer;
begin
	textcolor(blue);
	writeln('================================================================================');
	textcolor(white);
	writeln('                            TUGAS PENGANTAR PEMOGRAAMAN                         ');
	writeln('               Dosen Pengampu : Christie E. J. C. Montolalu S.Si, M.Sc          ');
	writeln('                       Nama : Feergio Given Majesti Tambalean                   ');
	writeln('                                NIM : 221011060026                              ');
	writeln('                              PRODI SISTEM INFORMSI                             ');
	writeln('                  FAKULTAS MATEMATIKA DAN ILMU PENGETAHUAN ALAM                 ');
	textcolor(blue);
	writeln('================================================================================');
	textcolor(white);
	writeln('================================================================================');

	delay(3000);
	clrscr;
	writeln;
	textcolor(red);
	writeln('================================================================================');
	textcolor(white);
	writeln('                             PILIH MENU YANG ADA                               ');
	textcolor(red);
	writeln('================================================================================');
	writeln; 
	textcolor(white);
	writeln('================================================================================');
	writeln(' |      1. MENGISI BIODATA                             |');
	writeln(' |      2. Menghitung Luas Persegi Panjang             |'); 
	writeln(' |      3. Menghitung Keliling Persegi Panjang         |');
	writeln(' |      4. Menghitung Luas Segitiga                    |');
	writeln(' |      5. Menghitung Keliling Segitiga                |');
	writeln(' |      6. Menghitung nilai rata-rata                  |');
	writeln(' |      7. Menghitung nilai Maximum dan Minimum        |');
	writeln(' |      8. Menghitung Perkalian Jumlah Bilangan        |');
	writeln('================================================================================');	
	write('Masukan Pilihan Anda [1-8] : ');
	readln(pilihan);
	clrscr;
	textcolor(white);
	writeln;
	if pilihan = 1 then
	begin
		biodata;
		end
	
	else if pilihan = 2 then 
	begin
		luas_persegi_panjang;
		end

	else if pilihan = 3 then
	begin 
		keliling_persegi_panjang;
		end
	
	else if pilihan = 4 then
	begin
		menghitung_luas_segitiga;
		end
	
	else if pilihan = 5 then
	begin
		menghitung_keliling_segitiga;
	end

	else  if pilihan = 6 then
	begin
		mengitung_nilai_ratarata;
	end

	else  if pilihan = 7 then
	begin
		nilai_max_min;
	end

	else if pilihan = 8 then
	begin
	 menghitung_perkalian_jumlah_bilangan;
	end;
	
	
readkey;
	
	
end.