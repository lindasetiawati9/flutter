import 'package:flutter/material.dart';
import '../helpers/size_helper.dart';

class DetailWisataScreen extends StatelessWidget {
  final String nama;
  final String kota;
  final String image;
  final String desc;

  DetailWisataScreen(
    {required this.nama,
    required this.kota,
    required this.image,
    required this.desc});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Tour Detail"),
          backgroundColor: const Color.fromARGB(255, 79, 182, 234),
        ),
        body: SafeArea(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/background.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 32,
                ),
                Center(
                  child: Text(
                    "$nama - $kota",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  height: displayHeight(context) * 0.25,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Expanded(
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      Container(
                        width: displayWidth(context) * 0.95,
                        height: 360,
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 211, 191, 139),
                              Color.fromARGB(255, 68, 169, 182),
                              Color.fromARGB(255, 74, 107, 145),
                            ],
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "$desc",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'DancingScript',
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
    }
}