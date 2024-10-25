import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../modules/home/controllers/home_controller.dart';

class secondPage extends StatelessWidget {
  const secondPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ControllerHome ch = Get.put(ControllerHome());

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Text('Anda telah menekan sebanyak', style: TextStyle(fontSize: 40), textAlign: TextAlign.center,),
           Text('${ch.count}', style: TextStyle(fontSize: 30), textAlign: TextAlign.center,),
           SizedBox(height: 20),
           ElevatedButton(
               onPressed: () => Get.back(),
               child: Text('Kembali')
           ),
            ElevatedButton(
                onPressed: () {
                  SystemNavigator.pop();
                },
                child: Text('Keluar')
            ),
          ],
        ),
      ),
    );
  }
}
