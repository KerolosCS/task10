import 'instructor.dart';
import 'student.dart';

class Groub {
  String name;
  Instructor inst;
  List<Student> students;
  String date;
  Groub({
    required this.name,
    required this.inst,
    required this.students,
    required this.date,
  });

  void addNewStudent(Student s) {
    students.add(s);
    print('Student ${s.name} added successfully!');
  }

  void deleteStudent(Student s) {
    if (students.contains(s)) {
      students.remove(s);
      print('Student ${s.name} deleted successfully');
    } else {
      print('Student doesn\'t exist');
    }
  }

  void showStudentsName() {
    if (students.isEmpty) {
      print('The list of students is empty');
    } else {
      for (int i = 0; i < students.length; i++) {
        print('Student ${i + 1} : ${students[i].name}');
      }
    }
  }

  @override
  String toString() {
    return "Group $name has Coach ${inst.name}, which includes ${students.length} students, and its date is $date";
  }
}
