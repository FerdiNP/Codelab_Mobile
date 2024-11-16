import 'dart:io';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Picker'), elevation: 4,
        centerTitle: true,
      ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: Get.height / 2.32,
                  width: Get.width * 0.7,
                  child: Obx(() {
                    return controller.isImageLoading.value
                        ? const CircularProgressIndicator()
                        : controller.selectedImagePath.value == ''
                        ? const Text('No image selected')
                        : ClipOval(
                      child: Image.file(
                          File(controller.selectedImagePath.value),
                          fit:BoxFit.cover,
                      ),
                    );
                  }),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () => controller.pickImage(ImageSource.camera),
                  child: const Text('Pick Image from Camera'),
                ),
                ElevatedButton(
                  onPressed: () => controller.pickImage(ImageSource.gallery),
                  child: const Text('Pick Image from Gallery'),
                ),
                ElevatedButton(
                  onPressed:() {
                    Get.toNamed(Routes.VIDEO);
                   },
                  child: const Text('Video Player'),
                ),
                const SizedBox(height: 20),
                const Divider(
                  color: Colors.grey,
                ),
            ],
          ),
        ),
      )
    );
  }
}
