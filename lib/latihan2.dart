import 'package:flutter/material.dart';

class LatihanDua extends StatelessWidget {
  const LatihanDua({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        height: 200,
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 122, 122),
          borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Image.network('data:image/jpeg;base64,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', width: 100, height: 100),
                    Text("BlackPink")
                  ],
                ),
                Column(
                  children: [
                    Image.network('https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2022/08/01/3894104567.jpg', width: 100, height: 100),
                    Text("BlackPink")
                  ],
                ),
                Column(
                  children: [
                    Image.network('https://nolae.eu/cdn/shop/articles/alles-rund-um-blackpink-alben-erfolge-und-mehr-801238_800x800.jpg?v=1629459737', width: 100, height: 100),
                    Text("BlackPink")
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}