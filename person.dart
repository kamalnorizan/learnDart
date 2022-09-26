class Person {
  String? name;
  int? age;

  Person({this.name, this.age});

  calculateyob() {
    return (DateTime.now().year - int.parse(age.toString()));
  }
}

void main() {
  Person a = Person(name: 'Kamal', age: 33);
  print('YOB ' + a.calculateyob().toString());
}
