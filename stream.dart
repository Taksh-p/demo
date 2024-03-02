void main() async{
  
  await for(var number in getNumber(10)){
    print(number);
  }
}

Stream<int> getNumber(int number) async*{

  for(int i=0; i<number; i++){
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}