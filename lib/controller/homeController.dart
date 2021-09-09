import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  HomeController() {
    initPageController();
  }

  final PageController pageController = PageController();

  void initPageController() {
    pageController.addListener(() {
      double page = pageController.page!;
      if(0.1 < page - page.floor() && page - page.floor() < 0.9) {
        isMoving = true;
      } else {
        isMoving = false;
      }
    });
  }

  final _isMoving = false.obs;
  set isMoving(bool v)=> _isMoving.value = v;
  bool get isMoving => _isMoving.value;



}