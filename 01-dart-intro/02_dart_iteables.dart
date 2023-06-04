void main() {
  
  final numbers = [1, 2, 3, 4, 5, 6, 6, 7, 8];

  print('List original $numbers');
  print('Length ${numbers.length}');
  print('Index 0 ${numbers[0]}');
  print('First ${numbers.first}');
  print('Reversed ${numbers.reversed}');
  
  final reversedNumbers = numbers.reversed;
  print('Iterable $reversedNumbers');
  print('List % ${reversedNumbers.toList()}');
  print('Set % ${reversedNumbers.toSet()}');
  
  final numbersGreater = numbers.where((num) {
    return num > 5;
  
  });
  
  print('>5 $numbersGreater');
  print('>5 ${numbersGreater.toSet()}');
    
  
}