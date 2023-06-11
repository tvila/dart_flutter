// async* Se utiliza porque la función no regresa un future. En este ejemplo, un string


void main() {
  
  emitNumber()
    .listen((value) {
      print('Stream $value');
     
    });
  
}

Stream<int> emitNumber() async* {
  final valuesToEmit = [1, 2, 3, 4, 5];
  
  for (int i in valuesToEmit) {
    await Future.delayed(const Duration(seconds: 1));
    yield i; // No se utiliza return (mismo concepto python)
    
  }
  
}