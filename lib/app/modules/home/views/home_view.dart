import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class ViewHome extends GetView<ControllerHome> {
  const ViewHome({super.key});

  @override
  Widget build(BuildContext context) {
    final ControllerHome ch = Get.put(ControllerHome());

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Optional: centers the children vertically
          children: [
            Obx(() => Text(
              'Clicks: ${ch.count}', // Use Obx to reactively update UI
              style: TextStyle(fontSize: 20),
            )),
            SizedBox(height: 20), // Add some space between the Text and Button
            ElevatedButton(
              child: Text("Next Page"),
              onPressed: () => Get.toNamed('second'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: ch.increment,
      ),
    );
  }
}
