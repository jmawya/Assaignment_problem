class Book{
  String ? title;
  String ? author;
  double  price=0;

  Book(this.title, this.author, this.price){
    print('title: $title, author: $author, price: $price');
  }
  double discountedPrice(double discountPercent){
    return price-((price * discountPercent)/100);

  }
}

class Employee {
  String ? name;
  double ? salary;
  void information(){
    print("name: $name, salary: $salary");
  }

}

class Manager implements Employee{
  Manager(this.name, this.salary, this. department){}
  @override
  String ?name;
  @override
  double ? salary;
  String ? department;
  @override
  void information(){
    print("name: $name, salary: $salary, department: $department");
  }


}
class Developer implements Employee{
  Developer(this.name, this.salary, this.programmingLanguage){}
  @override
  String ?name;
  @override
  double ? salary;
  String ? programmingLanguage;
  @override
  void information(){
    print("name: $name, salary: $salary, programmingLanguage: $programmingLanguage");
  }
}

abstract class Appliance{
  turnOn();
  turnOff();



}
class Fan implements Appliance{
  @override
  turnOn(){
    print('Fan is now running');

  }

  turnOff(){
    print('Fan is turned off');
  }
}
class Light implements Appliance{
  @override
  turnOn(){
    print( "Light is switched on");
  }

  turnOff(){
    print('Light is turned off');
  }
}


main(){
  Book bo=Book('Amar','Korim',700);
  print(bo. discountedPrice(30));

  Book ok=Book('Life','Monir',800);
  print(ok. discountedPrice(50));
  Employee oy;
  oy=Manager('Moin',800, 'finance');
  oy.information();

  oy=Developer('Nasir',892,'Dart');
  oy.information();

  Appliance ac;
  ac=Fan();
  ac.turnOn();
  ac=Light();
  ac.turnOn();



}
