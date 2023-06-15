
abstract class Animal{
  //抽象クラス
  void breathe();
  //実装は具体的なクラスにゆだねるが実装させたいメソッドを定義
  void makeNoise();//{
    //あんまり褒められた文法じゃない気がする
    // print("Making animal noises!");
  //}

}

abstract class IsFunny{
  void funny();//これはInterfaceとすべきとして実装
}

class Comedian extends Person implements IsFunny{
  @override
  void funny() {
    // TODO: implement funny
    print("comedy");
    //interfaceとしてimplementしたのでメソッドの実装を書かなければいけない
  }
  void comedy(){
    print("$name made people laugh");
    //Personをextendしているので変数を使える。
  }
}

class Tiger extends Animal{
  //抽象クラスを継承
  @override
  void breathe() {
    // TODO: implement breathe
    //抽象クラスを継承したので（実装のないメソッドの）実装をしなければいけない。
    //※基本抽象クラスにはメソッドを実装しないので全メソッド実装必要あり
    print('Tiger breathe');
  }

  @override
  void makeNoise() {
    // TODO: implement makeNoise
    print("Tiger noise");
  }

}



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

class Location extends Object{//toString を使えるようにextend
  //Objectは最も基本のクラスなのでextends Objectは省略できる。（tostringはそのまま使える。）
  num lat,lng;  // instance variables or member fields

  Location(this.lat, this.lng);
  Location.create(this.lat, this.lng);
  //named constructor
}

class ElevatedLocation extends Location{
  num elevation;
  late var dif = elevation - lat;
  ElevatedLocation(super.lat, super.lng, this.elevation);  //call Location() constructor
  ElevatedLocation.create(super.lat, super.lng, this.elevation);  //call Location() named constructor
  @override
  String toString() {
    var result = "$lat $lng $elevation";
    // TODO: implement toString
    return result;
  }
}

main(List<String> arguments){
  //var animal = Animal();    //抽象クラスはインスタンス化できない
  var tiger = Tiger();
  tiger.breathe();
  tiger.makeNoise();
  var comedian = Comedian();
  comedian.name = 'ken';
  print(comedian.name);
  comedian.funny();
  comedian.comedy();
  //comedianはpersonを継承かつIsFunnyインターフェースを実装
  //https://zenn.dev/iwaku/articles/2020-12-16-iwaku
  String name = 'Bonni';
  name.toString();
  print(name);
  Object object = new Object();
  object.toString();
  print(object);

  var elevated = ElevatedLocation(23.89, -12.31, 90);
  print("location=${elevated.lat}, ${elevated.lng}, ${elevated.elevation}");
  print(elevated.dif);
  var elevated2 = ElevatedLocation.create(23.44, 111, 333);
  print(elevated2.dif);
  print(elevated.toString());
  /*
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
  */

}