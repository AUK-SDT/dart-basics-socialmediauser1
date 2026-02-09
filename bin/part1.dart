void runPart1() {
  final sum = addOne(5);
  final evenCheck = isEven(4);
  final greeting = welcomeMessage('Antonii');

  print('addOne(5) => $sum');
  print('isEven(4) => $evenCheck');
  print("welcomeMessage('Antonii') => $greeting");

  const numbers = [1, 2, 3];
  numbers.forEach((n) {
    final doubled = n*2;
    print('Anonymous doubled $n to $doubled');
  });

  print(describeUser('bob', age: 30, city: 'Kyiv'));
  print(describeUser('bob2'));

  print(formatScore('bob3', 42));
  print(formatScore('bob4'));
}

int addOne(int value) => value + 1;

bool isEven(int value) => value.isEven;

String welcomeMessage(String name) => 'Welcome, $name!';

String describeUser(String name, {int age = 0, String city = 'Unknown'}) {
  return 'User: $name | Age: $age | City: $city';
}

String formatScore(String player, [int score = 0]) {
  return 'Player $player scored $score';
}