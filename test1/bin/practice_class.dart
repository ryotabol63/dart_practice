class Microphone{

  //Instance variables, member variables
  late String name;
  late String color;
  late int model = 4444;
  //以前は必要なかったlateオプションが必要。lateを付けたうえで初期化は可能
  //ただし、初期化しなかった場合はどこかで初期化必要
}

main(List<String> arguments){
  var mic = new Microphone();   //creating the actual object newは省略可能
  mic.name = 'hoge';
  mic.color = 'yellow';
  //mic.model = 45;

  print(mic);
  print(mic.name);
  print(mic.model);
}