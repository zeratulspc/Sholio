
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
              Align(
                alignment: Alignment.bottomCenter,
                child:Container(
                  width:Get.width,
                  height:Get.height/3,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.black45,Colors.transparent],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter
                    ),

                  ),
                ),
              ),
              Container(
                margin:const EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                height: Get.height,
                width:Get.width,
                child: SafeArea(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          child: Wrap(
                            direction:Axis.vertical,
                            alignment:WrapAlignment.end,
                            crossAxisAlignment:WrapCrossAlignment.start,
                            children: const [
                              Text(
                                "TEST_TEST_TEST",
                                style:TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(
                                "DESCRIPTIONDESCRIPTIONDESCRIPTION\nDESCRIPTIONDESCRIPTION",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style:TextStyle(
                                    color: Colors.white60,
                                    fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment:MainAxisAlignment.end,
                        children: [
                          IconButton(
                            icon: getIcon(Icons.more_vert),
                            onPressed: (){},
                          ),
                          IconButton(
                            icon: getIcon(Icons.thumb_up),
                            onPressed: (){},
                          ),
                          IconButton(
                            icon: getIcon(Icons.comment),
                            onPressed: (){},
                          ),
                          IconButton(
                            icon: getIcon(Icons.share),
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