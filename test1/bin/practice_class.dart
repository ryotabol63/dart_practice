
class Microphone{

  //Instance variables, member variables
  late String name;
  late String color;
  late int model = 4444;

  /*Microphone(String name, String color, int model){
    this.name = name;
    this.color = color;
    this.model = model;
  }*/
  //これはコンストラクタ宣言と等価

  Microphone(this.name, this.color, this.model);


  Microphone.initialize(this.name, this.color, this.model){
   print("$name is printed by constructor");
   //名前付きコンストラクタ
  }

  String get getName => name;   //getter
  set setName(String value) => name = value;    //setter

  void printmodel(){
    print(model);
  }
  //以前は必要なかったlateオプションが必要。lateを付けたうえで初期化は可能
  //ただし、初期化しなかった場合はどこかで初期化必要
}

main(List<String> arguments){
  var mic = new Microphone("aaa","blue",111);   //creating the actual object newは省略可能
  //mic.name = 'hoge';
  //mic.color = 'yellow';
  //mic.model = 45;

  //print(mic);
  //print(mic.name);
  //print(mic.model);
  //mic.printmodel();
  //var mic2 = new Microphone.initialize("saito", "test", 1);
  //mic2.printmodel();
  mic.setName = 'hoge';     //引数じゃなくてイコール!!!
  print(mic.getName);


}