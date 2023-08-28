import 'person.dart';

class Student extends Person {
  int attend;
  String faculty;

  Student({
    required super.name,
    required super.age,
    required this.attend,
    required this.faculty,
    required super.address,
    required super.email,
    required super.phone,
  });

  void attended() {
    attend++;
    print('$name --> Attend , and your attends is : $attend');
  }

  @override
  void info() {
    print(
        "$name is a student ,he is $age years old ,he from $address ,his phone is $phone , \nhe studies at faculty of $faculty and He attended $attend sessions");
  }
}
