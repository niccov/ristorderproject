import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:ristorderproject/features/login/data/models/user.dart';
import 'package:ristorderproject/routes/routes.dart';


class AuthController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  void signUp(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email.trim(),
          password: password.trim()
      );
    } catch (e) {
      Get.snackbar('Errore', 'La registrazione non è andata a buon fine');
    }
  }

  void login() async {
    try {
      await _auth.signInWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim(),
      );
      Get.offAllNamed(Routes.HOME);
    }catch (e) {
      Get.snackbar('Errore', 'Non è possibile effettuare il login');
    }
  }

  void logout() async {
    await _auth.signOut();
    Get.offAllNamed(Routes.AUTH);
  }


}
