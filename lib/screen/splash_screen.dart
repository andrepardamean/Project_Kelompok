import 'package:flutter/material.dart';
import 'package:project/screen/login.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    // Delay 3 detik untuk menampilkan form login
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Login()),
      );
    });
    return Scaffold(
      body: Center(
        child: Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment
              .center, // Menjadikan gambar dan teks ditengah secara horizontal
          mainAxisAlignment: MainAxisAlignment
              .center, // Menjadikan gambar dan teks ditengah secara vertical
          children: <Widget>[
            Image(
              image: AssetImage("assets/images/logo.png"),
              width: 100,
              height: 100,
            ),
            Padding(padding: EdgeInsets.only(top: 10.0)),
            SizedBox(height: 0),
            RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'FISH',
                    style: TextStyle(color: Color.fromARGB(255, 29, 170, 225)),
                  ),
                  TextSpan(
                    text: ' Market',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
