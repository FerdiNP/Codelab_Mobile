import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/services/get_connect_controller.dart';
import '../../components/card_article.dart';

class GetConnectView extends GetView<GetConnectController> {
  const GetConnectView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          'Get Connect',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
        ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return Center(
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.tealAccent),
            ),
          );
        } else {
          return ListView.builder(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            shrinkWrap: true,
            itemCount: controller.articles.length,
            itemBuilder: (context, index) {
              var article = controller.articles[index];
              return Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: CardArticle(article: article),
              );
            },
          );
        }
      }),
    );
  }
}
