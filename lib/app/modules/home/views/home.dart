import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:modul1codelab/app/modules/home/controllers/home_controller.dart';

class Home extends StatelessWidget{

  @override
  Widget build(context) {
    // TODO: implement build
    final ControllerHome ch = Get.put(ControllerHome());

    return Scaffold(
      appBar: AppBar(title: Obx(() => Text("Clicks : ${ch.count}"))),

      body: Center(child: ElevatedButton(
            child: Text("Go To Other"), onPressed: () => Get.to(Other()))),
      floatingActionButton:
            FloatingActionButton(child: Icon(Icons.add), onPressed: ch.increment));
  }
}

class Other extends StatelessWidget {
  final ControllerHome ch = Get.find();

  @override
  Widget build(context) {
    // TODO: implement build
    return Scaffold(body: Center(child: Text("${ch.count}")));
  }
}
