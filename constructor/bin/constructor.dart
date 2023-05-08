import 'dart:convert';

class Mahasiswa {
  //Soal no 1  class bernama Mahasiswa dengan atribut nama, jurusan, dan angkatan.
  String? nama;
  String? jurusan;
  int? angkatan;

  // soal no 2 constructor default pada class Mahasiswa
  // Mahasiswa();

  // soal no 3 constructor parameterized pada class Mahasiswa
  // Mahasiswa(this.nama,this.jurusan,this.angkatan);

  //soal no 4 constructor named pada class Mahasiswa dengan nama fromJson yang menerima
  //parameter jsonString dan mengembalikan objek Mahasiswa yang diinisialisasi dengan
  //nilai atribut dari jsonString
  Mahasiswa.fromJsonString(String jsonString) {
    Map<String, dynamic> json = jsonDecode(jsonString);
    nama = json['nama'];
    jurusan = json['jurusan'];
    angkatan = json['angkatan'];
  }
}

void main(List<String> arguments) {
  String jsonString =
      '{"nama":"Jojo","jurusan":"Rekayasa Perangkat Lunak","angkatan":2018}';

  Mahasiswa mahasiswa = Mahasiswa.fromJsonString(jsonString);
  print('Nama: ${mahasiswa.nama}');
  print('Jurusan: ${mahasiswa.jurusan}');
  print('Angkatan: ${mahasiswa.angkatan}');
}
