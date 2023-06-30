class Person{
  String name;

  Person(this.name);
}


main(List<String> arguments){
  var list = [1,2,3];
  print(list[1]);
  print(list.length);
  print(list[list.length - 1]);
  //pythonとは違って-1指定ができない
  //var onlyStrings = new List<String>();
  //上はdart3.0で無効化された
  var onlyStrings = <String>[];
  //こっちになった
  onlyStrings.add("Paulo");
  print(onlyStrings[0]);
  var james = Person('james');
  var personList = <Person>[];
  personList.add(james);
  personList.add(Person("hoge"));
  print(personList);
  for(int i = 0; i< personList.length; i++){
    print(personList[i].name);
  }
  var winners = {
    "name" : 'pedro',
    'aaa': "AAA"
  };
  //python辞書的な
  print(winners);
  print(winners["aaa"]);
  winners.forEach((key, value) {print(key);
    print(value);
  });
  //要素ごとに命令できるの便利
  var keys= winners.keys;
  print(keys);





}