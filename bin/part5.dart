class UserProfile {
  final String name;
  String? nickname;
  int? age;

  UserProfile({required this.name, this.nickname, this.age});

  String summary() {
    final nickText = nickname ?? 'no nickname';
    final ageText = age?.toString() ?? 'unknown';
    return 'User $name | Nick: $nickText | Age: $ageText';
  }
}

void runPart5() {
  String language = 'Dart';
  int stableVersion = 3;
  print('Language: $language, version: $stableVersion');

  String? optionalTag;
  int? optionalCount;

  print('optionalTag upper (null): ${optionalTag?.toUpperCase()}');
  print('optionalTag with default: ${optionalTag ?? "none"}');

  optionalCount ??= 42;
  print('optionalCount after ??=: $optionalCount');

  optionalTag = 'beta';
  print('optionalTag upper (non-null): ${optionalTag?.toUpperCase()}');

  if (optionalTag != null) {
    print('optionalTag length using !: ${optionalTag!.length}');
  }

  final fullProfile = UserProfile(name: 'bob', nickname: 'bobby', age: 28);
  final emptyProfile = UserProfile(name: 'bob2');

  print(fullProfile.summary());
  print(emptyProfile.summary());

  emptyProfile.nickname ??= 'Guest';
  emptyProfile.age ??= 18;
  print('After ??= updates: ${emptyProfile.summary()}');
}
