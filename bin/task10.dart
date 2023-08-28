import 'dart:io';

import 'groub.dart';
import 'instructor.dart';
import 'student.dart';

void main() {
  Student s1 = Student(
    name: 'kerolos',
    age: 21,
    attend: 0,
    faculty: 'Computer science',
    address: 'el dokki',
    email: 'kerofady@gmail',
    phone: '01227447196',
  );
  Student s2 = Student(
    name: 'kerolos2',
    age: 21,
    attend: 0,
    faculty: 'Computer science',
    address: 'el dokki',
    email: 'kerofady@gmail',
    phone: '01227447196',
  );

  Instructor instructor1 = Instructor(
    name: 'Ashraf',
    age: 21,
    lessons: ['Functions'],
    address: 'el behiera',
    email: 'Ashraf@gmail',
    phone: '012',
  );

  Groub st28 = Groub(
    name: 'Flutter - st28',
    inst: instructor1,
    students: [s1, s2],
    date: '28/8',
  );

  sentanceDraw('Student 1 info');
  s1.info();
  sentanceDraw('Student 2 info');
  s2.info();
  sentanceDraw('Instructor 1 info');
  instructor1.info();
  sentanceDraw('Groub 28 info');
  print(st28.toString());

  sentanceDraw('Test attend function');
  s1.attended();
  s1.attended();
  s2.attended();
  sentanceDraw('Student 1 info after attend');
  s1.info();
  sentanceDraw('Student 2 info after attend');
  s2.info();

  sentanceDraw('Instructor add lesson');
  instructor1.addLesson('OOP concepts');
  instructor1.addLesson('Encapsulation');

  sentanceDraw('Show lessons');
  instructor1.showLessons();

  Student newStudent1 = Student(
    name: 'kerolos fady',
    age: 21,
    attend: 0,
    faculty: 'Computer science',
    address: 'el dokki',
    email: 'kerofady@gmail',
    phone: '01227447196',
  );
  Student newStudent2 = Student(
    name: 'Fady',
    age: 21,
    attend: 0,
    faculty: 'Computer science',
    address: 'el dokki',
    email: 'kerofady@gmail',
    phone: '01227447196',
  );
  sentanceDraw('Add new students to list of groub');
  st28.addNewStudent(newStudent1);
  st28.addNewStudent(newStudent2);

  sentanceDraw('show all students ');
  st28.showStudentsName();

  print('-----------------------------------------------------------');
  sentanceDraw('DONE');
}

void sentanceDraw(String s) {
  for (int i = 0; i < (s.length + 4); i++) {
    stdout.write('-');
  }
  print('\n| $s |');
  for (int i = 0; i < (s.length + 4); i++) {
    stdout.write('-');
  }
  print('');
}
