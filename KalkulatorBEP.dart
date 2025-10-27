import 'dart:io';

void main() {
  print("==== Kalkulator Titik Impas (BEP) ====");
  
  stdout.write("Masukkan biaya tetap (Rp): ");
  double biayaTetap = double.parse(stdin.readLineSync()!);
  
  stdout.write("Masukkan harga jual per unit (Rp): ");
  double hargaJual = double.parse(stdin.readLineSync()!);
  
  stdout.write("Masukkan biaya variabel per unit (Rp): ");
  double biayaVariabel = double.parse(stdin.readLineSync()!);
  
  double bepUnit = biayaTetap / (hargaJual-biayaVariabel);
  double bepHarga = bepUnit * hargaJual;
  
  print("\n==== Hasil Perhitungan BEP ====");
  print("Titik Impas dalam Unit: ${bepUnit.toStringAsFixed(0)} unit");
  print("Titik Impas dalam Rupiah: Rp ${bepHarga.toStringAsFixed(0)}");
}