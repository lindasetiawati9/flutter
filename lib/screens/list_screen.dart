import 'package:belajar/screens/detail_screen.dart';
import 'package:flutter/material.dart';
import '../helpers/size_helper.dart';

class ListWisataScreen extends StatelessWidget {
  final List<Map<String, dynamic>> wisataData = [
    {
      "nama": "Tebing Keraton",
      "kota": "Bandung",
      "image": "images/tebingkeraton.jpg",
      "desc": "Tebing Keraton merupakan sebuah tebing yang berada di dalam kawasan Taman Hutan Raya Ir. H. Djuanda."
    },
    {
      "nama": "Lembang Park & Zoo",
      "kota": "Bandung",
      "image": "images/parknzoo.jpg",
      "desc": "Sesuai namanya, Lembang Park and Zoo mengombinasikan taman wisata yang luas dengan kebun binatang. Jadi pengunjung tidak hanya bisa bertemu dengan binatang saja, tetapi beraktivitas santai dengan berbagai fasilitas yang tersedia di Lembang Park and Zoo, dari naik kano di danau buatan, naik kuda, hingga berkeliling area Lembang Park and Zoo yang luas dengan scooter."
    },
    {
      "nama": "Geopark Ciletuh",
      "kota": "Sukabumi",
      "image": "images/geopark.jpg",
      "desc": "Banyak pemandangan alam yang bisa kamu nikmati di geopark ini, mulai dari pantai, air terjun, hingga spot-spot foto terbaik di dalamnya. Di kawasan ini kamu juga bisa mengunjungi sejumlah obyek wisata menarik yang sangat populer. Seperti misalnya Bukit Panenjoan, Curug Cimarinjung, Curug Sodong, Puncak Darma, Vihara Dewi Kwan Im, Sungai Citarik, Kampung Kasepuhan Sinar Resmi, dan masih banyak lagi. Di Ciletuh Geopark tidak terdapat tiket masuk, alias masih gratis untuk umum. Fasilitas di geopark ini juga cukup memadai, terdapat beberapa penginapan ecolodge, minimarket Alfamart, dan yang lain. Hanya saja, pantainya tersebut tidak berpasir putih, agak kecoklatan."
    },
    {
      "nama": "Hutan De Djawatan",
      "kota": "Banyuwangi",
      "image": "images/hutan.jpg",
      "desc": "Dalam film The Lord of The Rings, dikisahkan terdapat hutan lebat dengan pohon-pohonnya yang besar. Ternyata hutan semacam itu juga ada di dunia nyata, tepatnya di De Djawatan Banyuwangi. De Djawatan merupakan hutan yang ada di tengah kota. Obyek wisata Instagramable ini menawarkan suasana teduh dengan rimbunnya pepohonan yang mampu mengusir panasnya siang hari. Untuk harga tiket masuknya, wisatawan hanya perlu membayar sebesar Rp7.500 per orang. Apabila wisatawan menggunakan sepeda motor, maka harus membayar biaya parkir sebesar Rp2.000. Untuk wisatawan yang menggunakan mobil, biaya parkirnya sebesar Rp5.000."
    },
    {
      "nama": "Goa Gong",
      "kota": "Pacitan",
      "image": "images/goagong.jpg",
      "desc": "Goa ini merupakan salah satu destinasi wisata yang memiliki keindahan stalaktit maupun stalagmit. Untuk melihat keindahan goa, pengunjung dikenakan tiket dengan biaya cukup terjangkau. Tiket masuk Goa Gong bagi dewasa mulai Rp 20.000, sedangkan anak-anak mulai Rp 5.000. Selain itu, pengunjung yang ingin membawa senter bisa menyewanya di tempat seharga mulai Rp 5.000."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.png"),
            fit: BoxFit.cover),
        ),
        child: ListView.builder(
          itemCount: wisataData.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => DetailWisataScreen(
                      nama: wisataData[index]["nama"],
                      kota: wisataData[index]["kota"],
                      image: wisataData[index]["image"],
                      desc: wisataData[index]["desc"]),
                  ),
                  );
              },
              child: Container(
                alignment: Alignment.bottomLeft,
                height: displayHeight(context) * 0.25,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage("${wisataData[index]["image"]}"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black),
                    child: Text(
                      "${wisataData[index]["nama"]} - ${wisataData[index]["kota"]}",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.orangeAccent,
                      ),
                    ),
                  ),
                ),
              );
          },
          ),
        ),
      );
  }
}

// class ListWisataScreen extends StatelessWidget {
//   final List wisata = [
//     "Tebing Keraton",
//     "Lembang Park & Zoo",
//     "Geopark Ciletuh",
//     "Hutan De Djawatan",
//     "Goa Gong"
//   ];

//   final List kota = ["Bandung", "Bandung", "Sukabumi", "Banyuwangi", "Pacitan"];

//   final List images = [
//     "images/tebingkeraton.jpg",
//     "images/parknzoo.jpg",
//     "images/geopark.jpg",
//     "images/hutan.jpg",
//     "images/goagong.jpg",
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Container(
//         height: double.infinity,
//         width: double.infinity,
//         decoration: const BoxDecoration(
//           image: DecorationImage(
//               image: AssetImage("images/background.png"),
//               fit: BoxFit.cover),
//         ),
//         child: ListView.builder(
//           itemCount: wisata.length,
//           itemBuilder: (context, index) {
//             return GestureDetector(
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => DetailWisataScreen()),
//                 );
//               },
//               child: Container(
//                 alignment: Alignment.bottomLeft,
//                 height: displayHeight(context) * 0.25,
//                 margin: EdgeInsets.all(10),
//                 padding: EdgeInsets.all(10), //You can use EdgeInsets like above
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   image: DecorationImage(
//                       image: AssetImage("${images[index]}"), fit: BoxFit.cover),
//                 ),
//                 child: Text(
//                   "${wisata[index]} - ${kota[index]}",
//                   textAlign: TextAlign.justify,
//                   style: TextStyle(
//                       // color: Colors.black,
//                       fontSize: 14,
//                       fontWeight: FontWeight.bold),
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

