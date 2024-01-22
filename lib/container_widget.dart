import 'package:flutter/material.dart';

// container adalah wadah untuk menampung widget lain
class BelajarContainer extends StatelessWidget {
  const BelajarContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin:  EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color.fromARGB(255, 206, 179, 106), Color.fromARGB(255, 104, 92, 61)],
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: double.infinity,
      height: double.infinity,
      margin:  EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color.fromARGB(255, 104, 92, 61), Color.fromARGB(255, 206, 179, 106)],
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: double.infinity,
      height: double.infinity,
      margin:  EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color.fromARGB(255, 206, 179, 106), Color.fromARGB(255, 104, 92, 61)],
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: double.infinity,
      height: double.infinity,
      margin:  EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: 
          NetworkImage("https://img.lazcdn.com/g/ff/kf/Sdbe80caa37544f51992a90544c8e8a1fv.jpg_720x720q80.jpg"),
          fit: BoxFit.fill),
        gradient: LinearGradient(
          colors: [Color.fromARGB(255, 206, 179, 106), Color.fromARGB(255, 104, 92, 61)],
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      ),
      ),
      ),
    );
  }
}