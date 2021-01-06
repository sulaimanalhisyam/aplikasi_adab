import 'package:aplikasi_adab/data_aplikasi.dart';
import 'package:flutter/material.dart';

List<String> NamaAdab = [
  "adab makan",
  "adab tidur",
  "adab masuk kamar mandi",
  "adab keluar kamar mandi",
  "adab di saat hari jumat",
  "adab saat potong kuku",
  "adab saat belajar",
  "adab saat bermain",
  "adab kepada orang tua",
  "adab kepada guru",
  "adab saat menjunguk orang/keluarga sakit",
  "adab saat ke pasar",
  "adab terhadap binatang",
  "adab saat diluar rumah/di tempat umum",
  "adab saat membaca al-quran",
  "adab di kelas",
  "adab saat menaiki kendaraan",
  "adab saat berwudhu"
];

List<String> isiAdab = [
  "Adab sebelum makan dan minum : 1. Mencuci tangan hingga bersih 2. Berkumur atau mencuci mulut terlebih dahulu 3. Membaca basmalah saat akan memulai makan, dan diakhiri dengan membaca hamdalah 4. Membaca doa sebelum makan Adab saat makan dan minum : 1. Makan dan minum harus dengan posisi duduk 2. Tidak berbicara saat sedang makan 3. Menggunakan tangan kanan saat sedang makan 4. Tenang dan tidak tergesa-gesa saat makan, dan makanan tidak berceceran 5. Tidak makan sambil berjalan 6. Makan secukupnya dan tidak berlebihan 7. Tidak membicarakan hal-hal buruk saat makan",
  "adab tidur : 1. berzikir 2. posisinya meng hadap ke kanan terlebih dahulu 3. di sunnahkan berwudhu",
  "adab masuk kamar mandi : 1. dahulukan kaki kiri 2. tidak boleh berlama-lama di kamar mandi 2. membaca doa terlebih dahulu saat di luar kamar mandi",
  "adab keluar kamar mandi : 1. membaca doa 2. dahulukan kaki kanan 3. jangan lupa di keringkan kakinya agara lantainya tidak basah",
  "adab di saat hari jumat : 1. mandi junub 2. memakai parfum 3. menyikat gigi 4. di sunnahkan berjalan kaki 5. memotong kuku",
  "adab saat belajar : 1. memperhatikan guru 2. memcatat apa yang di katakan gurunya 3. jangan tidur saat guru menjelaskan",
  "adab saat bermain : 1. perhatikan waktu saat bermain 2. lebihbaik bermain gae offline 3. saat adzan harus di hentikan dahulu",
  "adab kepada orang tua : tidak boleh mebantah orangtua 2. tidak boleh berbohong 3. dahulukan panggilan ibu mu trs bapak mu",
  "adab kepada guru : 1. memperhatikan guru 2. memcatat apa yang di katakan gurunya 3. jangan tidur saat guru menjelaskan",
  "adab saat menjunguk orang/keluarga sakit : 1. mendoakannya 2. mendoakannya 3. mebawakan nya hadiah yang di suka",
  "adab saat ke pasar : 1. berdoa 2. menututup auorat 3. tidak boleh melakukan transaksi gelap 4. tidak boleh menghutang",
  "adab terhadap binatang : 1. tidak boleh menggangu hewan 2. kalau ada peliharaan harus di urus setiap hari 3. jangan menjual binatang kecuali binatang ternak",
  "adab saat diluar rumah/di tempat umum : 1. menutup aurat 2. membawa alat solat 3. perhatikan makana di luar sebelum membeliny, karena belum tentu makanan itu halal",
  "adab saat membaca al-quran : 1. jangan di taruh di kaki kecuali di paha 2. di sunnahkan berwudhu terlebih dahulu 3. fokus saat membaca al-quran 4. memperhatikan maghrojnya",
  "adab di kelas : 1. memperhatikan guru 2. memcatat apa yang di katakan gurunya 3. jangan tidur saat guru menjelaskan 4. jangan bermain di kelas",
  "adab saat menaiki kendaraan : 1. membaca doa 2. mambawa peralatan solat 3. tidak boleh meminum bir da merokok karena sangat berbahaya akan terjadi  kecelakaan",
  "adab saat berwudhu : 1. menggulungan lengan baju dan celana agar tidak basah 2. janganj bermain air 3. jangan meminum air wudhu saat puasa"
];

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blueAccent),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('bermacam-macam ADAB!!!',
              style: TextStyle(color: Colors.deepOrange)),
          centerTitle: true,
        ),
        body: TampilanUtama(),
      ),
    );
  }
}

class TampilanUtama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: NamaAdab.length,
        itemBuilder: (BuildContext context, int position) {
          return Padding(
            padding: const EdgeInsets.all(9.0),
            child: Card(
              elevation: 4.0,
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailAplikasi(
                                itemJudul: NamaAdab[position],
                                itemSub: isiAdab[position],
                              )));
                },
                title: Padding(
                  padding: const EdgeInsets.only(top: 6.0),
                  child: Text(
                    NamaAdab[position],
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                subtitle: Text(
                  isiAdab[position],
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
              ),
            ),
          );
        });
  }
}
