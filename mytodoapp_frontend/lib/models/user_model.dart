class UserModel {

  final String userID;
  final String name;
  final String email;
  final String password;
  final String fcmToken;    // FCM Token is in the Firebase notification sending token 

  UserModel({required this.userID,
  required this.name,
  required this.email,
  required this.password,
  required this.fcmToken,
  });

  Map<String, dynamic> toJason() {    //use Map key tojason method all user datas show in firebase firestore 
    return {
      'userID' : userID,
      'name' : name,
      'email' : email,
      'password' : password,
      'fcmToken' : fcmToken,
    };
  }
} 