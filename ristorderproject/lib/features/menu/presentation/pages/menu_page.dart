import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ristorderproject/features/menu/presentation/controllers/menu_controller.dart' as CustomMenuController;
import 'package:ristorderproject/routes/routes.dart';
import 'package:ristorderproject/features/home/presentation/pages/home_page.dart';

class MenuPage extends GetView<MenuController> {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
              slivers: [
                SliverGrid(delegate: SliverChildBuilderDelegate(childCount: 20, (context, index){
                  return GridTile(
                      child: Container(
                        height: 100,
                        color: Colors.red,
                      ));
                }),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1, crossAxisSpacing: 8, mainAxisSpacing: 8
                    ))
              ],
            ),
      ),
    );
  }
}