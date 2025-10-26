import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mytodoapp_frontend/contants/colors.dart';
import 'package:mytodoapp_frontend/widgets/custom_button.dart';
import 'package:mytodoapp_frontend/widgets/custom_textfield.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;


    return Scaffold(
      backgroundColor: AppColors.loginBGColor,
      body: SafeArea(
          child: Container(
            child: Column(
              children: [
                Expanded(
                flex: 1,
                child: Center(
                  child: SizedBox(
                    width: screenWidth - 100,
                    child: Lottie.asset('assets/animations/loginAnimation .json'),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  width: screenWidth,
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Poppins',
                          color: AppColors.fontColorBlack,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'Welcome Back to',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins',
                              color: AppColors.labelTextColor,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'MyTask',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Poppins',
                              color: AppColors.accentColor,
                            ),
                          ),                          
                        ],
                      ),
                      SizedBox(
                          height: 30,
                        ),

                      //   TextField(
                      //     controller: _emailController,
                      //     decoration: InputDecoration(
                      //       filled: true,
                      //       fillColor: Colors.white,
                      //       enabledBorder: OutlineInputBorder(
                      //         borderRadius: BorderRadius.circular(10),
                      //         borderSide: BorderSide(
                      //           color: AppColors.textFieldBorderColor,
                      //         ), 
                      //       ),
                      //     focusedBorder: OutlineInputBorder(
                      //       borderRadius: BorderRadius.circular(10),
                      //       borderSide: BorderSide(
                      //         color: AppColors.textFieldBorderColor,
                      //       ),
                      //     ),
                      //     label: Text(
                      //       'Email',
                      //       style: TextStyle(
                      //         color: AppColors.labelTextColor,
                      //         fontFamily: 'Poppins',
                      //       ),
                      //     ),
                      //   ),
                      // ),

                      CustomTextfield(
                        controller: _emailController, 
                        lableText: 'Email',
                        borderColor: AppColors.labelTextColor,
                      ),

                      SizedBox(
                        height: 15,
                      ),

                      // TextField(
                      //   controller: _passwordController,
                      //   decoration: InputDecoration(
                      //     filled: true,
                      //     fillColor: Colors.white,
                      //     enabledBorder: OutlineInputBorder(
                      //       borderRadius: BorderRadius.circular(10),
                      //       borderSide: BorderSide(
                      //         color: AppColors.textFieldBorderColor,
                      //       ), 
                      //     ),
                      //     focusedBorder: OutlineInputBorder(
                      //       borderRadius: BorderRadius.circular(10),
                      //       borderSide: BorderSide(
                      //         color: AppColors.textFieldBorderColor,
                      //       ),
                      //     ),
                      //     label: Text(
                      //       'Password',
                      //       style: TextStyle(
                      //         color: AppColors.labelTextColor,
                      //         fontFamily: 'Poppins',
                      //       ),
                      //     ),
                      //   ),
                      // ),

                      CustomTextfield(
                        controller: _passwordController,
                        lableText: 'Password',
                        borderColor: AppColors.textFieldBorderColor,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    //   Container(
                    //   width: screenWidth,
                    //   height: 55,
                    //   decoration: BoxDecoration(
                    //     color: AppColors.accentColor,
                    //     borderRadius: BorderRadius.circular(80),
                    //   ),
                    //   child: Center(
                    //     child: Text(
                    //       'Login',
                    //       style: TextStyle(
                    //         color: Colors.white,
                    //         fontFamily: 'Poppins',
                    //         fontWeight: FontWeight.w500,
                    //         fontSize: 15,
                    //       ),
                    //     ),
                    //   ),
                    // ),

                    //button
                    CustomButton(               
                      btnWidth: screenWidth,
                      btnText: 'Login'
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text(
                          'Dont have an account?', 
                          style: TextStyle(
                            fontSize: 14,                            
                            fontWeight: FontWeight.w300,
                            fontFamily: 'Poppins',
                            color: AppColors.fontColorBlack,
                            
                          ),
                        ),

                        SizedBox(
                          width: 5,
                        ), 

                        Text(
                          'SignUP', 
                          style: TextStyle(
                            fontSize: 14,                            
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Poppins',
                            color: AppColors.accentColor,

                            
                          ),
                        ),
                      ],
                    ),
                  

                  ],
                  ),
                )
              ),
            ],
          ),          
        ),
      ),
    );
  }
}