class Person{
  String? name;
  int? age;
  double? height;

  Person({this.name, this.age, this.height});
  void printDescription(){
    print("My name is $name. I'm $age years old, I'm $height meters tall.");
  }

}

void main(){
  Person person1 = Person(name: "Euro", age: 20, height: 1.75);
  person1.printDescription();
  Person person2 = Person(name: "Aun", age: 20, height: 1.65);
  person2.printDescription();
}