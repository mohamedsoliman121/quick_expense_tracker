

class TestModel {

final String name ;
final String lastname ;
final int age ;

TestModel({
  required this.name ,
  required this.lastname , 
  required this.age
});

Map <String , dynamic> tomap() {
  return {
    'name' : name , 
    'lastname' : lastname , 
    'age' : age
  };

}


factory TestModel.fromMap(Map<String , dynamic> map){
  return TestModel(
name: map['name']?.toString() ?? '',
  
      lastname: map['lastname']?.toString() ?? '',
      age: map['age']  ?? '0'

  );

}



}