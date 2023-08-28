import 'person.dart';

class Instructor extends Person {
  List<String> lessons;
  Instructor({
    required super.name,
    required super.age,
    required this.lessons,
    required super.address,
    required super.email,
    required super.phone,
  });

  void addLesson(String lesson) {
    lessons.add(lesson);
    print('Lesson : $lesson added successfully');
  }

  void showLessons() {
    for (int i = 0; i < lessons.length; i++) {
      print('Lesson  ${i + 1} : ${lessons[i]}');
    }
  }

  @override
  void info() {
    print(
        "$name is a instructor , he is $age years old ,he from $address and his email is $email");
  }
}
