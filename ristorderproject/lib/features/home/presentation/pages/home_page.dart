import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ristorderproject/routes/routes.dart';
import 'package:ristorderproject/features/login/presentation/controllers/auth_service.dart';

class HomePage extends StatelessWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AuthController authcontroller = Get.find<AuthController>();

    TextStyle descriptionStyle = TextStyle(
      fontSize: 20,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
        body: Column(
          children: [
            Center(
              child: SizedBox(
                child: Text(""),
              ),
            )
          ],
        )
    );
  }



}