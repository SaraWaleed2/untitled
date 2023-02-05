void main(){
A obj =A.sara( 'Ali');
//obj.name='Sara';
//obj.fColour ='Pink';
//obj.studyAt ='Sadat Academy';
//print("${obj.name} Study At ${obj.studyAt} ,She " );
// obj.learn() ;
obj.printDta() ;
}

class A {
  String name = '';
  int age = 20;
  String fColour = '';
  String studyAt = "";


  learn() {
    print('Learning Computer Science');
  }
  A.sara(this.name){

  }
  printDta(){
    print("Name: $name ,Age: $age , favourite Colour: $fColour ,study At $studyAt");
    print(learn() );
  }
}
