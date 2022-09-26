class Car {
  Car(this.name,
      {this.engine, required this.brand, required this.model, this.owner});
  String name;
  String? engine;
  String? brand;
  Model? model;
  Owner? owner;

  void disp() {
    print(name + ' ' + brand.toString());
  }

  void dispWithOwner() {
    print(name +
        ' ' +
        brand.toString() +
        ' ' +
        model!.disp() +
        ' ' +
        owner!.disp());
  }
}

class Owner {
  Owner({required this.name, this.age, this.phoneNumber});

  String? name;
  int? age;
  String? phoneNumber;

  String disp() {
    return name.toString() + ' ' + age.toString();
  }
}

class Model {
  Model({required this.name, this.seats, this.tyre});
  String? name;
  int? seats;
  int? tyre;

  String disp() {
//     print(name.toString());
    return name.toString();
  }
}

void main() {
  Model x50 = Model(name: 'x50', seats: 5, tyre: 5);
  Model x50XE = Model(name: 'x50', seats: 7, tyre: 5);
  Car myCar = Car('MyNewCar',
      brand: 'Proton',
      model: x50,
      owner: Owner(name: 'Kamal', age: 33, phoneNumber: '0162084090'));
  Car myCar1 = Car('MyNewCar1', brand: 'Proton', model: x50);
  Car myCar2 = Car('MyNewCar2', brand: 'Proton', model: x50);
  Car myCar3 = Car('MyNewCar3', brand: 'Proton', model: x50XE);
  Car myCar4 = Car('MyNewCar4',
      brand: 'Proton', model: Model(name: 'Wira', seats: 5, tyre: 5));

  print(myCar1.brand.toString() + ' ' + myCar1.model!.name.toString());
  print(myCar4.brand.toString() + ' ' + myCar4.model!.name.toString());
  myCar2.disp();
  myCar.dispWithOwner();
}
