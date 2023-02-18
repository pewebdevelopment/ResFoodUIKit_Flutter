import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt flag = 0.obs;
  RxBool order = true.obs;
  var scaffoldKey = GlobalKey<ScaffoldState>();
}
