import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final List<Color> randomColor = [
    Colors.red,Colors.yellow,Colors.orange,Colors.green,Colors.blue,Colors.indigo,Colors.purple
  ];

  Widget getIcon(IconData icon) => Icon(
    icon,
    color:Colors.white,
    size: 32,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, i) {
              return Container(
                margin: const EdgeInsets.only(top: 50,left:40,right:40,bottom:100),
                color: randomColor[Random().nextInt(randomColor.length-1)],
                height: Get.height,
                width: Get.width,
                child: Center(
                  child: Text(
                    "$i",
                    style:const TextStyle(fontSize:24),
                  ),
                ),
              );
            }
          ),
        ],
      ),
    );
  }
}