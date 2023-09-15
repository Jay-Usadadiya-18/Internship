import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_list_add/List/college_Screen/screen/first_screen.dart';

import '../bloc/todo_bloc.dart';

class AddTodoScreen extends StatefulWidget {
  const AddTodoScreen({Key? key}) : super(key: key);

  @override
  State<AddTodoScreen> createState() => _AddTodoScreenState();
}

class _AddTodoScreenState extends State<AddTodoScreen> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _descController = TextEditingController();
  final TextEditingController _marksController = TextEditingController();
  final TextEditingController _gradeController = TextEditingController();
  final TextEditingController _numberController = TextEditingController();

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
        title: Text('Note Details'),
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
              child: Text("Date ",
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
                          hintText: "Tap to enter date ",
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
            SizedBox(height: 25),
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
                        /* inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],*/
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
                  if (_titleController.text.toString() != "" ||
                      _descController.text.toString() != "" ||
                      _dateController.text.toString() != "" ||
                      _marksController.text.toString() != "" ||
                      _gradeController.text.toString() != "" ||
                      _numberController.text.toString() != "") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FirstScreen()),
                    );
                    context.read<TodoBloc>().add(
                          AddDataEvent(
                            title: _titleController.text,
                            desc: _descController.text,
                            date: _dateController.text,
                            marks: _marksController.text,
                            grade: _gradeController.text,
                            number: _numberController.text,
                          ),
                        );
                  } else {
                    showAlertDialog(context, "Enter valid data");
                  }

                  print('Yes');
                },
                child: const Text('Create'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showAlertDialog(BuildContext context, String s) {}
}
