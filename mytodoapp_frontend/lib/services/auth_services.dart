import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mytodoapp_frontend/models/user_model.dart';


class AulthServices {

  final _auth = FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance;

  Future<void> singUpUser(UserModel user) async {
    UserCredential userCredential = await _auth.createUserWithEmailAndPassword(    // creat email and passowr for Sign Up
      email: user.email,
      password: user.password,
    );

    if(userCredential.user != null){

       UserModel finalUser = UserModel(
        userID: userCredential.user!.uid,  // UserId pass in userCredential
        name: user.name,
        email: user.email,
        password: user.password,
        fcmToken: user.fcmToken);

      
      await _firestore
        .collection('Users')
        .doc(userCredential.user!.uid)
        .set(finalUser.toJason());  //  finalUser convert toJason for add collection
    }else {
      print('User Alredy Registed!');
    }
  }

  Future<void> signInUser(String email, String password) async {
    await _auth.signInWithEmailAndPassword(email: email, password: password);

  }
}