import 'package:flutter/material.dart';

class LatihanSatu extends StatelessWidget {
  const LatihanSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Text("Lisa"),
                Image.network('https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2023/06/20/Promedia-Image-2-357449939.png', width: 100, height: 100)
              ],
            ),
            Column(
              children: [
                Text("Jennie"),
                Image.network('data:image/jpeg;base64,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', width: 100, height: 100)
              ],
            )
          ],
        ),
        Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/f/fb/Logo_of_Blackpink.svg/2560px-Logo_of_Blackpink.svg.png', width: 200, height: 200),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Text("Ji-Soo"),
                Image.network('https://akcdn.detik.net.id/visual/2021/10/11/jisoo-blackpink_169.png?w=480&q=90', width: 100, height: 100)
              ],
            ),
            Column(
              children: [
                Text("Rose"),
                Image.network('https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/p1/916/2024/01/22/Picsart_24-01-22_11-19-26-119-685235910.jpg', width: 100, height: 100)
              ],
            )
          ],
        )
      ],
    );
  }
}