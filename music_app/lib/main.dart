import 'package:flutter/material.dart';
import 'package:music_app/Homescreen/homepage.dart';
import 'package:music_app/Music/player.dart';


void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(primarySwatch: Colors.amber),
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const HomePage(),
        "player_page": (context) => const PlayerPage(),
      },
    ),
  );
}
