import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:ristorderproject/features/login/presentation/controllers/auth_service.dart';

class AuthPage extends GetView<AuthController> {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            const Text(
              "Benvenuto in Ristorder",
              maxLines: 3,
              style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 60),
            TextField(
              controller: controller.emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "Email",
                hintText: "Inserisci l'email",
              ),
            ),
            SizedBox(height: 60),
            TextField(
              controller: controller.passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "Inserisci la password"
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
                onPressed: controller.login,
                child: Text("Accedi", style: TextStyle(fontSize: 20)),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )
              ),
            ),
            TextButton(
                onPressed: () {
                  var email = controller.emailController.text;
                  var password = controller.passwordController.text;
                  controller.signUp(email, password);
                },
                child: const Text(
                  "Non hai ancora un account? Registrati!",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
            )
          ],
        ),
      ),
    );
  }

}