import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridBasic extends StatelessWidget{
  const GridBasic({super.key});


  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 1,
        crossAxisSpacing: Checkbox.width,
        scrollDirection: Axis.horizontal,
          children: [
            Container(
              color: Colors.greenAccent,
              child: Center(
                child: Text("1", style: TextStyle(fontSize: 24.0),),
              ),
            ),
            Container(
              color: Colors.blueAccent,
              child: Center(
                child: Text("2", style: TextStyle(fontSize: 24.0),),
              ),
            ),
            Container(
              color: Colors.brown,
              child: Center(
                child: Text("3", style: TextStyle(fontSize: 24.0),),
              ),
            ),
            Container(
              color: Colors.red,
              child: Center(
                child: Text("4", style: TextStyle(fontSize: 24.0),),
              ),
            ),
          ],
    );
  }
}