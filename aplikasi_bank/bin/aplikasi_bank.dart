import 'dart:io';

class Nasabah {
  String nama;
  String alamat;
  int saldo;

  Nasabah({required this.nama, required this.alamat, this.saldo = 0});

  simpan(int saldoTambah) {
    saldo += saldoTambah;
    return saldo;
  }

  ambil(int saldoKurang) {
    saldo -= saldoKurang;
    return saldo;
  }
}

void main(List<String> arguments) {
  Nasabah nasabah1 = Nasabah(nama: "Joni", alamat: "Banyumas");
  Nasabah nasabah2 = Nasabah(nama: "Bobon", alamat: "Purwokerto");

  nasabah1.simpan(10000);
  print("saldo dari ${nasabah1.nama} adalah ${nasabah1.saldo}");
  nasabah2.simpan(20000);
  print("saldo dari ${nasabah2.nama} adalah ${nasabah2.saldo}");

  //nasabah 1
  stdout.write("${nasabah1.nama} Berapa Saldo yang hendak di ambil: ");
  int ambil1 = int.parse(stdin.readLineSync() ?? '0');
  nasabah1.ambil(ambil1);
  print("sisa saldo dari ${nasabah1.nama} adalah ${nasabah1.saldo}");
  print('=======================================================');
  //nasabah 2
  stdout.write("${nasabah2.nama} Berapa Saldo yang hendak di ambil: ");
  int ambil2 = int.parse(stdin.readLineSync() ?? '0');
  nasabah2.ambil(ambil2);
  print("sisa saldo dari ${nasabah2.nama} adalah ${nasabah2.saldo}");
}
