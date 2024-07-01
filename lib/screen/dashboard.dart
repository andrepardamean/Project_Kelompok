import 'package:flutter/material.dart';
import 'package:project/screen/profile.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            // Wrap with SingleChildScrollView
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => profile()),
                          );
                        },
                        child: Icon(Icons.account_circle, size: 60),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Hai Ernando",
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              "Ernando Ari",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Stack(
                        children: [
                          Icon(Icons.notifications_outlined, size: 40),
                          Positioned(
                            right: 0,
                            top: 0,
                            child: Container(
                              padding: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              constraints: BoxConstraints(
                                minWidth: 16,
                                minHeight: 16,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(Icons.circle,
                                      size: 8, color: Colors.black),
                                  SizedBox(width: 6),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search...',
                        prefixIcon: Icon(Icons.search, size: 25),
                        contentPadding: EdgeInsets.symmetric(vertical: 10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 250,
                    child: Flexible(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            child: PageView(
                              children: [
                                Container(
                                  width: screenWidth,
                                  child: Image.asset(
                                    'assets/images/home.png',
                                    width: 100,
                                    height: 100,
                                  ),
                                ),
                                Container(
                                  width: screenWidth,
                                  child: Image.asset(
                                    'assets/images/home.png',
                                    width: 100,
                                    height: 100,
                                  ),
                                ),
                                Container(
                                  width: screenWidth,
                                  child: Image.asset(
                                    'assets/images/home.png',
                                    width: 100,
                                    height: 100,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Produk",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 15,
                        color: Color.fromARGB(255, 24, 119, 197),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      buildFishCard(
                        imagePath: 'assets/images/bawal.png',
                        fishName: 'Ikan Bawal',
                        catchDate: '20 Juni 2023',
                        stock: '50 Kg',
                        price: 'Rp 100.000,-',
                      ),
                      buildFishCard(
                        imagePath: 'assets/images/bawal.png',
                        fishName: 'Ikan Bawal',
                        catchDate: '21 Juni 2023',
                        stock: '40 Kg',
                        price: 'Rp 90.000,-',
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      buildFishCard(
                        imagePath: 'assets/images/bawal.png',
                        fishName: 'Ikan Bawal',
                        catchDate: '20 Juni 2023',
                        stock: '50 Kg',
                        price: 'Rp 100.000,-',
                      ),
                      buildFishCard(
                        imagePath: 'assets/images/bawal.png',
                        fishName: 'Ikan Bawal',
                        catchDate: '21 Juni 2023',
                        stock: '40 Kg',
                        price: 'Rp 90.000,-',
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      buildFishCard(
                        imagePath: 'assets/images/bawal.png',
                        fishName: 'Ikan Bawal',
                        catchDate: '20 Juni 2023',
                        stock: '50 Kg',
                        price: 'Rp 100.000,-',
                      ),
                      buildFishCard(
                        imagePath: 'assets/images/bawal.png',
                        fishName: 'Ikan Bawal',
                        catchDate: '21 Juni 2023',
                        stock: '40 Kg',
                        price: 'Rp 90.000,-',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildFishCard({
    required String imagePath,
    required String fishName,
    required String catchDate,
    required String stock,
    required String price,
  }) {
    return Container(
      width: 150,
      height: 280,
      decoration: BoxDecoration(
        color: Colors.white, // Change to white color
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          // Add boxShadow for smoke effect
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(13.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              imagePath,
              width: 100,
              height: 100,
            ),
            SizedBox(height: 5),
            Text(
              fishName,
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 10),
            Text(
              'Tanggal Penangkapan: $catchDate',
              style: TextStyle(fontSize: 12, color: Colors.black),
            ),
            SizedBox(height: 10),
            Text(
              'Stock: $stock',
              style: TextStyle(fontSize: 12, color: Colors.black),
            ),
            SizedBox(height: 10),
            Text(
              'Harga: $price',
              style: TextStyle(fontSize: 12, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
