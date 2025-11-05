import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mytodoapp_frontend/contants/colors.dart';
import 'package:mytodoapp_frontend/features/authentication/bloc/auth_bloc.dart';
import 'package:mytodoapp_frontend/features/authentication/ui/loginScreen.dart';
import 'package:mytodoapp_frontend/models/user_model.dart';
import 'package:mytodoapp_frontend/widgets/custom_button.dart';
import 'package:mytodoapp_frontend/widgets/custom_textfield.dart';

class Singupscreen extends StatefulWidget {
  const Singupscreen({super.key});

  @override
  State<Singupscreen> createState() => _SingupscreenState();
}

class _SingupscreenState extends State<Singupscreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final AuthBloc _authBloc = AuthBloc();

  bool isLoading = false;     // sign Up Button

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width; //sreen width
    //double screenHeigth = MediaQuery.of(context).size.height;  //screen heigth

    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocConsumer<AuthBloc, AuthState>(
        bloc: _authBloc,
        listener: (context, state) {
          if (state is SignUpInProgressState){  // when SignUp Inprogress show Loarding icon 
            isLoading = true;
          } else if (state is SignUpSucessState){  // or SignUp Sucess close Loardig icon and return Login screen
            isLoading = false;
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  'SignUp Success',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                backgroundColor: AppColors.accentColor,
              ),
            );
            Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context) => Loginscreen()
              )
            );
          } else if(state is SignUpErrorState){
            isLoading = false;
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  state.error,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
        builder: (context, state) {
          return SafeArea(
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Image.asset("assets/images/signUpimage.png"),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    width: screenWidth,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    decoration: BoxDecoration(
                      color: AppColors.singUpAccentColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'SignUp',
                            style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Poppins',
                              color: AppColors.fontColorBlack,
                            ),
                          ),
                          SizedBox(height: 25),
                      
                          // TextField(
                          //   controller: _nameController,
                          //   decoration: InputDecoration(
                          //     filled: true,
                          //     fillColor: Colors.white,
                          //     enabledBorder: OutlineInputBorder(
                          //       borderRadius: BorderRadius.circular(10),
                          //       borderSide: BorderSide(
                          //         color: Colors.white,
                          //       ),
                          //     ),
                          //     focusedBorder: OutlineInputBorder(
                          //       borderRadius: BorderRadius.circular(10),
                          //       borderSide: BorderSide(
                          //         color: Colors.white,
                          //       ),
                          //     ),
                          //     label: Text(
                          //       'Name',
                          //       style: TextStyle(
                          //         color: AppColors.labelTextColor,
                          //         fontFamily: 'Poppins',
                          //       ),
                          //     ),
                          //   ),
                          // ),
                          CustomTextfield(
                            controller: _nameController,
                            lableText: 'Name',
                            borderColor: Colors.white,
                          ),
                      
                          SizedBox(height: 15),
                      
                          // TextField(
                          //   controller: _emailController,
                          //   decoration: InputDecoration(
                          //     filled: true,
                          //     fillColor: Colors.white,
                          //     enabledBorder: OutlineInputBorder(
                          //       borderRadius: BorderRadius.circular(10),
                          //       borderSide: BorderSide(
                          //         color: Colors.white,
                          //       ),
                          //     ),
                          //     focusedBorder: OutlineInputBorder(
                          //       borderRadius: BorderRadius.circular(10),
                          //       borderSide: BorderSide(
                          //         color: Colors.white,
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
                            borderColor: Colors.white,
                          ),
                      
                          SizedBox(height: 15),
                      
                          // TextField(
                          //   controller: _passwordController,
                          //   decoration: InputDecoration(
                          //     filled: true,
                          //     fillColor: Colors.white,
                          //     enabledBorder: OutlineInputBorder(
                          //       borderRadius: BorderRadius.circular(10),
                          //       borderSide: BorderSide(
                          //         color: Colors.white,
                          //       ),
                          //     ),
                          //     focusedBorder: OutlineInputBorder(
                          //       borderRadius: BorderRadius.circular(10),
                          //       borderSide: BorderSide(
                          //         color: Colors.white,
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
                            borderColor: Colors.white,
                          ),
                      
                          SizedBox(height: 15),
                          // Container(
                          //   width: screenWidth,
                          //   height: 55,
                          //   decoration: BoxDecoration(
                          //     color: AppColors.accentColor,
                          //     borderRadius: BorderRadius.circular(80),
                          //   ),
                          //   child: Center(
                          //     child: Text(
                          //       'Sign Up',
                          //       style: TextStyle(
                          //         color: Colors.white,
                          //         fontFamily: 'Poppins',
                          //         fontWeight: FontWeight.w700,
                          //         fontSize: 17,
                          //       ),
                          //     ),
                          //   ),
                          // ),
                      
                          // Sing Up Button
                          isLoading
                            ? SizedBox(
                              height: 55,
                              width: screenWidth,
                                child: Center(child: CircularProgressIndicator(),   // isLording true show Circular indicator icon or
                                ),
                              )  
                            : GestureDetector(
                              onTap: () {
                                
                                final user = UserModel(
                                  userID: '',
                                  name: _nameController.text,
                                  email: _emailController.text,
                                  password: _passwordController.text,
                                  fcmToken: ''
                                );
                      
                                _authBloc.add(SignUpEvent(userModel: user));
                              },
                              child: CustomButton(               // isLording false return CustomButton
                                btnWidth: screenWidth, btnText: 'Sing Up'),
                            ),
                          SizedBox(height: 15),
                          Row(
                            children: [
                              Text(
                                'Already have an account?',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: 'Poppins',
                                  color: AppColors.fontColorBlack,
                                ),
                              ),
                      
                              SizedBox(width: 5),
                      
                              Text(
                                'Login',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins',
                                  color: AppColors.accentColor,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
