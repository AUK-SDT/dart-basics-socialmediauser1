mixin Flyable {
  String takeOff() => "Taking off!";
  String land() => "Landing safely.";
}

class Bird with Flyable {
  String species;
  Bird(this.species);

  String chirp() => "$species chirps happily.";
}

class Plane with Flyable {
  final String model;
  Plane(this.model);

  String status() => "$model ready for departure.";
}

void runPart4() {
  final robin = Bird('Robin');
  final boeing = Plane('Boeing 787');

  print(robin.chirp());
  print(robin.takeOff());
  print(robin.land());

  print(boeing.status());
  print(boeing.takeOff());
  print(boeing.land());
}
