import 'package:flutter/material.dart';

class ListItem {
  final String image;
  final String artikel;
  final String text;
  final String galery;
  final String aktor;

  ListItem(
    this.image,
    this.artikel, 
    this.text, 
    this.galery, 
    this.aktor
   );
}

class LatihanEmpat extends StatelessWidget {
  LatihanEmpat({super.key});

  final List<ListItem> itemList = [
    ListItem(

        "https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2022/08/01/3894104567.jpg",
        "BLACKPINK adalah grup musik asal Korea Selatan yang dibentuk oleh YG Entertainment pada tahun 2016.",
        "BlackPink",
        "https://upload.wikimedia.org/wikipedia/en/1/19/Marvel_Universe_%28Civil_War%29.jpg",
        "https://upload.wikimedia.org/wikipedia/en/1/19/Marvel_Universe_%28Civil_War%29.jpg"),
    ListItem(
        "https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2023/06/20/Promedia-Image-2-357449939.png",
        "Lisa (nama lengkap: Lalisa Manoban) adalah seorang penyanyi, rapper, dan penari asal Thailand yang dikenal sebagai anggota dari grup musik K-pop populer, BLACKPINK",
        "BlackPink",
        "https://d1tgyzt3mf06m9.cloudfront.net/v3-staging/2023/10/film-marvel-buatan-studio-lain-canon-mcu-768x432.jpg",
        "https://d1tgyzt3mf06m9.cloudfront.net/v3-staging/2023/10/film-marvel-buatan-studio-lain-canon-mcu-768x432.jpg"),
    ListItem(
        "https://awsimages.detik.net.id/community/media/visual/2023/10/07/gaya-seksi-jennie-blackpink-di-you-me-dandan-ala-anime-sailor-moon-3_43.jpeg?w=1200",
        "Jennie Kim, yang lebih dikenal dengan nama panggungnya Jennie, adalah seorang penyanyi, rapper, dan model asal Korea Selatan. Dia lahir pada 16 Januari 1996, di Seoul, Korea Selatan.",
        "BlackPink",
        "https://d1tgyzt3mf06m9.cloudfront.net/v3-staging/2023/10/film-marvel-buatan-studio-lain-canon-mcu-768x432.jpg",
        "https://d1tgyzt3mf06m9.cloudfront.net/v3-staging/2023/10/film-marvel-buatan-studio-lain-canon-mcu-768x432.jpg"),
    ListItem(
        "https://lh3.googleusercontent.com/8emgXpKhEif2-aU7uX9dTrelf-zLasb1hSgL6NrJveoFd8DRzm_O901qDrK4Y6S5TyDnCN1toFlpm_AvNH96pbMDn9-oZ5cVYw=w1200-h630-rj-pp-e365",
        "Jisoo (nama asli: Kim Ji-soo) adalah seorang penyanyi dan aktris asal Korea Selatan yang dikenal sebagai salah satu anggota dari grup musik K-pop, BLACKPINK.",
        "BlackPink",
        "https://d1tgyzt3mf06m9.cloudfront.net/v3-staging/2023/10/film-marvel-buatan-studio-lain-canon-mcu-768x432.jpg",
        "https://d1tgyzt3mf06m9.cloudfront.net/v3-staging/2023/10/film-marvel-buatan-studio-lain-canon-mcu-768x432.jpg"),
    ListItem(
        "data:image/jpeg;base64,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",
        "Roseanne Park, yang lebih dikenal dengan nama panggungnya Rose atau Rosé, adalah seorang penyanyi, penulis lagu, dan model asal Korea Selatan. Dia lahir pada 11 Februari 1997, di Auckland, Selandia Baru, dan dibesarkan di Melbourne, Australia.",
        "BlackPink",
        "https://d1tgyzt3mf06m9.cloudfront.net/v3-staging/2023/10/film-marvel-buatan-studio-lain-canon-mcu-768x432.jpg",
        "https://d1tgyzt3mf06m9.cloudfront.net/v3-staging/2023/10/film-marvel-buatan-studio-lain-canon-mcu-768x432.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      height: 585,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 163, 201),
      ),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              Container(
                width: 600,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fb/Logo_of_Blackpink.svg/2560px-Logo_of_Blackpink.svg.png"),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                width: 900,
                height: 150,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: ListView.separated(
                  itemCount: itemList.length,
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: Colors.black,
                    );
                  },
                  itemBuilder: (context, index) {
                    return Container(
                        margin: EdgeInsets.all(10),
                        height: 110,
                        width: 300,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: 200,
                              height: 100,
                              margin: EdgeInsets.all(10),
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(itemList[index].image),
                                  fit: BoxFit.fill
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 200, // Adjust the width as needed
                                  child: Text(
                                    itemList[index].artikel,
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ));
                  },
                ),
              ),
            ],
          ),
          Center(
              child: Text(
            "galery",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          )),
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 150,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: itemList.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            width: 90,
                            height: 90,
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(itemList[index].galery),
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
              ),
            ],
          ),
          Center(
              child: Text(
            "Aktor Film Marvel",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          )),
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 150,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: itemList.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            width: 90,
                            height: 90,
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(itemList[index].aktor),
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
              ),
            ],
          )
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class LatihanEmpat extends StatelessWidget {
//   const LatihanEmpat({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: Color.fromARGB(255, 255, 156, 189), 
//         body: Center(
//           child: Image.network(
//             'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fb/Logo_of_Blackpink.svg/2560px-Logo_of_Blackpink.svg.png',  
//             width: double.infinity,  
//             height: double.infinity,
//           ),
//         ),
//       ),

//     );
//   }
// }