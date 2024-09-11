List<List<int>> jumlahMatriks(List<List<int>> matriks1, List<List<int>> matriks2) {
  int ukuran = matriks1.length;
  List<List<int>> hasil = List.generate(ukuran, (_) => List.filled(ukuran, 0));
  for (int i = 0; i < ukuran; i++) {
    for (int j = 0; j < ukuran; j++) {
      hasil[i][j] = matriks1[i][j] + matriks2[i][j];
    }
  }
  return hasil;
}

void tampilkanMatriks(List<List<int>> matriks) {
  for (List<int> baris in matriks) {
    print(baris);
  }
}

void main() {

  List<List<int>> matriks1 = [
    [1, 2],
    [3, 4]
  ];

  List<List<int>> matriks2 = [
    [5, 6],
    [7, 8]
  ];

  List<List<int>> hasil = jumlahMatriks(matriks1, matriks2);

  print('Hasil penjumlahan kedua matriks:');
  tampilkanMatriks(hasil);
}
