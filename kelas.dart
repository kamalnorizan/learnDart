class Kelas {
  String? nama;
  int? kapasiti;
  int? jumlahKipas;
  GuruKelas? guruKelas;

  Kelas(this.nama, {this.kapasiti, this.jumlahKipas, this.guruKelas});
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

void main() {}
