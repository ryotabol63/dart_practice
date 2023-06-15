class Person{
  late String name, lastName, nationality;
  late int age;

  void showName(){
    print(this.name);
  }
  void sayHello(){
    print('Hello');
  }

  void showNationality(){
    print(nationality);
  }
}
class Bonni extends Person{
  late String profession;
  void showProfession(){
    print(this.profession);
  }
}

class Paulo extends Person{
  late bool playGuitar;
  @override//親クラスにあるものを上書きする宣言
  void sayHello() {
    // TODO: implement sayHello
    print('hola');
    super.sayHello();   //親クラスの操作
    //そもそもの働き変わっちゃうけど、消してもOK
  }
  @override
  void showNationality() {
    // TODO: implement showNationality
    nationality = 'espanol';//override先のnationality(super.nationality)
    super.nationality = 'boliviano';//上書きしなおしている
    super.showNationality();
  }
}

main(List<String> arguments){

  var bonni = new Bonni();
  bonni.name = 'Bonni';
  bonni.showName();
  bonni.profession = 'doctor';
  bonni.showProfession();
  bonni.sayHello();
  bonni.nationality = 'american';
  var paulo = Paulo();
  paulo.name = "Paulo";
  paulo.age = 32;
  paulo.playGuitar = true;
  paulo.showName();
  print(paulo.age);
  if(paulo.playGuitar){
    print("paulo plays Guitar");
  }
  paulo.sayHello();   //overrideで処理を追加している
  bonni.showNationality();
  paulo.showNationality();
}