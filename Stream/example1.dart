void main() async {
  // await for(final name in getName()){
  //     print(name);
  //     await Future.delayed(Duration(seconds: 2));
  // }

  final resultName = getName().asyncExpand((name) => getCharacter(name));

  print(resultName);

  await for (final name in resultName) {
    print(name);
  }
}

Stream<String> getCharacter(String name) async* {
  final result = name.split('');
  for (final resultName in result) {
    await Future.delayed(Duration(milliseconds: 400));
    yield resultName;
  }
}

Stream<String> getName() async* {
  yield "Jhon";
  yield "Hello";
  yield "How are you";
  yield "tell me something about your self";
}
