import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_list_add/List/college_Screen/screen/add_todo_screen.dart';
import 'package:to_list_add/List/college_Screen/screen/edit_todo_screen.dart';

import '../bloc/todo_bloc.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  void initState() {
    context.read<TodoBloc>().add(ShowDataEvent());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notes'),

      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const AddTodoScreen()));
        },
      ),
      body: BlocBuilder<TodoBloc, TodoState>(
        builder: (context, state) {
          return ListView.builder(
            itemCount: state.todoModel.length,
            itemBuilder: (context, index) {
              final helper = state.todoModel[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  child: ExpansionTileCard(
                      leading: CircleAvatar(
                        child: Icon(Icons.list),
                      ),
                      baseColor: Colors.blue.shade100,
                      expandedColor: Colors.green.shade100,
                      title: Text('List'),
                      children: <Widget>[
                        Column(
                          children: [
                            const Divider(
                              thickness: 4.0,
                              height: 1.0,
                            ),
                            Container(
                              height: 70,
                              width: 350,
                              child: Card(
                                shadowColor: Colors.black,
                                color: Colors.grey.shade100,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      children: [
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Icon(
                                          Icons.task,
                                        ),
                                        Text("Task"),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Flexible(
                                      child: Text(
                                        ":  " + helper.title,
                                        style: const TextStyle(
                                            fontSize: 18,
                                            color: Colors.blue,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Container(
                              height: 70,
                              width: 350,
                              child: Card(
                                shadowColor: Colors.black,
                                color: Colors.grey.shade100,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      children: [
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Icon(Icons.date_range),
                                        Text("Date"),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      ":  " + helper.desc,
                                      style: const TextStyle(
                                          fontSize: 18,
                                          color: Colors.blue,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Container(
                              height: 70,
                              width: 350,
                              child: Card(
                                shadowColor: Colors.black,
                                color: Colors.grey.shade100,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      children: [
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Icon(Icons.timelapse_outlined),
                                        Text("Time"),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Flexible(
                                      child: Text(
                                        ":  " + helper.date,
                                        style: const TextStyle(
                                            fontSize: 18,
                                            color: Colors.blue,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 70,
                              width: 350,
                              child: Card(
                                shadowColor: Colors.black,
                                color: Colors.grey.shade100,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      children: [
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Icon(
                                          Icons.assignment,
                                        ),
                                        Text("Assi"),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      ":  " + helper.marks,
                                      style: const TextStyle(
                                          fontSize: 18,
                                          color: Colors.blue,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 70,
                              width: 350,
                              child: Card(
                                shadowColor: Colors.black,
                                color: Colors.grey.shade100,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      children: [
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Icon(
                                          Icons.mark_chat_read,
                                        ),
                                        Text("Read"),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      ":  " + helper.grade,
                                      style: const TextStyle(
                                          fontSize: 18,
                                          color: Colors.blue,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 70,
                              width: 350,
                              child: Card(
                                shadowColor: Colors.black,
                                color: Colors.grey.shade100,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      children: [
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Icon(Icons.add_box_sharp),
                                        Text("Oth"),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      ":  " + helper.number,
                                      style: const TextStyle(
                                          fontSize: 18,
                                          color: Colors.blue,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Card(
                                  shadowColor: Colors.black,
                                  color: Colors.grey.shade100,
                                  child: TextButton.icon(
                                    label: Text("Delete"),
                                    icon: Icon(Icons.delete_forever),
                                    onPressed: () {
                                      context
                                          .read<TodoBloc>()
                                          .add(DeleteDataEvent(id: helper.id));
                                    },
                                  ),
                                ),
                                Card(
                                  shadowColor: Colors.black,
                                  color: Colors.grey.shade100,
                                  child: TextButton.icon(
                                    label: Text("Update"),
                                    icon: Icon(Icons.edit),
                                    onPressed: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) => EditTodoScreen(
                                            id: helper.id,
                                            title: helper.title,
                                            desc: helper.desc,
                                            date: helper.date,
                                            marks: helper.marks,
                                            grade: helper.grade,
                                            number: helper.number,
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
