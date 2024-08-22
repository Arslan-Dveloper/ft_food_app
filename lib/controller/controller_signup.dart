import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ControllerSignUp extends GetxController{
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  Future<String> signUp() async {
    String response="";
    String email = emailController.text;
    String name = nameController.text;
    String password = passwordController.text;
    String phone = phoneController.text;
    await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password).then((value){
      var user=value.user;

    });


    return response;
  }
}