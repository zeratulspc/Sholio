import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slio/ui/home.dart';

import 'controller/homeController.dart';

void main() {
  Get.put<HomeController>(HomeController());
  runApp(const Slio());
}

class Slio extends StatelessWidget {
  const Slio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Slio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home()
    );
  }
}
