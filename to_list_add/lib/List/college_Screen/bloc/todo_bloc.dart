import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:to_list_add/List/college_Screen/model/todo_model.dart';

import 'package:uuid/uuid.dart';

import '../database/db_helper.dart';

part 'todo_event.dart';

part 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc() : super(const TodoState(todoModel: [])) {
    on<ShowDataEvent>(showData);
    on<AddDataEvent>(_addData);
    on<UpdateDataEvent>(_updateData);
    on<DeleteDataEvent>(_deleteData);
  }

  Future showData(ShowDataEvent event, Emitter<TodoState> emit) async {
    final dataList = await DBHelper.selectAll(DBHelper.todoTable);

    final list = dataList
        .map((item) => TodoModel(
              id: item['id'],
              title: item['title'],
              desc: item['description'],
              date: item['date'],
              marks: item['marks'],
              grade: item['grade'],
              number: item['number'],
            ))
        .toList();

    emit(state.copyWith(todoModel: list));
    print('SHOW DATA ${list.length}');
  }

  Future<void> _addData(AddDataEvent event, Emitter<TodoState> emit) async {
    Uuid uuid = const Uuid();
    final list = TodoModel(
      id: uuid.v1(),
      title: event.title,
      desc: event.desc,
      date: event.date,
      marks: event.marks,
      grade: event.grade,
      number: event.number,
    );
    DBHelper.insert(DBHelper.todoTable, {
      'id': list.id,
      'title': list.title,
      'description': list.desc,
      'date': list.date,
      'marks': list.marks,
      'grade': list.grade,
      'number': list.number,
    });

    final newTodos = [...state.todoModel, list];
    emit(state.copyWith(todoModel: newTodos));
  }

  Future<void> _deleteData(
      DeleteDataEvent event, Emitter<TodoState> emit) async {
    final deleteObject =
        state.todoModel.where((TodoModel todo) => todo.id != event.id).toList();
    await DBHelper.deleteById(DBHelper.todoTable, 'id', event.id);
    emit(state.copyWith(todoModel: deleteObject));
  }

  Future<void> _updateData(
      UpdateDataEvent event, Emitter<TodoState> emit) async {
    final list = state.todoModel.map((TodoModel todoModel) {
      if (todoModel.id == event.todoList.id) {
        DBHelper.update(DBHelper.todoTable, 'title', event.todoList.title,
            event.todoList.id);
        DBHelper.update(DBHelper.todoTable, 'description', event.todoList.desc,
            event.todoList.id);
        DBHelper.update(
            DBHelper.todoTable, 'date', event.todoList.date, event.todoList.id);
        DBHelper.update(DBHelper.todoTable, 'marks', event.todoList.marks,
            event.todoList.id);
        DBHelper.update(DBHelper.todoTable, 'grade', event.todoList.grade,
            event.todoList.id);
        DBHelper.update(DBHelper.todoTable, 'number', event.todoList.number,
            event.todoList.id);
        return TodoModel(
          id: event.todoList.id,
          title: event.todoList.title,
          desc: event.todoList.desc,
          date: event.todoList.date,
          marks: event.todoList.marks,
          grade: event.todoList.grade,
          number: event.todoList.number,
        );
      }
      return todoModel;
    }).toList();
    emit(state.copyWith(todoModel: list));
  }
}
//final list = state.todoModel.map((TodoModel todoModel) {
//       if (todoModel.id == event.id) {
//         DBHelper.update(DBHelper.todoTable, 'title', event.title, event.id);
//         DBHelper.update(
//             DBHelper.todoTable, 'description', event.desc, event.id);
//         DBHelper.update(DBHelper.todoTable, 'date', event.date, event.id);
//         return TodoModel(
//           id: event.id,
//           title: event.title,
//           desc: event.desc,
//           date: event.date,
//         );
//       }
//       return todoModel;
//     }).toList();
