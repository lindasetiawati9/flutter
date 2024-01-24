import 'package:flutter/material.dart';

class BelajarColumn extends StatelessWidget {
  const BelajarColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text("Ini Isi column 1"),
        Text("Ini Isi column 2"),
        Text("Ini Isi column 3"),
        FlutterLogo(size: 64),
      ],
    );
  }
}