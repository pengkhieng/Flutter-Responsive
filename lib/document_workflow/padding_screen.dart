import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_responsive/controllers/menu_app_controller.dart';
import 'package:flutter_responsive/responsive.dart';
import 'package:get/get.dart';

class PaddingScreen extends StatelessWidget {
  const PaddingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final MenuAppController menuController = Get.find<MenuAppController>();

    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        title: Text("Padding"),
        leading: GestureDetector(
          onTap: () => menuController.changeIndex(0),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(10)),
            child: Text("Back"),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("PADDING"),
            if (Responsive.isMobile(context)) ...[
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () => menuController.selectedIndex(0),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10)),
                  child: Text("Back"),
                ),
              )
            ],
          ],
        ),
      ),
    );
  }
}
