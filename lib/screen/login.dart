import 'package:flutter/material.dart';
import 'package:project/screen/dashboard.dart';
import 'package:project/screen/register.dart'; // Import the Register page

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/images/logo.png',
                height: 100,
              ),
              SizedBox(height: 5),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'FISH',
                      style:
                          TextStyle(color: Color.fromARGB(255, 29, 170, 225)),
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
              SizedBox(height: 40),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  filled: true,
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey),
                  hintText: "Email",
                  fillColor: Colors.white70,
                ),
              ),
              SizedBox(height: 20),
              TextField(
                obscureText: _obscureText,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  filled: true,
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey),
                  hintText: "Password",
                  fillColor: Colors.white70,
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility_off : Icons.visibility,
                    ),
                    onPressed: _togglePasswordVisibility,
                  ),
                ),
              ),
              SizedBox(height: 8),
              GestureDetector(
                onTap: () {
                  // Aksi yang dilakukan saat teks "Lupa Password?" ditekan
                  print('Lupa Password? tapped');
                },
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Lupa Password?',
                    style: TextStyle(
                      fontSize: 14,
                      color: const Color(0xFF9B59B6),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 370,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    minimumSize: Size(370, 60),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Dashboard()),
                    );
                  },
                  child: Text('Masuk',
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ),
              ),
              SizedBox(height: 30),
              Column(
                children: [
                  Text(
                    'Anda belum memiliki akun?',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Register()), // Navigate to Register page
                      );
                    },
                    child: Text(
                      'Daftar',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 29, 170, 225),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
