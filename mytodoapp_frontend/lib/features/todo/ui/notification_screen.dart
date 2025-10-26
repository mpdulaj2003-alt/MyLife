import 'package:flutter/material.dart';
import 'package:mytodoapp_frontend/contants/colors.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeigth = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        centerTitle: true,       // Appbar Text"Add task" in screen center
        title: Text(
          'Nitifications',
          style: TextStyle(
            color: AppColors.accentColor,
            fontWeight: FontWeight.w600,
            fontFamily: 'Poppins',
            fontSize: 20,
          ),

        ),
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 45,
              width: 45,
              margin: EdgeInsets.only(left: 15),
              decoration: BoxDecoration(
                color: AppColors.accentColor,
                borderRadius: BorderRadius.circular(12),
              ),
            
              child: Center(
                child: Icon(
                  Icons.arrow_back,
                  size: 20,
                  color: Colors.white,
                ),
              ),
            
            ),
          ],
        ),
        
        backgroundColor: Colors.white,
      ),
      body: Container(
        height: screenHeigth - 120,
        width: screenWidth,
        color: Colors.white,
        child: Column(
          
          children: [
            Container(
              width: screenWidth,
              height: 1,
              color: AppColors.accentColor,
            ),
            Container(
              height: 60,
              width: screenWidth,
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                  'AI Task Completed',
                  style: TextStyle(
                    color: AppColors.fontColorBlack,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    fontSize: 14,
                  ),
                ),
                Text(
                  'Well done Phillip, you have completed all the tasks for today',
                  style: TextStyle(
                    color: AppColors.fontColorBlack,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Poppins',
                    fontSize: 11,
                  ),
                ),
                ],
              ),
            ),
          ],
        ),

      ),
    );
  }
}