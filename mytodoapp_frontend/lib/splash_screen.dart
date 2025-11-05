import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mytodoapp_frontend/features/authentication/ui/loginScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer timer;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 3), (Timer timer){
      Navigator.pushReplacement(
        context,
          MaterialPageRoute(
            builder: (context) => Loginscreen(),
          ),
        );
    });

  }

  @override
  void dispose() {
    super.dispose();
    timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeigth = MediaQuery.of(context).size.height;    //full UI responsive Screen higth
    double screenWidth = MediaQuery.of(context).size.width;    //full UI responsive Screen width

    return Scaffold(
      body: Container(
        
        width: screenWidth,
        height: screenHeigth,
        child: Center(
          child: Image.asset(
            "assets/logo/myTask.png"
          ),
        ),        
      ),
    );
    
  }
}