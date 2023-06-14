import 'package:test1/test1.dart' as test1;
import 'package:test1/functest.dart' as functest;

int increment(int a){
  return(a + 1);
}

String aaa() => "俺はAAAだぞ";//アロー演算子による関数定義

int optional(int a, int b, [int? c]){
  if(c != null){
    return(a + b + c);
  }else{
    return(a + b);
  }
}

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

void main(List<String> arguments) { //entry point for execution
  var country = 'Mozambique';
  print(country);
  String name;
  name = 'test';
  print(name);
  var a = 1;  //同時に代入すればvar型（型推論）
  print(a);
  //a = 'test'; これはエラーを吐く（型エラー）
  var hoge;   //同時代入していないのでdynamic型になっている
  hoge = 3;
  print(hoge.runtimeType);//> int
  hoge = 'test';
  print(hoge.runtimeType);//> String
  print(hoge);
  var piyo = (hoge == a);
  print(piyo.runtimeType);
  print(piyo);
  num n = 1; //num型はintもしくはdoubleになれる
  print(n.runtimeType);
  n = 0.5;
  // n = 'test'  //numにstringをいれてはいけない
  print(n.runtimeType);
  print('Hello world');
  const pi = 3.14; //定数宣言。コンパイル時に確定される
  final nowtime = DateTime.now(); //finalは実行時に確定されるので時刻取得ができる。
  final list = [0,1,2];
  list[1] = 0;   //finalはリストの中身変更はできる（あくまでも再定義不可、constより緩い）
  print(pi);
  print(nowtime);
  print(list);
  print("aaa $pi in $nowtime is $piyo${list}aa ${hoge.toUpperCase()}");
  //文字の埋め込み。直後に文字がくる場合やメソッド適用は{}
  print(2 + 0.3); //整数+小数はいける
  if(n > 0){
    print("True"); //if文はcタイプ
  }
  for(var i = 0; i < 2; i++){
    print("${i+1}回目");//for文もcタイプ
  }
  var k = 0;
  do{
    print(k);
    k++;
  }while(k<3);
  var age = 10;
  switch(age){
    case 10:
      print("ten");
      break;
    case 15:
      print("fifteen finish");
      break;
    default:
      print(age);
  }
  print(functest.test());
  print(functest.calctest(age));//関数定義と呼出
  print(age);
  print(increment(age));
  print(aaa());
  print("longStringtest"
      "aaaa");//stringの途中改行
  print("${optional(1, 2)} without option");
  print("${optional(4, 5, 6)} with option");
  String outside = "test";
  void changevalue(){
    outside = 'changed';
    var inside = 'test';
    print(inside);
  }
  print(outside);
  changevalue();
  print(outside);
  //print(inside);       中の定義は外では呼べない






}


