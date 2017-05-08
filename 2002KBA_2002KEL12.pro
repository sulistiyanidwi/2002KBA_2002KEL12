domains
nama = string*
kriteria = kriteria(section,kemampuan)
section = section(posisi)
kemampuan = kemampuan(kemampuan1, kemampuan2, kemampuan3, kemampuan4)
posisi = symbol
kemampuan1, kemampuan2, kemampuan3, kemampuan4 = symbol
predicates
 cetak_nama(nama)
nondeterm jawaban(char)
nondeterm jawaban2(char)
nondeterm jawaban3(char)
nondeterm jawaban4(char)
nondeterm jawaban5(char)
nondeterm jawaban21(char)
nondeterm jawaban31(char)
nondeterm jawabann5(char)
nondeterm tanyaiya213(char)
nondeterm lanjutjawaban4(char)
nondeterm tanyatidak213(char)
nondeterm jawabann21(char)
nondeterm pertanyaan1
nondeterm pertanyaan2
nondeterm pertanyaan3
nondeterm pertanyaan4
nondeterm pertanyaan5
nondeterm pertanyaan21
nondeterm pertanyaan31
nondeterm pertanyaan213
nondeterm pertanyaaniya213
nondeterm pertanyaantidak21
nondeterm tanya213(char)
nondeterm pertanyaantidak5
nondeterm pertanyaantidak213
nondeterm lanjutpertanyaan4
nondeterm lanjuttidak4
nondeterm tidakjawab4(char)
nondeterm bassdrum2
nondeterm bassdrum22
nondeterm bassdrum3
nondeterm bassdrum4
nondeterm bassdrum41
nondeterm bassdrum5
nondeterm snaredrum
nondeterm cymbal
nondeterm cymbale
nondeterm quintoms
nondeterm snare
nondeterm bassd2
nondeterm bassd4
nondeterm simball
nondeterm welcome
nondeterm well(char)
nondeterm ta(char)
nondeterm ty(char)
nondeterm tya(char)
nondeterm tyaa(char)
nondeterm tyaan(char)
nondeterm tyaann(char)
nondeterm dw(char)
nondeterm dwst(char)
nondeterm dul(char)
nondeterm dull(char)
nondeterm sim(char)
nondeterm bal(char)
nondeterm mansur(char)
nondeterm mansurr(char)
nondeterm terimakasih
yt(char,char)

clauses
cetak_nama([]).
cetak_nama([H|T]):-
 write(H),nl,
 cetak_nama(T).
 

yt(Y,Y):- !.
yt(_,_):- fail.

welcome:-
cetak_nama(["Ridwan Kurniadi : 1515015013\n","Dwi Sulistiyani : 1515015023\n","Rina : 1515015037\n","Kelompok 12 A2015\n","Menentukan Section pada Drumline berdasarkan sifat seseorang\n"]),
write("\n"),
write("\n"),
write("\n"),
write("____________________"),
write("Welcome Drumliners"),
write("____________________"),
write("\n"),
write("\n"),
write("Tekan Tombol Sembarang untuk mulai....."),nl,
readchar(A),well(A).
well(A):- yt(A,'a'),pertanyaan1.
well(_):- pertanyaan1.

pertanyaan1:-
write("\n"),
write("1. Apakah Termasuk Orang yang sering bekerja secara berkelompok ?"),
write("\n"),
write(" A. Iya\n"),
write(" B. Kadang-kadang\n"),
write(" Jawab ? (A/B)\n"),
write("\n"),
readchar(A),jawaban(A).
jawaban(A):- yt(A,'A'),pertanyaan2.
jawaban(A):- yt(A,'a'),pertanyaan2.
jawaban(A):- yt(A,'B'),pertanyaan21.
jawaban(A):- yt(A,'b'),pertanyaan21.
jawaban(_):- pertanyaan1.

pertanyaan2:-
write("2. Apakah Anda termasuk orang yang dapat mengapal dengan cepat dalam materi yang diberikan ?"),
write("\n"),
write(" A. Iya\n"),
write(" B. Tidak Terlalu\n"),
write(" Jawab ? (A/B)\n"),
write("\n"),
readchar(A),jawaban2(A).
jawaban2(A):- yt(A,'A'),pertanyaan3.
jawaban2(A):- yt(A,'a'),pertanyaan3.
jawaban2(A):- yt(A,'B'),pertanyaan31.
jawaban2(A):- yt(A,'b'),pertanyaan31.
jawaban2(_):- pertanyaan2.

pertanyaan3:-
write("3. Apakah adalah anda dapat memainkan pukulan pada bit N dalam 2 bar?"),
write("\n"),
write(" A. Iya\n"),
write(" B. Kadang-kadang\n"),
write(" Jawaban ? (A/B)\n"),
write("\n"),
readchar(A),jawaban3(A).
jawaban3(A):- yt(A,'A'),pertanyaan4.
jawaban3(A):- yt(A,'a'),pertanyaan4.
jawaban3(A):- yt(A,'B'),pertanyaan31.
jawaban3(A):- yt(A,'b'),pertanyaan31.
jawaban3(_):- pertanyaan3.

pertanyaan4:-
write("4. Apakah adalah anda dapat memainkan pukulan dasar paraddidle dengan bit N saja?"),
write("\n"),
write(" A. Iya\n"),
write(" B. Kadang-kadang\n"),
write(" Jawaban ? (A/B)\n"),
write("\n"),
readchar(A),jawaban4(A).
jawaban4(A):- yt(A,'A'),pertanyaan5.
jawaban4(A):- yt(A,'a'),pertanyaan5.
jawaban4(A):- yt(A,'B'),pertanyaantidak5.
jawaban4(A):- yt(A,'b'),pertanyaantidak5.
jawaban4(_):-pertanyaan4.

pertanyaan31:-
write("3. Apakah adalah anda dapat memainkan pukulan pada bit (1) dalam 2 bar?"),
write("\n"),
write(" A. Iya.\n"),
write(" B. Kadang-kadang.\n"),
write(" Jawaban ? (A/B)\n"),
write("\n"),
readchar(A),jawaban31(A).
jawaban31(A):- yt(A,'A'),lanjutpertanyaan4.
jawaban31(A):- yt(A,'a'),lanjutpertanyaan4.
jawaban31(A):- yt(A,'B'),lanjuttidak4.
jawaban31(A):- yt(A,'b'),lanjuttidak4.
jawaban31(_):- pertanyaan31.

lanjutpertanyaan4:-
write("4. Apakah adalah anda dapat melakukan open roll ?"),
write("\n"),
write(" A. Iya\n"),
write(" B. Tidak\n"),
write(" Jawaban ? (A/B)\n"),
write("\n"),
readchar(A),lanjutjawaban4(A).
lanjutjawaban4(A):- yt(A,'A'),bassdrum22.
lanjutjawaban4(A):- yt(A,'a'),bassdrum22.
lanjutjawaban4(A):- yt(A,'B'),bassdrum3.
lanjutjawaban4(A):- yt(A,'b'),bassdrum3.
lanjutjawaban4(_):- lanjutpertanyaan4.

lanjuttidak4:-
write("4. Apakah adalah anda dapat melakukan pukulan pemanasan 8-8-16"),
write("\n"),
write(" A. Iya\n"),
write(" B. Tidak\n"),
write(" Jawaban ? (A/B)\n"),
write("\n"),
readchar(A),tidakjawab4(A).
tidakjawab4(A):- yt(A,'A'),bassdrum5.
tidakjawab4(A):- yt(A,'a'),bassdrum5.
tidakjawab4(A):- yt(A,'B'),cymbal.
tidakjawab4(A):- yt(A,'b'),cymbal.
tidakjawab4(_):- lanjuttidak4.

pertanyaan21:-
write("2. Apakah Anda termasuk orang yang dapat mengapal dengan cepat dalam dengan tempo yang berubah-ubah ?"),
write("\n"),
write(" A. Iya\n"),
write(" B. Tidak Terlalu\n"),
write(" Jawab ? (A/B)\n"),
write("\n"),
readchar(A),jawaban21(A).
jawaban21(A):- yt(A,'A'),pertanyaan213.
jawaban21(A):- yt(A,'a'),pertanyaan213.
jawaban21(A):- yt(A,'B'),pertanyaantidak21.
jawaban21(A):- yt(A,'b'),pertanyaantidak21.
jawaban21(_):- pertanyaan21.

pertanyaan213:-
write("3. Apakah anda dapat memainkan berbagai jenis pukulan dalam 1 materi?"),
write("\n"),
write(" A. Iya\n"),
write(" B. Kadang-kadang\n"),
write(" Jawaban ? (A/B)\n"),
write("\n"),
readchar(A),tanya213(A).
tanya213(A):- yt(A,'A'),pertanyaaniya213.
tanya213(A):- yt(A,'a'),pertanyaaniya213.
tanya213(A):- yt(A,'B'),pertanyaantidak213.
tanya213(A):- yt(A,'b'),pertanyaantidak213.
tanya213(_):-pertanyaan213.

pertanyaantidak21:-
write("3. Apakah Anda dapat bermain pada bit genap dan ganjil dengan stabil ?"),
write("\n"),
write(" A. Iya\n"),
write(" B. Tidak Terlalu\n"),
write(" Jawab ? (A/B)\n"),
write("\n"),
readchar(A),jawabann21(A).
jawabann21(A):- yt(A,'A'),bassd4.
jawabann21(A):- yt(A,'a'),bassd4.
jawabann21(A):- yt(A,'B'),simball.
jawabann21(A):- yt(A,'b'),simball.
jawabann21(_):- pertanyaantidak21.


pertanyaantidak213:-
write("4. Apakah anda dapat menggunakan tempo 1/16 dengan stabil?"),
write("\n"),
write(" A. Iya\n"),
write(" B. Kadang-kadang\n"),
write(" Jawaban ? (A/B)\n"),
write("\n"),
readchar(A),tanyatidak213(A).
tanyatidak213(A):- yt(A,'A'),snare.
tanyatidak213(A):- yt(A,'a'),snare.
tanyatidak213(A):- yt(A,'B'),bassd2.
tanyatidak213(A):- yt(A,'b'),bassd2.
tanyatidak213(_):-pertanyaantidak213.

pertanyaaniya213:-
write("4. Apakah anda dapat menggunakan tempo 1/32 dengan stabil?"),
write("\n"),
write(" A. Iya\n"),
write(" B. Kadang-kadang\n"),
write(" Jawaban ? (A/B)\n"),
write("\n"),
readchar(A),tanyaiya213(A).
tanyaiya213(A):- yt(A,'A'),snaredrum.
tanyaiya213(A):- yt(A,'a'),snaredrum.
tanyaiya213(A):- yt(A,'B'),quintoms.
tanyaiya213(A):- yt(A,'b'),quintoms.
tanyaiya213(_):-pertanyaaniya213.

pertanyaan5:-
write("5.Apakah adalah anda dapat melakukan pukulan pemanasan 8-8-16 ?"),
write("\n"),
write(" A. Iya\n"),
write(" B. Tidak\n"),
write(" Jawaban ? (A/B)\n"),
write("\n"),
readchar(A),jawaban5(A).
jawaban5(A):- yt(A,'A'),bassdrum2.
jawaban5(A):- yt(A,'a'),bassdrum2.
jawaban5(A):- yt(A,'B'),bassdrum4.
jawaban5(A):- yt(A,'b'),bassdrum4.
jawaban5(_):- pertanyaan5.

pertanyaantidak5:-
write("5. Apakah adalah anda dapat melakukan open roll ?"),
write("\n"),
write(" A. Iya\n"),
write(" B. Tidak\n"),
write(" Jawaban ? (A/B)\n"),
write("\n"),
readchar(A),jawabann5(A).
jawabann5(A):- yt(A,'A'),bassdrum41.
jawabann5(A):- yt(A,'a'),bassdrum41.
jawabann5(A):- yt(A,'B'),cymbale.
jawabann5(A):- yt(A,'b'),cymbale.
jawabann5(_):- pertanyaantidak5.

snaredrum:-
write("___Selamat Anda berada di Section Snare Drum___"),
P1 = kriteria(section(snaredrum),kemampuan(cepat_tanggap,mengerti_rudiment,mengerti_tempo,mengerti_bit)),nl,
write(P1),nl,
write("\n"),
write("\n"),
write(" A. Iya\n"),
write(" B. Tidak\n"),
readchar(A),ta(A).
ta(A):- yt(A,'A'),pertanyaan1.
ta(A):- yt(A,'a'),pertanyaan1.
ta(A):- yt(A,'B'),terimakasih.
ta(A):- yt(A,'b'),terimakasih.
ta(_):- snaredrum.

snare:-
write("___Selamat Anda berada di Section Snare Drum___"),
P1 = kriteria(section(snaredrum),kemampuan(cepat_tanggap,mengerti_rudiment,mengerti_tempo,mengerti_bit)),nl,
write(P1),nl,
write("\n"),
write("\n"),
write("Apakah Anda Ingin Test Ulang ?\n"),
write(" A. Iya\n"),
write(" B. Tidak\n"),
readchar(A),ty(A).
ty(A):- yt(A,'A'),pertanyaan1.
ty(A):- yt(A,'a'),pertanyaan1.
ty(A):- yt(A,'B'),terimakasih.
ty(A):- yt(A,'b'),terimakasih.
ty(_):- snare.


bassdrum2:- 
write("___Selamat Anda berada di Section Bass Drum, pada Bass Drum 2___"),
P1 = kriteria(section(bassdrum),kemampuan(cepat_tanggap,bekerja_sama,mengerti_tempo,mengerti_bit)),nl,
write(P1),nl,
write("\n"),
write("\n"),
write("Apakah Anda Ingin Test Ulang ?\n"),
write(" A. Iya\n"),
write(" B. Tidak\n"),
readchar(A),tya(A).
tya(A):- yt(A,'A'),pertanyaan1.
tya(A):- yt(A,'a'),pertanyaan1.
tya(A):- yt(A,'B'),terimakasih.
tya(A):- yt(A,'b'),terimakasih.
tya(_):- bassdrum2.


bassd2:-
write("___Selamat Anda berada di Section Bass Drum, pada Bass Drum 2___"),
P1 = kriteria(section(bassdrum),kemampuan(cepat_tanggap,bekerja_sama,mengerti_tempo,mengerti_bit)),nl,
write(P1),nl,write("\n"),
write("\n"),
write("Apakah Anda Ingin Test Ulang ?\n"),
write(" A. Iya\n"),
write(" B. Tidak\n"),
readchar(A),tyaa(A).
tyaa(A):- yt(A,'A'),pertanyaan1.
tyaa(A):- yt(A,'a'),pertanyaan1.
tyaa(A):- yt(A,'B'),terimakasih.
tyaa(A):- yt(A,'b'),terimakasih.
tyaa(_):- bassd2.

bassdrum4:-
write("___Selamat Anda berada di Section Bass Drum, pad Bass Drum 4___"),
P1 = kriteria(section(bassdrum),kemampuan(cepat_tanggap,bekerja_sama,mengerti_tempo,mengerti_bit)),nl,
write(P1),nl,
write("\n"),
write("\n"),
write("Apakah Anda Ingin Test Ulang ?\n"),
write(" A. Iya\n"),
write(" B. Tidak\n"),
readchar(A),tyaan(A).
tyaan(A):- yt(A,'A'),pertanyaan1.
tyaan(A):- yt(A,'a'),pertanyaan1.
tyaan(A):- yt(A,'B'),terimakasih.
tyaan(A):- yt(A,'b'),terimakasih.
tyaan(_):- bassdrum4.


bassdrum22:-
write("___Selamat Anda berada di Section Bass Drum, pada Bass Drum 1___"),
P1 = kriteria(section(bassdrum),kemampuan(cepat_tanggap,bekerja_sama,mengerti_tempo,mengerti_bit)),nl,
write(P1),nl,
write("\n"),
write("\n"),
write("Apakah Anda Ingin Test Ulang ?\n"),
write(" A. Iya\n"),
write(" B. Tidak\n"),
readchar(A),tyaan(A).
tyaann(A):- yt(A,'A'),pertanyaan1.
tyaann(A):- yt(A,'a'),pertanyaan1.
tyaann(A):- yt(A,'B'),terimakasih.
tyaann(A):- yt(A,'b'),terimakasih.
tyaann(_):- bassdrum22.

bassdrum3:-
write("___Selamat Anda berada di Section Bass Drum, pada Bass Drum 3__"),
P1 = kriteria(section(bassdrum),kemampuan(cepat_tanggap,bekerja_sama,mengerti_tempo,mengerti_bit)),nl,
write(P1),nl,
write("\n"),
write("\n"),
write("Apakah Anda Ingin Test Ulang ?\n"),
write(" A. Iya\n"),
write(" B. Tidak\n"),
readchar(A),dw(A).
dw(A):- yt(A,'A'),pertanyaan1.
dw(A):- yt(A,'a'),pertanyaan1.
dw(A):- yt(A,'B'),terimakasih.
dw(A):- yt(A,'b'),terimakasih.
dw(_):- bassdrum3.

bassdrum5:-
write("___Selamat Anda berada di Section Bass Drum, pada Bass Drum 5___"),
P1 = kriteria(section(bassdrum),kemampuan(cepat_tanggap,bekerja_sama,mengerti_tempo,mengerti_bit)),nl,
write(P1),nl,
write("\n"),
write("\n"),
write("Apakah Anda Ingin Test Ulang ?\n"),
write(" A. Iya\n"),
write(" B. Tidak\n"),
readchar(A),dwst(A).
dwst(A):- yt(A,'A'),pertanyaan1.
dwst(A):- yt(A,'a'),pertanyaan1.
dwst(A):- yt(A,'B'),terimakasih.
dwst(A):- yt(A,'b'),terimakasih.
dwst(_):- bassdrum5.


bassdrum41:-
write("___Selamat Anda berada di Section Bass Drum, pada Bass Drum 4___"),
P1 = kriteria(section(bassdrum),kemampuan(cepat_tanggap,bekerja_sama,mengerti_tempo,mengerti_bit)),nl,
write(P1),nl,
write("\n"),
write("\n"),
write("Apakah Anda Ingin Test Ulang ?\n"),
write(" A. Iya\n"),
write(" B. Tidak\n"),
readchar(A),dul(A).
dul(A):- yt(A,'A'),pertanyaan1.
dul(A):- yt(A,'a'),pertanyaan1.
dul(A):- yt(A,'B'),terimakasih.
dul(A):- yt(A,'b'),terimakasih.
dul(_):- bassdrum41.


bassd4:-
write("___Selamat Anda berada di Section Bass Drum, pada Bass Drum 4___"),
P1 = kriteria(section(bassdrum),kemampuan(cepat_tanggap,bekerja_sama,mengerti_tempo,mengerti_bit)),nl,
write(P1),nl,
write("\n"),
write("\n"),
write("Apakah Anda Ingin Test Ulang ?\n"),
write(" A. Iya\n"),
write(" B. Tidak\n"),
readchar(A),dull(A).
dull(A):- yt(A,'A'),pertanyaan1.
dull(A):- yt(A,'a'),pertanyaan1.
dull(A):- yt(A,'B'),terimakasih.
dull(A):- yt(A,'b'),terimakasih.
dull(_):- bassd4.


cymbal:-
write("___Selamat Anda berada di Section Cymbal___"),
P1 = kriteria(section(cymbal),kemampuan(mengerti_besicdrumline,mengerti_bit, mengerti_tempo,mengerti_marktime)),nl,
write(P1),nl,
write("\n"),
write("\n"),
write("Apakah Anda Ingin Test Ulang ?\n"),
write(" A. Iya\n"),
write(" B. Tidak\n"),
readchar(A),sim(A).
sim(A):- yt(A,'A'),pertanyaan1.
sim(A):- yt(A,'a'),pertanyaan1.
sim(A):- yt(A,'B'),terimakasih.
sim(A):- yt(A,'b'),terimakasih.
sim(_):- cymbal.


simball:-
write("___Selamat Anda berada di Section Cymbal___"),
P1 = kriteria(section(cymbal),kemampuan(mengerti_besicdrumline,mengerti_bit, mengerti_tempo,mengerti_marktime)),nl,
write(P1),nl,
write("\n"),
write("\n"),
write("Apakah Anda Ingin Test Ulang ?\n"),
write(" A. Iya\n"),
write(" B. Tidak\n"),
readchar(A),bal(A).
bal(A):- yt(A,'A'),pertanyaan1.
bal(A):- yt(A,'a'),pertanyaan1.
bal(A):- yt(A,'B'),terimakasih.
bal(A):- yt(A,'b'),terimakasih.
bal(_):- simball.


cymbale:-
write("___Selamat Anda berada di Section Cymbal___"),
P1 = kriteria(section(cymbal),kemampuan(mengerti_besicdrumline,mengerti_bit, mengerti_tempo,mengerti_marktime)),nl,
write(P1),nl,
write("\n"),
write("\n"),
write("Apakah Anda Ingin Test Ulang ?\n"),
write(" A. Iya\n"),
write(" B. Tidak\n"),
readchar(A),mansur(A).
mansur(A):- yt(A,'A'),pertanyaan1.
mansur(A):- yt(A,'a'),pertanyaan1.
mansur(A):- yt(A,'B'),terimakasih.
mansur(A):- yt(A,'b'),terimakasih.
mansur(_):- cymbale.


quintoms:-
write("___Selamat Anda Berada di Section Quintoms___"),
P1 = kriteria(section(quintoms),kemampuan(cepat_tanggap,mengerti_rudiment,mengerti_tempo,mengerti_bit)),nl,
write(P1),nl,
write("\n"),
write("\n"),
write("Apakah Anda Ingin Test Ulang ?\n"),
write(" A. Iya\n"),
write(" B. Tidak\n"),
readchar(A),mansurr(A).
mansurr(A):- yt(A,'A'),pertanyaan1.
mansurr(A):- yt(A,'a'),pertanyaan1.
mansurr(A):- yt(A,'B'),terimakasih.
mansurr(A):- yt(A,'b'),terimakasih.
mansurr(_):- quintoms.

terimakasih:-
write("\n"),
write("_____Semangat Berkarya_____"),
write("\n").
goal
welcome.