class Kelas {
  String? nama;
  int? kapasiti;
  int? jumlahKipas;
  GuruKelas? guruKelas;
  List<Pelajar>? senaraiPelajar = [];

  Kelas(this.nama,
      {this.kapasiti, this.jumlahKipas, this.guruKelas, this.senaraiPelajar});
}

class GuruKelas {
  String? name;
  int? umur;
  GuruKelas(this.name, {this.umur});
}

class Pelajar {
  String? name;
  String? jantina;
  String? tarikhLahir;
  Kelas? kelasSemasa;

  Pelajar(this.name, {this.jantina, this.tarikhLahir, this.kelasSemasa});
}

void main() {
  List<Pelajar> senarai = [];
  Kelas bestari = Kelas('Bestari',
      kapasiti: 25, jumlahKipas: 2, guruKelas: GuruKelas('Amira', umur: 30));
  Kelas cemerlang = Kelas('Cemerlang',
      kapasiti: 23, jumlahKipas: 1, guruKelas: GuruKelas('Amirul', umur: 35));

  Pelajar pelajar1 = Pelajar('Shafik',
      jantina: 'Lelaki', kelasSemasa: bestari, tarikhLahir: '20/05/2015');

  Pelajar pelajar2 = Pelajar('Saiful',
      jantina: 'Lelaki', kelasSemasa: bestari, tarikhLahir: '20/07/2015');

  senarai.add(pelajar1);
  senarai.add(pelajar2);
  bestari.senaraiPelajar = senarai;

  for (var pelajar in bestari.senaraiPelajar!) {
    print(pelajar.name.toString() +
        ', ' +
        pelajar.kelasSemasa!.nama.toString() +
        ', ' +
        pelajar.kelasSemasa!.guruKelas!.name.toString());
  }

//   print(pelajar1.name.toString() +', '+
//         pelajar1.kelasSemasa!.nama.toString()+', '+
//         pelajar1.kelasSemasa!.guruKelas!.name.toString());
}
