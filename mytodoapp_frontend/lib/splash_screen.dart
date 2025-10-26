import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

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