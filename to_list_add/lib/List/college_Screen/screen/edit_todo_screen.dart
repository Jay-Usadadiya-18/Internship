import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/todo_bloc.dart';
import '../model/todo_model.dart';

class EditTodoScreen extends StatefulWidget {
  const EditTodoScreen({
    Key? key,
    required this.id,
    required this.title,
    required this.desc,
    required this.date,
    required this.marks,
    required this.grade,
    required this.number,
  }) : super(key: key);
  final String id;
  final String title;
  final String desc;
  final String date;
  final String marks;
  final String grade;
  final String number;

  @override
  State<EditTodoScreen> createState() => _EditTodoScreenState();
}

class _EditTodoScreenState extends State<EditTodoScreen> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _descController = TextEditingController();
  final TextEditingController _marksController = TextEditingController();
  final TextEditingController _gradeController = TextEditingController();
  final TextEditingController _numberController = TextEditingController();

  @override
  void initState() {
    _titleController.text = widget.title;
    _descController.text = widget.desc;
    _dateController.text = widget.date;
    _marksController.text = widget.marks;
    _gradeController.text = widget.grade;
    _numberController.text = widget.number;
    super.initState();
  }

  @override
  void dispose() {
    _titleController.dispose();
    _dateController.dispose();
    _descController.dispose();
    _marksController.dispose();
    _gradeController.dispose();
    _numberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update Notes'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 27),
              child: Text("Task",
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              margin: EdgeInsets.only(left: 20, right: 20),
              elevation: 5,
              color: Color(0xffe6f3f3),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Container(
                height: 50,
                padding: EdgeInsets.only(left: 20, right: 20),
                width: double.maxFinite,
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        minLines: 3,
                        maxLines: null,
                        controller: _titleController,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 15),
                          hintText: "Tap to enter your task",
                          labelStyle: TextStyle(
                            color: Color(0xFF000000),
                          ),
                          border: InputBorder.none,
                        ),
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF000000),
                        ),
                        textInputAction: TextInputAction.next,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Text("Date",
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 8),
            Card(
              margin: EdgeInsets.only(left: 20, right: 20),
              elevation: 5,
              color: Color(0xffe6f3f3),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Container(
                height: 50,
                padding: EdgeInsets.only(left: 20, right: 20),
                width: double.maxFinite,
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        minLines: 3,
                        maxLines: null,

                        controller: _descController,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 15),
                          hintText: "Tap to enter date",
                          labelStyle: TextStyle(
                            color: Color(0xFF000000),
                          ),
                          border: InputBorder.none,
                        ),
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF000000),
                        ),
                        textInputAction: TextInputAction.next,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Text("Duration",
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 8),
            Card(
              margin: EdgeInsets.only(left: 20, right: 20),
              elevation: 5,
              color: Color(0xffe6f3f3),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Container(
                height: 50,
                padding: EdgeInsets.only(left: 20, right: 20),
                width: double.maxFinite,
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        minLines: 3,
                        maxLines: null,
                        controller: _dateController,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 15),
                          hintText: "Tap to enter duration",
                          labelStyle: TextStyle(
                            color: Color(0xFF000000),
                          ),
                          border: InputBorder.none,
                        ),
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF000000),
                        ),
                        textInputAction: TextInputAction.next,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Text("Assignment",
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 8),
            Card(
              margin: EdgeInsets.only(left: 20, right: 20),
              elevation: 5,
              color: Color(0xffe6f3f3),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Container(
                height: 50,
                padding: EdgeInsets.only(left: 20, right: 20),
                width: double.maxFinite,
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        minLines: 3,
                        maxLines: null,


                        controller: _marksController,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 15),
                          hintText: "Tap to enter assignment",
                          labelStyle: TextStyle(
                            color: Color(0xFF000000),
                          ),
                          border: InputBorder.none,
                        ),
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF000000),
                        ),
                        textInputAction: TextInputAction.next,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Text("Reading",
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 8),
            Card(
              margin: EdgeInsets.only(left: 20, right: 20),
              elevation: 5,
              color: Color(0xffe6f3f3),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Container(
                height: 50,
                padding: EdgeInsets.only(left: 20, right: 20),
                width: double.maxFinite,
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        minLines: 3,
                        maxLines: null,
                        controller: _gradeController,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 15),
                          hintText: "Tap to enter reading",
                          labelStyle: TextStyle(
                            color: Color(0xFF000000),
                          ),
                          border: InputBorder.none,
                        ),
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF000000),
                        ),
                        textInputAction: TextInputAction.next,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Text("Others",
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 8),
            Card(
              margin: EdgeInsets.only(left: 20, right: 20),
              elevation: 5,
              color: Color(0xffe6f3f3),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Container(
                height: 50,
                padding: EdgeInsets.only(left: 20, right: 20),
                width: double.maxFinite,
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        minLines: 3,
                        maxLines: null,


                        controller: _numberController,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 15),
                          hintText: "Tap to enter others",
                          labelStyle: TextStyle(
                            color: Color(0xFF000000),
                          ),
                          border: InputBorder.none,
                        ),
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF000000),
                        ),
                        textInputAction: TextInputAction.next,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              margin: EdgeInsets.only(left: 160),
              child: ElevatedButton(
                onPressed: () {
                  final todoList = TodoModel(
                    id: widget.id,
                    title: _titleController.text,
                    desc: _descController.text,
                    date: _dateController.text,
                    marks: _marksController.text,
                    grade: _gradeController.text,
                    number: _numberController.text,
                  );
                  context.read<TodoBloc>().add(UpdateDataEvent(todoList));
                  Navigator.pop(context);
                },
                child: const Text('Update'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
