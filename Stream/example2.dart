import 'dart:async';

void main() async {
  final result =
      getNameWithasyncMap().asyncMap((name) => getCharacterUsingAsyncMap(name));

  await for (final character in result) {
    print(await character.first);
  }
}

Stream<String> getCharacterUsingAsyncMap(String name) async* {
  final resultCharacter = name.split('');
  for (final names in resultCharacter) {
    await Future.delayed(Duration(milliseconds: 400));
    yield names;
  }
}

Stream<String> getNameWithasyncMap() async* {
  final streamController = StreamController<String>();

  streamController.sink.add("Jhon");
  streamController.sink.add("Merry");
  streamController.sink.add("Smith");
  streamController.sink.add("Bob");
  streamController.sink.add("Phonix");

  print(streamController);

  await for (final name in streamController.stream) {
    yield name;
  }
}
