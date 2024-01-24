import 'package:flutter/material.dart';

class BelajarListbasic extends StatelessWidget {
  const BelajarListbasic({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            height: 300,
            color: Color.fromARGB(255, 255, 252, 253),
            child: Center(child: Text("1")),
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 300,
            color: Color.fromARGB(255, 255, 169, 197),
            child: Center(child: Text("1")),
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 300,
            color: Color.fromARGB(255, 255, 90, 145),
            child: Center(child: Text("1")),
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 300,
            color: Color.fromARGB(255, 255, 8, 91),
            child: Center(child: Text("1")),
          ),
        ],
      ),
    );
  }
}