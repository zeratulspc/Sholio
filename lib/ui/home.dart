
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final List<Color> randomColor = [
    Colors.red,Colors.yellow,Colors.orange,Colors.green,Colors.blue,Colors.indigo,Colors.purple
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Container(
                color: randomColor[Random().nextInt(randomColor.length-1)],
                height: Get.height,
                width: Get.width,
                child: Center(
                  child: Text(
                    "$index",
                    style:const TextStyle(fontSize:24),
                  ),
                ),
              ),
              Container(
                height: Get.height,
                width:Get.width,
                child: SafeArea(
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment:MainAxisAlignment.end,
                          crossAxisAlignment:CrossAxisAlignment.start,
                          children: [
                            Text("타이틀"),
                            Text("디스크립션")
                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment:MainAxisAlignment.end,
                        children: [
                          IconButton(
                            icon:const Icon(
                              Icons.more_vert,
                              color: Colors.white,
                            ),
                            onPressed: (){},
                          ),
                          IconButton(
                            icon:const Icon(
                              Icons.thumb_up,
                              color: Colors.white,
                            ),
                            onPressed: (){},
                          ),
                          IconButton(
                            icon:const Icon(
                              Icons.thumb_down,
                              color: Colors.white,
                            ),
                            onPressed: (){},
                          ),
                          IconButton(
                            icon:const Icon(
                              Icons.share,
                              color: Colors.white,
                            ),
                            onPressed: (){},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        }
      ),
    );
  }



}