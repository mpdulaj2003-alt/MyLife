import 'package:flutter/material.dart';
import 'package:mytodoapp_frontend/contants/colors.dart';
import 'package:mytodoapp_frontend/widgets/custom_todo_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeigth = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              'Saturday, Feb 20 2022',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                fontSize: 13,
              ),
            ),
            Spacer(),
            Image.asset('assets/images/notification.png')
          ],
        ),
      ),
      body: Container(
        
        height: screenHeigth - AppBar().preferredSize.height,
        width: screenWidth,
        
        child: Column(
          children: [
            Expanded(
              child: Container(
                height: 240,
                width: screenWidth,
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      Text(
                      'Welcome Phillip',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                      ),
                    ),
                    
                    Text(
                      'Have a nice day !',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'Today Progress',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 76,
                      width: screenWidth,
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage('assets/images/menu.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Spacer(),
                          Text(
                            'Progress',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          LinearProgressIndicator(      // indicater of precentage
                            value: 0.5,
                            color: Colors.white,
                            backgroundColor: AppColors.progressBGColor,   
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              '80%',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: Colors.white,
                            
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            
            Container(
              width: screenWidth,
              height: screenHeigth - (AppBar().preferredSize.height + 240),   // ScreenHeight - (AppBar Height + 240)
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 25,                    
                    child: Text(
                      "Daily Tasks",
                      style: TextStyle(
                        color: AppColors.fontColorBlack,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    // width: screenHeigth,
                    height: screenHeigth - (AppBar().preferredSize.height + 299), // Daily task heigt + 25
                    child: Column(
                      children: [
                        CustomTodoCard(
                        cardTitle: 'Work Out',
                        isTaskCompleted: true,
                      ),
                      CustomTodoCard(
                        cardTitle: 'Daily meeting',
                        isTaskCompleted: true,
                      ),
                      CustomTodoCard(
                        cardTitle: 'Shopping Cloths',
                        isTaskCompleted: false,
                      ),
                        // Container(
                        //   width: screenWidth,
                        //   height: 70,
                        //   decoration: BoxDecoration(
                        //     borderRadius: BorderRadius.circular(10),
                        //     border: Border.all(
                        //       color: AppColors.accentColor.withOpacity(0.5),
                        //     ),

                        //   ),
                        //   child: Row(
                        //     children: [
                        //       Radio(
                        //       value: 0,
                        //        groupValue: 0,
                        //        onChanged: (value){},
                        //       ),
                        //       Text(
                        //         'My Test 1',
                        //         style: TextStyle(
                        //           fontFamily: 'Poppins',
                        //           fontWeight: FontWeight.w500,
                        //           fontSize: 15,
                        //         ),
                        //       ),
                        //       Spacer(),
                        //       Column(
                        //         children: [
                        //           Spacer(),
                        //           Icon(Icons.edit),
                        //           SizedBox(
                        //             height: 5,
                        //           ),
                        //           Icon(
                        //             Icons.delete,
                        //             color: Colors.red,
                        //           ),
                        //           Spacer(),
                        //         ],
                        //       ),
                        //     ],
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
            
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: AppColors.accentColor,
        onPressed: () {},
        label: Row(
          children: [
            Icon(
              Icons.add,
              color: Colors.white,          
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Add Task',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                fontSize: 15,
                color: Colors.white,
              ),
            ),
          ],
        ),
        
      ),
    );
  }
}