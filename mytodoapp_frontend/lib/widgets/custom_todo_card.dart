import 'package:flutter/material.dart';
import 'package:mytodoapp_frontend/contants/colors.dart';

class CustomTodoCard extends StatefulWidget {
  final String cardTitle;
  final bool isTaskCompleted; 
  const CustomTodoCard(
    {super.key, required this.cardTitle, required this.isTaskCompleted});

  @override
  State<CustomTodoCard> createState() => _CustomTodoCardState();
}

class _CustomTodoCardState extends State<CustomTodoCard> {
  
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth,
      height: 70,
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.grey,
        ),

      ),
      child: Row(
        children: [
          Radio(
          value: widget.isTaskCompleted ? 1 : 0,   // isTaskCompleted widget task is True(?) show 1 or False show 0
            groupValue: 0,
            onChanged: (value){},
          ),
          Text(
            widget.cardTitle,
            style: TextStyle(
              color: widget.isTaskCompleted
              ? AppColors.fontColorBlack      // isTaskCompleted is true(?) show fontColorBlack(Black) or
              : AppColors.accentColor,        // isTaskCompleted is fales(:) show accentColor(Blue)
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),
          ),
          Spacer(),         
          widget.isTaskCompleted 
            ? SizedBox()               //   isTaskCompleted widget is true(?) showed SizedBox or
              :  Column(              //   its fales(:) show Column
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.edit),
                    SizedBox(
                      height: 5,
                    ),
                    Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                    
                  ],
                ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}