import 'package:flutter/material.dart';

class BelajarRowColumn extends StatelessWidget {
  const BelajarRowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text("Ini Isi Row 1"),
        Text("Ini Isi Row 2"),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Ini Adalah Isi Column 1"),
            Text("Ini Adalah Isi Column 2"),
            Text("Ini Adalah Isi Column 3"),
          ],
        ),
      ],
    );
  }
}