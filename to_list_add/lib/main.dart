import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_list_add/List/college_Screen/bloc/todo_bloc.dart';

import 'package:to_list_add/Dashboard/dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TodoBloc(),
      child: MaterialApp(
        theme: new ThemeData(primarySwatch: Colors.blue),
        debugShowCheckedModeBanner: false,
        home: MyHomePage(),
      ),
    );
  }
}
