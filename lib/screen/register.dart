import 'package:flutter/material.dart';
import 'package:project/screen/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Register(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _obscurePassword1 = true;
  bool _obscurePassword2 = true;

  // Toggle password visibility
  void _togglePasswordVisibility1() {
    setState(() {
      _obscurePassword1 = !_obscurePassword1;
    });
  }

  void _togglePasswordVisibility2() {
    setState(() {
      _obscurePassword2 = !_obscurePassword2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Image.asset(
                'assets/images/logo.png', // Path to your logo image
                height: 100,
              ),
              const SizedBox(height: 20),
              const Text(
                'Register',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 20),
              _buildTextField('Username', false, null),
              const SizedBox(height: 20),
              _buildTextField('Alamat Email', false, null),
              const SizedBox(height: 20),
              _buildTextField('No HP/WA', false, null),
              const SizedBox(height: 20),
              _buildTextField('Alamat', false, null),
              const SizedBox(height: 20),
              _buildTextField('Password', true, _togglePasswordVisibility1),
              const SizedBox(height: 20),
              _buildTextField(
                  'Konfirmasi Password', true, _togglePasswordVisibility2),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Handle registration logic here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.symmetric(
                      vertical: 15.0, horizontal: 80.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                child: const Text(
                  'Daftar',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            Login()), // Navigate to Register page
                  );
                },
                child: Text(
                  'Sudah punya akun ? Ayo Masuk !',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 29, 170, 225),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(
      String hint, bool obscureText, VoidCallback? toggleVisibility) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        filled: true,
        fillColor: Colors.grey[200],
        hintText: hint,
        suffixIcon: obscureText
            ? IconButton(
                icon: Icon(
                  obscureText ? Icons.visibility_off : Icons.visibility,
                ),
                onPressed: toggleVisibility,
              )
            : null,
      ),
    );
  }
}
