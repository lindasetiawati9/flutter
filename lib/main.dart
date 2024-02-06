import 'package:belajar/container_widget.dart';
import 'package:belajar/gridview/grid_basic.dart';
import 'package:belajar/gridview/grid_build.dart';
import 'package:belajar/gridview/grid_count.dart';
import 'package:belajar/gridview/latihan5.dart';
import 'package:belajar/latihan1.dart';
import 'package:belajar/latihan2.dart';
import 'package:belajar/latihan3.dart';
import 'package:belajar/listview/latihan%204.dart';
import 'package:belajar/listview/list_basic.dart';
import 'package:belajar/listview/list_builder.dart';
import 'package:belajar/listview/list_separated.dart';
import 'package:belajar/row_column.dart';
import 'package:belajar/screens/home_screen.dart';
import 'package:belajar/screens/menu_screen.dart';
import 'package:belajar/screens/second_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ini Project Flutter Pertamaku",
      // home: HomeScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => NavigationMenu(),
        'second': (context) => SecondScreen(),
        'third': (context) => ThirdScreen()
      },
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Hello Dunia.... \nHallo Linda Setiawati...",
        style: TextStyle(
            color: Colors.pink, fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}