class Vehicle {
  final String brand;
  final int year;

  Vehicle({required this.brand, required this.year});

  String summary() => 'Vehicle: $brand ($year)';
}

class ElectricVehicle extends Vehicle {
  final double batteryKWh;

  ElectricVehicle({
    required super.brand,
    required super.year,
    required this.batteryKWh,
  });

  @override
  String summary() =>
      'EV: $brand ($year) - ${batteryKWh.toStringAsFixed(1)} kWh';
}

void runPart2() {
  final sedan = Vehicle(brand: 'Toyota', year: 2018);
  final ev = ElectricVehicle(brand: 'Tesla', year: 2024, batteryKWh: 82.0);

  print(sedan.summary());
  print(ev.summary());
}
