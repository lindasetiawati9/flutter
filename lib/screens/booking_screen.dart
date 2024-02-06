import 'package:belajar/helpers/size_helper.dart';
import 'package:belajar/screens/list_screen.dart';
import 'package:belajar/screens/output_booking_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter/cupertino.dart';


class BookingWisataScreen extends StatefulWidget {
  @override
  State<BookingWisataScreen> createState() => _BookingWisataScreenState();
}

class _BookingWisataScreenState extends State<BookingWisataScreen> {
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController jenisKelamin = TextEditingController();
  TextEditingController qtyController = TextEditingController();
  TextEditingController tanggalController = TextEditingController();
  String _wisataChoice = "";

  final List<String> wisata = [
    "Tebing Keraton - Bandung",
    "Lembang Park & Zoo - Bandung",
    "Geopark Ciletuh - Sukabumi",
    "Hutan De Djawatan - Banyuwangi",
    "Goa gong - Pacitan"
  ];

  final List kota = ["Bandung", "Bandung", "Sukabumi", "Banyuwangi", "Pacitan"];
  void initState() {
    tanggalController.text = "";

    super.initState();
  }

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
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  elevation: 4.0,
                  color: Color.fromARGB(255, 18, 180, 153),
                  margin: EdgeInsets.only(top: 24, right: 24, left: 24),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(24),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Booking",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              // color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 18),
                          TextFormField(
                            controller: nameController,
                            cursorColor: Colors.blue,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              hintText: "Full Name",
                              labelText: "Full Name",
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(Icons.text_fields),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'input your fullname!';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 18),
                          DropdownButtonFormField(
                            decoration: InputDecoration(
                              hintText: "Tour List",
                              labelText: "Select Tour",
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(Icons.tour),
                            ),
                            items: wisata.map((
                              String items,
                            ) {
                              int index = 0;
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                _wisataChoice = newValue!;
                              });
                            },
                          ),
                          SizedBox(height: 18),
                          TextFormField(
                            controller: qtyController,
                            cursorColor: Colors.blue,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: "Quantity",
                              labelText: "Quantity",
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(Icons.numbers),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'input value of ticket!';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 18),
                          TextFormField(
                              controller: tanggalController,
                              cursorColor: Colors.blue,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                hintText: "Book Date",
                                labelText: "Book Date",
                                border: OutlineInputBorder(),
                                prefixIcon: Icon(Icons.calendar_today),
                              ),
                              readOnly: true,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'input book date!';
                                }
                                return null;
                              },
                            onTap: () async {
                              DateTime? pickedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1900),
                                lastDate: DateTime(2100),
                              );
                              if (pickedDate != null) {
                                String tgl =
                                    DateFormat('yyyy-MM-dd').format(pickedDate);
                                setState(() {
                                  tanggalController.text = tgl;
                                });
                              } else {
                                print("tanggal tidak dipilih");
                              }
                            },
                          ),
                          SizedBox(height: 18),
                          SizedBox(
                            width: displayWidth(context) * 0.7,
                            height: displayHeight(context) * 0.05,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.white),
                                  ),
                                ),
                              ),
                              child: Text("Simpan"),
                              onPressed: () {
                                _submit();
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _submit() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    } else {
      _showAlertDialog(context);
      _formKey.currentState!.save();
    }
  }

  void _showAlertDialog(BuildContext context) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: const Text('Alert'),
        content: const Text('Are You Sure?'),
        actions: <CupertinoDialogAction>[
          CupertinoDialogAction(
            isDefaultAction: true,
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('No'),
          ),
          CupertinoDialogAction(
            isDestructiveAction: true,
            onPressed: () {
              int price = 0;
              String img = "";
              String name = nameController.text;
              String tanggal = tanggalController.text;
              String qty = qtyController.text;
              String tour = _wisataChoice;
              if (tour == "Tebing Keraton - Bandung") {
                price = 17000;
                img = "images/tebingkeraton.jpg";
              } else if (tour == "Lembang Park & Zoo - Bandung") {
                price = 144000;
                img = "images/parknzoo.jpg";
              } else if (tour == "Geopark Ciletuh - Sukabumi") {
                price = 0;
                img = "images/geopark.jpg";
              } else if (tour == "Hutan De Djawatan - Banyuwangi") {
                price = 7500;
                img = "images/hutan.jpg";
              } else if (tour == "Goa gong - Pacitan") {
                price = 20000;
                img = "images/goagong.jpg";
              }
              int totalPrice = price * int.parse(qty);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TicketScreen(
                    name: name,
                    tour: tour,
                    qty: qty,
                    tanggal: tanggal,
                    price: price.toString(),
                    totalPrice: totalPrice.toString(),
                    img: img,
                  ),
                ),
              );
            },
            child: const Text('Yes'),
          ),
        ],
      ),
    );
  }
}