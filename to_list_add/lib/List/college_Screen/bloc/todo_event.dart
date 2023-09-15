part of 'todo_bloc.dart';

abstract class TodoEvent extends Equatable {
  const TodoEvent();
}

class ShowDataEvent extends TodoEvent {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

}

class AddDataEvent extends TodoEvent {
  final String title;
  final String desc;
  final String date;
  final String marks;
  final String grade;
  final String number;

  const AddDataEvent({
    required this.title,
    required this.desc,
    required this.date,
    required this.marks,
    required this.grade,
    required this.number,
  });

  @override
  List<Object> get props => [title, desc, date, marks, grade, number];

  AddDataEvent copyWith({
    String? title,
    String? desc,
    String? date,
    String? marks,
    String? grade,
    String? number,
  }) {
    return AddDataEvent(
      title: title ?? this.title,
      desc: desc ?? this.desc,
      date: date ?? this.date,
      marks: date ?? this.marks,
      grade: date ?? this.grade,
      number: date ?? this.number,
    );
  }
}

class UpdateDataEvent extends TodoEvent {
  final TodoModel todoList;

  const UpdateDataEvent(this.todoList);

  @override
  List<Object?> get props => [todoList];
}

class DeleteDataEvent extends TodoEvent {
  final String id;

  const DeleteDataEvent({required this.id});

  DeleteDataEvent copyWith({String? id}) {
    return DeleteDataEvent(id: id ?? this.id);
  }

  @override
  List<Object> get props => [id];
}
