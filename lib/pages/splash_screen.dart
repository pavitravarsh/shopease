import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Ensure flutter_svg is installed
import 'login_page.dart'; // Correct path

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF6E0000),
      body: Center(
        child: SvgPicture.asset(
          'assets/logo.svg',
          width: 350,
          height: 350,
        ),
      ),
    );
  }
}


