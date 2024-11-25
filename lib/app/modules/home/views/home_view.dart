import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Location GPS'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: controller.getCurrentLocation,
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Titik Koordinat',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            Obx(()  => Text(controller.locationMessage.value)),
            const SizedBox(height: 20),
            Obx(()  => controller.loading.value
                ? const Center(child: CircularProgressIndicator())
                : ElevatedButton(
              onPressed: controller.getCurrentLocation,
              child: const Text('Cari Lokasi'),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: controller.openGoogleMaps,
              child: const Text('Buka Google Maps'),
            ),
          ],
        ),
      ),
    );
  }
}
