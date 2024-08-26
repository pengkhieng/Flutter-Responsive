import 'package:flutter/material.dart';
import 'package:flutter_responsive/controllers/menu_app_controller.dart';
import 'package:flutter_responsive/screens/main/main_screen.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';

void main() {
  Get.lazyPut(() => MenuAppController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Admin Panel',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white),
        canvasColor: Colors.green[100],
      ),
      home: MainScreen(),
    );
  }
}
