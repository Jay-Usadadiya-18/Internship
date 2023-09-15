import 'package:equatable/equatable.dart';

class TodoModel extends Equatable {
  final String id;
  final String title;
  final String desc;
  final String date;
  final String marks;
  final String grade;
  final String number;

  const TodoModel({
    required this.id,
    required this.title,
    required this.desc,
    required this.date,
    required this.marks,
    required this.grade,
    required this.number,
  });

  TodoModel copyWith({
    String? id,
    String? title,
    String? desc,
    String? date,
    String? marks,
    String? grade,
    String? number,
  }) {
    return TodoModel(
      id: id ?? this.id,
      title: title ?? this.title,
      desc: desc ?? this.desc,
      date: date ?? this.date,
      marks: marks ?? this.marks,
      grade: grade ?? this.grade,
      number: number ?? this.number,
    );
  }

  @override
  List<Object?> get props => [id, title, desc, date, marks, grade, number];
}
