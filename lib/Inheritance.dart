void main() {
  Student s1 = Student();
  s1.name = 'Ahmed';
  s1.learn();
  s1.studyAt = ' Cairo university';
  s1.age = 20;
  print(" Student ${s1.name}  ,His Age Is ${s1.age} , Study At ${s1.studyAt}  ");
  s1.eat() ;
  s1.printData() ;
}

class Human {
  dynamic age;
  dynamic name;

  void eat() {
    print("Eating  Pizza Now");
  }
}

class Student extends Human {
  dynamic studyAt;

  void learn() {
    print('Computer Science');
  }
  void eat() {
    super.eat() ;
    print("Eating Pasta Now");
  }
  printData(){
    print("age:${age}");
    print("Name:${name}");
  }
}

class Teacher extends Human {
  dynamic graduatedFrom;

  void teach() {}
}
