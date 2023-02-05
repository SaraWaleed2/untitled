void main() {
 Car car1 =Car();
 car1.name='KIA';
 car1.colour ='Blue';
 car1.price=150000;
 car1.move() ;
 car1.stop() ;
print('${ car1.name} ,${car1.colour} ,${ car1.price}');
print("-----------------------------------------------------------");
Car2  obj = Car2( "CarCora", "Black", 150000);
obj.move() ;
obj.stop() ;
 print('${ obj.name} ,${obj.colour} ,${ obj.price}');
 print("-----------------------------------------------------------");
 /*
 * Car2 obj =Car2.<readable name>( "colour");
 * print("Colour Is ${obj.colour}");
 *
 * */
}
class Car{
  String name="name";
  String colour='Colour';
  int price =123;
  //default constructor
  Car(){
    print("Default Case");
  }

  move(){
    print("${this.name} Is Moving");
  }
  stop(){
    print("${this.name} Is Stopped");
  }
}
class Car2{
  String name="name";
  String colour='Colour';
  int price =123;
  // parametrise constructor
  // Car2(this.name, this.colour, this.price)
  Car2 (String name,String colour,int price){
    this.name =name;
    this.colour =colour ;
    this.price=price;

    /* named constructor

    //Car2.<readable name>(String colour){
    this.colour=colour;
    }
    ---------------------OR--------------------
    Car2.<readable name>(this.colour);

   */
  }

  move(){
    print("${this.name} Is Moving");
  }
  stop(){
    print("${this.name} Is Stopped");
  }
}



